function C() spawn(function () while getgenv().C do wait(1.32) for _, tool in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if tool:IsA("Tool") then tool.Parent = game:GetService("Players").LocalPlayer.Character end end end end) end
getgenv().Settings = {
    ["Auto Click Keybind"] = "V", -- Use an UpperCase letter or KeyCode Enum. Ex: Enum.KeyCode.Semicolon
    ["Lock Mouse Position Keybind"] = "B",
    ["Right Click"] = false,
    ["GUI"] = true, -- A drawing gui that tells you what is going on with the autoclicker.
    ["Delay"] = .01 -- 0 for RenderStepped, other numbers go to regular wait timings.
}
local ImGui = loadstring(game:HttpGet('https://github.com/depthso/Roblox-ImGUI/raw/main/ImGui.lua'))()

local Window = ImGui:CreateWindow({
	Title = "+1 Strong Every Second",
	Size = UDim2.fromOffset(350, 300), --// Roblox property 
	Position = UDim2.new(0.5, 0, 0, 70), --// Roblox property 
})
local Tab1 = Window:CreateTab({
	Name = "Farming",
	Visible = true 
})

Tab1:Label({
	Text = "Tools"
})
Tab1:Button({
	Text = "Auto-equip tools",
	Callback = function(self)
		getgenv().C = self C()
	end,
})
Tab1:Separator()

Tab1:Label({
	Text = "Clicking"
})
Tab1:Button({
	Text = "Autoclicker",
	Callback = function(self)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ZeroedCode/Executors/main/AutoClicker.lua"))()
	end,
})
Tab1:Separator()

Tab1:Label({
	Text = "Misc"
})
Tab1:Button({
Text = "Anti-afk",
Callback = function(self)
   loadstring(game:HttpGet("https://raw.githubusercontent.com/juywvm/-Roblox-Projects-/main/____Anti_Afk_Remastered_______", true))()       
 end,
})

Tab1:Button({
Text = "IY Reborn",
Callback = function(self)
loadstring(game:HttpGet("https://storage.iyr.lol/legacy-iyr/source"))()
end,
})

Tab1:Button({
	Text = "Auto rebirth",
	Callback = function(self)
		loadstring(game:HttpGet("https://pastefy.app/OiE5KL29/raw"))()
	end,
})
