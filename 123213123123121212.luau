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
    -- (вставь сюда весь GameList из своего файла — я его не дублирую)
}

local SdkUrl = "https://api.polsec.net/sdk"
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
    warn("[Solix Hub] Game not supported: " .. GameId)
    return
end

PrepareWorkspace()
task.spawn(function()
    for k, v in pairs(FontCatalog) do pcall(CacheFont, k, v) end
end)

local function ReadJson(path)
    if not isfile or not readfile or not isfile(path) then return nil end
    local ok, src = pcall(readfile, path)
    if not ok or type(src) ~= "string" or src == "" then return nil end
    local ok2, data = pcall(HttpService.JSONDecode, HttpService, src)
    if not ok2 or type(data) ~= "table" then return nil end
    return data
end

-- 1. Загружаем SDK (это ОБЯЗАТЕЛЬНО — он ставит хук HttpGet)
local sdkChunk, sdkErr = loadstring(game:HttpGet(SdkUrl))
assert(sdkChunk, "SDK load failed: " .. tostring(sdkErr))
local SDK = sdkChunk()
assert(type(SDK) == "table" and type(SDK.check_key) == "function", "SDK unavailable")
SDK.script_id = GameConfig.Id

-- 2. Достаём ключ: getgenv -> script_key -> файл
local key = getgenv().script_key or script_key
if type(key) ~= "string" or key == "" or key == "trial" or key == "trail" then
    local saved = ReadJson(Config.KeyFile)
    key = saved and saved.key or ""
end
if key == "" then
    warn("[Solix Hub] No key. Set getgenv().script_key or place key in " .. Config.KeyFile)
    return
end

-- 3. Валидация (ставит хук + проверяет ключ на сервере)
local ok, result = pcall(function() return SDK.check_key(key) end)
if not ok or type(result) ~= "table" then
    warn("[Solix Hub] Key check network error")
    return
end
if result.status ~= "key_valid" then
    warn("[Solix Hub] Key invalid: " .. tostring(result.status) ..
         " | " .. tostring(result.message))
    return
end

-- 4. Глобалы, которые ждёт чит
script_key                 = key
getgenv().script_key       = key
getgenv().key               = key
getgenv().polsec_script_id = GameConfig.Id
local user = type(result.user) == "table" and result.user or {}
getgenv().PolSec_Expiry    = user.key_expires
getgenv().PolSec_UserId    = user.discord_id
getgenv().key_expire       = user.key_expires or 0
getgenv().key_note         = user.note or ""

-- 5. Тянем сам чит (SDK-хук добавит auth-заголовок)
local ProjectId = getgenv().PolSec_ProjectId
if type(ProjectId) ~= "string" or ProjectId == "" then
    ProjectId = Config.ProjectId
end

local url = LoaderBaseUrl .. "/" .. ProjectId .. "/" .. GameConfig.Id
print("[Solix Hub] GET " .. url)

local src = game:HttpGet(url)
if type(src) ~= "string" or #src < 32 then
    warn("[Solix Hub] Loader returned empty body — key rejected server-side")
    return
end

local chunk, err = loadstring(src)
assert(chunk, err)
chunk()
