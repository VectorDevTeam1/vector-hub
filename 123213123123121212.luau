repeat task.wait() until game:IsLoaded()

local cloneref = cloneref or function(x) return x end
local HttpService = cloneref(game:GetService("HttpService"))

local Directory = "solixhub"
local Folders = {"/Configs", "/Themes", "/Fonts", "/Luas", "/Assets", "/Images", "/polsec"}

local GameId = tostring(game.GameId)

local FontCatalog = {
    ["Inter"] = {
        Id = "InterSemibold.ttf",
        Url = "https://raw.githubusercontent.com/sametexe001/luas/main/fonts/InterSemibold.ttf",
        Weight = 200, Style = "normal",
    },
}

local GameList = {
    -- Normal Games
    ["10771997908"] = { Id = "bab92ead754b2d2e" }, -- +1 Spider Arm
    ["578392296"]   = { Id = "9c36af272e9edcab" }, -- ABA
    ["10770933473"] = { Id = "570960567ae9ee68" }, -- Anime Eyes
    ["10512942223"] = { Id = "578395010f8c4716" }, -- Anime Zero
    ["4658598196"]  = { Id = "086646721d0da59e" }, -- Attack on Titan Revolution
    ["4777817887"]  = { Id = "cf1e81c5fb14d3bc" }, -- Blade Ball
    ["994732206"]   = { Id = "ce2e40f0bc2b1720" }, -- Blox Fruits
    ["1946714362"]  = { Id = "2f231342cca70549" }, -- Bloodlines
    ["10769957062"] = { Id = "f7a5694f13d13f89" }, -- Bug Evolution
    ["10767386157"] = { Id = "22068f1924bfbd48" }, -- Chop A Forest
    ["10767634248"] = { Id = "41dd482b4e67a744" }, -- Firefighting Sim
    ["648454481"]   = { Id = "a873ec9f40a25c5c" }, -- Grand Piece Online
    ["1451439645"]  = { Id = "0175e216221387f8" }, -- King Legacy
    ["66654135"]    = { Id = "e45bba6c0dc08fad" }, -- Murder Mystery 2
    ["10035204815"] = { Id = "85a577643f806078" }, -- Ride A Pet
    ["6035872082"]  = { Id = "9d318b57c43ebd9d" }, -- Rivals
    ["7219654364"]  = { Id = "b056f96b43a4a4e2" }, -- Sheriff VS Murderer
    ["1511883870"]  = { Id = "5ac16739ff2ef735" }, -- Shindo Life
    ["5595353122"]  = { Id = "d7305ba1bbb3bd7b" }, -- Slayers 2
    ["8172250815"]  = { Id = "7c60f067f2d65107" }, -- STAND OUT
    ["10563114921"] = { Id = "d3b0a2eaf4a1522a" }, -- Steal An Egg
    ["7174773198"]  = { Id = "1a0dbcb0cbb0b955" }, -- Vox Seas

    -- Universal Games
    ["9534705677"]  = { Id = "52eedbdc867c3387" }, -- Arcade
    ["10138624079"] = { Id = "52eedbdc867c3387" }, -- Arena
    ["111958650"]   = { Id = "52eedbdc867c3387" }, -- Arsenal
    ["6765805766"]  = { Id = "52eedbdc867c3387" }, -- BlockSpin
    ["5000084391"]  = { Id = "52eedbdc867c3387" }, -- Decay
    ["6993600665"]  = { Id = "52eedbdc867c3387" }, -- Defusal
    ["10057403337"] = { Id = "52eedbdc867c3387" }, -- Deagle Arena
    ["4750561026"]  = { Id = "52eedbdc867c3387" }, -- Cold War
    ["6583326485"]  = { Id = "52eedbdc867c3387" }, -- Ground War
    ["5091490171"]  = { Id = "52eedbdc867c3387" }, -- Jailbird
    ["73885730"]    = { Id = "52eedbdc867c3387" }, -- Prison Life
    ["10767708641"] = { Id = "52eedbdc867c3387" }, -- Pistol Duels
    ["3021395192"]  = { Id = "52eedbdc867c3387" }, -- RiotFall
    ["9294074907"]  = { Id = "52eedbdc867c3387" }, -- [FPS] One Tap
    ["1281592938"]  = { Id = "52eedbdc867c3387" }, -- ENTRENCHED
    ["8468366390"]  = { Id = "52eedbdc867c3387" }, -- Infected Lands
    ["5995470825"]  = { Id = "52eedbdc867c3387" }, -- Hypershot
    ["10769850944"] = { Id = "52eedbdc867c3387" }, -- KOBALT / DROPZONE
    ["10769552054"] = { Id = "52eedbdc867c3387" }, -- Urban Reload
    ["10750223358"] = { Id = "52eedbdc867c3387" }, -- ZHD
    ["504035427"]   = { Id = "52eedbdc867c3387" }, -- Zombie Attack
    ["7633926880"]  = { Id = "52eedbdc867c3387" }, -- BloxStrike
}

