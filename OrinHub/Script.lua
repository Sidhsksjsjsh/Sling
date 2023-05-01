local library = loadstring(game:HttpGet("https://pastebin.com/raw/Uub92rmN"))()


local Window = library:AddWindow("Orin - Cheat",
    {
        main_color = Color3.fromRGB(0, 128, 0),
        min_size = Vector2.new(373, 433),
        toggle_key = Enum.KeyCode.RightShift,
    })

local T1 = Window:AddTab("Farm")
local T2 = Window:AddTab("Egg")
local T3 = Window:AddTab("Upgrade")

function Change(LocalTable, Text)
LocalTable:Set(Text)
end

function TargetPos(WN)
   return game:GetService("Workspace").Areas[WN].Important.EnemyBlocks["Colored Block"].Hitbox.CFrame
end

--[[
function shoot(toggle, ParentPos)
    while toggle do
  game:GetService("ReplicatedStorage").Events.RequestShoot:InvokeServer(ParentPos)
end

function unlock(toggle)
     while toggle do
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("BuyNextArea")
end

function egg(toggle, eggname)
   while toggle do
game:GetService("ReplicatedStorage").Events.RequestEggHatch:FireServer(eggname, "Single")
end

function reward(toggle)
   while wait() do
    if toggle == false then break end
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 1)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 2)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 2)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 3)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 4)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 5)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 6)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 7)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 8)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 9)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 10)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 11)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 12)
   end
end

function sell(toggle)
   while wait() do
    if toggle == false then break end
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("Sell")
   end
end

function travel(numbera)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("TravelToArea", numbera or 1)
end

function equip(toggle)
   while wait() do
    if toggle == false then break end
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("EquipBestBalls")
   end
end
--]]

function Add(namev, content)
namev:Add(content)
end

--[[
function upgrade(toggle, upname)
   while wait() do
    if toggle == false then break end
       if upname == "block" then
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("UpgradeShop", "BlockStorage")
end
    if upname == "ball" then
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("UpgradeShop", "BallSpeed")
end
    if upname == "equipment" then
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("UpgradeShop", "BallEquipment")
end
   end
end
--]]

local sw = T1:AddConsole({
    ["y"] = 50,
    ["source"] = "",
})

Change(sw, "Selected world: 0 / nil")

local se = T2:AddConsole({
    ["y"] = 50,
    ["source"] = "",
})

Change(se, "Selected egg: nil")

local world = T1:AddDropdown("Select world", function(o)
_G.SWorld = o
Change(sw, "Selected world: " .. tostring(o))
end)

Add(world, "1")
Add(world, "2")
Add(world, "3")
Add(world, "4")
Add(world, "5")
Add(world, "6")

T1:AddSwitch("start shoot", function(bool)
_G.Shoot = bool
while wait() do
   if _G.Shoot == false then break end
  game:GetService("ReplicatedStorage").Events.RequestShoot:InvokeServer(CFrame.new(TargetPos(_G.SWorld)))
  end
end)

T1:AddSwitch("collect reward", function(bool)
_G.R = bool
while wait() do
    if _G.R == false then break end
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 1)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 2)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 2)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 3)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 4)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 5)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 6)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 7)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 8)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 9)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 10)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 11)
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("ClaimTimeReward", 12)
   end
end)

T1:AddSwitch("auto sell", function(bool)
_G.Sell = bool
while wait() do
    if _G.Sell == false then break end
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("Sell")
   end
end)

T1:AddSwitch("auto unlock world", function(bool)
_G.Un = bool
while wait() do
if _G.Un == false then break end
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("BuyNextArea")
end
end)

T1:AddButton("Travel to selected world", function()
travel(_G.SWorld)
end)

local eggv = T2:AddDropdown("Select egg", function(o)
_G.Segg = o
Change(se, "Selected egg: " .. tostring(o))
end)

Add(eggv, "Classic Egg")
Add(eggv, "Sand Egg")
Add(eggv, "Ice Egg")
Add(eggv, "Magma Egg")
Add(eggv, "Pearl Egg")
Add(eggv, "Moon Egg")

T2:AddSwitch("auto hatch", function(bool)
_G.Egg = bool
while wait() do
if _G.Egg == false then break end
game:GetService("ReplicatedStorage").Events.RequestEggHatch:FireServer(_G.Segg, "Single")
end
end)

T2:AddSwitch("auto equip best", function(bool)
_G.Equip = bool
while wait() do
    if _G.Equip == false then break end
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("EquipBestBalls")
   end
end)

local syncv = T3:AddDropdown("Select upgrade", function(o)
_G.Sup = o
end)

Add(syncv, "block")
Add(syncv, "ball")
Add(syncv, "equipment")

T3:AddSwitch("auto upgrade", function(bool)
_G.To = bool
while wait() do
    if toggle == false then break end
       if _G.Sup == "block" then
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("UpgradeShop", "BlockStorage")
end
    if _G.Sup == "ball" then
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("UpgradeShop", "BallSpeed")
end
    if _G.Sup == "equipment" then
game:GetService("ReplicatedStorage").Events.UIAction:FireServer("UpgradeShop", "BallEquipment")
end
   end
end)
