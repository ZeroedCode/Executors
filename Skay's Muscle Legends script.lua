if game.PlaceId == 3623096087 then
wait(12)
local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
    -- Customizable
    Title = "Notification!!!",
    Text = "Script Loaded!",
    Duration = 10,
})
local Player = game:GetService('Players').LocalPlayer
Player.Idled:connect(function()
	game:GetService('VirtualUser'):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService('VirtualUser'):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)
if game.CoreGui:FindFirstChild("library") then
	game.CoreGui:FindFirstChild("library"):Destroy()
end
local A_1 = "changeSize"
local A_2 = 0
local Event = game:GetService("ReplicatedStorage").rEvents.changeSpeedSizeRemote
Event:InvokeServer(A_1, A_2)

local A_1 = "disableTrading"
local Event = game:GetService("ReplicatedStorage").rEvents.tradingEvent
Event:FireServer(A_1)


local plr = game.Players.LocalPlayer
local oldpos = plr.Character:WaitForChild("HumanoidRootPart").CFrame

local library = Instance.new("ScreenGui")
local topframe = Instance.new("Frame")
local backgroundframe = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
----put here local button
local button1 = Instance.new("TextButton")
local button2 = Instance.new("TextButton")
local button3 = Instance.new("TextButton")
local button4 = Instance.new("TextButton")
local button5 = Instance.new("TextButton")
local button6 = Instance.new("TextButton")
local button7 = Instance.new("TextButton")
local button8 = Instance.new("TextButton")
local button9 = Instance.new("TextButton")
local button10 = Instance.new("TextButton")
local button11 = Instance.new("TextButton")
local button12 = Instance.new("TextButton")
local button13 = Instance.new("TextButton")
local button14 = Instance.new("TextButton")
local button15 = Instance.new("TextButton")
local button16 = Instance.new("TextButton")
local button17 = Instance.new("TextButton")
local button18 = Instance.new("TextButton")
local button19 = Instance.new("TextButton")
local button20 = Instance.new("TextButton")
local button21 = Instance.new("TextButton")
local button22 = Instance.new("TextButton")
local button23 = Instance.new("TextButton")
local button24 = Instance.new("TextButton")
local button25 = Instance.new("TextButton")
local button26 = Instance.new("TextButton")
local button27 = Instance.new("TextButton")
local button28 = Instance.new("TextButton")
---end
local UIGridLayout = Instance.new("UIGridLayout")
local playerframe = Instance.new("Frame")
local speedbox = Instance.new("TextBox")
local jumppowerbox = Instance.new("TextBox")
local speed = Instance.new("TextButton")
local jumppower = Instance.new("TextButton")
local menuframe = Instance.new("Frame")
local scriptframebutton = Instance.new("TextButton")
local playerbutton = Instance.new("TextButton")
local title = Instance.new("TextLabel")
local minimize = Instance.new("TextButton")
local close = Instance.new("TextButton")

library.Name = "library"
library.Parent = game.CoreGui
library.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

topframe.Name = "topframe"
topframe.Parent = library
topframe.Active = true
topframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
topframe.Position = UDim2.new(0.080862537, 0, 0.200000003, 0)
topframe.Size = UDim2.new(0, 300, 0, 30)

backgroundframe.Name = "background frame"
backgroundframe.Parent = topframe
backgroundframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
backgroundframe.Position = UDim2.new(0, 0, 1, 0)
backgroundframe.Size = UDim2.new(0, 300, 0, 200)

ScrollingFrame.Parent = backgroundframe
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Position = UDim2.new(0.266666681, 0, 0, 0)
ScrollingFrame.Size = UDim2.new(0, 220, 0, 200)
ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScrollingFrame.ScrollBarThickness = 5


---make new button dont put same name
button1.Name = "button1"
button1.Parent = ScrollingFrame
button1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button1.Size = UDim2.new(0, 200, 0, 50)
button1.Font = Enum.Font.GothamBold
button1.Text = "Weight ❎"
button1.TextColor3 = Color3.fromRGB(0, 0, 0)
button1.TextSize = 13.000
button1.MouseButton1Click:Connect(function()
	if button1.Text == "Weight ❎"then
button1.Text = "Weight ✅"
if plr.Character:FindFirstChild("Weight") or plr.Backpack:FindFirstChild("Weight") ~= nil then
getgenv().Weight = true
while getgenv().Weight do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-725.613892, 33.4770432, 1991.86694, -0.45550397, -4.02097271e-08, -0.890233755, -4.63261998e-08, 1, -2.14639808e-08, 0.890233755, 3.14642179e-08, -0.45550397)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Weight" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
else
local A_1 = "rep"
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1)
end
end
end
end
if plr.Character:FindFirstChild("Weight") ~= nil then
if getgenv().Weight == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
end
elseif button1.Text == "Weight ✅" then
button1.Text = "Weight ❎"
if plr.Character:FindFirstChild("Weight") or plr.Backpack:FindFirstChild("Weight") ~= nil then
getgenv().Weight = false
while getgenv().Weight do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-725.613892, 33.4770432, 1991.86694, -0.45550397, -4.02097271e-08, -0.890233755, -4.63261998e-08, 1, -2.14639808e-08, 0.890233755, 3.14642179e-08, -0.45550397)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Weight" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
else
local A_1 = "rep"
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1)
end
end
end
end
if plr.Character:FindFirstChild("Weight") ~= nil then
if getgenv().Weight == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
end
end
end)

button2.Name = "button2"
button2.Parent = ScrollingFrame
button2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button2.Size = UDim2.new(0, 200, 0, 50)
button2.Font = Enum.Font.GothamBold
button2.Text = "Pushups ❎"
button2.TextColor3 = Color3.fromRGB(0, 0, 0)
button2.TextSize = 13.000
button2.MouseButton1Click:Connect(function()
	if button2.Text == "Pushups ❎"then
button2.Text = "Pushups ✅"
if plr.Character:FindFirstChild("Pushups") or plr.Backpack:FindFirstChild("Pushups") ~= nil then
getgenv().Pushups = true
while getgenv().Pushups do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-725.613892, 33.4770432, 1991.86694, -0.45550397, -4.02097271e-08, -0.890233755, -4.63261998e-08, 1, -2.14639808e-08, 0.890233755, 3.14642179e-08, -0.45550397)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Pushups" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
else
local A_1 = "rep"
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1)
end
end
end
end
if plr.Character:FindFirstChild("Pushups") ~= nil then
if getgenv().Pushups == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
end
elseif button2.Text == "Pushups ✅" then
button2.Text = "Pushups ❎"
if plr.Character:FindFirstChild("Pushups") or plr.Backpack:FindFirstChild("Pushups") ~= nil then
getgenv().Pushups = false
while getgenv().Pushups do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-725.613892, 33.4770432, 1991.86694, -0.45550397, -4.02097271e-08, -0.890233755, -4.63261998e-08, 1, -2.14639808e-08, 0.890233755, 3.14642179e-08, -0.45550397)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Pushups" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
else
local A_1 = "rep"
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1)
end
end
end
end
if plr.Character:FindFirstChild("Pushups") ~= nil then
if getgenv().Pushups == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
end
end
end)


