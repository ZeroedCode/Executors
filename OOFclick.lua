local Services = {
    InsertService = game:GetService("InsertService"),
    Workspace = game:GetService("Workspace"),
    Lighting = game:GetService("Lighting"),
    Players = game:GetService("Players"),
    Debris = game:GetService("Debris"),
    Chat = game:GetService("Chat"),
}

local mouse = Services.Players.LocalPlayer:GetMouse()

local plr = game.Players.LocalPlayer

mouse.Button1Down:connect(function()
    if mouse.Target ~= nil then
        for i, player in ipairs(Services.Players:GetPlayers()) do
            if player.Character and mouse.Target:IsDescendantOf(player.Character) then
                game.ReplicatedStorage.Events.Dee:FireServer(game.Workspace[player.Character.Name].LeftHand, game.Workspace[player.Name].Head, 5, true, game:GetService("Players").LocalPlayer.Backpack.Punch, 5)
                print(player.Name)
            end
        end
    end
end)
