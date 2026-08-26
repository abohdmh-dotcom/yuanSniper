local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local localPlayer = Players.LocalPlayer
local playerGui = localPlayer:WaitForChild("PlayerGui")

if playerGui:FindFirstChild("YuanSniperUI") then
    playerGui.YuanSniperUI:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "YuanSniperUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = playerGui

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 320, 0, 410)
MainFrame.Position = UDim2.new(0.5, -160, 0.3, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(12, 12, 14)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 16)
MainCorner.Parent = MainFrame

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(45, 45, 50)
MainStroke.Thickness = 1.5
MainStroke.Parent = MainFrame

local Header = Instance.new("Frame")
Header.Size = UDim2.new(1, 0, 0, 50)
Header.BackgroundTransparency = 1
Header.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(0.7, 0, 1, 0)
Title.Position = UDim2.new(0.05, 0, 0, 0)
Title.Font = Enum.Font.GothamBold
Title.Text = "YUAN CODE SNIPER"
Title.TextColor3 = Color3.fromRGB(240, 240, 245)
Title.TextSize = 14
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.BackgroundTransparency = 1
Title.Parent = Header

local MasterToggleBg = Instance.new("Frame")
MasterToggleBg.Size = UDim2.new(0, 44, 0, 24)
MasterToggleBg.Position = UDim2.new(0.82, 0, 0.28, 0)
MasterToggleBg.BackgroundColor3 = Color3.fromRGB(0, 200, 120)
MasterToggleBg.Parent = Header

local MasterCorner = Instance.new("UICorner")
MasterCorner.CornerRadius = UDim.new(1, 0)
MasterCorner.Parent = MasterToggleBg

local MasterCircle = Instance.new("Frame")
MasterCircle.Size = UDim2.new(0, 18, 0, 18)
MasterCircle.Position = UDim2.new(0, 23, 0.5, -9)
MasterCircle.BackgroundColor3 = Color3.fromRGB(200, 200, 205)
MasterCircle.Parent = MasterToggleBg

local MasterCircleCorner = Instance.new("UICorner")
MasterCircleCorner.CornerRadius = UDim.new(1, 0)
MasterCircleCorner.Parent = MasterCircle

local MasterBtn = Instance.new("TextButton")
MasterBtn.Size = UDim2.new(1, 0, 1, 0)
MasterBtn.BackgroundTransparency = 1
MasterBtn.Text = ""
MasterBtn.Parent = MasterToggleBg

local Line = Instance.new("Frame")
Line.Size = UDim2.new(0.9, 0, 0, 1)
Line.Position = UDim2.new(0.05, 0, 0.125, 0)
Line.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
Line.BorderSizePixel = 0
Line.Parent = MainFrame

local function createCard(pos, height)
    local card = Instance.new("Frame")
    card.Size = UDim2.new(0.9, 0, 0, height)
    card.Position = pos
    card.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
    card.Parent = MainFrame
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = card
    
    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(35, 35, 40)
    stroke.Thickness = 1
    stroke.Parent = card
    
    return card
end

local Row1 = createCard(UDim2.new(0.05, 0, 0.15, 0), 48)

local AutoSubmitLabel = Instance.new("TextLabel")
AutoSubmitLabel.Text = "Auto submit"
AutoSubmitLabel.Font = Enum.Font.GothamMedium
AutoSubmitLabel.TextColor3 = Color3.fromRGB(200, 200, 205)
AutoSubmitLabel.TextSize = 12
AutoSubmitLabel.Size = UDim2.new(0.32, 0, 1, 0)
AutoSubmitLabel.Position = UDim2.new(0.04, 0, 0, 0)
AutoSubmitLabel.BackgroundTransparency = 1
AutoSubmitLabel.TextXAlignment = Enum.TextXAlignment.Left
AutoSubmitLabel.Parent = Row1

local AutoSubmitBtn = Instance.new("TextButton")
AutoSubmitBtn.Size = UDim2.new(0, 42, 0, 22)
AutoSubmitBtn.Position = UDim2.new(0.34, 0, 0.27, 0)
AutoSubmitBtn.BackgroundColor3 = Color3.fromRGB(230, 230, 235)
AutoSubmitBtn.Font = Enum.Font.GothamBold
AutoSubmitBtn.Text = "ON"
AutoSubmitBtn.TextColor3 = Color3.fromRGB(15, 15, 15)
AutoSubmitBtn.TextSize = 10
AutoSubmitBtn.Parent = Row1

local ASBtnCorner = Instance.new("UICorner")
ASBtnCorner.CornerRadius = UDim.new(0, 6)
ASBtnCorner.Parent = AutoSubmitBtn

local RiddleLabel = Instance.new("TextLabel")
RiddleLabel.Text = "Riddle solver"
RiddleLabel.Font = Enum.Font.GothamMedium
RiddleLabel.TextColor3 = Color3.fromRGB(130, 130, 135)
RiddleLabel.TextSize = 11
RiddleLabel.Size = UDim2.new(0.3, 0, 1, 0)
RiddleLabel.Position = UDim2.new(0.53, 0, 0, 0)
RiddleLabel.BackgroundTransparency = 1
RiddleLabel.TextXAlignment = Enum.TextXAlignment.Left
RiddleLabel.Parent = Row1