button3.Name = "button3"
button3.Parent = ScrollingFrame
button3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button3.Size = UDim2.new(0, 200, 0, 50)
button3.Font = Enum.Font.GothamBold
button3.Text = "Situps ❎"
button3.TextColor3 = Color3.fromRGB(0, 0, 0)
button3.TextSize = 13.000
button3.Visible = true
button3.MouseButton1Click:Connect(function()
	if button3.Text == "Situps ❎"then
button3.Text = "Situps ✅"
if plr.Character:FindFirstChild("Situps") or plr.Backpack:FindFirstChild("Situps") ~= nil then
getgenv().Situps = true
while getgenv().Situps do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-725.613892, 33.4770432, 1991.86694, -0.45550397, -4.02097271e-08, -0.890233755, -4.63261998e-08, 1, -2.14639808e-08, 0.890233755, 3.14642179e-08, -0.45550397)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Situps" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
else
local A_1 = "rep"
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1)
end
end
end
end
if plr.Character:FindFirstChild("Situps") ~= nil then
if getgenv().Situps == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
end
elseif button3.Text == "Situps ✅" then
button3.Text = "Situps ❎"
if plr.Character:FindFirstChild("Situps") or plr.Backpack:FindFirstChild("Situps") ~= nil then
getgenv().Situps = false
while getgenv().Situps do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-725.613892, 33.4770432, 1991.86694, -0.45550397, -4.02097271e-08, -0.890233755, -4.63261998e-08, 1, -2.14639808e-08, 0.890233755, 3.14642179e-08, -0.45550397)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Situps" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
else
local A_1 = "rep"
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1)
end
end
end
end
if plr.Character:FindFirstChild("Situps") ~= nil then
if getgenv().Situps == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
end
end
end)

button4.Name = "button4"
button4.Parent = ScrollingFrame
button4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button4.Size = UDim2.new(0, 200, 0, 50)
button4.Font = Enum.Font.GothamBold
button4.Text = "Handstands ❎"
button4.TextColor3 = Color3.fromRGB(0, 0, 0)
button4.TextSize = 13.000
button4.MouseButton1Click:Connect(function()
	if button4.Text == "Handstands ❎"then
button4.Text = "Handstands ✅"
if plr.Character:FindFirstChild("Handstands") or plr.Backpack:FindFirstChild("Handstands") ~= nil then
getgenv().Handstands = true
while getgenv().Handstands do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-725.613892, 33.4770432, 1991.86694, -0.45550397, -4.02097271e-08, -0.890233755, -4.63261998e-08, 1, -2.14639808e-08, 0.890233755, 3.14642179e-08, -0.45550397)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Handstands" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
else
local A_1 = "rep"
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1)
end
end
end
end
if plr.Character:FindFirstChild("Handstands") ~= nil then
if getgenv().Handstands == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
end
elseif button4.Text == "Handstands ✅" then
button4.Text = "Handstands ❎"
if plr.Character:FindFirstChild("Handstands") or plr.Backpack:FindFirstChild("Handstands") ~= nil then
getgenv().Handstands = false
while getgenv().Handstands do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-725.613892, 33.4770432, 1991.86694, -0.45550397, -4.02097271e-08, -0.890233755, -4.63261998e-08, 1, -2.14639808e-08, 0.890233755, 3.14642179e-08, -0.45550397)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Handstands" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
else
local A_1 = "rep"
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1)
end
end
end
end
if plr.Character:FindFirstChild("Handstands") ~= nil then
if getgenv().Handstands == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
end
end
end)

button5.Name = "button5"
button5.Parent = ScrollingFrame
button5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button5.Size = UDim2.new(0, 200, 0, 50)
button5.Font = Enum.Font.GothamBold
button5.Text = "Claim All Chest"
button5.TextColor3 = Color3.fromRGB(0, 0, 0)
button5.TextSize = 13.000
button5.MouseButton1Click:Connect(function()
	plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(39.2826843, 3.66624117, 409.752472, -0.6179775, -4.5380812e-08, -0.786195755, 1.53669877e-08, 1, -6.98010183e-08, 0.786195755, -5.5216919e-08, -0.6179775)
wait(0.5)
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-139.775803, 3.66624928, -272.734955, 0.862641871, 2.79274825e-08, 0.505815208, 2.48609577e-08, 1, -9.76119026e-08, -0.505815208, 9.67791678e-08, 0.862641871)
wait(0.5)
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-2559.05493, 3.66624904, -557.943054, 0.658963203, -2.96341582e-08, -0.752175152, 1.53950435e-08, 1, -2.59107065e-08, 0.752175152, 5.49443246e-09, 0.658963203)
wait(0.5)
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-6704.2998, 3.66624975, -1455.35986, 0.435060352, 1.13463914e-08, 0.900401294, -6.84422607e-09, 1, -9.29445587e-09, -0.900401294, -2.11890039e-09, 0.435060352)
wait(0.5)
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2207.58887, 3.66624784, 913.380188, -0.989244103, -1.62314073e-08, -0.14627406, -1.87139086e-08, 1, 1.55954964e-08, 0.14627406, 1.81651121e-08, -0.989244103)
wait(0.5)
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4678.73193, 997.384949, -3691.22412, -0.321549386, 6.57384334e-08, 0.946892798, -2.55282586e-08, 1, -7.80944021e-08, -0.946892798, -4.92837309e-08, -0.321549386)
wait(0.5)
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end)

