function C() spawn(function () while getgenv().C do wait(1.32) for _, tool in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if tool:IsA("Tool") then tool.Parent = game:GetService("Players").LocalPlayer.Character end end end end) end
getgenv().Settings = {
    ["Auto Click Keybind"] = "V", -- Use an UpperCase letter or KeyCode Enum. Ex: Enum.KeyCode.Semicolon
    ["Lock Mouse Position Keybind"] = "B",
    ["Right Click"] = false,
    ["GUI"] = true, -- A drawing gui that tells you what is going on with the autoclicker.
    ["Delay"] = 1.01 -- 0 for RenderStepped, other numbers go to regular wait timings.
}

local ImGui = loadstring(game:HttpGet("https://raw.githubusercontent.com/wiIlow/imgui-rbx/main/main.lua", true))()


local Window = ImGui:Begin({
    Name = "Weight Lifting Simulator 3: Revival",
    Width = 530,
    Height = 400
})
Window:Text("Farming");

Window:Button("Auto Farm"):Connect(function()
loadstring(game:HttpGet("https://pastefy.app/XdSvNl8u/raw"))()
end)

Window:Button("Auto E on machine"):Connect(function()
loadstring(game:HttpGet("https://pastebin.com/raw/LCX9puZf", true))()
end)    

Window:Button("Deadlift"):Connect(function() 
loadstring(game:HttpGet("https://pastebin.com/raw/x4tCWDG8", true))() 
end)

Window:Button("UrMomUi"):Connect(function() 
loadstring(game:HttpGet("https://raw.githubusercontent.com/ZeroedCode/Executors/main/UrMom.lua", true))()  
end)


Window:Seperator();
Window:Button("Auto Rebirth"):Connect(function() 
loadstring(game:HttpGet("https://pastefy.app/hcwvN9Bg/raw"))()  
end)


Window:Seperator();
Window:CheckBox({
    Name = "Auto equip tools",
    Enabled = false,
    OnChanged = function(value)
       getgenv().C = value C()
    end
})

Window:Text("Misc");
Window:Seperator();
Window:Button("Anti-AFK"):Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/juywvm/-Roblox-Projects-/main/____Anti_Afk_Remastered_______", true))()       
end)

Window:Button("AutoClicker"):Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ZeroedCode/Executors/main/AutoClicker.lua"))()  
end)

Window:End()
