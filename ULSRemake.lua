repeat wait() until game:IsLoaded()

-- Making sure the game is Treasure Hunt Simulator
if game.PlaceId ~= 2472820296 then
    game.Players.LocalPlayer:Kick("This script only works on Ultimate Lifting Simulator.")
end
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Ultimate Lifting Simulator [ALPHA]",
	LoadingTitle = "Rayfield Interface Suite",
	LoadingSubtitle = "by Sirius",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "Rayfield Interface Suite",
		FileName = "Big Hub"
	},
	KeySystem = false, -- Set this to true to use their key system
	KeySettings = {
		Title = "Sirius Hub",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/sirius)",
		SaveKey = true,
		Key = "ABCDEF"
	}
})
Rayfield:Notify({ -- Notfication -- Title, Content, Image
   Title = "Welcome!",
   Content = "Click on the X button to hide the UI. Press the Right Shift key to make it appear.",
   Duration = 2.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay",
         Callback = function()
         --print("The user tapped Okay")
      end
   },
},
})


--Tab 1
local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Fun stuff")

local Button = Tab:CreateButton({
	Name = "Lag the server",
	Callback = function()
		-- The function that takes place when the button is pressed
		while true do
local string_1 = "Punch";
local Target = game:GetService("ReplicatedStorage").Events.Equip;
Target:FireServer(string_1);
wait()
end
	end,
})

local Button = Tab:CreateButton({
	Name = "Spam your stomps",
	Callback = function()
		pcall(function()
game:GetService('RunService').Stepped:connect(function()
local Event = game:GetService("ReplicatedStorage").Events.Stomp
Event:InvokeServer()
end) end)

	end,
})

local Slider = Tab:CreateSlider({
	Name = "Speed",
	Range = {0, 1000},
	Increment = 10,
	Suffix = "Walkspeed",
	CurrentValue = 0,
	Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		-- The function that takes place when the slider changes
		local hum = game:GetService("Players").LocalPlayer.Character.Humanoid
		-- The variable (Value) is a number which correlates to the value the slider is currently at
		hum.WalkSpeed = Value
	end,
})


local Section = Tab:CreateSection("Farming")
local Toggle = Tab:CreateToggle({
	Name = "Auto lift",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
	-- The function that takes place when the toggle is pressed
	if Value then
		_G.Print = true
		while _G.Print do
			wait(0)
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



local Button = Tab:CreateButton({
	Name = "Auto rebirth",
	Callback = function()
		pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer()
end)
end)
	end,
})

local Input = Tab:CreateInput({
	Name = "Select a Weight",
	PlaceholderText = "Nothing selected",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
		_G.equip = true
while _G.equip do
    wait()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.Name == Text then
        v.Parent = game.Players.LocalPlayer.Character
              else _G.equip = false
    end
    end
    end
		-- The function that takes place when the input is changed
		-- The variable (Text) is a string for the value in the text box
	end,
})

local Keybind = Tab:CreateKeybind({
	Name = "Unequip Weight",
	CurrentKeybind = "U",
	HoldToInteract = false,
	Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Keybind)
		-- The function that takes place when the keybind is pressed
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
end, false, Enum.KeyCode.U)
		-- The variable (Keybind) is a boolean for whether the keybind is being held or not (HoldToInteract needs to be true)
	end,
})




local Section = Tab:CreateSection("Extras")
local Button = Tab:CreateButton({
	Name = "Protein BARS",
	Callback = function()
		pcall(function()
		game:GetService('RunService').Stepped:connect(function()
	game:GetService("ReplicatedStorage").Events.bar:InvokeServer()
end)
end)
	end,
})


