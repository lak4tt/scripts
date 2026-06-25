-- Защищенный скрипт RayfieldStyleGui | Разработчик: LAK4TT
local _0xO1 = game:GetService("Players").LocalPlayer
local _0xO2 = game:GetService("UserInputService")
local _0xO3 = game:GetService("RunService")
local _0xO4 = _0xO1:WaitForChild("PlayerGui")

if _0xO4:FindFirstChild("RayfieldStyleGui") then _0xO4:FindFirstChild("RayfieldStyleGui"):Destroy() end

local _0xG1 = Instance.new("ScreenGui", _0xO4)
_0xG1.Name = "RayfieldStyleGui"
_0xG1.ResetOnSpawn = false

local _0xF1 = Instance.new("Frame", _0xG1)
_0xF1.BackgroundColor3 = Color3.fromRGB(24, 26, 32)
_0xF1.BackgroundTransparency = 0.1
_0xF1.Position = UDim2.new(0.5, -175, 0.5, -110)
_0xF1.Size = UDim2.new(0, 350, 0, 220)
_0xF1.Active = true
Instance.new("UICorner", _0xF1).CornerRadius = UDim.new(0, 10)

local _0xS1 = Instance.new("UIStroke", _0xF1)
_0xS1.Color = Color3.fromRGB(45, 48, 58)
_0xS1.Thickness = 1.5

local _0xSB = Instance.new("Frame", _0xF1)
_0xSB.BackgroundColor3 = Color3.fromRGB(18, 20, 24)
_0xSB.Size = UDim2.new(0, 100, 1, 0)
Instance.new("UICorner", _0xSB).CornerRadius = UDim.new(0, 10)

local _0xL1 = Instance.new("TextLabel", _0xSB)
_0xL1.BackgroundTransparency = 1
_0xL1.Position = UDim2.new(0.08, 0, 0.05, 0)
_0xL1.Size = UDim2.new(0.84, 0, 0.1, 0)
_0xL1.Font = Enum.Font.SourceSansBold
_0xL1.Text = "LAK4TT ✨"
_0xL1.TextColor3 = Color3.fromRGB(0, 255, 127)
_0xL1.TextSize = 14
_0xL1.TextXAlignment = Enum.TextXAlignment.Left

local function _0xBtn(parent, text, pos, size, color, ts)
    local b = Instance.new("TextButton", parent)
    b.BackgroundTransparency = color and 0 or 1
    if color then b.BackgroundColor3 = color end
    b.Position = pos
    b.Size = size
    b.Font = Enum.Font.SourceSansBold
    b.Text = text
    b.TextColor3 = Color3.fromRGB(255, 255, 255)
    b.TextSize = ts or 12
    Instance.new("UICorner", b).CornerRadius = UDim.new(0, 6)
    return b
end

local _0xT1 = _0xBtn(_0xSB, "⚙️ Графика", UDim2.new(0.05, 0, 0.22, 0), UDim2.new(0, 90, 0, 33), Color3.fromRGB(35, 40, 50))
local _0xT2 = _0xBtn(_0xSB, "⚡ Функции", UDim2.new(0.05, 0, 0.4, 0), UDim2.new(0, 90, 0, 33), Color3.fromRGB(25, 28, 35))
_0xT2.TextColor3 = Color3.fromRGB(150, 150, 150)

local _0xCB = _0xBtn(_0xF1, "X", UDim2.new(0.93, 0, 0.02, 0), UDim2.new(0, 20, 0, 20), nil, 16)
_0xCB.TextColor3 = Color3.fromRGB(255, 75, 75)

local _0xMB = _0xBtn(_0xF1, "_", UDim2.new(0.86, 0, 0.02, 0), UDim2.new(0, 20, 0, 20), nil, 16)
_0xMB.TextColor3 = Color3.fromRGB(0, 170, 255)

local _0xOB = _0xBtn(_0xG1, "L4K", UDim2.new(0.05, 0, 0.15, 0), UDim2.new(0, 45, 0, 45), Color3.fromRGB(24, 26, 32), 14)
_0xOB.TextColor3 = Color3.fromRGB(0, 255, 127)
_0xOB.Visible = false
Instance.new("UICorner", _0xOB).CornerRadius = UDim.new(0, 50)
Instance.new("UIStroke", _0xOB).Color = Color3.fromRGB(45, 48, 58)

local _0xC1 = Instance.new("Frame", _0xF1)
_0xC1.BackgroundTransparency = 1
_0xC1.Position = UDim2.new(0, 110, 0, 35)
_0xC1.Size = UDim2.new(1, -120, 1, -45)

