function C() spawn(function () while getgenv().C do wait(1.32) for _, tool in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do if tool:IsA("Tool") then tool.Parent = game:GetService("Players").LocalPlayer.Character end end end end) end

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

Window:Button("Deadlift"):Connect(function() 
loadstring(game:HttpGet("https://pastebin.com/raw/x4tCWDG8", true))() 
end)


Window:Seperator();
Window:CheckBox({
    Name = "Auto Rebirth",
    Enabled = false,
    OnChanged = function(value) 
    task.wait(0.1)
         game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer()
    end
})


Window:Seperator();
Window:CheckBox({
    Name = "Auto equip tools",
    Enabled = false,
    OnChanged = function(value)
       getgenv().C = value C()
    end
})


Window:Seperator();
Window:Button("Anti-AFK"):Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/juywvm/-Roblox-Projects-/main/____Anti_Afk_Remastered_______", true))()
end)


Window:End()