local Toggle = Tab:CreateToggle({
	Name = "Auto drop",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
	-- The function that takes place when the toggle is pressed
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
local Button = Tab:CreateButton({
	Name = "Auto-train pet",
	Callback = function()
	game:GetService('RunService').Stepped:connect(function()
	pcall(function()
	game:GetService("ReplicatedStorage").Events.train:InvokeServer()
	end) end)

end,
})
local Button = Tab:CreateButton({
	Name = "Sky Baseplate",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2000, 22000, -1000)
		baseplatee = Instance.new("Part", workspace)
		baseplatee.Size = Vector3.new(1000, 1, 1000)
		baseplatee.CFrame = game.workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame + Vector3.new(0,-2, 0)
		baseplatee.Anchored = true
end,
})


local Tab = Window:CreateTab(" ”Admin scripts”", 4483362458) -- Title, Image

local Section = Tab:CreateSection(" ”Admin” <-- Pick & choose ")
local Button = Tab:CreateButton({
	Name = "Load Reviz v2",
	Callback = function()
		-- The function that takes place when the button is pressed
	loadstring(game:HttpGet('https://pastebin.com/raw/ZNSgtiwA'))()
	end,
})

local Button = Tab:CreateButton({
	Name = "Load Fate's Admin",
	Callback = function()
		-- The function that takes place when the button is pressed
	loadstring(game:HttpGet('https://raw.githubusercontent.com/ZeroedCode/Executors/main/Fate%20Admin.lua'))()
	end,
})
local Button = Tab:CreateButton({
	Name = "Load IY FE",
	Callback = function()
		-- The function that takes place when the button is pressed
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end,
})
local Button = Tab:CreateButton({
	Name = "Load CMD-X",
	Callback = function()
		-- The function that takes place when the button is pressed
	loadstring(game:HttpGet('https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source'))()
	end,
})



local Tab = Window:CreateTab("Others", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Having trouble trying to read small numbers?")
local Button = Tab:CreateButton({
	Name = "UrMom GUI",
	Callback = function()
		-- The function that takes place when the button is pressed
     loadstring(game:HttpGet('https://raw.githubusercontent.com/ZeroedCode/Executors/main/UrMom.lua'))()
	end,
})


local Section = Tab:CreateSection("Click the button below if things are breaking.")
local Button = Tab:CreateButton({
	Name = "Rejoin",
	Callback = function()
		-- The function that takes place when the button is pressed
      game:GetService("TeleportService"):Teleport(game.PlaceId)
	end,
})
local Section = Tab:CreateSection("Click the button to remove the UI.")
local Button = Tab:CreateButton({
	Name = "Destroy UI",
	Callback = function()
		Rayfield:Destroy()
	end,
})


local Tab = Window:CreateTab("Info", 4483362458) -- Title, Image
local Section = Tab:CreateSection("W.I.P")
local Label = Tab:CreateLabel("More things to work on soon.")

local Paragraph = Tab:CreateParagraph({Title = "Important:", Content = "• When more stuff has been figured out to be integrated into the remake project, then it'll be put into this hub."})

local Section = Tab:CreateSection("Credits")
local Label = Tab:CreateLabel("Made by Pink Cat#4491")
--local Input = Tab:CreateInput({
	--Name = "Input Example",
	--PlaceholderText = "Input Placeholder",
	--RemoveTextAfterFocusLost = false,
	--Callback = function(Text)
		-- The function that takes place when the input is changed
		-- The variable (Text) is a string for the value in the text box
	--end,
--})

--local Keybind = Tab:CreateKeybind({
	--Name = "Keybind Example",
	--CurrentKeybind = "Q",
	--HoldToInteract = false,
	--Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	--Callback = function(Keybind)
		-- The function that takes place when the keybind is pressed
		-- The variable (Keybind) is a boolean for whether the keybind is being held or not (HoldToInteract needs to be true)
	--end,
--})

--local Dropdown = Tab:CreateDropdown({
--	Name = "Dropdown Example",
	--Options = {"Option 1","Option 2"},
--	CurrentOption = "Option 1",
--	Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
--	Callback = function(Option)
		-- The function that takes place when the selected option is changed
		-- The variable (Option) is a string for the value that the dropdown was changed to
	--end,
--})

-- Extras

-- getgenv().SecureMode = true -- Only Set To True If Games Are Detecting/Crashing The UI

-- Rayfield:Destroy() -- Destroys UI

-- Rayfield:LoadConfiguration() -- Enables Configuration Saving

-- Section:Set("Section Example") -- Use To Update Section Text

-- Button:Set("Button Example") -- Use To Update Button Text

-- Toggle:Set(false) -- Use To Update Toggle

-- Slider:Set(10) -- Use To Update Slider Value

-- Label:Set("Label Example") -- Use To Update Label Text

-- Paragraph:Set({Title = "Paragraph Example", Content = "Paragraph Example"}) -- Use To Update Paragraph Text

-- Keybind:Set("RightCtrl") -- Keybind (string) -- Use To Update Keybind

-- Dropdown:Set("Option 2") -- The new option value -- Use To Update/Set New Dropdowns
