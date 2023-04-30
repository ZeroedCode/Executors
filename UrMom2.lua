local UrMomUi = Instance.new("ScreenGui")
UrMomUi.Name = "UrMomUi"
UrMomUi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local UMMain = Instance.new("Frame")
UMMain.Name = "UMMain"
UMMain.Size = UDim2.new(0.1569187, 0, 0.2215744, 0)
UMMain.BorderColor3 = Color3.fromRGB(27, 42, 53)
UMMain.Position = UDim2.new(0.1954351, 0, 0.6836735, 0)
UMMain.BorderSizePixel = 0
UMMain.BackgroundColor3 = Color3.fromRGB(28, 29, 34)
UMMain.Parent = UrMomUi
UMMain.Active = true
UMMain.Draggable = true

local UICorner = Instance.new("UICorner")
UICorner.Parent = UMMain

local Line1 = Instance.new("TextLabel")
Line1.Name = "Line1"
Line1.TextTransparency = 1
Line1.AutomaticSize = Enum.AutomaticSize.X
Line1.Size = UDim2.new(0.9545455, 0, 0.1973684, 0)
Line1.BackgroundTransparency = 1
Line1.Position = UDim2.new(0.0227273, 0, 0.1644737, 0)
Line1.BorderSizePixel = 0
Line1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line1.FontSize = Enum.FontSize.Size14
Line1.TextSize = 14
Line1.TextColor3 = Color3.fromRGB(255, 91, 208)
Line1.Text = "You earn about:"
Line1.TextWrap = true
Line1.Font = Enum.Font.FredokaOne
Line1.TextWrapped = true
Line1.TextScaled = true
Line1.Parent = UMMain

local Line2 = Instance.new("TextLabel")
Line2.Name = "Line2"
Line2.TextTransparency = 1
Line2.AutomaticSize = Enum.AutomaticSize.X
Line2.Size = UDim2.new(0.9545455, 0, 0.1973684, 0)
Line2.BackgroundTransparency = 1
Line2.Position = UDim2.new(0.0227273, 0, 0.7039474, 0)
Line2.BorderSizePixel = 0
Line2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line2.FontSize = Enum.FontSize.Size14
Line2.TextSize = 10
Line2.TextColor3 = Color3.fromRGB(255, 215, 0)
Line2.Text = "Burp Points per second"
Line2.TextWrap = true
Line2.Font = Enum.Font.FredokaOne
Line2.TextWrapped = true
Line2.TextScaled = true
Line2.Parent = UMMain

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(0.5772728, 0, 0.125, 0)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0.0227273, 0, 0, 0)
Title.BorderSizePixel = 0
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.FontSize = Enum.FontSize.Size14
Title.TextSize = 14
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Text = "UrMom GUI"
Title.TextWrap = true
Title.Font = Enum.Font.FredokaOne
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.TextScaled = true
Title.Parent = UMMain

local WhenCalibrated = Instance.new("TextLabel")
WhenCalibrated.TextTransparency = 1
WhenCalibrated.Name = "WhenCalibrated"
WhenCalibrated.Size = UDim2.new(0.909091, 0, 0.368421, 0)
WhenCalibrated.BackgroundTransparency = 1
WhenCalibrated.Position = UDim2.new(0.0454545, 0, 0.3355263, 0)
WhenCalibrated.BorderSizePixel = 0
WhenCalibrated.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WhenCalibrated.FontSize = Enum.FontSize.Size14
WhenCalibrated.TextSize = 14
WhenCalibrated.TextColor3 = Color3.fromRGB(8, 143, 143)
WhenCalibrated.Text = "0"
WhenCalibrated.TextWrap = true
WhenCalibrated.Font = Enum.Font.FredokaOne
WhenCalibrated.TextWrapped = true
WhenCalibrated.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
WhenCalibrated.TextScaled = true
WhenCalibrated.Parent = UMMain

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = 60
UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(44,46,54)),ColorSequenceKeypoint.new(0.6455907,Color3.fromRGB(228,233,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))})
UIGradient.Offset = Vector2.new(0.050000000745058, -0.050000000745058)
UIGradient.Parent = UMMain

local BeforeCalibrated = Instance.new("TextLabel")
BeforeCalibrated.Name = "BeforeCalibrated"
BeforeCalibrated.Size = UDim2.new(0.909091, 0, 0.3552632, 0)
BeforeCalibrated.BackgroundTransparency = 1
BeforeCalibrated.Position = UDim2.new(0.0454545, 0, 0.3223684, 0)
BeforeCalibrated.BorderSizePixel = 0
BeforeCalibrated.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BeforeCalibrated.FontSize = Enum.FontSize.Size14
BeforeCalibrated.TextSize = 14
BeforeCalibrated.TextColor3 = Color3.fromRGB(255, 255, 255)
BeforeCalibrated.Text = "Awaiting Calibration. Please wait."
BeforeCalibrated.TextWrap = true
BeforeCalibrated.Font = Enum.Font.FredokaOne
BeforeCalibrated.TextWrapped = true
BeforeCalibrated.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
BeforeCalibrated.TextScaled = true
BeforeCalibrated.Parent = UMMain

UrMomUi.Parent = game:GetService("Players").LocalPlayer.PlayerGui

local ts = game:GetService("TweenService")

local need_tweens = {
    WhenCalibrated,
    Line1,
    Line2
}

local function on_calibrated()
	ts:Create(BeforeCalibrated, TweenInfo.new(1, Enum.EasingStyle.Quad), {TextTransparency = 1}):Play()
	wait(0.4)
	spawn(function()
        for _, obj in pairs(need_tweens) do
            ts:Create(obj, TweenInfo.new(1, Enum.EasingStyle.Quad), {TextTransparency = 0}):Play()
        end
	end)
end

local leaderstats = game:GetService("Players").LocalPlayer.leaderstats
index = -1
calibrated = false
while true do
	index = index + 1
	strbefore = leaderstats["Burp points"].Value
	sps = 'Calibrating'
	wait(1)
	if index > 3 then
		strafter = leaderstats["Burp points"].Value-strbefore
		sps = tostring(strafter)
		WhenCalibrated.Text = sps
		if calibrated ~= true then
		    on_calibrated()
		    calibrated = true
		end
	end
end
