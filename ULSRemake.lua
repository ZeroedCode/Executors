repeat wait() until game:IsLoaded()

-- Making sure the game is Treasure Hunt Simulator
if game.PlaceId ~= 2472820296 then
    game.Players.LocalPlayer:Kick("This script only works on Ultimate Lifting Simulator.")
end
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

OrionLib:MakeNotification({
	Name = "Welcome!",
	Content = "Some features may be added in the future, or removed.",
	Image = "rbxassetid://4483345998",
	Time = 5
})


local Window = OrionLib:MakeWindow({Name = "Ultimate Lifting Simulator [EARLY ACCESS]", HidePremium = false, SaveConfig = true, ConfigFolder = "Orion"})

--Player Tab--
local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local PlayerSection = PlayerTab:AddSection({
	Name = "Player"
})


PlayerSection:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 1000,
	Default = 5,
	Color = Color3.fromRGB(255,0,255),
	Increment = 4,
	ValueName = "Walkspeed",
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

PlayerSection:AddSlider({
	Name = "Jump Power",
	Min = 50,
	Max = 1000,
	Default = 5,
	Color = Color3.fromRGB(255,0,0),
	Increment = 4,
	ValueName = "Jump Power",
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})
--Player Tab End--


--Fun Stuff Tab
local FunStuffTab = Window:MakeTab({
	Name = "Fun Stuff",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local FunStuffSection = FunStuffTab:AddSection({
	Name = "Fun Stuff"
})

FunStuffTab:AddButton({
	Name = "Lag the server",
	Callback = function()
while true do
local string_1 = "Punch";
local Target = game:GetService("ReplicatedStorage").Events.Equip;
Target:FireServer(string_1);
task.wait()
end
	end, 
})

FunStuffTab:AddButton({
	Name = "Spam your stomps",
	Callback = function()
		pcall(function()
game:GetService('RunService').Stepped:connect(function()
local Event = game:GetService("ReplicatedStorage").Events.Stomp
Event:InvokeServer()
end) end)

	end,
})
--Fun Stuff Tab End--

--Farming Tab
local FarmingTab = Window:MakeTab({
	Name = "Farming",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local FarmingSection = FarmingTab:AddSection({
	Name = "Farming"
})

FarmingTab:AddToggle({
	Name = "Auto-lift",
	Default = false,
	Save = false,
	Callback = function(Value)
		if Value then
		_G.Print = true
		while _G.Print do
			task.wait()
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v.Name == Text then v:Activate() end
    end
			local Event = game:GetService("ReplicatedStorage").Events.str
			Event:InvokeServer(A_1)
		end
		else
		_G.Print = false
	end
	-- The variable (Value) is a boolean on whether the toggle is true or false
	end,
})

FarmingTab:AddButton({
	Name = "Auto rebirth",
	Callback = function()
		Callback = function()
		pcall(function()
game:GetService('RunService').Stepped:connect(function()
game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer()
end) end)
	end,
}) 

FarmingTab:AddTextbox({
	Name = "Select a weight",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.equip = true
while _G.equip do
    wait()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.Name == Value then
        v.Parent = game.Players.LocalPlayer.Character
              else _G.equip = false
    end
    end
    end
	end,
})

FarmingTab:AddBind({
	Name = "Unequip weight [for PC users]",
	Default = Enum.KeyCode.U,
	Hold = false,
	Callback = function()
		local Players = game:GetService("Players")
	local ContextActionService = game:GetService("ContextActionService")

	local player = Players.LocalPlayer

	ContextActionService:BindAction("unequipTools", function(_, userInputState)
	if userInputState == Enum.UserInputState.Begin then
		if player.Character then
			local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
			if humanoid then
				humanoid:UnequipTools()
			end
		end
	end
end, false,Enum.KeyCode.U)
		-- The variable (Keybind) is a boolean for whether the keybind is being held or not (HoldToInteract needs to be true)
	end,
})

FarmingTab:AddButton({
	Name = "Unequip weight [for mobile users]",
	Callback = function()
	game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Humanoid':UnequipTools()
	end,
}) 
--Farming Tab End--

--Extras Tab
local ExtrasTab = Window:MakeTab({
	Name = "Extras",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local ExtrasSection = ExtrasTab:AddSection({
	Name = "Extras"
})

ExtrasTab:AddButton({
	Name = "Protein BARS",
	Callback = function()
		while true do
		task.wait()
		--pcall(function()
		--game:GetService('RunService').Stepped:connect(function()
	game:GetService("ReplicatedStorage").Events.bar:InvokeServer()
end
	end,
})

ExtrasTab:AddToggle({
	Name = "Auto drop",
	Default = false,
	Callback = function(Value)
if Value then
		_G.Print = true
		while _G.Print do
			game.Players.LocalPlayer.Character.Humanoid.Name = 1
			local l = game.Players.LocalPlayer.Character["1"]:Clone()
			l.Parent = game.Players.LocalPlayer.Character
			l.Name = "Humanoid"
			wait()
			game.Players.LocalPlayer.Character["1"]:Destroy()
			game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Character.Animate.Disabled = true
			wait(0)
			game.Players.LocalPlayer.Character.Animate.Disabled = false
			game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
			wait(5)
		end
		else
		_G.Print = false
	end
	-- The variable (Value) is a boolean on whether the toggle is true or false
	end,
})

ExtrasTab:AddButton({
	Name = "Auto-train pet",
	Callback = function()
	game:GetService('RunService').Stepped:connect(function()
	pcall(function()
	game:GetService("ReplicatedStorage").Events.train:InvokeServer()
	end) end)

end,
})


ExtrasTab:AddButton({
	Name = "Sky Baseplate",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2000, 22000, -1000)
		baseplatee = Instance.new("Part", workspace)
		baseplatee.Size = Vector3.new(1000, 1, 1000)
		baseplatee.CFrame = game.workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame + Vector3.new(0,-2, 0)
		baseplatee.Anchored = true
end,
})
--Extras Tab End--

--"Admin Tab"--
local AdminScriptsTab = Window:MakeTab({
	Name = " ”Admin scripts”",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local AdminScriptsSection = AdminScriptsTab:AddSection({
	Name = "”Admin” <-- Pick & choose"
})

AdminScriptsTab:AddButton({
	Name = "Load Fate's Admin",
	Callback = function()
		-- The function that takes place when the button is pressed
	loadstring(game:HttpGet('https://raw.githubusercontent.com/ZeroedCode/Executors/main/Fate%20Admin.lua'))()
	end,
})

AdminScriptsTab:AddButton({
	Name = "Load IY FE",
	Callback = function()
		-- The function that takes place when the button is pressed
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end,
})

AdminScriptsTab:AddButton({
	Name = "Load Reviz v2",
	Callback = function()
		-- The function that takes place when the button is pressed
	loadstring(game:HttpGet('https://pastebin.com/raw/ZNSgtiwA'))()
	end,
})

AdminScriptsTab:AddButton({
	Name = "Load CMD-X",
	Callback = function()
		-- The function that takes place when the button is pressed
	loadstring(game:HttpGet('https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source'))()
	end,
})
--"Admin" Tab End--

--Settings Tab--
local SettingsTab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local SettingsSection = SettingsTab:AddSection({
	Name = "Having trouble trying to read small numbers?"
})
SettingsTab:AddButton({
	Name = "UrMom GUI",
	Callback = function()
		-- The function that takes place when the button is pressed
     loadstring(game:HttpGet('https://raw.githubusercontent.com/ZeroedCode/Executors/main/UrMom.lua'))()
	end,
})

local SettingsSection = SettingsTab:AddSection({
	Name = "Settings"
})

SettingsSection:AddButton({
	Name = "Destroy UI",
	Callback = function()
        OrionLib:Destroy()
  	end    
})

SettingsTab:AddButton({
	Name = "Rejoin",
	Callback = function()
		-- The function that takes place when the button is pressed
      game:GetService("TeleportService"):Teleport(game.PlaceId)
	end,
})
--Settings End--

--Info Tab--
local InfoTab = Window:MakeTab({
	Name = "Info",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local InfoSection = InfoTab:AddSection({
	Name = "Info"
})

InfoTab:AddLabel("UI project is in a work of progress.")
InfoTab:AddParagraph("Important:","• Elements in the remake project may soon to have evaluated changes, and/or may be removed/added.\n - Everything here is not final. ")
local InfoSection = InfoTab:AddSection({
	Name = "Credits"
})
InfoTab:AddLabel("Made by Pink Cat#4491")

OrionLib:Init() --UI Lib End
