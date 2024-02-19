-- DO NOT STEAL THIS SCRIPT.

repeat
    wait()
until game:IsLoaded()

-- Making sure the game is Burping Simulator.
if game.PlaceId ~= 1747207098 then
    game.Players.LocalPlayer:Kick("This script only works on Burping Simulator.")
end
local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/shlexware/Orion/main/source")))()

OrionLib:MakeNotification(
    {
        Name = "Welcome!",
        Content = "Some features may be added in the future, or removed.",
        Image = "rbxassetid://4483345998",
        Time = 5
    }
)

local Window =
    OrionLib:MakeWindow(
    {Name = "Burping Simulator [v1.04.1 GUI release]", HidePremium = false, SaveConfig = true, ConfigFolder = "Orion"}
)

function AutoEquip()
    spawn(
        function()
            while getgenv().equip == true do
                task.wait(0.39)
                if not game.Players.LocalPlayer.Backpack:FindFirstChild("Starter Drink") then
                    if not game.Players.LocalPlayer.Character:FindFirstChild("Starter Drink") then
                        game.Players.LocalPlayer.Character:BreakJoints()
                    end
                end
                if game.Players.LocalPlayer.leaderstats["Burp points"].Value == 0 then
                    local Players = game:GetService("Players")

                    local player = Players:FindFirstChildOfClass("Player")
                    if player and player.Character then
                        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            local tool = Players.LocalPlayer.Backpack:FindFirstChild("Starter Drink")
                            if tool then
                                humanoid:EquipTool(tool)
                            end
                        end
                    end
                end

                if game.Players.LocalPlayer.leaderstats["Burp points"].Value >= 0 then
                    local Players = game:GetService("Players")

                    local player = Players:FindFirstChildOfClass("Player")
                    if player and player.Character then
                        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            local tool = Players.LocalPlayer.Backpack:FindFirstChild("Starter Drink")
                            if tool then
                                humanoid:EquipTool(tool)
                            end
                        end
                    end
                end

                if game.Players.LocalPlayer.leaderstats["Burp points"].Value >= 150 then
                    local Players = game:GetService("Players")

                    local player = Players:FindFirstChildOfClass("Player")
                    if player and player.Character then
                        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            local tool = Players.LocalPlayer.Backpack:FindFirstChild("Second Drink")
                            if tool then
                                humanoid:EquipTool(tool)
                            end
                        end
                    end
                end
                if game.Players.LocalPlayer.leaderstats["Burp points"].Value >= 500 then
                    local Players = game:GetService("Players")

                    local player = Players:FindFirstChildOfClass("Player")
                    if player and player.Character then
                        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            local tool = Players.LocalPlayer.Backpack:FindFirstChild("Third Drink")
                            if tool then
                                humanoid:EquipTool(tool)
                            end
                        end
                    end
                end

                if game.Players.LocalPlayer.leaderstats["Burp points"].Value >= 1600 then
                    local Players = game:GetService("Players")

                    local player = Players:FindFirstChildOfClass("Player")
                    if player and player.Character then
                        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            local tool = Players.LocalPlayer.Backpack:FindFirstChild("Fourth Drink")
                            if tool then
                                humanoid:EquipTool(tool)
                            end
                        end
                    end
                end

                if game.Players.LocalPlayer.leaderstats["Burp points"].Value >= 3500 then
                    local Players = game:GetService("Players")

                    local player = Players:FindFirstChildOfClass("Player")
                    if player and player.Character then
                        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            local tool = Players.LocalPlayer.Backpack:FindFirstChild("Fifth Drink")
                            if tool then
                                humanoid:EquipTool(tool)
                            end
                        end
                    end
                end

                if game.Players.LocalPlayer.leaderstats["Burp points"].Value >= 10000 then
                    local Players = game:GetService("Players")

                    local player = Players:FindFirstChildOfClass("Player")
                    if player and player.Character then
                        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            local tool = Players.LocalPlayer.Backpack:FindFirstChild("Sixth Drink")
                            if tool then
                                humanoid:EquipTool(tool)
                            end
                        end
                    end
                end

                if game.Players.LocalPlayer.leaderstats["Burp points"].Value >= 25000 then
                    local Players = game:GetService("Players")

                    local player = Players:FindFirstChildOfClass("Player")
                    if player and player.Character then
                        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            local tool = Players.LocalPlayer.Backpack:FindFirstChild("Seventh Drink")
                            if tool then
                                humanoid:EquipTool(tool)
                            end
                        end
                    end
                end

                if game.Players.LocalPlayer.leaderstats["Burp points"].Value >= 60000 then
                    local Players = game:GetService("Players")

                    local player = Players:FindFirstChildOfClass("Player")
                    if player and player.Character then
                        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            local tool = Players.LocalPlayer.Backpack:FindFirstChild("Eighth Drink")
                            if tool then
                                humanoid:EquipTool(tool)
                            end
                        end
                    end
                end

                if game.Players.LocalPlayer.leaderstats["Burp points"].Value >= 150000 then
                    local Players = game:GetService("Players")

                    local player = Players:FindFirstChildOfClass("Player")
                    if player and player.Character then
                        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            local tool = Players.LocalPlayer.Backpack:FindFirstChild("Ninth Drink")
                            if tool then
                                humanoid:EquipTool(tool)
                            end
                        end
                    end
                end

                if game.Players.LocalPlayer.leaderstats["Burp points"].Value >= 230000 then
                    local Players = game:GetService("Players")

                    local player = Players:FindFirstChildOfClass("Player")
                    if player and player.Character then
                        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            local tool = Players.LocalPlayer.Backpack:FindFirstChild("Atomic Drink")
                            if tool then
                                humanoid:EquipTool(tool)
                            end
                        end
                    end
                end

                if game.Players.LocalPlayer.leaderstats["Burp points"].Value >= 500000 then
                    local Players = game:GetService("Players")

                    local player = Players:FindFirstChildOfClass("Player")
                    if player and player.Character then
                        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            local tool = Players.LocalPlayer.Backpack:FindFirstChild("Omega Burp Juice")
                            if tool then
                                humanoid:EquipTool(tool)
                            end
                        end
                    end
                end

                if game.Players.LocalPlayer.leaderstats["Burp points"].Value >= 1000000 then
                    local Players = game:GetService("Players")

                    local player = Players:FindFirstChildOfClass("Player")
                    if player and player.Character then
                        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            local tool = Players.LocalPlayer.Backpack:FindFirstChild("Thunder Fizz")
                            if tool then
                                humanoid:EquipTool(tool)
                            end
                        end
                    end
                end
                if game.Players.LocalPlayer.leaderstats["Burp points"].Value >= 2000000 then
                    local Players = game:GetService("Players")

                    local player = Players:FindFirstChildOfClass("Player")
                    if player and player.Character then
                        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            local tool = Players.LocalPlayer.Backpack:FindFirstChild("Garlic Juice")
                            if tool then
                                humanoid:EquipTool(tool)
                            end
                        end
                    end
                end
            end
        end
    )