button6.Name = "button6"
button6.Parent = ScrollingFrame
button6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button6.Size = UDim2.new(0, 200, 0, 50)
button6.Font = Enum.Font.GothamBold
button6.Text = "Rock 0 ❎"
button6.TextColor3 = Color3.fromRGB(0, 0, 0)
button6.TextSize = 13.000
button6.MouseButton1Click:Connect(function()
	if button6.Text == "Rock 0 ❎" then
button6.Text = "Rock 0 ✅"
getgenv().Dura0 = true
while getgenv().Dura0 do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(7.60643005, 4.02632904, 2104.54004, -0.23040159, -8.53662385e-08, -0.973095655, -4.68743764e-08, 1, -7.66279342e-08, 0.973095655, 2.79580536e-08, -0.23040159)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Punch" then
b:Activate()
end
end
end
if getgenv().Dura0 == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
elseif button6.Text == "Rock 0 ✅" then
button6.Text = "Rock 0 ❎"
getgenv().Dura0 = false
while getgenv().Dura0 do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(7.60643005, 4.02632904, 2104.54004, -0.23040159, -8.53662385e-08, -0.973095655, -4.68743764e-08, 1, -7.66279342e-08, 0.973095655, 2.79580536e-08, -0.23040159)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Punch" then
b:Activate()
end
end
end
if getgenv().Dura0 == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
end
end)

button7.Name = "button7"
button7.Parent = ScrollingFrame
button7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button7.Size = UDim2.new(0, 200, 0, 50)
button7.Font = Enum.Font.GothamBold
button7.Text = "Rock 10 ❎"
button7.TextColor3 = Color3.fromRGB(0, 0, 0)
button7.TextSize = 13.000
button7.MouseButton1Click:Connect(function()
	if button7.Text == "Rock 10 ❎" then
button7.Text = "Rock 10 ✅"
getgenv().Dura10 = true
while getgenv().Dura10 do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-157.680908, 3.72453046, 434.871185, 0.923298299, -1.81774684e-09, -0.384083599, 3.45247031e-09, 1, 3.56670582e-09, 0.384083599, -4.61917082e-09, 0.923298299)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Punch" then
b:Activate()
end
end
end
if getgenv().Dura10 == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
elseif button7.Text == "Rock 10 ✅" then
button7.Text = "Rock 10 ❎"
getgenv().Dura10 = false
while getgenv().Dura10 do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-157.680908, 3.72453046, 434.871185, 0.923298299, -1.81774684e-09, -0.384083599, 3.45247031e-09, 1, 3.56670582e-09, 0.384083599, -4.61917082e-09, 0.923298299)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Punch" then
b:Activate()
end
end
end
if getgenv().Dura10 == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
end
end)

button8.Name = "button8"
button8.Parent = ScrollingFrame
button8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button8.Size = UDim2.new(0, 200, 0, 50)
button8.Font = Enum.Font.GothamBold
button8.Text = "Rock 100 ❎"
button8.TextColor3 = Color3.fromRGB(0, 0, 0)
button8.TextSize = 13.000
button8.MouseButton1Click:Connect(function()
	if button8.Text == "Rock 100 ❎" then
button8.Text = "Rock 100 ✅"
getgenv().Dura100 = true
while getgenv().Dura100 do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(162.233673, 3.66615629, -164.686783, -0.921312928, -1.80826774e-07, -0.38882193, -9.13036544e-08, 1, -2.48719346e-07, 0.38882193, -1.93647494e-07, -0.921312928)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Punch" then
b:Activate()
end
end
end
if getgenv().Dura100 == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
elseif button8.Text == "Rock 100 ✅" then
button8.Text = "Rock 100 ❎"
getgenv().Dura100 = false
while getgenv().Dura100 do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(162.233673, 3.66615629, -164.686783, -0.921312928, -1.80826774e-07, -0.38882193, -9.13036544e-08, 1, -2.48719346e-07, 0.38882193, -1.93647494e-07, -0.921312928)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Punch" then
b:Activate()
end
end
end
if getgenv().Dura100 == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
end
end)

button9.Name = "button9"
button9.Parent = ScrollingFrame
button9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button9.Size = UDim2.new(0, 200, 0, 50)
button9.Font = Enum.Font.GothamBold
button9.Text = "Rock 5k ❎"
button9.TextColor3 = Color3.fromRGB(0, 0, 0)
button9.TextSize = 13.000
button9.MouseButton1Click:Connect(function()
	if button9.Text == "Rock 5k ❎" then
button9.Text = "Rock 5k ✅"
getgenv().Dura5k = true
while getgenv().Dura5k do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(329.831482, 3.66450214, -618.48407, -0.806075394, -8.67358096e-08, 0.591812849, -1.05715522e-07, 1, 2.57029176e-09, -0.591812849, -6.04919563e-08, -0.806075394)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Punch" then
b:Activate()
end
end
end
if getgenv().Dura5k == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
elseif button9.Text == "Rock 5k ✅" then
button9.Text = "Rock 5k ❎"
getgenv().Dura5k = false
while getgenv().Dura5k do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(329.831482, 3.66450214, -618.48407, -0.806075394, -8.67358096e-08, 0.591812849, -1.05715522e-07, 1, 2.57029176e-09, -0.591812849, -6.04919563e-08, -0.806075394)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Punch" then
b:Activate()
end
end
end
if getgenv().Dura5k == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
end
end)

button10.Name = "button10"
button10.Parent = ScrollingFrame
button10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button10.Size = UDim2.new(0, 200, 0, 50)
button10.Font = Enum.Font.GothamBold
button10.Text = "Rock 150k ❎"
button10.TextColor3 = Color3.fromRGB(0, 0, 0)
button10.TextSize = 13.000
button10.MouseButton1Click:Connect(function()
	if button10.Text == "Rock 150k ❎" then
button10.Text = "Rock 150k ✅"
getgenv().Dura150k = true
while getgenv().Dura150k do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-2516.98218, 4.29410744, -226.805298, 0.491699785, -1.92402734e-08, 0.870764792, 1.81873183e-08, 1, 1.18258949e-08, -0.870764792, 1.00220863e-08, 0.491699785)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Punch" then
b:Activate()
end
end
end
if getgenv().Dura150k == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
elseif button10.Text == "Rock 150k ✅" then
button10.Text = "Rock 150k ❎"
getgenv().Dura150k = false
while getgenv().Dura150k do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-2516.98218, 4.29410744, -226.805298, 0.491699785, -1.92402734e-08, 0.870764792, 1.81873183e-08, 1, 1.18258949e-08, -0.870764792, 1.00220863e-08, 0.491699785)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Punch" then
b:Activate()
end
end
end
if getgenv().Dura150k == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
end
end)

