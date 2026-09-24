-- ============================================================
--  Vector Progression Loader
--  Auto-Progression wrapper для Vector Hub
-- ============================================================

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")

local LocalPlayer =
    Players.LocalPlayer
    or Players.PlayerAdded:Wait()

local Globals = getgenv()

local LOBBY_PLACE_ID = 3260590327

local LOADING_TIMEOUT = 60
local GAMEOVER_STEP_TIMEOUT = 60
local NO_GAMEOVER_TIMEOUT = 20 * 60

local VECTOR_CONFIG_FILE = "Vector_Config.json"
local VECTOR_BACKUP_FILE = "Vector_ConfigBackup.json"

local MAIN_SCRIPT_URL =
    "https://raw.githubusercontent.com/Ceepizz/rya/refs/heads/main/AutoProgressCore.lua"

local VECTOR_RELOAD_URL =
    "https://raw.githubusercontent.com/VectorDevTeam1/vector-hub/refs/heads/main/Library.lua"

local LoaderActive = true
local ReconnectCheckRunning = false

local RecoveryRunning = false
local SessionStartedAt = nil
local LastRep = nil

local ErrorConnection
local PromptConnection

local SavedState = {
    Difficulty = nil,
    DisplayName = nil,
    Mode = "survival"
}


if type(shared.VectorProgressLoaderRuntime) == "table"
    and shared.VectorProgressLoaderRuntime.Stop then

    pcall(function()
        shared.VectorProgressLoaderRuntime.Stop()
    end)
end


local function ReadJsonFile(path)
    if not isfile
        or not readfile
        or not isfile(path) then

        return nil
    end

    local ok, data = pcall(function()
        return HttpService:JSONDecode(
            readfile(path)
        )
    end)

    if ok
        and type(data) == "table" then

        return data
    end

    return nil
end

local function WriteJsonFile(path, data)
    if not writefile then
        return false
    end

    return pcall(function()
        writefile(
            path,
            HttpService:JSONEncode(data)
        )
    end)
end


local function BackupAndDisableVector()
    Globals.AutoProgressionLoader = true

    if not isfile
        or not readfile
        or not writefile then

        return false
    end

    local data =
        ReadJsonFile(VECTOR_CONFIG_FILE)

    if not data then
        return false
    end


    if not isfile(VECTOR_BACKUP_FILE) then
        local backup = {}

        for key, value in pairs(data) do
            backup[key] = value
        end


        backup.AutoProgressionLoader = false

        WriteJsonFile(
            VECTOR_BACKUP_FILE,
            backup
        )
    end


    for key, value in pairs(data) do
        if type(value) == "boolean" then
            data[key] = false
            Globals[key] = false
        end
    end


    data.AutoProgressionLoader = true
    Globals.AutoProgressionLoader = true

    WriteJsonFile(
        VECTOR_CONFIG_FILE,
        data
    )

    return true
end


local InitialBackupReady = BackupAndDisableVector()

if not InitialBackupReady then
    warn("[Vector Loader] Could not create Vector_ConfigBackup.json")
    return false
end


local function RestoreVector()
    Globals.AutoProgressionLoader = false

    local backup =
        ReadJsonFile(VECTOR_BACKUP_FILE)

    if not backup then
        local data =
            ReadJsonFile(VECTOR_CONFIG_FILE)

        if data then
            data.AutoProgressionLoader = false

            WriteJsonFile(
                VECTOR_CONFIG_FILE,
                data
            )
        end

        return
    end

    backup.AutoProgressionLoader = false

    for key, value in pairs(backup) do
        Globals[key] = value
    end

    WriteJsonFile(
        VECTOR_CONFIG_FILE,
        backup
    )

    if delfile then
        pcall(function()
            delfile(VECTOR_BACKUP_FILE)
        end)
    end
end


local function GetRep()
    local stateReplicators =
        ReplicatedStorage:FindFirstChild(
            "StateReplicators"
        )

    return stateReplicators
        and stateReplicators:FindFirstChild(
            "GameStateReplicator"
        )
end

local function IsInGame()
    return GetRep() ~= nil
end