local RiddleBtn = Instance.new("TextButton")
RiddleBtn.Size = UDim2.new(0, 42, 0, 22)
RiddleBtn.Position = UDim2.new(0.83, 0, 0.27, 0)
RiddleBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
RiddleBtn.Font = Enum.Font.GothamBold
RiddleBtn.Text = "OFF"
RiddleBtn.TextColor3 = Color3.fromRGB(100, 100, 105)
RiddleBtn.TextSize = 10
RiddleBtn.Parent = Row1

local RiddleBtnCorner = Instance.new("UICorner")
RiddleBtnCorner.CornerRadius = UDim.new(0, 6)
RiddleBtnCorner.Parent = RiddleBtn

local Row2 = createCard(UDim2.new(0.05, 0, 0.29, 0), 48)

local MsgLabel = Instance.new("TextLabel")
MsgLabel.Text = "Submit after msgs"
MsgLabel.Font = Enum.Font.GothamMedium
MsgLabel.TextColor3 = Color3.fromRGB(200, 200, 205)
MsgLabel.TextSize = 12
MsgLabel.Size = UDim2.new(0.5, 0, 1, 0)
MsgLabel.Position = UDim2.new(0.04, 0, 0, 0)
MsgLabel.BackgroundTransparency = 1
MsgLabel.TextXAlignment = Enum.TextXAlignment.Left
MsgLabel.Parent = Row2

local CounterFrame = Instance.new("Frame")
CounterFrame.Size = UDim2.new(0, 95, 0, 28)
CounterFrame.Position = UDim2.new(0.64, 0, 0.2, 0)
CounterFrame.BackgroundColor3 = Color3.fromRGB(28, 28, 32)
CounterFrame.Parent = Row2

local CounterCorner = Instance.new("UICorner")
CounterCorner.CornerRadius = UDim.new(0, 6)
CounterCorner.Parent = CounterFrame

local MinusBtn = Instance.new("TextButton")
MinusBtn.Size = UDim2.new(0, 28, 1, 0)
MinusBtn.BackgroundTransparency = 1
MinusBtn.Font = Enum.Font.GothamBold
MinusBtn.Text = "-"
MinusBtn.TextColor3 = Color3.fromRGB(200, 200, 205)
MinusBtn.TextSize = 14
MinusBtn.Parent = CounterFrame

local CountDisplay = Instance.new("TextLabel")
CountDisplay.Size = UDim2.new(0, 39, 1, 0)
CountDisplay.Position = UDim2.new(0, 28, 0, 0)
CountDisplay.BackgroundTransparency = 1
CountDisplay.Font = Enum.Font.GothamBold
CountDisplay.Text = "3"
CountDisplay.TextColor3 = Color3.fromRGB(240, 240, 245)
CountDisplay.TextSize = 13
CountDisplay.Parent = CounterFrame

local PlusBtn = Instance.new("TextButton")
PlusBtn.Size = UDim2.new(0, 28, 1, 0)
PlusBtn.Position = UDim2.new(0, 67, 0, 0)
PlusBtn.BackgroundTransparency = 1
PlusBtn.Font = Enum.Font.GothamBold
PlusBtn.Text = "+"
PlusBtn.TextColor3 = Color3.fromRGB(200, 200, 205)
PlusBtn.TextSize = 14
PlusBtn.Parent = CounterFrame

local Row3 = createCard(UDim2.new(0.05, 0, 0.43, 0), 48)

local RetypeLabel = Instance.new("TextLabel")
RetypeLabel.Text = "Retype invalid"
RetypeLabel.Font = Enum.Font.GothamMedium
RetypeLabel.TextColor3 = Color3.fromRGB(200, 200, 205)
RetypeLabel.TextSize = 12
RetypeLabel.Size = UDim2.new(0.5, 0, 1, 0)
RetypeLabel.Position = UDim2.new(0.04, 0, 0, 0)
RetypeLabel.BackgroundTransparency = 1
RetypeLabel.TextXAlignment = Enum.TextXAlignment.Left
RetypeLabel.Parent = Row3

local RetypeBtn = Instance.new("TextButton")
RetypeBtn.Size = UDim2.new(0, 42, 0, 22)
RetypeBtn.Position = UDim2.new(0.83, 0, 0.27, 0)
RetypeBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
RetypeBtn.Font = Enum.Font.GothamBold
RetypeBtn.Text = "OFF"
RetypeBtn.TextColor3 = Color3.fromRGB(100, 100, 105)
RetypeBtn.TextSize = 10
RetypeBtn.Parent = Row3

local RetypeBtnCorner = Instance.new("UICorner")
RetypeBtnCorner.CornerRadius = UDim.new(0, 6)
RetypeBtnCorner.Parent = RetypeBtn

