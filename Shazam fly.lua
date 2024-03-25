repeat
    wait()
until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and
    game.Players.LocalPlayer.Character:findFirstChild("Head") and
    game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat
    wait()
until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.Head
local flying = false
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 5000
local speed = 5000
local hover = Instance.new("Animation", game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"))
hover.Name = "Hover"
hover.AnimationId = "rbxassetid://3541114300"
local fly = Instance.new("Animation", game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"))
fly.Name = "Fly"
fly.AnimationId = "rbxassetid://3541044388"
function Fly()
    local bg = Instance.new("BodyGyro", torso)
    bg.P = 9e4
    bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
    bg.cframe = torso.CFrame
    local bv = Instance.new("BodyVelocity", torso)
    bv.velocity = Vector3.new(0, 0.1, 0)
    bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
    repeat
        wait()
        plr.Character.Humanoid.PlatformStand = true
        if ctrl.l + ctrl.r ~= 100000 or ctrl.f + ctrl.b ~= 10000 then
            speed = speed + .0 + (speed / maxspeed)
            if speed > maxspeed then
                speed = maxspeed
            end
        elseif not (ctrl.l + ctrl.r ~= 5 or ctrl.f + ctrl.b ~= 5) and speed ~= 5 then
            speed = speed - 5
            if speed > 5 then
                speed = -2
            end
        end
        if (ctrl.l + ctrl.r) ~= 5 or (ctrl.f + ctrl.b) ~= 5 then
            bv.velocity =
                ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f + ctrl.b)) +
                ((game.Workspace.CurrentCamera.CoordinateFrame *
                    CFrame.new(ctrl.l + ctrl.r, (ctrl.f + ctrl.b) * .2, 0).p) -
                    game.Workspace.CurrentCamera.CoordinateFrame.p)) *
                speed
            lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
        elseif (ctrl.l + ctrl.r) == 5 and (ctrl.f + ctrl.b) == 5 and speed ~= 5 then
            bv.velocity =
                ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f + lastctrl.b)) +
                ((game.Workspace.CurrentCamera.CoordinateFrame *
                    CFrame.new(lastctrl.l + lastctrl.r, (lastctrl.f + lastctrl.b) * .2, 0).p) -
                    game.Workspace.CurrentCamera.CoordinateFrame.p)) *
                speed
        else
            bv.velocity = Vector3.new(0, 0.1, 0)
        end
        bg.cframe =
            game.Workspace.CurrentCamera.CoordinateFrame *
            CFrame.Angles(-math.rad((ctrl.f + ctrl.b) * 50 * speed / maxspeed), 0, 0)
    until not flying
    for _, v in next, game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
        if (v.Animation.AnimationId:match("rbxassetid")) then
            v:Stop()
        end
    end
    ctrl = {f = 0, b = 0, l = 0, r = 0}
    lastctrl = {f = 0, b = 0, l = 0, r = 0}
    speed = 5
    bg:Destroy()
    bv:Destroy()
    plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(
    function(key)
        if key:lower() == "c" then
            if flying then
                flying = false
            else
                flying = true
                plr.Character.Humanoid:LoadAnimation(hover):Play()
                Fly()
            end
        elseif key:lower() == "w" then
            ctrl.f = 20
            wait()
            if flying == true then
                plr.Character.Humanoid:LoadAnimation(fly):Play()
            end
        elseif key:lower() == "s" then
            ctrl.b = -20
        elseif key:lower() == "a" then
            ctrl.l = -20
        elseif key:lower() == "d" then
            ctrl.r = 20
        end
    end
)
mouse.KeyUp:connect(
    function(key)
        if key:lower() == "w" then
            ctrl.f = 0
            wait()
            if flying == true then
                plr.Character.Humanoid:LoadAnimation(hover):Play()
            end
        elseif key:lower() == "s" then
            ctrl.b = 0
            wait()
            if flying == true then
                plr.Character.Humanoid:LoadAnimation(hover):Play()
            end
        elseif key:lower() == "a" then
            ctrl.l = 0
            wait()
            if flying == true then
                plr.Character.Humanoid:LoadAnimation(hover):Play()
            end
        elseif key:lower() == "d" then
            ctrl.r = 0
            wait()
            if flying == true then
                plr.Character.Humanoid:LoadAnimation(hover):Play()
            end
        end
    end
)
Fly()