local function CacheState(rep)
    if not rep then
        return
    end

    local difficulty =
        rep:GetAttribute("Difficulty")

    local displayName =
        rep:GetAttribute(
            "DifficultyDisplayName"
        )

    if difficulty ~= nil then
        SavedState.Difficulty =
            tostring(difficulty)
    end

    if displayName ~= nil then
        SavedState.DisplayName =
            tostring(displayName)
    end

    if tostring(
        SavedState.DisplayName or ""
    ):lower() == "hardcore" then

        SavedState.Mode = "hardcore"
    else
        SavedState.Mode = "survival"
    end
end

local function IsGameOver()
    local rep = GetRep()

    return rep
        and rep:GetAttribute(
            "GameOver"
        ) == true
end


local function BackToLobby()
    if not IsInGame() then
        return true
    end

    local network =
        ReplicatedStorage:FindFirstChild(
            "Network"
        )

    local teleport =
        network
        and network:FindFirstChild(
            "Teleport"
        )

    local remote =
        teleport
        and teleport:FindFirstChild(
            "RE:backToLobby"
        )

    if not remote then
        return false
    end

    return pcall(function()
        remote:FireServer()
    end)
end


local function Rematch()
    if not IsInGame() then
        return false
    end

    local network =
        ReplicatedStorage:FindFirstChild(
            "Network"
        )

    local gameManager =
        network
        and network:FindFirstChild(
            "GameManager"
        )

    local remote =
        gameManager
        and gameManager:FindFirstChild(
            "RE:Rematch"
        )

    if not remote then
        return false
    end

    return pcall(function()
        remote:FireServer()
    end)
end


local function Matchmake()
    if not IsInGame() then
        return false
    end

    local rep = GetRep()

    if rep then
        CacheState(rep)
    end

    if not SavedState.Difficulty then
        return false
    end

    local remote =
        ReplicatedStorage:FindFirstChild(
            "RemoteFunction"
        )

    if not remote then
        return false
    end

    return pcall(function()
        remote:InvokeServer(
            "Multiplayer",
            "v2:start",
            {
                difficulty =
                    SavedState.Difficulty,

                mode =
                    SavedState.Mode,

                count = 1
            }
        )
    end)
end


local function StartGameOverRecovery(rep)
    if RecoveryRunning
        or not LoaderActive
        or not IsInGame() then

        return
    end

    RecoveryRunning = true

    CacheState(rep)

    task.spawn(function()
        task.wait(
            GAMEOVER_STEP_TIMEOUT
        )

        if not LoaderActive then
            RecoveryRunning = false
            return
        end

        if not IsInGame() then
            RecoveryRunning = false
            SessionStartedAt = nil
            return
        end

        if not IsGameOver() then
            RecoveryRunning = false
            SessionStartedAt = os.clock()
            return
        end

        BackToLobby()

        task.wait(
            GAMEOVER_STEP_TIMEOUT
        )

        if not LoaderActive then
            RecoveryRunning = false
            return
        end

        if not IsInGame() then
            RecoveryRunning = false
            SessionStartedAt = nil
            return
        end

        if not IsGameOver() then
            RecoveryRunning = false
            SessionStartedAt = os.clock()
            return
        end

        Rematch()

        task.wait(
            GAMEOVER_STEP_TIMEOUT
        )

        if not LoaderActive then
            RecoveryRunning = false
            return
        end

        if not IsInGame() then
            RecoveryRunning = false
            SessionStartedAt = nil
            return
        end

        if not IsGameOver() then
            RecoveryRunning = false
            SessionStartedAt = os.clock()
            return
        end

        Matchmake()

        RecoveryRunning = false
        SessionStartedAt = os.clock()
    end)
end


local function Reconnect()
    if not LoaderActive
        or ReconnectCheckRunning then

        return
    end

    ReconnectCheckRunning = true

    task.spawn(function()
        task.wait(2)

        if LoaderActive then
            pcall(function()
                TeleportService:
                    TeleportReconnect()
            end)
        end

        ReconnectCheckRunning = false
    end)
end


local function StopRuntime()
    LoaderActive = false
    RecoveryRunning = false
    ReconnectCheckRunning = false

    if ErrorConnection then
        ErrorConnection:Disconnect()
        ErrorConnection = nil
    end

    if PromptConnection then
        PromptConnection:Disconnect()
        PromptConnection = nil
    end

    if shared.VectorProgressLoaderRuntime
        and shared.VectorProgressLoaderRuntime.Stop
            == StopRuntime then

        shared.VectorProgressLoaderRuntime = nil
    end
end

shared.VectorProgressLoaderRuntime = {
    Stop = StopRuntime
}