button11.Name = "button11"
button11.Parent = ScrollingFrame
button11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button11.Size = UDim2.new(0, 200, 0, 50)
button11.Font = Enum.Font.GothamBold
button11.Text = "Rock 400k ❎"
button11.TextColor3 = Color3.fromRGB(0, 0, 0)
button11.TextSize = 13.000
button11.MouseButton1Click:Connect(function()
	if button11.Text == "Rock 400k ❎" then
button11.Text = "Rock 400k ✅"
getgenv().Dura400k = true
while getgenv().Dura400k do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2155.61743, 3.79830337, 1227.06482, -0.551303148, -9.16796949e-09, -0.834304988, -5.61318245e-08, 1, 2.61027839e-08, 0.834304988, 6.12216127e-08, -0.551303148)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Punch" then
b:Activate()
end
end
end
if getgenv().Dura400k == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
elseif button11.Text == "Rock 400k ✅" then
button11.Text = "Rock 400k ❎"
getgenv().Dura400k = false
while getgenv().Dura400k do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(2155.61743, 3.79830337, 1227.06482, -0.551303148, -9.16796949e-09, -0.834304988, -5.61318245e-08, 1, 2.61027839e-08, 0.834304988, 6.12216127e-08, -0.551303148)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Punch" then
b:Activate()
end
end
end
if getgenv().Dura400k == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
end
end)

button12.Name = "button12"
button12.Parent = ScrollingFrame
button12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button12.Size = UDim2.new(0, 200, 0, 50)
button12.Font = Enum.Font.GothamBold
button12.Text = "Rock 750k ❎"
button12.TextColor3 = Color3.fromRGB(0, 0, 0)
button12.TextSize = 13.000
button12.MouseButton1Click:Connect(function()
	if button12.Text == "Rock 750k ❎" then
button12.Text = "Rock 750k ✅"
getgenv().Dura750k = true
while getgenv().Dura750k do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-7285.6499, 3.66624784, -1228.27417, 0.857643783, -1.58175091e-08, -0.514244199, -1.22581563e-08, 1, -5.12025977e-08, 0.514244199, 5.02172774e-08, 0.857643783)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Punch" then
b:Activate()
end
end
end
if getgenv().Dura750k == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
elseif button12.Text == "Rock 750k ✅" then
button12.Text = "Rock 750k ❎"
getgenv().Dura750k = false
while getgenv().Dura750k do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-7285.6499, 3.66624784, -1228.27417, 0.857643783, -1.58175091e-08, -0.514244199, -1.22581563e-08, 1, -5.12025977e-08, 0.514244199, 5.02172774e-08, 0.857643783)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Punch" then
b:Activate()
end
end
end
if getgenv().Dura750k == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
end
end)

button13.Name = "button13"
button13.Parent = ScrollingFrame
button13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button13.Size = UDim2.new(0, 200, 0, 50)
button13.Font = Enum.Font.GothamBold
button13.Text = "Rock 1m ❎"
button13.TextColor3 = Color3.fromRGB(0, 0, 0)
button13.TextSize = 13.000
button13.MouseButton1Click:Connect(function()
	if button13.Text == "Rock 1m ❎" then
button13.Text = "Rock 1m ✅"
getgenv().Dura1m = true
while getgenv().Dura1m do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4160.87109, 987.829102, -4136.64502, -0.893115997, 1.25481356e-05, 0.44982639, 5.02490684e-06, 1, -1.79187136e-05, -0.44982639, -1.37431543e-05, -0.893115997)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Punch" then
b:Activate()
end
end
end
if getgenv().Dura1m == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
elseif button13.Text == "Rock 1m ✅" then
button13.Text = "Rock 1m ❎"
getgenv().Dura1m = false
while getgenv().Dura1m do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4160.87109, 987.829102, -4136.64502, -0.893115997, 1.25481356e-05, 0.44982639, 5.02490684e-06, 1, -1.79187136e-05, -0.44982639, -1.37431543e-05, -0.893115997)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Punch" then
b:Activate()
end
end
end
if getgenv().Dura1m == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
end
end)

button14.Name = "button14"
button14.Parent = ScrollingFrame
button14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button14.Size = UDim2.new(0, 200, 0, 50)
button14.Font = Enum.Font.GothamBold
button14.Text = "Rock 5m ❎"
button14.TextColor3 = Color3.fromRGB(0, 0, 0)
button14.TextSize = 13.000
button14.MouseButton1Click:Connect(function()
	if button14.Text == "Rock 5m ❎" then
button14.Text = "Rock 5m ✅"
getgenv().Dura5m = true
while getgenv().Dura5m do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8957.54395, 5.53625107, -6126.90186, -0.803919137, 6.6065212e-08, 0.594738603, -8.93136143e-09, 1, -1.23155459e-07, -0.594738603, -1.04318865e-07, -0.803919137)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Punch" then
b:Activate()
end
end
end
if getgenv().Dura5m == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
elseif button14.Text == "Rock 5m ✅" then
button14.Text = "Rock 5m ❎"
getgenv().Dura5m = false
while getgenv().Dura5m do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-8957.54395, 5.53625107, -6126.90186, -0.803919137, 6.6065212e-08, 0.594738603, -8.93136143e-09, 1, -1.23155459e-07, -0.594738603, -1.04318865e-07, -0.803919137)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Punch" then
b:Activate()
end
end
end
if getgenv().Dura5m == false then
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
end
end)

button15.Name = "button15"

button15.Parent = ScrollingFrame

button15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button15.Size = UDim2.new(0, 200, 0, 50)
button15.Font = Enum.Font.GothamBold
button15.Text = "Legend Throw ❎"
button15.TextColor3 = Color3.fromRGB(0, 0, 0)
button15.TextSize = 13.000
button15.MouseButton1Click:Connect(function()
	if button15.Text == "Legend Throw ❎" then
button15.Text = "Legend Throw ✅"
getgenv().Throw = true
while getgenv().Throw do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4257.84717, 987.869141, -3627.34521, -0.965929627, 0, 0.258804768, 0, 1, 0, -0.258804768, 0, -0.965929627)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Legends Throw"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end

if getgenv().Throw == false then
wait(1)
plr.Character:WaitForChild("Humanoid").Jump = true
end
elseif button15.Text == "Legend Throw ✅" then
button15.Text = "Legend Throw ❎"
getgenv().Throw = false
while getgenv().Throw do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4257.84717, 987.869141, -3627.34521, -0.965929627, 0, 0.258804768, 0, 1, 0, -0.258804768, 0, -0.965929627)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Legends Throw"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end