local LoaderBaseUrl = "https://api.polsec.net/loader"
local Config = {
    KeyFile = "solixhub/polsec/license.key.json",
    ProjectId = "7d45ec1510769529",
}

local function PrepareWorkspace()
    assert(isfolder and makefolder and isfile and readfile and writefile,
        "Solix Hub requires executor filesystem support")
    if not isfolder(Directory) then makefolder(Directory) end
    for _, v in ipairs(Folders) do
        if not isfolder(Directory .. v) then makefolder(Directory .. v) end
    end
    for _, v in ipairs({"Autoload.txt", "ThemeAutoload.txt"}) do
        local p = Directory .. "/" .. v
        if not isfile(p) then writefile(p, "") end
    end
end

local function CacheFont(name, info)
    local path = Directory .. "/Fonts/" .. info.Id
    if not isfile(path) then
        if not info.Url then return end
        local src = game:HttpGet(info.Url)
        assert(type(src) == "string" and #src > 4, "Empty font: " .. name)
        local sig = src:sub(1, 4)
        assert(sig == "\0\1\0\0" or sig == "OTTO" or sig == "ttcf" or sig == "true",
            "Invalid font: " .. name)
        writefile(path, src)
    end
    if not getcustomasset then return end
    writefile(Directory .. "/Fonts/" .. name .. ".font", HttpService:JSONEncode({
        name = name,
        faces = {{ name = "Regular", weight = info.Weight, style = info.Style,
                   assetId = getcustomasset(path) }},
    }))
end

local GameConfig = GameList[GameId]
if not GameConfig then
    warn("[Solix Hub] This game is not supported: " .. GameId)
    return
end

PrepareWorkspace()
task.spawn(function()
    for k, v in pairs(FontCatalog) do pcall(CacheFont, k, v) end
end)

-- Пытаемся взять уже сохранённый ключ (без UI)
local function ReadJson(path)
    if not isfile or not readfile or not isfile(path) then return nil end
    local ok, src = pcall(readfile, path)
    if not ok or type(src) ~= "string" or src == "" then return nil end
    local ok2, data = pcall(HttpService.JSONDecode, HttpService, src)
    if not ok2 or type(data) ~= "table" then return nil end
    return data
end

local key = getgenv().script_key or script_key
if type(key) ~= "string" or key == "" or key == "trial" or key == "trail" then
    local saved = ReadJson(Config.KeyFile)
    key = saved and saved.key or ""
end

script_key                  = key
getgenv().script_key        = key
getgenv().polsec_script_id  = GameConfig.Id

local ProjectId = getgenv().PolSec_ProjectId
if type(ProjectId) ~= "string" or ProjectId == "" then
    ProjectId = Config.ProjectId
end

-- Единственный оставшийся loadstring:
local url = LoaderBaseUrl .. "/" .. ProjectId .. "/" .. GameConfig.Id
print("[Solix Hub] GET " .. url)

local src = game:HttpGet(url)
if type(src) ~= "string" or #src < 32 then
    warn("[Solix Hub] Loader returned empty body — server likely rejected the key.")
    return
end

local chunk, err = loadstring(src)
assert(chunk, err)
chunk()
