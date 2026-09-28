-- ============================================================
--  Strategy: FastCoin
--  Author: Vector Dev Team
--  Repo: VectorDevTeam1/vector-hub
-- ============================================================

getgenv().AntiLag       = true
getgenv().AutoMercenary = true
getgenv().MercenaryPath = 140
getgenv().AutoRejoin    = true
getgenv().AutoRestart   = false
getgenv().AutoDJ        = true

local TDS = shared.TDSTable
    or shared.TDS_Table
    or loadstring(game:HttpGet("https://raw.githubusercontent.com/VectorDevTeam1/vector-hub/refs/heads/main/Library.lua"))()

if not TDS then
    warn("[FastCoin] Library not loaded")
    return
end

task.wait(1)

-- ============================================================
--  СТРАТЕГИЯ
-- ============================================================

TDS:Loadout("Trapper", "Hacker", "Gatling Gun", "Mercenary Base", "Medic")
TDS:Mode("Fallen")
TDS:GameInfo("Lay By", {
    HiddenEnemies = true,
    Glass = true,
    SpeedyEnemies = true,
    Limitation = true,
    Committed = true,
    Fog = true,
    ExplodingEnemies = true,
    Quarantine = true
})

TDS:VoteSkip(8, 29)
TDS:VoteSkip(33, 39)
TDS:MedicChain(3, "Hologram")

TDS:Place("Trapper", -2.6489198207855225, 243, 176)
TDS:Ready()
TDS:UnlockTimeScale()
TDS:TimeScale(1.5)
TDS:TimeScale(2)

TDS:Place("Trapper", 2.570160150527954, 243, 175.9499969482422)
TDS:Upgrade(1)
TDS:Upgrade(2)

TDS:Place("Gatling Gun", 0.04171639680862427, 243, 149.94903564453125)
TDS:Upgrade(3)
TDS:Upgrade(3)
TDS:Upgrade(3)

TDS:Place("Mercenary Base", 3.800682544708252, 243, 147.88160705566406)
TDS:Upgrade(4)
TDS:Upgrade(4)
TDS:Upgrade(4)

TDS:Place("Hacker", 2.5798254013061523, 242.99998474121094, 266.0452575683594)
TDS:Upgrade(5)
TDS:Upgrade(5)

TDS:Place("Hacker", -2.506803512573242, 242.99998474121094, 281.5472412109375)
TDS:Upgrade(6)
TDS:Upgrade(6)
TDS:Upgrade(6)
TDS:Upgrade(6)
TDS:Ability(6, "Hologram Tower", {towerPosition = Vector3.new(0, 243, 143.5153350830078), towerToClone = 3}, true)
TDS:Upgrade(5)
TDS:Upgrade(5)
TDS:Ability(5, "Hologram Tower", {towerPosition = Vector3.new(0, 243, 161.15362548828125), towerToClone = 3}, true)

TDS:Upgrade(3)
TDS:Upgrade(1)
TDS:Upgrade(2)
TDS:Upgrade(1)
TDS:Upgrade(2)
TDS:Upgrade(1)
TDS:SetOption(1, "Trap", "Bear Traps")
TDS:Upgrade(2)
TDS:SetOption(2, "Trap", "Bear Traps")
TDS:Upgrade(3)
TDS:Upgrade(3)

TDS:Place("Medic", -3.2032668590545654, 243, 148.5342254638672)
TDS:Upgrade(7)
TDS:Upgrade(7)
TDS:Upgrade(7)
TDS:Upgrade(7)
TDS:Upgrade(7)

TDS:Place("Medic", -6.085565567016602, 243, 149.50064086914062)
TDS:Upgrade(8)
TDS:Upgrade(8)
TDS:Upgrade(8)
TDS:Upgrade(8)
TDS:Upgrade(8)

TDS:Place("Medic", 6.1901164054870605, 243, 150.82350158691406)
TDS:Upgrade(9)
TDS:Upgrade(9)
TDS:Upgrade(9)
TDS:Upgrade(9)
TDS:Upgrade(9)

TDS:Place("Medic", 7.58308744430542, 243, 148.12142944335938)
TDS:Upgrade(10)
TDS:Upgrade(10)
TDS:Upgrade(10)
TDS:Upgrade(10)
TDS:Upgrade(10)

TDS:Upgrade(4)
TDS:SetOption(4, "Unit 1", "Riot Guard")
TDS:SetOption(4, "Unit 2", "Riot Guard")
TDS:SetOption(4, "Unit 3", "Riot Guard")
TDS:Upgrade(4)
TDS:Upgrade(4)

TDS:Place("Trapper", -2.8035759925842285, 243, 172.5066375732422)
TDS:Upgrade(11)
TDS:Upgrade(11)
TDS:Upgrade(11)
TDS:Upgrade(11)
TDS:SetOption(11, "Trap", "Bear Traps")

TDS:Place("Trapper", -2.780402898788452, 243, 168.80125427246094)
TDS:Upgrade(12)
TDS:Upgrade(12)
TDS:Upgrade(12)
TDS:Upgrade(12)
TDS:SetOption(12, "Trap", "Bear Traps")

TDS:Place("Trapper", 2.946263074874878, 243, 172.4545440673828)
TDS:Upgrade(13)
TDS:Upgrade(13)
TDS:Upgrade(13)
TDS:Upgrade(13)
TDS:SetOption(13, "Trap", "Bear Traps")

TDS:Place("Trapper", 3.0866639614105225, 243, 168.83876037597656)
TDS:Upgrade(14)
TDS:Upgrade(14)
TDS:Upgrade(14)
TDS:Upgrade(14)
TDS:SetOption(14, "Trap", "Bear Traps")

TDS:Place("Trapper", -3.2338459491729736, 243, 165.17214965820312)
TDS:Upgrade(15)
TDS:Upgrade(15)
TDS:Upgrade(15)
TDS:Upgrade(15)
TDS:SetOption(15, "Trap", "Bear Traps")

TDS:WaitForWave(37)

TDS:Place("Mercenary Base", -3.4044113159179688, 243, 157.8949737548828)
TDS:Upgrade(16)
TDS:Upgrade(16)
TDS:Upgrade(16)
TDS:Upgrade(16)
TDS:SetOption(16, "Unit 1", "Riot Guard")
TDS:SetOption(16, "Unit 2", "Riot Guard")
TDS:SetOption(16, "Unit 3", "Riot Guard")
TDS:Upgrade(16)
TDS:Upgrade(16)

TDS:Place("Mercenary Base", 3.0054709911346436, 243, 157.9738006591797)
TDS:Upgrade(17)
TDS:Upgrade(17)
TDS:Upgrade(17)
TDS:Upgrade(17)
TDS:SetOption(17, "Unit 1", "Riot Guard")
TDS:SetOption(17, "Unit 2", "Riot Guard")
TDS:SetOption(17, "Unit 3", "Riot Guard")
TDS:Upgrade(17)
TDS:Upgrade(17)

TDS:Upgrade(6, 2)
TDS:Upgrade(5, 2)