if getgenv().Throw == false then
wait(1)
plr.Character:WaitForChild("Humanoid").Jump = true
end
end
end)

button16.Name = "button16"
button16.Parent = ScrollingFrame
button16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button16.Size = UDim2.new(0, 200, 0, 50)
button16.Font = Enum.Font.GothamBold
button16.Text = "Legend Squat ❎"
button16.TextColor3 = Color3.fromRGB(0, 0, 0)
button16.TextSize = 13.000
button16.MouseButton1Click:Connect(function()
	if button16.Text == "Legend Squat ❎" then
button16.Text = "Legend Squat ✅"
getgenv().Squat = true
while getgenv().Squat do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4440.61475, 987.869263, -4056.47974, -0.915398717, -1.87178131e-08, -0.402548343, 1.57736671e-10, 1, -4.6856993e-08, 0.402548343, -4.29563265e-08, -0.915398717)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Legends Squat"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
if getgenv().Squat == false then
wait(1)
plr.Character:WaitForChild("Humanoid").Jump = true
end
elseif button16.Text == "Legend Squat ✅" then
button16.Text = "Legend Squat ❎"
getgenv().Squat = false
while getgenv().Squat do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4440.61475, 987.869263, -4056.47974, -0.915398717, -1.87178131e-08, -0.402548343, 1.57736671e-10, 1, -4.6856993e-08, 0.402548343, -4.29563265e-08, -0.915398717)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Legends Squat"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
if getgenv().Squat == false then
wait(1)
plr.Character:WaitForChild("Humanoid").Jump = true
end
end
end)

button17.Name = "button17"
button17.Parent = ScrollingFrame
button17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button17.Size = UDim2.new(0, 200, 0, 50)
button17.Font = Enum.Font.GothamBold
button17.Text = "Legend Press ❎"
button17.TextColor3 = Color3.fromRGB(0, 0, 0)
button17.TextSize = 13.000
button17.MouseButton1Click:Connect(function()
	if button17.Text == "Legend Press ❎" then
button17.Text = "Legend Press ✅"
getgenv().press = true
while getgenv().press do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4109.91309, 1020.86884, -3802.15332, -1, 0, 0, 0, 1, 0, 0, 0, -1)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Legends Press"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
if getgenv().press == false then
wait(1)
plr.Character:WaitForChild("Humanoid").Jump = true
end
elseif button17.Text == "Legend Press ✅" then
button17.Text = "Legend Press ❎"
getgenv().press = false
while getgenv().press do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4109.91309, 1020.86884, -3802.15332, -1, 0, 0, 0, 1, 0, 0, 0, -1)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Legends Press"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
if getgenv().press == false then
wait(1)
plr.Character:WaitForChild("Humanoid").Jump = true
end
end
end)

button18.Name = "button18"
button18.Parent = ScrollingFrame
button18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button18.Size = UDim2.new(0, 200, 0, 50)
button18.Font = Enum.Font.GothamBold
button18.Text = "Legend Pullup ❎"
button18.TextColor3 = Color3.fromRGB(0, 0, 0)
button18.TextSize = 13.000
button18.MouseButton1Click:Connect(function()
	if button18.Text == "Legend Pullup ❎" then
button18.Text = "Legend Pullup ✅"
getgenv().pullup = true
while getgenv().pullup do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4303.33691, 987.869324, -4120.32373, 0.0603055656, 4.06186231e-08, -0.998179972, -5.01746058e-08, 1, 3.7661362e-08, 0.998179972, 4.78120974e-08, 0.0603055656)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Legends Throw"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
if getgenv().pullup == false then
wait(1)
plr.Character:WaitForChild("Humanoid").Jump = true
end
elseif button18.Text == "Legend Pullup ✅" then
button18.Text = "Legend Pullup ❎"
getgenv().pullup = false
while getgenv().pullup do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(4303.33691, 987.869324, -4120.32373, 0.0603055656, 4.06186231e-08, -0.998179972, -5.01746058e-08, 1, 3.7661362e-08, 0.998179972, 4.78120974e-08, 0.0603055656)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "E", false, game)
local A_1 = "rep"
local A_2 = game:GetService("Workspace").machinesFolder["Legends Throw"].interactSeat
local Event = game:GetService("Players").LocalPlayer.muscleEvent
Event:FireServer(A_1, A_2)
end
if getgenv().pullup == false then
wait(1)
plr.Character:WaitForChild("Humanoid").Jump = true
end
end
end)

button19.Name = "button19"
button19.Parent = ScrollingFrame
button19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button19.Size = UDim2.new(0, 200, 0, 50)
button19.Font = Enum.Font.GothamBold
button19.Text = "Treadmill ❎"
button19.TextColor3 = Color3.fromRGB(0, 0, 0)
button19.TextSize = 13.000
button19.MouseButton1Click:Connect(function()
	if button19.Text == "Treadmill ❎" then
button19.Text = "Treadmill ✅"
getgenv().treadmill = true
while getgenv().treadmill do
wait(0.1)
local A_1 = "changeSize"
local A_2 = 0
local Event = game:GetService("ReplicatedStorage").rEvents.changeSpeedSizeRemote
Event:InvokeServer(A_1, A_2)
plr.Character:WaitForChild("Humanoid").WalkSpeed = 13
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(223.790634, 8.19207478, 221.244965, 0.271959662, -3.77772764e-08, -0.962308645, -1.1013805e-08, 1, -4.23695532e-08, 0.962308645, 2.21214886e-08, 0.271959662)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "W", false, game)
end
if getgenv().treadmill == false then
wait(0.5)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(false, "W", false, game)
end
elseif button19.Text == "Treadmill ✅" then
button19.Text = "Treadmill ❎"
getgenv().treadmill = false
while getgenv().treadmill do
wait(0.1)
local A_1 = "changeSize"
local A_2 = 0
local Event = game:GetService("ReplicatedStorage").rEvents.changeSpeedSizeRemote
Event:InvokeServer(A_1, A_2)
plr.Character:WaitForChild("Humanoid").WalkSpeed = 13
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(223.790634, 8.19207478, 221.244965, 0.271959662, -3.77772764e-08, -0.962308645, -1.1013805e-08, 1, -4.23695532e-08, 0.962308645, 2.21214886e-08, 0.271959662)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "W", false, game)
end
if getgenv().treadmill == false then
wait(0.5)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(false, "W", false, game)
end
end
end)