local _0xC2 = _0xC1:Clone()
_0xC2.Parent = _0xF1
_0xC2.Visible = false

local function _0xDrag(g)
    local d, di, ds, sp
    g.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then d = true; ds = i.Position; sp = g.Position; i.Changed:Connect(function() if i.UserInputState == Enum.UserInputState.End then d = false end end) end end)
    g.InputChanged:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch then di = i end end)
    _0xO2.InputChanged:Connect(function(i) if i == di and d then g.Position = UDim2.new(sp.X.Scale, sp.X.Offset + (i.Position - ds).X, sp.Y.Scale, sp.Y.Offset + (i.Position - ds).Y) end end)
end
_0xDrag(_0xF1); _0xDrag(_0xOB)

local function _0xSwitch(s)
    _0xC1.Visible = s; _0xC2.Visible = not s
    _0xT1.BackgroundColor3 = s and Color3.fromRGB(35, 40, 50) or Color3.fromRGB(25, 28, 35); _0xT1.TextColor3 = s and Color3.fromRGB(255,255,255) or Color3.fromRGB(150,150,150)
    _0xT2.BackgroundColor3 = not s and Color3.fromRGB(35, 40, 50) or Color3.fromRGB(25, 28, 35); _0xT2.TextColor3 = not s and Color3.fromRGB(255,255,255) or Color3.fromRGB(150,150,150)
end
_0xT1.MouseButton1Click:Connect(function() _0xSwitch(true) end)
_0xT2.MouseButton1Click:Connect(function() _0xSwitch(false) end)
_0xMB.MouseButton1Click:Connect(function() _0xF1.Visible = false; _0xOB.Visible = true end)
_0xOB.MouseButton1Click:Connect(function() _0xF1.Visible = true; _0xOB.Visible = false end)
_0xCB.MouseButton1Click:Connect(function() _0xG1:Destroy() end)

local _0xFB = _0xBtn(_0xC1, "УЛЬТРА БУСТ ФПС", UDim2.new(0,0,0,0), UDim2.new(1, 0, 0.25, 0), Color3.fromRGB(220, 40, 80), 14)
_0xFB.MouseButton1Click:Connect(function()
    _0xFB.Text = "ОПТИМИЗАЦИЯ..."
    task.wait(0.2)
    game:GetService("Lighting").GlobalShadows = false
    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
    for _, o in pairs(workspace:GetDescendants()) do
        if o:IsA("BasePart") then o.Material, o.Reflectance = Enum.Material.SmoothPlastic, 0
        elseif o:IsA("Texture") or o:IsA("Decal") then o:Destroy()
        elseif o:IsA("ParticleEmitter") or o:IsA("Trail") then o.Enabled = false end
    end
    _0xFB.Text = "ГРАФИКА ОЧИЩЕНА! ✨"; _0xFB.BackgroundColor3 = Color3.fromRGB(15, 150, 80)
end)

local _0xAfk, _0xSpd, _0xJmp = false, false, false
local function _0xTgl(name, pos, cb)
    local a = false
    local b = _0xBtn(_0xC2, name..": ВЫКЛ", pos, UDim2.new(1, 0, 0.22, 0), Color3.fromRGB(35, 38, 48))
    b.MouseButton1Click:Connect(function()
        a = not a; cb(a)
        b.Text = name..(a and ": ВКЛ" or ": ВЫКЛ")
        b.BackgroundColor3 = a and Color3.fromRGB(0, 120, 240) or Color3.fromRGB(35, 38, 48)
    end)
end

_0xTgl("Анти-АФК", UDim2.new(0,0,0,0), function(v) _0xAfk = v end)
_0xTgl("Спидхак (Скорость 60)", UDim2.new(0,0,0.3,0), function(v) _0xSpd = v; if not v and _0xO1.Character and _0xO1.Character:FindFirstChild("Humanoid") then _0xO1.Character.Humanoid.WalkSpeed = 16 end end)
_0xTgl("Бесконечный Прыжок", UDim2.new(0,0,0.6,0), function(v) _0xJmp = v end)

task.spawn(function() while task.wait(60) do if _0xAfk then game:GetService("VirtualUser"):CaptureController(); game:GetService("VirtualUser"):ClickButton2(Vector2.new(0,0)) end end end)
_0xO3.Heartbeat:Connect(function() if _0xSpd and _0xO1.Character and _0xO1.Character:FindFirstChild("Humanoid") then _0xO1.Character.Humanoid.WalkSpeed = 60 end end)
_0xO2.JumpRequest:Connect(function() if _0xJmp and _0xO1.Character and _0xO1.Character:FindFirstChild("Humanoid") then _0xO1.Character.Humanoid:ChangeState("Jumping") end end)
