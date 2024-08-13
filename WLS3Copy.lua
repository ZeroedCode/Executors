-- DO NOT STEAL THIS SCRIPT.

repeat
    wait()
until game:IsLoaded()

-- Making sure the game is Burping Simulator.
if game.PlaceId ~= 17059140992 then
    game.Players.LocalPlayer:Kick("This script only works on WLS 3 copies.")
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
    {Name = "WLS 3 [v1.01 GUI release]", HidePremium = false, SaveConfig = true, ConfigFolder = "Orion"}
)

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
        Name = "Teleport to Underground Gym",
        Callback = function()
            local New_CFrame = CFrame.new(6792.359375, 14.71992301940918, -344.9801940917969)

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
        Name = "Teleport to Desert Gym",
        Callback = function()
            local New_CFrame = CFrame.new(-2836.07763671875, -7.431447505950928, -5575.64990234375)

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
        Name = "Teleport to Sky Gym",
        Callback = function()
            local New_CFrame = CFrame.new(3510.39990234375, 2496.509033203125, -1835.2900390625)

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
        Name = "Teleport to Spooky Gym",
        Callback = function()
            local New_CFrame = CFrame.new(-4348.177734375, -9.9716796875, 802.18701171875)

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
        Name = "Teleport to Winter Gym",
        Callback = function()
            local New_CFrame = CFrame.new(-28.5068359375, 46.2661018371582, 4440.37109375)

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
        Name = "No sound while lifting"
    }
)

FarmingTab:AddToggle(
    {
        Name = "Remove sound",
        Default = false,
        Save = false,
        Callback = function(Value)
            if Value then
                _G.Print = true
                while _G.Print do
                    while task.wait(0.001) do
                        for i, v in pairs(workspace.LocalPlayer.Character.LowerTorso:GetChildren()) do
                            if v:IsA("Sound") then
                                v:Destroy()
                            end
                        end
                    end
                end
            else
                _G.Print = false
            end
        end
    }
)

local FarmingSection =
    FarmingTab:AddSection(
    {
        Name = "Other farming stuff"
    }
)

FarmingTab:AddToggle(
    {
        Name = "Auto E on machines",
        Default = false,
        Save = false,
        Callback = function(Value)
            if Value then
                _G.Print = true
                while _G.Print do
                    while task.wait(0.00339) do
                        local vim = game:service "VirtualInputManager"
                        while wait(.75) do
                            vim:SendKeyEvent(true, "E", false, game)
                        end
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
        Name = "Auto rebirth",
        Default = false,
        Save = false,
        Callback = function(Value)
            if Value then
                _G.Print = true
                while _G.Print do
                   while task.wait(0.1) do
game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer()
end
                        end
                    end
                end
            else
                _G.Print = false
            end
            -- The variable (Value) is a boolean on whether the toggle is true or false
        end
    }
)



FarmingTab:AddBind(
    {
        Name = "Unequip [for PC users]",
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
        Name = "Unequip [for mobile users]",
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
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ZeroedCode/Executors/main/UrMom.lua"))()
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
    "• Dropping has since been patched by Roblox, which has been removed from the Extras tab.\n• Changed Anti-AFK script to a different one.\n• Notifications added for certain GUI actions.\n - Everything here is not final. "
)
local InfoSection =
    InfoTab:AddSection(
    {
        Name = "Credits"
    }
)
InfoTab:AddLabel("Made by 01_pink")

OrionLib:Init()
