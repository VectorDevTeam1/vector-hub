local TDS = shared.TDSTable or shared["TDS_Table"]

if not TDS then
    warn("[MedicChain] TDS library is not loaded")
    return
end

if TDS.__MedicChainAddonLoaded then
    return TDS
end

TDS.__MedicChainAddonLoaded = true

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local RemoteFunc = ReplicatedStorage:WaitForChild("RemoteFunction")

local MEDIC_ABILITY_ICON = "rbxassetid://231100685"

local MEDIC_UBER_DATA = {
    [3] = { DamageBuff = 20, Duration = 7.5 },
    [4] = { DamageBuff = 27.5, Duration = 10 },
    [5] = { DamageBuff = 35, Duration = 10 }
}

local State = {
    Running = false,
    Thread = nil,
    TargetIndexes = {},
    TargetVersion = 0,
    NextMedic = 1,
}

TDS.__MedicChainState = State

local function IsAlive(instance)
    return instance and instance.Parent ~= nil
end

local function GetReplicator(tower)
    if not IsAlive(tower) then
        return nil
    end
    return tower:FindFirstChild("TowerReplicator")
end

local function GetTowerName(tower)
    local rep = GetReplicator(tower)
    return rep and rep:GetAttribute("Name") or nil
end

local function IsMedic(tower)
    return GetTowerName(tower) == "Medic"
end

local function GetMedicUpgrade(medic)
    local rep = GetReplicator(medic)
    if not rep then
        return 0
    end
    return tonumber(rep:GetAttribute("Upgrade")) or 0
end

local function GetMedicUberData(medic)
    return MEDIC_UBER_DATA[GetMedicUpgrade(medic)]
end

local function IsUberUnlocked(medic)
    return GetMedicUberData(medic) ~= nil
end

local function GetMedicCapacity(medic)
    local rep = GetReplicator(medic)
    if not rep then
        return 0
    end

    local capacity = tonumber(rep:GetAttribute("TowersCanSelect"))
    if capacity == nil then
        capacity = 1
    end

    return math.max(0, math.floor(capacity))
end

local function CopyArray(source)
    local result = {}
    for i, value in ipairs(source) do
        result[i] = value
    end
    return result
end