ErrorConnection =
    GuiService.ErrorMessageChanged:
        Connect(function()

            local code =
                GuiService:GetErrorCode()

            if code
                and code
                    ~= Enum.ConnectionError.OK then

                Reconnect()
            end
        end)

pcall(function()
    local promptOverlay =
        CoreGui
            :WaitForChild(
                "RobloxPromptGui"
            )
            :WaitForChild(
                "promptOverlay"
            )

    PromptConnection =
        promptOverlay.ChildAdded:
            Connect(function(child)

                if child.Name
                    == "ErrorPrompt" then

                    Reconnect()
                end
            end)
end)

local existingCode =
    GuiService:GetErrorCode()

if existingCode
    and existingCode
        ~= Enum.ConnectionError.OK then

    Reconnect()
end


local function IsLoading()
    local playerGui =
        LocalPlayer:FindFirstChild(
            "PlayerGui"
        )

    local loadingScreen =
        playerGui
        and playerGui:FindFirstChild(
            "LoadingScreen"
        )

    local content =
        loadingScreen
        and loadingScreen:FindFirstChild(
            "content"
        )

    return
        LocalPlayer:GetAttribute(
            "Loading"
        ) == true

        or LocalPlayer:GetAttribute(
            "Teleporting"
        ) == true

        or (
            content
            and content.Visible == true
        )
end

if IsInGame() then
    local startedAt = os.clock()

    while LoaderActive
        and IsLoading() do

        if not IsInGame() then
            break
        end

        if os.clock() - startedAt
            >= LOADING_TIMEOUT then

            Matchmake()
            break
        end

        task.wait(1)
    end
end


task.spawn(function()
    while LoaderActive do
        task.wait(0.1)

        local rep = GetRep()

        if not rep then
            SessionStartedAt = nil
            LastRep = nil
            RecoveryRunning = false

            SavedState.Difficulty = nil
            SavedState.DisplayName = nil
            SavedState.Mode = "survival"

            continue
        end

        if rep ~= LastRep then
            LastRep = rep
            SessionStartedAt = os.clock()
        end

        CacheState(rep)

        local gameOver =
            rep:GetAttribute(
                "GameOver"
            ) == true

        if gameOver then
            StartGameOverRecovery(rep)

        elseif not RecoveryRunning
            and SessionStartedAt
            and os.clock()
                - SessionStartedAt
                >= NO_GAMEOVER_TIMEOUT then

            RecoveryRunning = true

            Matchmake()

            SessionStartedAt =
                os.clock()

            RecoveryRunning = false
        end
    end
end)


local ReturningToVector = false

local function ReturnToVector()
    if ReturningToVector then
        return false
    end

    ReturningToVector = true


    StopRuntime()


    RestoreVector()


    shared.TDSTable = nil
    shared["TDS_Table"] = nil


    shared.AutoProgressGuiBase = nil


    local progressGui =
        CoreGui:FindFirstChild(
            "Progress"
        )

    if progressGui then
        progressGui:Destroy()
    end


    shared.RyaProgressBridge = nil

    task.wait(0.15)


    local ok, result = pcall(function()
        local source =
            game:HttpGet(
                VECTOR_RELOAD_URL
            )

        return loadstring(source)()
    end)

    if not ok then
        warn(
            "[Vector Loader] Failed to reload Vector:",
            result
        )

        ReturningToVector = false
        return false
    end

    return true
end

shared.VectorProgressBridge = {
    ReturnToVector = ReturnToVector,
    RestoreVector = ReturnToVector,
    RestoreVectorConfig = RestoreVector
}


local ok, result = pcall(function()
    return loadstring(
        game:HttpGet(
            MAIN_SCRIPT_URL
        )
    )()
end)

if not ok then
    StopRuntime()
    RestoreVector()

    shared.VectorProgressBridge = nil

    warn(
        "[Vector Loader] Failed:",
        result
    )

    return false
end


local timeoutAt =
    os.clock() + 15

repeat
    if CoreGui:FindFirstChild(
        "Progress"
    ) then

        break
    end

    task.wait(0.1)

until os.clock() >= timeoutAt

if not CoreGui:FindFirstChild(
    "Progress"
) then

    StopRuntime()
    RestoreVector()

    shared.VectorProgressBridge = nil

    warn(
        "[Vector Loader] Progress GUI was not created."
    )

    return false
end


return true