button20.Name = "button20"
button20.Parent = ScrollingFrame
button20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button20.Size = UDim2.new(0, 200, 0, 50)
button20.Font = Enum.Font.GothamBold
button20.Text = "Rebirth ❎"
button20.TextColor3 = Color3.fromRGB(0, 0, 0)
button20.TextSize = 13.000
button20.MouseButton1Click:Connect(function()
	if button20.Text == "Rebirth ❎" then
button20.Text = "Rebirth ✅"
getgenv().rebirth = true
while getgenv().rebirth do
wait()
local A_1 = "rebirthRequest"
local Event = game:GetService("ReplicatedStorage").rEvents.rebirthRemote
Event:InvokeServer(A_1)
end
elseif button20.Text == "Rebirth ✅" then
button20.Text = "Rebirth ❎"
getgenv().rebirth = false
end
end)

button21.Name = "button21"
button21.Parent = ScrollingFrame
button21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button21.Size = UDim2.new(0, 200, 0, 50)
button21.Font = Enum.Font.GothamBold
button21.Text = "Punch speed ❎"
button21.TextColor3 = Color3.fromRGB(0, 0, 0)
button21.TextSize = 13.000
button21.MouseButton1Click:Connect(function()
	if button21.Text == "Punch speed ❎" then
button21.Text = "Punch speed ✅"
getgenv().speed = true
while getgenv().speed do
wait()
game.Players.LocalPlayer.Character:WaitForChild("Punch").attackTime.Value = 0
end
if getgenv().speed == false then
game.Players.LocalPlayer.Character.Punch.attackTime.Value = 0.35
end
elseif button21.Text == "Punch speed ✅" then
button21.Text = "Punch speed ❎"
getgenv().speed = false
end
end)

button22.Name = "button22"
button22.Parent = ScrollingFrame
button22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button22.Size = UDim2.new(0, 200, 0, 50)
button22.Font = Enum.Font.GothamBold
button22.Text = "Claim All Code"
button22.TextColor3 = Color3.fromRGB(0, 0, 0)
button22.TextSize = 13.000
button22.MouseButton1Click:Connect(function()
	local A_1 = "superpunch100"
local Event = game:GetService("ReplicatedStorage").rEvents.codeRemote
Event:InvokeServer(A_1)
wait(0.5)
local A_1 = "supermuscle100"
local Event = game:GetService("ReplicatedStorage").rEvents.codeRemote
Event:InvokeServer(A_1)
wait(0.5)
local A_1 = "speedy50"
local Event = game:GetService("ReplicatedStorage").rEvents.codeRemote
Event:InvokeServer(A_1)
wait(0.5)
local A_1 = "spacegems50"
local Event = game:GetService("ReplicatedStorage").rEvents.codeRemote
Event:InvokeServer(A_1)
wait(0.5)
local A_1 = "Skyagility50"
local Event = game:GetService("ReplicatedStorage").rEvents.codeRemote
Event:InvokeServer(A_1)
wait(0.5)
local A_1 = "musclestorm50"
local Event = game:GetService("ReplicatedStorage").rEvents.codeRemote
Event:InvokeServer(A_1)
wait(0.5)
local A_1 = "megalift50"
local Event = game:GetService("ReplicatedStorage").rEvents.codeRemote
Event:InvokeServer(A_1)
wait(0.5)
local A_1 = "launch250"
local Event = game:GetService("ReplicatedStorage").rEvents.codeRemote
Event:InvokeServer(A_1)
wait(0.5)
local A_1 = "galaxycrystal50"
local Event = game:GetService("ReplicatedStorage").rEvents.codeRemote
Event:InvokeServer(A_1)
wait(0.5)
local A_1 = "frostgems10"
local Event = game:GetService("ReplicatedStorage").rEvents.codeRemote
Event:InvokeServer(A_1)
wait(0.5)
local A_1 = "epicreward500"
local Event = game:GetService("ReplicatedStorage").rEvents.codeRemote
Event:InvokeServer(A_1)
wait(0.5)
local A_1 = "MillionWarriors"
local Event = game:GetService("ReplicatedStorage").rEvents.codeRemote
Event:InvokeServer(A_1)
wait()
local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
    -- Customizable
    Title = "",
    Text = "Claim Done",
    Duration = 10,
})
end)

button23.Name = "button23"
button23.Parent = ScrollingFrame
button23.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button23.Size = UDim2.new(0, 200, 0, 50)
button23.Font = Enum.Font.GothamBold
button23.Text = "Treadmill v2 ❎"
button23.TextColor3 = Color3.fromRGB(0, 0, 0)
button23.TextSize = 13.000
button23.MouseButton1Click:Connect(function()
	if button23.Text == "Treadmill v2 ❎" then
button23.Text = "Treadmill v2 ✅"
getgenv().Treadmillv2 = true
while getgenv().Treadmillv2 do
wait(0.1)
local A_1 = "changeSize"
local A_2 = 0
local Event = game:GetService("ReplicatedStorage").rEvents.changeSpeedSizeRemote
Event:InvokeServer(A_1, A_2)
plr.Character:WaitForChild("Humanoid").WalkSpeed = 13
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(237.788208, 5.44251966, 372.808685, 0.043823801, -1.50241579e-08, -0.999039292, -3.81654264e-09, 1, -1.52060213e-08, 0.999039292, 4.47926185e-09, 0.043823801)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "W", false, game)
end
if getgenv().Treadmillv2 == false then
wait(0.5)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(false, "W", false, game)
end
elseif button23.Text == "Treadmill v2 ✅" then
button23.Text = "Treadmill v2 ❎"
getgenv().Treadmillv2 = false
while getgenv().Treadmillv2 do
wait(0.1)
local A_1 = "changeSize"
local A_2 = 0
local Event = game:GetService("ReplicatedStorage").rEvents.changeSpeedSizeRemote
Event:InvokeServer(A_1, A_2)
plr.Character:WaitForChild("Humanoid").WalkSpeed = 13
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(237.788208, 5.44251966, 372.808685, 0.043823801, -1.50241579e-08, -0.999039292, -3.81654264e-09, 1, -1.52060213e-08, 0.999039292, 4.47926185e-09, 0.043823801)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(true, "W", false, game)
end
if getgenv().Treadmillv2 == false then
wait(0.5)
local vim = game:service("VirtualInputManager")
           vim:SendKeyEvent(false, "W", false, game)
end
end
end)