local function NormalizeIndexes(indexes)
    local result = {}
    local seen = {}

    if type(indexes) ~= "table" then
        return result
    end

    for _, value in ipairs(indexes) do
        local normalized

        if type(value) == "string"
            and string.lower(value) == "hologram" then

            normalized = "Hologram"
        else
            local index = tonumber(value)

            if index then
                index = math.floor(index)

                if index >= 1 then
                    normalized = index
                end
            end
        end

        if normalized ~= nil and not seen[normalized] then
            seen[normalized] = true
            result[#result + 1] = normalized
        end
    end

    return result
end

local function SameArray(a, b)
    if #a ~= #b then
        return false
    end

    for i = 1, #a do
        if a[i] ~= b[i] then
            return false
        end
    end

    return true
end

local function GetMedics()
    local medics = {}

    for _, tower in ipairs(TDS.PlacedTowers) do
        if IsAlive(tower) and IsMedic(tower) and IsUberUnlocked(tower) then
            medics[#medics + 1] = tower
        end
    end

    return medics
end

local function GetHolograms()
    local holograms = {}
    local towersFolder = workspace:FindFirstChild("Towers")

    if not towersFolder then
        return holograms
    end

    for _, tower in ipairs(towersFolder:GetChildren()) do
        local rep = GetReplicator(tower)

        if rep
            and rep:GetAttribute("Hologram") == true
            and tonumber(rep:GetAttribute("OwnerId")) == LocalPlayer.UserId then

            holograms[#holograms + 1] = tower
        end
    end

    table.sort(holograms, function(a, b)
        local repA = GetReplicator(a)
        local repB = GetReplicator(b)

        local createdA = repA and tonumber(repA:GetAttribute("CreatedAt")) or 0
        local createdB = repB and tonumber(repB:GetAttribute("CreatedAt")) or 0

        if createdA == createdB then
            local uidA = repA and tostring(repA:GetAttribute("UID") or "") or ""
            local uidB = repB and tostring(repB:GetAttribute("UID") or "") or ""

            return uidA < uidB
        end

        return createdA < createdB
    end)

    return holograms
end

local function ResolveTargets(medic, indexes)
    local targets = {}
    local seen = {}
    local capacity = GetMedicCapacity(medic)

    if capacity <= 0 then
        return targets
    end

    local function AddTarget(tower)
        if #targets >= capacity then
            return false
        end

        if IsAlive(tower)
            and tower ~= medic
            and not IsMedic(tower)
            and not seen[tower] then

            seen[tower] = true
            targets[#targets + 1] = tower
        end

        return #targets < capacity
    end

    for _, selector in ipairs(indexes) do
        if #targets >= capacity then
            break
        end

        if selector == "Hologram" then
            for _, hologram in ipairs(GetHolograms()) do
                if not AddTarget(hologram) then
                    break
                end
            end
        else
            AddTarget(TDS.PlacedTowers[selector])
        end
    end

    return targets
end

local function ToggleTarget(medic, target)
    if not IsAlive(medic) or not IsAlive(target) then
        return false
    end

    return pcall(function()
        RemoteFunc:InvokeServer(
            "Troops",
            "TowerServerEvent",
            "ToggleSelectedTower",
            medic,
            target
        )
    end)
end

local function ToggleTargets(medic, targets)
    for _, target in ipairs(targets) do
        if not IsAlive(medic) then
            break
        end

        if IsAlive(target) then
            ToggleTarget(medic, target)
            task.wait()
        end
    end
end

local function GetMedicAbilityContent()
    local gui = PlayerGui:FindFirstChild("ReactGameAbilities")
    local frame = gui and gui:FindFirstChild("Frame")

    if not frame then
        return nil
    end

    for _, object in ipairs(frame:GetDescendants()) do
        if object:IsA("ImageButton")
            and object.Name == "imageButton"
            and object.Image == MEDIC_ABILITY_ICON then
            return object.Parent
        end
    end

    return nil
end

local function IsMedicReady()
    local content = GetMedicAbilityContent()
    if not content then
        return true
    end

    local label = content:FindFirstChild("timeLeftAbility")
    if not label then
        return true
    end

    local text = tostring(label.Text or "")
    if text == "" then
        return true
    end

    local value = tonumber(text)
    return value == nil or value <= 0
end

local function GetDamageBuff(target)
    local rep = GetReplicator(target)
    if not rep then
        return 0
    end
    return tonumber(rep:GetAttribute("DamageBuff")) or 0
end

local function CaptureDamageBuffs(targets)
    local baseline = {}

    for _, target in ipairs(targets) do
        if IsAlive(target) then
            baseline[target] = GetDamageBuff(target)
        end
    end

    return baseline
end

local function HasMedicDamageSignal(target, baselineValue, expectedBuff)
    local current = GetDamageBuff(target)

    if current <= baselineValue + 0.001 then
        return false
    end

    -- Covers both common behaviors:
    -- 1) strongest buff wins: current becomes Medic's 20/27.5/35
    -- 2) buffs stack: current rises by roughly the Medic amount
    if current >= expectedBuff - 0.001 then
        return true
    end

    if current - baselineValue >= expectedBuff - 0.001 then
        return true
    end

    return false
end

local function WaitForReady(medic, version)
    while State.Running and IsAlive(medic) do
        if State.TargetVersion ~= version then
            return false
        end

        if IsMedicReady() then
            return true
        end

        task.wait(0.1)
    end

    return false
end

local function ActivateUbercharge(medic)
    if not IsAlive(medic) then
        return false
    end

    return pcall(function()
        RemoteFunc:InvokeServer(
            "Troops",
            "Abilities",
            "Activate",
            {
                Troop = medic,
                Name = "Ubercharge",
                Data = {}
            }
        )
    end)
end

local function WaitForUberStart(medic, targets, baseline, uberData, version)
    local startedAt = os.clock()

    while State.Running and os.clock() - startedAt < 1.5 do
        if State.TargetVersion ~= version then
            return false, false
        end

        local sawDamageIncrease = false

        for _, target in ipairs(targets) do
            if IsAlive(target) then
                local before = baseline[target] or 0
                if HasMedicDamageSignal(target, before, uberData.DamageBuff) then
                    sawDamageIncrease = true
                    break
                end
            end
        end

        -- If another tower already has an equal/stronger DamageBuff, Medic's
        -- percentage can be completely hidden. Cooldown starting still proves
        -- the Ubercharge activation was accepted.
        if not IsMedicReady() then
            return true, sawDamageIncrease
        end

        if sawDamageIncrease then
            return true, true
        end

        task.wait(0.05)
    end

    return not IsMedicReady(), false
end

local function WaitForUberEnd(targets, baseline, uberData, activationAt, sawDamageIncrease)
    local fallbackEnd = activationAt + uberData.Duration + 0.35
    local observed = {}

    for _, target in ipairs(targets) do
        if IsAlive(target) then
            local before = baseline[target] or 0
            observed[target] = sawDamageIncrease and HasMedicDamageSignal(target, before, uberData.DamageBuff)
        end
    end

    while State.Running do
        if os.clock() >= fallbackEnd then
            return
        end

        local anyObserved = false
        local allObservedReturned = true

        for _, target in ipairs(targets) do
            if IsAlive(target) then
                local before = baseline[target] or 0
                local current = GetDamageBuff(target)

                if HasMedicDamageSignal(target, before, uberData.DamageBuff) then
                    observed[target] = true
                end

                if observed[target] then
                    anyObserved = true

                    -- Only finish early when the visible Medic increase has
                    -- actually returned to its pre-Uber value. Random changes
                    -- from Mercenary/DJ/etc. cannot end the chain early.
                    if current > before + 0.001 then
                        allObservedReturned = false
                    end
                end
            end
        end

        if anyObserved and allObservedReturned then
            return
        end

        task.wait(0.05)
    end
end

local function TryStartUber(medic, targets, version)
    local uberData = GetMedicUberData(medic)
    if not uberData then
        return false, nil, nil, nil, false
    end

    while State.Running and IsAlive(medic) do
        if State.TargetVersion ~= version then
            return false, nil, nil, nil, false
        end

        if not WaitForReady(medic, version) then
            return false, nil, nil, nil, false
        end

        local baseline = CaptureDamageBuffs(targets)
        local activationAt = os.clock()
        ActivateUbercharge(medic)

        local started, sawDamageIncrease = WaitForUberStart(
            medic,
            targets,
            baseline,
            uberData,
            version
        )

        if started then
            return true, baseline, uberData, activationAt, sawDamageIncrease
        end

        if State.TargetVersion ~= version then
            return false, nil, nil, nil, false
        end

        task.wait(0.2)
    end

    return false, nil, nil, nil, false
end

local function RunMedic(medic)
    if not IsAlive(medic) or not IsUberUnlocked(medic) then
        return false
    end

    local version = State.TargetVersion
    local indexes = CopyArray(State.TargetIndexes)
    local targets = ResolveTargets(medic, indexes)

    if #targets == 0 then
        return false
    end

    ToggleTargets(medic, targets)

    if State.TargetVersion ~= version then
        ToggleTargets(medic, targets)
        return false
    end

    local started, baseline, uberData, activationAt, sawDamageIncrease = TryStartUber(
        medic,
        targets,
        version
    )

    if started and baseline and uberData and activationAt then
        WaitForUberEnd(
            targets,
            baseline,
            uberData,
            activationAt,
            sawDamageIncrease
        )
    end

    ToggleTargets(medic, targets)

    return started
end

local function StartChain()
    if State.Running then
        return
    end

    State.Running = true

    State.Thread = task.spawn(function()
        while State.Running do
            if #State.TargetIndexes == 0 then
                task.wait(0.2)
                continue
            end

            local medics = GetMedics()

            if #medics == 0 then
                State.NextMedic = 1
                task.wait(0.2)
                continue
            end

            if State.NextMedic > #medics then
                State.NextMedic = 1
            end

            local medic = medics[State.NextMedic]
            State.NextMedic += 1

            local success = RunMedic(medic)

            if success then
                task.wait()
            else
                task.wait(0.05)
            end
        end

        State.Thread = nil
    end)
end

function TDS:MedicChain(...)
    local args = {...}

    local targetIndexes

    if #args == 1 and type(args[1]) == "table" then
        targetIndexes = args[1]
    else
        targetIndexes = args
    end

    local newIndexes = NormalizeIndexes(targetIndexes)

    if not SameArray(State.TargetIndexes, newIndexes) then
        State.TargetIndexes = newIndexes
        State.TargetVersion += 1
    end

    StartChain()
    return true
end

-- Main Library.lua defines ResetAllStates after shared.TDSTable is created.
-- Hook it once available so an old Medic chain does not leak into a restarted strat.
task.spawn(function()
    while not TDS.ResetAllStates do
        task.wait()
    end

    if TDS.__MedicChainResetWrapped then
        return
    end

    TDS.__MedicChainResetWrapped = true
    local OriginalResetAllStates = TDS.ResetAllStates

    TDS.ResetAllStates = function(self, ...)
        State.TargetIndexes = {}
        State.TargetVersion += 1
        State.NextMedic = 1
        return OriginalResetAllStates(self, ...)
    end
end)

return TDS
