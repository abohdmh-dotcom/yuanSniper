local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local localPlayer = Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")

local MsgCountLabel = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local PlusBtn = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local MinusBtn = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")

local AutoRedeemToggle = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local RetypeToggle = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local StatusLabel = Instance.new("TextLabel")

ScreenGui.Name = "YuanSniperGUI"
ScreenGui.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, -140, 0.4, -110)
MainFrame.Size = UDim2.new(0, 280, 0, 240)
MainFrame.Active = true
MainFrame.Draggable = true

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Font = Enum.Font.GothamBold
Title.Text = "Yuan Sniper [ULTIMATE]"
Title.TextColor3 = Color3.fromRGB(0, 255, 180)
Title.TextSize = 15

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 12)
TitleCorner.Parent = Title

MsgCountLabel.Parent = MainFrame
MsgCountLabel.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
MsgCountLabel.Position = UDim2.new(0.07, 0, 0.23, 0)
MsgCountLabel.Size = UDim2.new(0.86, 0, 0, 35)
MsgCountLabel.Font = Enum.Font.GothamMedium
MsgCountLabel.Text = "Target Parts: 3"
MsgCountLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
MsgCountLabel.TextSize:eq = 14
MsgCountLabel.TextSize = 14

UICorner_2.CornerRadius = UDim.new(0, 8)
UICorner_2.Parent = MsgCountLabel

PlusBtn.Parent = MainFrame
PlusBtn.BackgroundColor3 = Color3.fromRGB(0, 140, 255)
PlusBtn.Position = UDim2.new(0.53, 0, 0.42, 0)
PlusBtn.Size = UDim2.new(0.4, 0, 0, 35)
PlusBtn.Font = Enum.Font.GothamBold
PlusBtn.Text = "+ Add"
PlusBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
PlusBtn.TextSize = 14

UICorner_3.CornerRadius = UDim.new(0, 8)
UICorner_3.Parent = PlusBtn

MinusBtn.Parent = MainFrame
MinusBtn.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
MinusBtn.Position = UDim2.new(0.07, 0, 0.42, 0)
MinusBtn.Size = UDim2.new(0.4, 0, 0, 35)
MinusBtn.Font = Enum.Font.GothamBold
MinusBtn.Text = "- Sub"
MinusBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
MinusBtn.TextSize = 14

UICorner_4.CornerRadius = UDim.new(0, 8)
UICorner_4.Parent = MinusBtn

AutoRedeemToggle.Parent = MainFrame
AutoRedeemToggle.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
AutoRedeemToggle.Position = UDim2.new(0.07, 0, 0.61, 0)
AutoRedeemToggle.Size = UDim2.new(0.86, 0, 0, 35)
AutoRedeemToggle.Font = Enum.Font.GothamBold
AutoRedeemToggle.Text = "Auto Redeem: OFF"
AutoRedeemToggle.TextColor3 = Color3.fromRGB(255, 90, 90)
AutoRedeemToggle.TextSize = 13

UICorner_5.CornerRadius = UDim.new(0, 8)
UICorner_5.Parent = AutoRedeemToggle

RetypeToggle.Parent = MainFrame
RetypeToggle.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
RetypeToggle.Position = UDim2.new(0.07, 0, 0.80, 0)
RetypeToggle.Size = UDim2.new(0.86, 0, 0, 35)
RetypeToggle.Font = Enum.Font.GothamBold
RetypeToggle.Text = "Retype Invalid: OFF"
RetypeToggle.TextColor3 = Color3.fromRGB(255, 90, 90)
RetypeToggle.TextSize = 13

UICorner_6.CornerRadius = UDim.new(0, 8)
UICorner_6.Parent = RetypeToggle

StatusLabel.Parent = MainFrame
StatusLabel.BackgroundColor3 = Color3.Transparent
StatusLabel.Position = UDim2.new(0.07, 0, 0.94, 0)
StatusLabel.Size = UDim2.new(0.86, 0, 0, 15)
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.Text = "Status: Ready for Yuan"
StatusLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
StatusLabel.TextSize = 10

local messageCount = 3
local autoRedeemState = false
local retypeInvalidState = false

PlusBtn.MouseButton1Click:Connect(function()
    messageCount = messageCount + 1
    MsgCountLabel.Text = "Target Parts: " .. messageCount
end)

MinusBtn.MouseButton1Click:Connect(function()
    if messageCount > 1 then
        messageCount = messageCount - 1
        MsgCountLabel.Text = "Target Parts: " .. messageCount
    end
end)

AutoRedeemToggle.MouseButton1Click:Connect(function()
    autoRedeemState = not autoRedeemState
    if autoRedeemState then
        AutoRedeemToggle.Text = "Auto Redeem: ON"
        AutoRedeemToggle.TextColor3 = Color3.fromRGB(0, 255, 120)
        AutoRedeemToggle.BackgroundColor3 = Color3.fromRGB(20, 50, 35)
    else
        AutoRedeemToggle.Text = "Auto Redeem: OFF"
        AutoRedeemToggle.TextColor3 = Color3.fromRGB(255, 90, 90)
        AutoRedeemToggle.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
    end
end)

RetypeToggle.MouseButton1Click:Connect(function()
    retypeInvalidState = not retypeInvalidState
    if retypeInvalidState then
        RetypeToggle.Text = "Retype Invalid: ON"
        RetypeToggle.TextColor3 = Color3.fromRGB(0, 255, 120)
        RetypeToggle.BackgroundColor3 = Color3.fromRGB(20, 50, 35)
    else
        RetypeToggle.Text = "Retype Invalid: OFF"
        RetypeToggle.TextColor3 = Color3.fromRGB(255, 90, 90)
        RetypeToggle.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
    end
end)

local collectedMessages = {}
local function processAndRedeem(code)
    StatusLabel.Text = "Status: Sniping..."
    task.spawn(function()
        local success, err = pcall(function()
            local remotes = ReplicatedStorage:FindFirstChild("RemoteEvent", true) or ReplicatedStorage:FindFirstChild("Remotes", true)
            if remotes then
                remotes:FireServer(code)
            end
        end)
        
        if success then
            StatusLabel.Text = "Status: Redeemed Successfully!"
        else
            if retypeInvalidState then
                StatusLabel.Text = "Status: Retyping Invalid..."
                task.wait(0.1)
                pcall(function()
                    local remotes = ReplicatedStorage:FindFirstChild("RemoteEvent", true)
                    if remotes then remotes:FireServer(code) end
                end)
            else
                StatusLabel.Text = "Status: Failed / Invalid"
            end
        end
    end)
end

local function listenToChat(player)
    player.Chatted:Connect(function(msg)
        if autoRedeemState then
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