button24.Name = "button24"
button24.Parent = ScrollingFrame
button24.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button24.Size = UDim2.new(0, 200, 0, 50)
button24.Font = Enum.Font.GothamBold
button24.Text = "Weight v2 ❎"
button24.TextColor3 = Color3.fromRGB(0, 0, 0)
button24.TextSize = 13.000
button24.MouseButton1Click:Connect(function()
	if button24.Text == "Weight v2 ❎" then
button24.Text = "Weight v2 ✅"
getgenv().weightv2 = true
while getgenv().weightv2 do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-725.613892, 33.4770432, 1991.86694, -0.45550397, -4.02097271e-08, -0.890233755, -4.63261998e-08, 1, -2.14639808e-08, 0.890233755, 3.14642179e-08, -0.45550397)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Weight" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Weight" then
b:Activate()
else
plr.Character:WaitForChild("Weight").repTime.Value = 0.1
end
end
end
if getgenv().weightv2 == false then
plr.Character:WaitForChild("Weight").repTime.Value = 1
wait()
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
elseif button24.Text == "Weight v2 ✅" then
button24.Text = "Weight v2 ❎"
getgenv().weightv2 = false
while getgenv().weightv2 do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-725.613892, 33.4770432, 1991.86694, -0.45550397, -4.02097271e-08, -0.890233755, -4.63261998e-08, 1, -2.14639808e-08, 0.890233755, 3.14642179e-08, -0.45550397)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Weight" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Weight" then
b:Activate()
else
plr.Character:WaitForChild("Weight").repTime.Value = 0.1
end
end
end
if getgenv().weightv2 == false then
plr.Character:WaitForChild("Weight").repTime.Value = 1
wait()
plr.Character:WaitForChild("Humanoid"):UnequipTools()
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
end
end)

button25.Name = "button25"
button25.Parent = ScrollingFrame
button25.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button25.Size = UDim2.new(0, 200, 0, 50)
button25.Font = Enum.Font.GothamBold
button25.Text = "Kill all ❎"
button25.TextColor3 = Color3.fromRGB(0, 0, 0)
button25.TextSize = 13.000
button25.MouseButton1Click:Connect(function()
	if button25.Text == "Kill all ❎" then
button25.Text = "Kill all ✅"
getgenv().kill = true
while getgenv().kill do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-725.613892, 33.4770432, 1991.86694, -0.45550397, -4.02097271e-08, -0.890233755, -4.63261998e-08, 1, -2.14639808e-08, 0.890233755, 3.14642179e-08, -0.45550397)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Punch" then
b:Activate()
end
end
for i,c in pairs(game.Players:GetPlayers()) do
c.Character:WaitForChild("HumanoidRootPart").CFrame = plr.Character:WaitForChild("HumanoidRootPart").CFrame
end
end
if getgenv().kill == false then
wait(0.3)
for i,n in pairs(plr.Character:GetChildren()) do
if n.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):UnequipTools(n)
end
end
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
elseif button25.Text == "Kill all ✅" then
button25.Text = "Kill all ❎"
getgenv().kill = false
while getgenv().kill do
wait()
plr.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-725.613892, 33.4770432, 1991.86694, -0.45550397, -4.02097271e-08, -0.890233755, -4.63261998e-08, 1, -2.14639808e-08, 0.890233755, 3.14642179e-08, -0.45550397)
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):EquipTool(v)
end
end
for i,b in pairs(plr.Character:GetChildren()) do
if b.Name == "Punch" then
b:Activate()
end
end
for i,c in pairs(game.Players:GetPlayers()) do
c.Character:WaitForChild("HumanoidRootPart").CFrame = plr.Character:WaitForChild("HumanoidRootPart").CFrame
end
end
if getgenv().kill == false then
wait(0.3)
for i,n in pairs(plr.Character:GetChildren()) do
if n.Name == "Punch" then
plr.Character:WaitForChild("Humanoid"):UnequipTools(n)
end
end
plr.Character:WaitForChild("HumanoidRootPart").CFrame = oldpos
end
end
end)

button26.Name = "button26"
button26.Parent = ScrollingFrame
button26.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button26.Size = UDim2.new(0, 200, 0, 50)
button26.Font = Enum.Font.GothamBold
button26.Text = "Join Brawl ❎"
button26.TextColor3 = Color3.fromRGB(0, 0, 0)
button26.TextSize = 13.000
button26.MouseButton1Click:Connect(function()
	if button26.Text == "Join Brawl ❎" then
button26.Text = "Join Brawl ✅"
getgenv().brawl = true
while getgenv().brawl do
wait()
local A_1 = "joinBrawl"
local Event = game:GetService("ReplicatedStorage").rEvents.brawlEvent
Event:FireServer(A_1)
end
elseif button26.Text == "Join Brawl ✅" then
button26.Text = "Join Brawl ❎"
getgenv().brawl = false
end
end)

button27.Name = "button27"
button27.Parent = ScrollingFrame
button27.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button27.Size = UDim2.new(0, 200, 0, 50)
button27.Font = Enum.Font.GothamBold
button27.Text = "Fps/AntiLag"
button27.TextColor3 = Color3.fromRGB(0, 0, 0)
button27.TextSize = 13.000
button27.MouseButton1Click:Connect(function()
	local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
end)

button28.Name = "button28"
button28.Parent = ScrollingFrame
button28.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
button28.Size = UDim2.new(0, 200, 0, 50)
button28.Font = Enum.Font.GothamBold
button28.Text = "Kill Npc ❎"
button28.TextColor3 = Color3.fromRGB(0, 0, 0)
button28.TextSize = 13.000
button28.MouseButton1Click:Connect(function()
	if button28.Text == "Kill Npc ❎" then
button28.Text = "Kill Npc ✅"
getgenv().mob = true
while getgenv().mob do
    wait()
    pcall(
        function()
            for i, v in pairs(game:GetService("Workspace").enemyNPCs["Battle Island"]:GetChildren()) do
                if v:IsA("Folder") and v:FindFirstChildOfClass("Model") then
                    for i, v in pairs(v:GetChildren()) do
                        if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
                            repeat
                                wait()
                                pcall(
                                    function()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            v.PrimaryPart.CFrame
                                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(
                                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Punch")
                                        )
                                        game.Players.LocalPlayer.Character:FindFirstChild("Punch"):Activate()
                                    end
                                )
                            until v.Parent.stats.Health == 0 or getgenv().mob == false
                        end
                    end
                end
            end
        end
    )
end
elseif button28.Text == "Kill Npc ✅" then
button28.Text = "Kill Npc ❎"
getgenv().mob = false
while getgenv().mob do
    wait()
    pcall(
        function()
            for i, v in pairs(game:GetService("Workspace").enemyNPCs["Battle Island"]:GetChildren()) do
                if v:IsA("Folder") and v:FindFirstChildOfClass("Model") then
                    for i, v in pairs(v:GetChildren()) do
                        if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
                            repeat
                                wait()
                                pcall(
                                    function()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                            v.PrimaryPart.CFrame
                                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(
                                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Punch")
                                        )
                                        game.Players.LocalPlayer.Character:FindFirstChild("Punch"):Activate()
                                    end
                                )
                            until v.Parent.stats.Health == 0 or getgenv().mob == false
                        end
                    end
                end
            end
        end
    )
end
end
end)





























