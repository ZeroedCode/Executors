-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Farm = Instance.new("TextButton")
local equip = Instance.new("TextButton")
local weapon = Instance.new("TextBox")
local maker = Instance.new("TextLabel")
local unequip = Instance.new("TextButton")
local StopFarming = Instance.new("TextButton")
local openmain = Instance.new("Frame")
local open = Instance.new("TextButton")
local close = Instance.new("TextButton")

--Properties:
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.Position = UDim2.new(0.254060328, 0, 0.237191647, 0)
Main.Size = UDim2.new(0, 412, 0, 276)
Main.Visible = false
Main.Active = true 
Main.Draggable = true

Farm.Name = "Farm"
Farm.Parent = Main
Farm.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Farm.Position = UDim2.new(0.191557452, 0, 0.748750091, 0)
Farm.Size = UDim2.new(0, 254, 0, 50)
Farm.Text = "Farm"
Farm.TextColor3 = Color3.fromRGB(0, 0, 0)
Farm.TextScaled = true
Farm.TextSize = 14.000
Farm.TextWrapped = true
Farm.MouseButton1Click:connect(function()
    Farm.Visible = false
    StopFarming.Visible = true
    _G.farm = true
while _G.farm do
    wait()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.Name == weapon.Text then v:Activate() end
    end
    end
end)

equip.Name = "equip"
equip.Parent = Main
equip.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
equip.Position = UDim2.new(0.191557452, 0, 0.488476455, 0)
equip.Size = UDim2.new(0, 254, 0, 50)
equip.Font = Enum.Font.GothamSemibold
equip.Text = "Equip Weights"
equip.TextColor3 = Color3.fromRGB(0, 0, 0)
equip.TextScaled = true
equip.TextSize = 14.000
equip.TextWrapped = true
equip.MouseButton1Click:connect(function()
    equip.Visible = false
    unequip.Visible = true
    _G.equip = true
while _G.equip do
    wait(0.9)
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.Name == weapon.Text then
        v.Parent = game.Players.LocalPlayer.Character
    end
    end
    end
end)

weapon.Name = "weapon"
weapon.Parent = Main
weapon.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
weapon.Position = UDim2.new(0.191557452, 0, 0.225415915, 0)
weapon.Size = UDim2.new(0, 254, 0, 50)
weapon.Font = Enum.Font.GothamSemibold
weapon.Text = "Type the tool"
weapon.TextColor3 = Color3.fromRGB(0, 0, 0)
weapon.TextScaled = true
weapon.TextSize = 14.000
weapon.TextWrapped = true

maker.Name = "maker"
maker.Parent = Main
maker.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
maker.Size = UDim2.new(0, 412, 0, 50)
maker.Font = Enum.Font.GothamSemibold
maker.Text = "Farming GUI"
maker.TextColor3 = Color3.fromRGB(0, 0, 0)
maker.TextScaled = true
maker.TextSize = 14.000
maker.TextWrapped = true

unequip.Name = "unequip"
unequip.Parent = Main
unequip.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
unequip.Position = UDim2.new(0.189320415, 0, 0.487013519, 0)
unequip.Size = UDim2.new(0, 254, 0, 50)
unequip.Font = Enum.Font.GothamSemibold
unequip.Text = "Stop Equipping"
unequip.TextColor3 = Color3.fromRGB(0, 0, 0)
unequip.TextScaled = true
unequip.TextSize = 14.000
unequip.TextWrapped = true
unequip.MouseButton1Click:connect(function()
    equip.Visible = true
    unequip.Visible = false
    _G.equip = false
end)

StopFarming.Name = "Stop Farming"
StopFarming.Parent = Main
StopFarming.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
StopFarming.Position = UDim2.new(0.191747546, 0, 0.745318353, 0)
StopFarming.Size = UDim2.new(0, 254, 0, 50)
StopFarming.Font = Enum.Font.GothamSemibold
StopFarming.Text = "Stop Farming"
StopFarming.TextColor3 = Color3.fromRGB(0, 0, 0)
StopFarming.TextScaled = true
StopFarming.TextSize = 14.000
StopFarming.TextWrapped = true
StopFarming.MouseButton1Click:connect(function()
    Farm.Visible = true
    StopFarming.Visible = false
    _G.farm = false
end)

openmain.Name = "openmain"
openmain.Parent = ScreenGui
openmain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
openmain.Position = UDim2.new(0.951748312, 0, 0.804554105, 0)
openmain.Size = UDim2.new(0, 65, 0, 31)

open.Name = "Open"
open.Parent = openmain
open.BackgroundColor3 = Color3.fromRGB(85, 170, 0)
open.Position = UDim2.new(-0.00249683857, 0, -2.68220901e-07, 0)
open.Size = UDim2.new(0, 65, 0, 31)
open.Font = Enum.Font.GothamSemibold
open.Text = "Open"
open.TextColor3 = Color3.fromRGB(0, 0, 0)
open.TextScaled = true
open.TextSize = 14.000
open.TextWrapped = true
open.MouseButton1Down:connect(function()
Main.Visible = true
close.Visible = true
	open.Visible = false
end)


close.Name = "Close"
close.Parent = openmain
close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
close.Position = UDim2.new(-0.0143235922, 0, 0, 0)
close.Size = UDim2.new(0, 65, 0, 31)
close.Font = Enum.Font.GothamSemibold
close.Text = "Close"
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true
close.MouseButton1Click:connect(function()
Main.Visible = false
	close.Visible = false
	open.Visible = true
end)