end

--Player Tab--
local PlayerTab =
    Window:MakeTab(
    {
        Name = "Player",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local PlayerSection =
    PlayerTab:AddSection(
    {
        Name = "Player"
    }
)

PlayerSection:AddSlider(
    {
        Name = "Walkspeed",
        Min = 16,
        Max = 1000,
        Default = 5,
        Color = Color3.fromRGB(255, 0, 255),
        Increment = 4,
        ValueName = "Walkspeed",
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end
    }
)

PlayerSection:AddSlider(
    {
        Name = "Jump Power",
        Min = 50,
        Max = 1000,
        Default = 5,
        Color = Color3.fromRGB(255, 0, 0),
        Increment = 4,
        ValueName = "Jump Power",
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end
    }
)
--Player Tab End--

--Fun Stuff Tab
local FunStuffTab =
    Window:MakeTab(
    {
        Name = "Fun Stuff",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)
local FunStuffSection =
    FunStuffTab:AddSection(
    {
        Name = "Fun Stuff"
    }
)

FunStuffTab:AddButton(
    {
        Name = "Spam the BURPS",
        Callback = function()
            while true do
                task.wait()
                game:GetService("ReplicatedStorage").RemoteEvents.BurpEvent:FireServer()
            end
        end
    }
)

FunStuffTab:AddButton(
    {
        Name = "Remove FPS cap",
        Callback = function()
            if setfpscap and type(setfpscap) == "function" then
                local num = 100000 or 1e6
                if num == "none" then
                    return setfpscap(1e6)
                elseif num > 0 then
                    return setfpscap(num)
                end
            end
        end
    }
)
local FunStuffSection =
    FunStuffTab:AddSection(
    {
        Name = "Teleport options"
    }
)

FunStuffTab:AddButton(
    {
        Name = "Teleport to Safe Zone",
        Callback = function()
            local New_CFrame = CFrame.new(-46, 48, -15)

            local ts = game:GetService("TweenService")
            local char = game.Players.LocalPlayer.Character

            local part = char.HumanoidRootPart
            local ti = TweenInfo.new(1, Enum.EasingStyle.Linear)
            local tp = {CFrame = New_CFrame}
            ts:Create(part, ti, tp):Play()
        end
    }
)

FunStuffTab:AddButton(
    {
        Name = "Teleport to Pet Shop",
        Callback = function()
            local New_CFrame = CFrame.new(311, 52, 103)

            local ts = game:GetService("TweenService")
            local char = game.Players.LocalPlayer.Character

            local part = char.HumanoidRootPart
            local ti = TweenInfo.new(1, Enum.EasingStyle.Linear)
            local tp = {CFrame = New_CFrame}
            ts:Create(part, ti, tp):Play()
        end
    }
)

FunStuffTab:AddButton(
    {
        Name = "Teleport to Disco Island",
        Callback = function()
            local New_CFrame = CFrame.new(63, 48, 636)

            local ts = game:GetService("TweenService")
            local char = game.Players.LocalPlayer.Character

            local part = char.HumanoidRootPart
            local ti = TweenInfo.new(1, Enum.EasingStyle.Linear)
            local tp = {CFrame = New_CFrame}
            ts:Create(part, ti, tp):Play()
        end
    }
)
FunStuffTab:AddButton(
    {
        Name = "Teleport to Hotel",
        Callback = function()
            local New_CFrame = CFrame.new(-1198.279052734375, 44.315752029418945, -5.583522319793701)

            local ts = game:GetService("TweenService")
            local char = game.Players.LocalPlayer.Character

            local part = char.HumanoidRootPart
            local ti = TweenInfo.new(1, Enum.EasingStyle.Linear)
            local tp = {CFrame = New_CFrame}
            ts:Create(part, ti, tp):Play()
        end
    }
)

FunStuffTab:AddButton(
    {
        Name = "Teleport to First Cloud",
        Callback = function()
            local New_CFrame = CFrame.new(296, 566, 689)

            local ts = game:GetService("TweenService")
            local char = game.Players.LocalPlayer.Character

            local part = char.HumanoidRootPart
            local ti = TweenInfo.new(1, Enum.EasingStyle.Linear)
            local tp = {CFrame = New_CFrame}
            ts:Create(part, ti, tp):Play()
        end
    }
)

FunStuffTab:AddButton(
    {
        Name = "Teleport to Second Cloud",
        Callback = function()
            local New_CFrame = CFrame.new(-1224, 557, -318)

            local ts = game:GetService("TweenService")
            local char = game.Players.LocalPlayer.Character

            local part = char.HumanoidRootPart
            local ti = TweenInfo.new(1, Enum.EasingStyle.Linear)
            local tp = {CFrame = New_CFrame}
            ts:Create(part, ti, tp):Play()
        end
    }
)

FunStuffTab:AddButton(
    {
        Name = "Teleport to Sky Island",
        Callback = function()
            local New_CFrame = CFrame.new(2117.87109375, 1470.884765625, -1050.54296875)

            local ts = game:GetService("TweenService")
            local char = game.Players.LocalPlayer.Character

            local part = char.HumanoidRootPart
            local ti = TweenInfo.new(1, Enum.EasingStyle.Linear)
            local tp = {CFrame = New_CFrame}
            ts:Create(part, ti, tp):Play()
        end
    }
)
--Fun Stuff Tab End--

--Farming Tab
local FarmingTab =
    Window:MakeTab(
    {
        Name = "Farming",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)
local FarmingSection =
    FarmingTab:AddSection(
    {
        Name = "Drinks"
    }
)

FarmingTab:AddToggle(
    {
        Name = "Starter Drink",
        Default = false,
        Save = false,
        Callback = function(Value)
            if Value then
                _G.Print = true
                while _G.Print do
                    while task.wait(2.34) do
                        game.ReplicatedStorage.RemoteEvents.DrinkEvent:FireServer("Starter Drink")
                    end
                end
            else
                _G.Print = false
            end
            -- The variable (Value) is a boolean on whether the toggle is true or false
        end
    }
)

FarmingTab:AddToggle(
    {
        Name = "Second Drink",
        Default = false,
        Save = false,
        Callback = function(Value)
            if Value then
                _G.Print = true
                while _G.Print do
                    while task.wait(2.34) do
                        game.ReplicatedStorage.RemoteEvents.DrinkEvent:FireServer("Second Drink")
                    end
                end
            else
                _G.Print = false
            end
            -- The variable (Value) is a boolean on whether the toggle is true or false
        end
    }
)

FarmingTab:AddToggle(
    {
        Name = "Third Drink",
        Default = false,
        Save = false,
        Callback = function(Value)
            if Value then
                _G.Print = true
                while _G.Print do
                    while task.wait(2.34) do
                        game.ReplicatedStorage.RemoteEvents.DrinkEvent:FireServer("Third Drink")
                    end
                end
            else
                _G.Print = false
            end
            -- The variable (Value) is a boolean on whether the toggle is true or false
        end
    }
)

FarmingTab:AddToggle(
    {
        Name = "Fourth Drink",
        Default = false,
        Save = false,
        Callback = function(Value)
            if Value then
                _G.Print = true
                while _G.Print do
                    while task.wait(2.34) do
                        game.ReplicatedStorage.RemoteEvents.DrinkEvent:FireServer("Fourth Drink")
                    end
                end
            else
                _G.Print = false
            end
            -- The variable (Value) is a boolean on whether the toggle is true or false
        end
    }
)

FarmingTab:AddToggle(
    {
        Name = "Fifth Drink",
        Default = false,
        Save = false,
        Callback = function(Value)
            if Value then
                _G.Print = true
                while _G.Print do
                    while task.wait(2.34) do
                        game.ReplicatedStorage.RemoteEvents.DrinkEvent:FireServer("Fifth Drink")
                    end
                end
            else
                _G.Print = false
            end
            -- The variable (Value) is a boolean on whether the toggle is true or false
        end
    }
)

FarmingTab:AddToggle(
    {
        Name = "Sixth Drink",
        Default = false,
        Save = false,
        Callback = function(Value)
            if Value then
                _G.Print = true
                while _G.Print do
                    while task.wait(2.34) do
                        game.ReplicatedStorage.RemoteEvents.DrinkEvent:FireServer("Sixth Drink")
                    end
                end
            else
                _G.Print = false
            end
            -- The variable (Value) is a boolean on whether the toggle is true or false
        end
    }
)

FarmingTab:AddToggle(
    {
        Name = "Seventh Drink",
        Default = false,
        Save = false,
        Callback = function(Value)
            if Value then
                _G.Print = true
                while _G.Print do
                    while task.wait(2.34) do
                        game.ReplicatedStorage.RemoteEvents.DrinkEvent:FireServer("Seventh Drink")
                    end
                end
            else
                _G.Print = false
            end
            -- The variable (Value) is a boolean on whether the toggle is true or false
        end
    }
)

FarmingTab:AddToggle(
    {
        Name = "Eighth Drink",
        Default = false,
        Save = false,
        Callback = function(Value)
            if Value then
                _G.Print = true
                while _G.Print do
                    while task.wait(2.34) do
                        game.ReplicatedStorage.RemoteEvents.DrinkEvent:FireServer("Eighth Drink")
                    end
                end
            else
                _G.Print = false
            end
            -- The variable (Value) is a boolean on whether the toggle is true or false
        end
    }
)

FarmingTab:AddToggle(
    {
        Name = "Ninth Drink",
        Default = false,
        Save = false,
        Callback = function(Value)
            if Value then
                _G.Print = true
                while _G.Print do
                    while task.wait(2.34) do
                        game.ReplicatedStorage.RemoteEvents.DrinkEvent:FireServer("Ninth Drink")
                    end
                end
            else
                _G.Print = false
            end
            -- The variable (Value) is a boolean on whether the toggle is true or false
        end
    }
)

FarmingTab:AddToggle(
    {
        Name = "Atomic Drink",
        Default = false,
        Save = false,
        Callback = function(Value)
            if Value then
                _G.Print = true
                while _G.Print do
                    while task.wait(2.34) do
                        game.ReplicatedStorage.RemoteEvents.DrinkEvent:FireServer("Atomic Drink")
                    end
                end
            else
                _G.Print = false
            end
            -- The variable (Value) is a boolean on whether the toggle is true or false
        end
    }
)

FarmingTab:AddToggle(
    {
        Name = "Omega Burp Juice",
        Default = false,
        Save = false,
        Callback = function(Value)
            if Value then
                _G.Print = true
                while _G.Print do
                    while task.wait(2.34) do
                        game.ReplicatedStorage.RemoteEvents.DrinkEvent:FireServer("Omega Burp Juice")
                    end
                end
            else
                _G.Print = false
            end
            -- The variable (Value) is a boolean on whether the toggle is true or false
        end
    }
)

FarmingTab:AddToggle(
    {
        Name = "Thunder FIZZ",
        Default = false,
        Save = false,
        Callback = function(Value)
            if Value then
                _G.Print = true
                while _G.Print do
                    while task.wait(2.34) do
                        game.ReplicatedStorage.RemoteEvents.DrinkEvent:FireServer("Thunder Fizz")
                    end
                end
            else
                _G.Print = false
            end
            -- The variable (Value) is a boolean on whether the toggle is true or false
        end
    }
)

FarmingTab:AddToggle(
    {
        Name = "Garlic Juice",
        Default = false,
        Save = false,
        Callback = function(Value)
            if Value then
                _G.Print = true
                while _G.Print do
                    while task.wait(2.34) do
                        game.ReplicatedStorage.RemoteEvents.DrinkEvent:FireServer("Garlic Juice")
                    end
                end
            else
                _G.Print = false
            end
            -- The variable (Value) is a boolean on whether the toggle is true or false
        end
    }
)

local FarmingSection =
    FarmingTab:AddSection(
    {
        Name = "Others"
    }
)

FarmingTab:AddButton(
    {
        Name = "Auto Prestige",
        Callback = function()
            while true do
                task.wait(0.075)
                game.ReplicatedStorage.RemoteEvents.PrestigeEvent:FireServer()
            end
        end
    }
)

FarmingTab:AddTextbox(
    {
        Name = "Select a drink",
        Default = "",
        TextDisappear = true,
        Callback = function(Value)
            _G.equip = true
            while _G.equip do
                wait()
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.Name == Value then
                        v.Parent = game.Players.LocalPlayer.Character
                    else
                        _G.equip = false
                    end
                end
            end
        end
    }
)

FarmingTab:AddBind(
    {
        Name = "Unequip drink [for PC users]",
        Default = Enum.KeyCode.U,
        Hold = false,
        Callback = function()
            local Players = game:GetService("Players")
            local ContextActionService = game:GetService("ContextActionService")

            local player = Players.LocalPlayer

            ContextActionService:BindAction(
                "unequipTools",
                function(_, userInputState)
                    if userInputState == Enum.UserInputState.Begin then
                        if player.Character then
                            local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                            if humanoid then
                                humanoid:UnequipTools()
                            end
                        end
                    end
                end,
                false,
                Enum.KeyCode.U
            )
            -- The variable (Keybind) is a boolean for whether the keybind is being held or not (HoldToInteract needs to be true)
        end
    }
)

FarmingTab:AddButton(
    {
        Name = "Unequip drink [for mobile users]",
        Callback = function()
            game:GetService "Players".LocalPlayer.Character:FindFirstChildOfClass "Humanoid":UnequipTools()
        end
    }
)
--Farming Tab End--

--Extras Tab
local ExtrasTab =
    Window:MakeTab(
    {
        Name = "Extras",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)
local ExtrasSection =
    ExtrasTab:AddSection(
    {
        Name = "Extras"
    }
)

ExtrasTab:AddButton(
    {
        Name = "Auto-collect Gems",
        Callback = function()
            while true do
                task.wait()
                --pcall(function()
                --game:GetService('RunService').Stepped:connect(function()
                local gem = game.Workspace.Diamonds:WaitForChild("Diamond")
                local Char = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                gem.CFrame = Char.CFrame
            end
        end
    }
)

ExtrasTab:AddToggle(
    {
        Name = "Auto Equip",
        Default = false,
        Callback = function(bool)
            getgenv().equip = bool
            if bool then
                AutoEquip()
            end
        end
    }
)
-- The variable (Value) is a boolean on whether the toggle is true or false
--ExtrasTab:AddToggle({
--	Name = "Auto Drop",
--	Default = false,
--	Callback = function(Value)
--if Value then
--		_G.Print = true
--		while _G.Print do
--			game.Players.LocalPlayer.Character.Humanoid.Name = 1
--			local l = game.Players.LocalPlayer.Character["1"]:Clone()
--			l.Parent = game.Players.LocalPlayer.Character
--			l.Name = "Humanoid"
--			wait()
--			game.Players.LocalPlayer.Character["1"]:Destroy()
--			game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
--			game.Players.LocalPlayer.Character.Animate.Disabled = true
--			wait(0)
--			game.Players.LocalPlayer.Character.Animate.Disabled = false
--			game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
--			wait(5)
--		end
--		else
--		_G.Print = false
--	end
--	 The variable (Value) is a boolean on whether the toggle is true or false
--end,
--})
ExtrasTab:AddButton(
    {
        Name = "UrMom Ui",
        Callback = function()
            OrionLib:MakeNotification(
                {
                    Name = "Need help to read smol numbers?",
                    Content = "Here ya go lmao",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                }
            )
            loadstring(game:HttpGet("https://pastebin.com/raw/XCXxhZht"))()
        end
    }
)

ExtrasTab:AddButton(
    {
        Name = "Sky Baseplate",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7000, 22000, -5000)
            baseplatee = Instance.new("Part", workspace)
            baseplatee.Size = Vector3.new(1000, 1, 1000)
            baseplatee.CFrame =
                game.workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame + Vector3.new(0, -2, 0)
            baseplatee.Anchored = true
        end
    }
)
--Extras Tab End--

--"Admin Tab"--
local AdminScriptsTab =
    Window:MakeTab(
    {
        Name = " ”Admin scripts”",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)
local AdminScriptsSection =
    AdminScriptsTab:AddSection(
    {
        Name = "”Admin” <-- Pick & choose"
    }
)

AdminScriptsTab:AddButton(
    {
        Name = "Load Fate's Admin",
        Callback = function()
            -- The function that takes place when the button is pressed
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ZeroedCode/Executors/main/Fate%20Admin.lua"))()
        end
    }
)

AdminScriptsTab:AddButton(
    {
        Name = "Load IY FE",
        Callback = function()
            -- The function that takes place when the button is pressed
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
        end
    }
)

AdminScriptsTab:AddButton(
    {
        Name = "Load Reviz v2",
        Callback = function()
            -- The function that takes place when the button is pressed
            loadstring(game:HttpGet("https://pastebin.com/raw/ZNSgtiwA"))()
        end
    }
)

AdminScriptsTab:AddButton(
    {
        Name = "Load CMD-X",
        Callback = function()
            -- The function that takes place when the button is pressed
            loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source"))()
        end
    }
)
--"Admin" Tab End--

--Settings Tab--
local SettingsTab =
    Window:MakeTab(
    {
        Name = "Settings",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local SettingsSection =
    SettingsTab:AddSection(
    {
        Name = "Settings"
    }
)

SettingsSection:AddButton(
    {
        Name = "Destroy UI",
        Callback = function()
            OrionLib:Destroy()
        end
    }
)

SettingsSection:AddButton(
    {
        Name = "Anti Kick",
        Callback = function()
            OrionLib:MakeNotification(
                {
                    Name = "Anti Kick enabled.",
                    Content = "This should prevent the localscript from kicking you, if you're autofarming.",
                    Image = "rbxassetid://4483345998",
                    Time = 7
                }
            )
            local mt = getrawmetatable(game)
            local old = mt.__namecall
            local protect = newcclosure or protect_function

            setreadonly(mt, false)
            mt.__namecall =
                protect(
                function(self, ...)
                    local method = getnamecallmethod()
                    if method == "Kick" then
                        wait(9e9)
                        return
                    end
                    return old(self, ...)
                end
            )
            hookfunction(
                game.Players.LocalPlayer.Kick,
                protect(
                    function()
                        wait(9e9)
                    end
                )
            )
        end
    }
)

SettingsSection:AddButton(
    {
        Name = "Anti AFK",
        Callback = function()
            OrionLib:MakeNotification(
                {
                    Name = "Anti AFK loaded.",
                    Content = "This script was made by blood of batus#9999.",
                    Image = "rbxassetid://4483345998",
                    Time = 7
                }
            )
            loadstring(
                game:HttpGet(
                    "https://raw.githubusercontent.com/juywvm/-Roblox-Projects-/main/____Anti_Afk_Remastered_______",
                    true
                )
            )()
        end
    }
)

SettingsTab:AddButton(
    {
        Name = "Rejoin",
        Callback = function()
            OrionLib:MakeNotification(
                {
                    Name = "Rejoining.",
                    Content = "Please wait.",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                }
            )
            -- The function that takes place when the button is pressed
            game:GetService("TeleportService"):Teleport(game.PlaceId)
        end
    }
)
--Settings End--

--Info Tab--
local InfoTab =
    Window:MakeTab(
    {
        Name = "Info",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)
local InfoSection =
    InfoTab:AddSection(
    {
        Name = "Info"
    }
)

InfoTab:AddLabel("UI project is in a work of progress.")
InfoTab:AddParagraph(
    "Important:",
    "• Dropping has since been patched by Roblox, which has been removed from the Extras tab.\n• Changed Anti-AFK script to a different one.\n• Garlic Juice auto-equip should be properly fixed this time.\n• Notifications added for certain GUI actions.\n - Everything here is not final. "
)
local InfoSection =
    InfoTab:AddSection(
    {
        Name = "Credits"
    }
)
InfoTab:AddLabel("Made by 01_pink")

OrionLib:Init()