---end
UIGridLayout.Parent = ScrollingFrame
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, 180, 0, 30)

playerframe.Name = "playerframe"
playerframe.Parent = backgroundframe
playerframe.BackgroundColor3 = Color3.fromRGB(208, 208, 208)
playerframe.Position = UDim2.new(0.266666681, 0, 0, 0)
playerframe.Size = UDim2.new(0, 220, 0, 200)
playerframe.Visible = false

speedbox.Name = "speedbox"
speedbox.Parent = playerframe
speedbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
speedbox.Position = UDim2.new(0.0818181857, 0, 0.0250000004, 0)
speedbox.Size = UDim2.new(0, 80, 0, 60)
speedbox.Font = Enum.Font.GothamBold
speedbox.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
speedbox.Text = ""
speedbox.TextColor3 = Color3.fromRGB(0, 0, 0)
speedbox.TextScaled = true
speedbox.TextSize = 14.000
speedbox.TextWrapped = true

jumppowerbox.Name = "jumppowerbox"
jumppowerbox.Parent = playerframe
jumppowerbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
jumppowerbox.Position = UDim2.new(0.545454502, 0, 0.0250000004, 0)
jumppowerbox.Size = UDim2.new(0, 80, 0, 60)
jumppowerbox.Font = Enum.Font.GothamBold
jumppowerbox.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
jumppowerbox.Text = ""
jumppowerbox.TextColor3 = Color3.fromRGB(0, 0, 0)
jumppowerbox.TextScaled = true
jumppowerbox.TextSize = 14.000
jumppowerbox.TextWrapped = true

speed.Name = "speed"
speed.Parent = playerframe
speed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
speed.Position = UDim2.new(0.0818181783, 0, 0.354999989, 0)
speed.Size = UDim2.new(0, 80, 0, 50)
speed.Font = Enum.Font.GothamBold
speed.Text = "speed"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true
speed.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speedbox.Text
end)

jumppower.Name = "jumppower"
jumppower.Parent = playerframe
jumppower.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
jumppower.Position = UDim2.new(0.545454562, 0, 0.375, 0)
jumppower.Size = UDim2.new(0, 80, 0, 50)
jumppower.Font = Enum.Font.GothamBold
jumppower.Text = "jump    power"
jumppower.TextColor3 = Color3.fromRGB(0, 0, 0)
jumppower.TextScaled = true
jumppower.TextSize = 14.000
jumppower.TextWrapped = true
jumppower.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = jumppowerbox.Text
end)

menuframe.Name = "menu frame"
menuframe.Parent = backgroundframe
menuframe.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
menuframe.Size = UDim2.new(0, 80, 0, 200)

scriptframebutton.Name = "scriptframebutton"
scriptframebutton.Parent = menuframe
scriptframebutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scriptframebutton.Position = UDim2.new(0, 0, 0.0250000004, 0)
scriptframebutton.Size = UDim2.new(0, 80, 0, 30)
scriptframebutton.Font = Enum.Font.GothamBold
scriptframebutton.Text = "Main"
scriptframebutton.TextColor3 = Color3.fromRGB(0, 0, 0)
scriptframebutton.TextScaled = true
scriptframebutton.TextSize = 14.000
scriptframebutton.TextWrapped = true
scriptframebutton.MouseButton1Click:Connect(function()
	ScrollingFrame.Visible = true
	playerframe.Visible = false
end)

playerbutton.Name = "playerbutton"
playerbutton.Parent = menuframe
playerbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
playerbutton.Position = UDim2.new(0, 0, 0.205000013, 0)
playerbutton.Size = UDim2.new(0, 80, 0, 30)
playerbutton.Font = Enum.Font.GothamBold
playerbutton.Text = "player setting"
playerbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
playerbutton.TextScaled = true
playerbutton.TextSize = 14.000
playerbutton.TextWrapped = true
playerbutton.MouseButton1Click:Connect(function()
	playerframe.Visible = true
	ScrollingFrame.Visible = false
end)

title.Name = "title"
title.Parent = topframe
title.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
title.Size = UDim2.new(0, 220, 0, 30)
title.Font = Enum.Font.GothamBold
title.Text = "Muscle Legend"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextSize = 14.000

minimize.Name = "minimize"
minimize.Parent = topframe
minimize.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
minimize.Position = UDim2.new(0.733333349, 0, 0, 0)
minimize.Size = UDim2.new(0, 40, 0, 30)
minimize.Font = Enum.Font.SourceSans
minimize.Text = "-"
minimize.TextColor3 = Color3.fromRGB(0, 0, 0)
minimize.TextSize = 40.000
minimize.TextWrapped = true
minimize.MouseButton1Click:Connect(function()
	if backgroundframe.Visible == true then
		backgroundframe.Visible = false
	else
		if backgroundframe.Visible == false then
			backgroundframe.Visible = true
		end
	end
end)

close.Name = "close"
close.Parent = topframe
close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
close.Position = UDim2.new(0.866666675, 0, 0, 0)
close.Size = UDim2.new(0, 40, 0, 30)
close.Font = Enum.Font.SourceSans
close.Text = "X"
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true
close.MouseButton1Click:Connect(function()
	game.CoreGui:FindFirstChild("library"):Destroy()
end)

---draggable version 2
local function FQIK_fake_script() -- frame.LocalScript 
	local script = Instance.new('LocalScript', topframe)
local UserInputService,gui,dragging,dragInput,dragStart,startPos = game:GetService("UserInputService"),script.Parent

local function update(input)
    local delta = input.Position - dragStart
    gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = gui.Position
     
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

gui.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)
end
coroutine.wrap(FQIK_fake_script)()
else
game:GetService("Players").LocalPlayer:Kick("Wrong Game")
end