local ConsoleBox = Instance.new("Frame")
ConsoleBox.Size = UDim2.new(0.9, 0, 0.38, 0)
ConsoleBox.Position = UDim2.new(0.05, 0, 0.57, 0)
ConsoleBox.BackgroundColor3 = Color3.fromRGB(8, 8, 10)
ConsoleBox.Parent = MainFrame

local ConsoleCorner = Instance.new("UICorner")
ConsoleCorner.CornerRadius = UDim.new(0, 10)
ConsoleCorner.Parent = ConsoleBox

local ConsoleStroke = Instance.new("UIStroke")
ConsoleStroke.Color = Color3.fromRGB(35, 35, 40)
ConsoleStroke.Thickness = 1
ConsoleStroke.Parent = ConsoleBox

local ConsoleText = Instance.new("TextLabel")
ConsoleText.Size = UDim2.new(0.92, 0, 0.9, 0)
ConsoleText.Position = UDim2.new(0.04, 0, 0.05, 0)
ConsoleText.BackgroundTransparency = 1
ConsoleText.Font = Enum.Font.Code
ConsoleText.Text = "> scanning for codes...\n> Status: Loaded successfully"
ConsoleText.TextColor3 = Color3.fromRGB(120, 120, 130)
ConsoleText.TextSize = 11
ConsoleText.TextXAlignment = Enum.TextXAlignment.Left
ConsoleText.TextYAlignment = Enum.TextYAlignment.Top
ConsoleText.Parent = ConsoleBox

local Footer = Instance.new("TextLabel")
Footer.Size = UDim2.new(1, 0, 0, 20)
Footer.Position = UDim2.new(0, 0, 0.95, 0)
Footer.BackgroundTransparency = 1
Footer.Font = Enum.Font.GothamMedium
Footer.Text = "discord.gg/MYqz4hsvc7"
Footer.TextColor3 = Color3.fromRGB(80, 80, 90)
Footer.TextSize = 10
Footer.Parent = MainFrame

local masterState = true
local autoSubmitState = true
local riddleState = false
local retypeState = false
local messageCount = 3

local function toggleState(btn, state)
    if state then
        btn.BackgroundColor3 = Color3.fromRGB(230, 230, 235)
        btn.TextColor3 = Color3.fromRGB(15, 15, 15)
        btn.Text = "ON"
    else
        btn.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
        btn.TextColor3 = Color3.fromRGB(100, 100, 105)
        btn.Text = "OFF"
    end
end

MasterBtn.MouseButton1Click:Connect(function()
    masterState = not masterState
    if masterState then
        TweenService:Create(MasterCircle, TweenInfo.new(0.2), {Position = UDim2.new(0, 23, 0.5, -9)}):Play()
        MasterToggleBg.BackgroundColor3 = Color3.fromRGB(0, 200, 120)
        ConsoleText.Text = ConsoleText.Text .. "\n> Sniper Enabled"
    else
        TweenService:Create(MasterCircle, TweenInfo.new(0.2), {Position = UDim2.new(0, 3, 0.5, -9)}):Play()
        MasterToggleBg.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
        ConsoleText.Text = ConsoleText.Text .. "\n> Sniper Disabled"
    end
end)

AutoSubmitBtn.MouseButton1Click:Connect(function()
    autoSubmitState = not autoSubmitState
    toggleState(AutoSubmitBtn, autoSubmitState)
end)

RiddleBtn.MouseButton1Click:Connect(function()
    riddleState = not riddleState
    toggleState(RiddleBtn, riddleState)
end)

RetypeBtn.MouseButton1Click:Connect(function()
    retypeState = not retypeState
    toggleState(RetypeBtn, retypeState)
end)

PlusBtn.MouseButton1Click:Connect(function()
    messageCount = messageCount + 1
    CountDisplay.Text = tostring(messageCount)
end)

MinusBtn.MouseButton1Click:Connect(function()
    if messageCount > 1 then
        messageCount = messageCount - 1
        CountDisplay.Text = tostring(messageCount)
    end
end)

local collectedMessages = {}
local function processAndRedeem(code)
    ConsoleText.Text = ConsoleText.Text .. "\n> Code Sniped: " .. code
    task.spawn(function()
        pcall(function()
            local remotes = ReplicatedStorage:FindFirstChild("RemoteEvent", true) or ReplicatedStorage:FindFirstChild("Remotes", true)
            if remotes then
                remotes:FireServer(code)
            end
        end)
    end)
end

local function listenToChat(player)
    player.Chatted:Connect(function(msg)
        if masterState and autoSubmitState then
            table.insert(collectedMessages, msg)
            if #collectedMessages >= messageCount then
                local finalCode = table.concat(collectedMessages, "")
                processAndRedeem(finalCode)
                collectedMessages = {}
            end
        end
    end)
end

for _, p in ipairs(Players:GetPlayers()) do
    listenToChat(p)
end
Players.PlayerAdded:Connect(listenToChat)
