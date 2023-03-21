repeat wait() until game:IsLoaded()

-- Making sure the game is Treasure Hunt Simulator
if game.PlaceId ~= 2472820296 then
    game.Players.LocalPlayer:Kick("This script only works on Ultimate Lifting Simulator.")
end
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Ultimate Lifting Simulator [UNFINISHED]",
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

Rayfield:Notify("Title Example", "Content/Description Example", 4483362458) -- Notfication -- Title, Content, Image

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
local Toggle = Tab:CreateToggle({
	Name = "Toggle Example",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		-- The function that takes place when the toggle is pressed
		-- The variable (Value) is a boolean on whether the toggle is true or false
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

local Label = Tab:CreateLabel("Label Example")

local Paragraph = Tab:CreateParagraph({Title = "Paragraph Example", Content = "Paragraph Example"})

local Input = Tab:CreateInput({
	Name = "Input Example",
	PlaceholderText = "Input Placeholder",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		-- The function that takes place when the input is changed
		-- The variable (Text) is a string for the value in the text box
	end,
})

local Keybind = Tab:CreateKeybind({
	Name = "Keybind Example",
	CurrentKeybind = "Q",
	HoldToInteract = false,
	Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Keybind)
		-- The function that takes place when the keybind is pressed
		-- The variable (Keybind) is a boolean for whether the keybind is being held or not (HoldToInteract needs to be true)
	end,
})

local Dropdown = Tab:CreateDropdown({
	Name = "Dropdown Example",
	Options = {"Option 1","Option 2"},
	CurrentOption = "Option 1",
	Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Option)
		-- The function that takes place when the selected option is changed
		-- The variable (Option) is a string for the value that the dropdown was changed to
	end,
})

local Button = Tab:CreateButton({
	Name = "Destroy UI",
	Callback = function()
		Rayfield:Destroy()
	end,
})

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
