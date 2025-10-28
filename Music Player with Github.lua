-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AudioPlayerGUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Main Frame (iOS style)
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 400, 0, 450)
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -225)
mainFrame.BackgroundColor3 = Color3.fromRGB(28, 28, 30)
mainFrame.BorderSizePixel = 0
mainFrame.ClipsDescendants = true
mainFrame.Parent = screenGui

-- Add rounded corners
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 20)
corner.Parent = mainFrame

-- Title Bar
local titleBar = Instance.new("Frame")
titleBar.Name = "TitleBar"
titleBar.Size = UDim2.new(1, 0, 0, 50)
titleBar.BackgroundColor3 = Color3.fromRGB(44, 44, 46)
titleBar.BorderSizePixel = 0
titleBar.Parent = mainFrame

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 20)
titleCorner.Parent = titleBar

-- Title Label
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -100, 1, 0)
titleLabel.Position = UDim2.new(0, 10, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "🎵 Now Playing"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextSize = 18
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Parent = titleBar

-- Minimize Button
local minimizeBtn = Instance.new("TextButton")
minimizeBtn.Size = UDim2.new(0, 35, 0, 35)
minimizeBtn.Position = UDim2.new(1, -80, 0.5, -17.5)
minimizeBtn.BackgroundColor3 = Color3.fromRGB(255, 204, 0)
minimizeBtn.BorderSizePixel = 0
minimizeBtn.Text = "−"
minimizeBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
minimizeBtn.TextSize = 20
minimizeBtn.Font = Enum.Font.GothamBold
minimizeBtn.Parent = titleBar

local minCorner = Instance.new("UICorner")
minCorner.CornerRadius = UDim.new(1, 0)
minCorner.Parent = minimizeBtn

-- Close Button
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 35, 0, 35)
closeBtn.Position = UDim2.new(1, -40, 0.5, -17.5)
closeBtn.BackgroundColor3 = Color3.fromRGB(255, 59, 48)
closeBtn.BorderSizePixel = 0
closeBtn.Text = "×"
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.TextSize = 24
closeBtn.Font = Enum.Font.GothamBold
closeBtn.Parent = titleBar

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(1, 0)
closeCorner.Parent = closeBtn

-- Playlist Container
local playlistContainer = Instance.new("ScrollingFrame")
playlistContainer.Size = UDim2.new(1, -40, 0, 280)
playlistContainer.Position = UDim2.new(0, 20, 0, 70)
playlistContainer.BackgroundColor3 = Color3.fromRGB(44, 44, 46)
playlistContainer.BorderSizePixel = 0
playlistContainer.ScrollBarThickness = 6
playlistContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
playlistContainer.Parent = mainFrame

local playlistCorner = Instance.new("UICorner")
playlistCorner.CornerRadius = UDim.new(0, 10)
playlistCorner.Parent = playlistContainer

local playlistLayout = Instance.new("UIListLayout")
playlistLayout.Padding = UDim.new(0, 8)
playlistLayout.SortOrder = Enum.SortOrder.LayoutOrder
playlistLayout.Parent = playlistContainer

local playlistPadding = Instance.new("UIPadding")
playlistPadding.PaddingTop = UDim.new(0, 10)
playlistPadding.PaddingBottom = UDim.new(0, 10)
playlistPadding.PaddingLeft = UDim.new(0, 10)
playlistPadding.PaddingRight = UDim.new(0, 10)
playlistPadding.Parent = playlistContainer

-- Control Buttons Container
local controlsContainer = Instance.new("Frame")
controlsContainer.Size = UDim2.new(1, -40, 0, 80)
controlsContainer.Position = UDim2.new(0, 20, 0, 360)
controlsContainer.BackgroundTransparency = 1
controlsContainer.Parent = mainFrame

-- Previous Button
local prevButton = Instance.new("TextButton")
prevButton.Size = UDim2.new(0, 90, 0, 35)
prevButton.Position = UDim2.new(0, 0, 0, 0)
prevButton.BackgroundColor3 = Color3.fromRGB(58, 58, 60)
prevButton.BorderSizePixel = 0
prevButton.Text = "⏮ Prev"
prevButton.TextColor3 = Color3.fromRGB(255, 255, 255)
prevButton.TextSize = 14
prevButton.Font = Enum.Font.GothamBold
prevButton.Parent = controlsContainer

local prevCorner = Instance.new("UICorner")
prevCorner.CornerRadius = UDim.new(0, 8)
prevCorner.Parent = prevButton

-- Play Button
local playButton = Instance.new("TextButton")
playButton.Size = UDim2.new(0, 90, 0, 35)
playButton.Position = UDim2.new(0.5, -45, 0, 0)
playButton.BackgroundColor3 = Color3.fromRGB(0, 122, 255)
playButton.BorderSizePixel = 0
playButton.Text = "▶ Play"
playButton.TextColor3 = Color3.fromRGB(255, 255, 255)
playButton.TextSize = 14
playButton.Font = Enum.Font.GothamBold
playButton.Parent = controlsContainer

local playCorner = Instance.new("UICorner")
playCorner.CornerRadius = UDim.new(0, 8)
playCorner.Parent = playButton

-- Next Button
local nextButton = Instance.new("TextButton")
nextButton.Size = UDim2.new(0, 90, 0, 35)
nextButton.Position = UDim2.new(1, -90, 0, 0)
nextButton.BackgroundColor3 = Color3.fromRGB(58, 58, 60)
nextButton.BorderSizePixel = 0
nextButton.Text = "Next ⏭"
nextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
nextButton.TextSize = 14
nextButton.Font = Enum.Font.GothamBold
nextButton.Parent = controlsContainer

local nextCorner = Instance.new("UICorner")
nextCorner.CornerRadius = UDim.new(0, 8)
nextCorner.Parent = nextButton

-- Stop Button
local stopButton = Instance.new("TextButton")
stopButton.Size = UDim2.new(1, 0, 0, 35)
stopButton.Position = UDim2.new(0, 0, 0, 45)
stopButton.BackgroundColor3 = Color3.fromRGB(255, 59, 48)
stopButton.BorderSizePixel = 0
stopButton.Text = "■ Stop Audio"
stopButton.TextColor3 = Color3.fromRGB(255, 255, 255)
stopButton.TextSize = 14
stopButton.Font = Enum.Font.GothamBold
stopButton.Parent = controlsContainer

local stopCorner = Instance.new("UICorner")
stopCorner.CornerRadius = UDim.new(0, 8)
stopCorner.Parent = stopButton


local playlist = {
	{name = "Di Antara aku dan kau", url = "https://github.com/rebelscodeee-max/Kumpulan-Mp3/raw/main/Tenxi%2C%20suisei%20%26%20Jemsii%20-%20mejikuhibiniu%20(Lyrics).mp3"},
    {name = "Pica", url = "https://github.com/rebelscodeee-max/Kumpulan-Mp3/raw/main/pica.mp3"},
}

local currentTrack = 1
local sound = nil
local isMinimized = false


local function createPlaylistItem(index, trackData)
    local item = Instance.new("Frame")
    item.Size = UDim2.new(1, -10, 0, 50)
    item.BackgroundColor3 = Color3.fromRGB(58, 58, 60)
    item.BorderSizePixel = 0
    item.Parent = playlistContainer
    
    local itemCorner = Instance.new("UICorner")
    itemCorner.CornerRadius = UDim.new(0, 8)
    itemCorner.Parent = item
    
    local numberLabel = Instance.new("TextLabel")
    numberLabel.Size = UDim2.new(0, 30, 1, 0)
    numberLabel.Position = UDim2.new(0, 5, 0, 0)
    numberLabel.BackgroundTransparency = 1
    numberLabel.Text = tostring(index)
    numberLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
    numberLabel.TextSize = 16
    numberLabel.Font = Enum.Font.GothamBold
    numberLabel.Parent = item
    
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(1, -100, 1, 0)
    nameLabel.Position = UDim2.new(0, 40, 0, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = trackData.name
    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameLabel.TextSize = 14
    nameLabel.Font = Enum.Font.Gotham
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.TextTruncate = Enum.TextTruncate.AtEnd
    nameLabel.Parent = item
    
    local playBtn = Instance.new("TextButton")
    playBtn.Size = UDim2.new(0, 50, 0, 35)
    playBtn.Position = UDim2.new(1, -55, 0.5, -17.5)
    playBtn.BackgroundColor3 = Color3.fromRGB(0, 122, 255)
    playBtn.BorderSizePixel = 0
    playBtn.Text = "▶"
    playBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    playBtn.TextSize = 14
    playBtn.Font = Enum.Font.GothamBold
    playBtn.Parent = item
    
    local playBtnCorner = Instance.new("UICorner")
    playBtnCorner.CornerRadius = UDim.new(0, 6)
    playBtnCorner.Parent = playBtn
    
    playBtn.MouseButton1Click:Connect(function()
        currentTrack = index
        playTrack(index)
    end)
    
    return item
end

-- Function to play track
function playTrack(index)
    if index < 1 or index > #playlist then return end
    
    local trackData = playlist[index]
    
    -- Stop existing sound
    if sound then
        sound:Stop()
        sound:Destroy()
    end
    
    -- Create new sound
    sound = Instance.new("Sound")
    
    local success, err = pcall(function()
        titleLabel.Text = "⏳ Loading: " .. trackData.name
        titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        writefile("audio_" .. index .. ".mp3", game:HttpGet(trackData.url))
        sound.SoundId = getcustomasset("audio_" .. index .. ".mp3")
        sound.Volume = 1
        sound.Looped = false
        sound.Parent = game.Players.LocalPlayer.Character:WaitForChild("Head")
        sound:Play()
        titleLabel.Text = "🎵 Playing: " .. trackData.name
        titleLabel.TextColor3 = Color3.fromRGB(0, 255, 100)
        playButton.Text = "⏸ Pause"
    end)
    
    if not success then
        titleLabel.Text = "❌ Error: " .. trackData.name
        titleLabel.TextColor3 = Color3.fromRGB(255, 59, 48)
        wait(2)
        titleLabel.Text = "🎵 Now Playing"
        titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
    
    -- Auto play next when finished
    if sound then
        sound.Ended:Connect(function()
            if currentTrack < #playlist then
                currentTrack = currentTrack + 1
                playTrack(currentTrack)
            end
        end)
    end
end

-- Update canvas size
playlistLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    playlistContainer.CanvasSize = UDim2.new(0, 0, 0, playlistLayout.AbsoluteContentSize.Y + 20)
end)

-- Generate playlist items
for i, track in ipairs(playlist) do
    createPlaylistItem(i, track)
end

-- Make draggable
local dragging = false
local dragInput, mousePos, framePos

titleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        mousePos = input.Position
        framePos = mainFrame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

titleBar.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - mousePos
        mainFrame.Position = UDim2.new(
            framePos.X.Scale,
            framePos.X.Offset + delta.X,
            framePos.Y.Scale,
            framePos.Y.Offset + delta.Y
        )
    end
end)

-- Button hover effects
local function addHoverEffect(button, normalColor, hoverColor)
    button.MouseEnter:Connect(function()
        button.BackgroundColor3 = hoverColor
    end)
    button.MouseLeave:Connect(function()
        button.BackgroundColor3 = normalColor
    end)
end

addHoverEffect(playButton, Color3.fromRGB(0, 122, 255), Color3.fromRGB(10, 132, 255))
addHoverEffect(stopButton, Color3.fromRGB(255, 59, 48), Color3.fromRGB(255, 69, 58))
addHoverEffect(prevButton, Color3.fromRGB(58, 58, 60), Color3.fromRGB(68, 68, 70))
addHoverEffect(nextButton, Color3.fromRGB(58, 58, 60), Color3.fromRGB(68, 68, 70))
addHoverEffect(minimizeBtn, Color3.fromRGB(255, 204, 0), Color3.fromRGB(255, 214, 10))
addHoverEffect(closeBtn, Color3.fromRGB(255, 59, 48), Color3.fromRGB(255, 69, 58))

-- Play/Pause toggle
playButton.MouseButton1Click:Connect(function()
    if sound and sound.IsPlaying then
        sound:Pause()
        playButton.Text = "▶ Play"
        titleLabel.Text = "⏸️ Paused"
        titleLabel.TextColor3 = Color3.fromRGB(255, 149, 0)
    else
        if sound then
            sound:Resume()
            playButton.Text = "⏸ Pause"
            titleLabel.Text = "🎵 Playing: " .. playlist[currentTrack].name
            titleLabel.TextColor3 = Color3.fromRGB(0, 255, 100)
        else
            playTrack(currentTrack)
        end
    end
end)

-- Stop button
stopButton.MouseButton1Click:Connect(function()
    if sound then
        sound:Stop()
        sound:Destroy()
        sound = nil
        playButton.Text = "▶ Play"
        titleLabel.Text = "⏹️ Stopped"
        titleLabel.TextColor3 = Color3.fromRGB(255, 149, 0)
        wait(1)
        titleLabel.Text = "🎵 Now Playing"
        titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
end)

-- Previous button
prevButton.MouseButton1Click:Connect(function()
    if currentTrack > 1 then
        currentTrack = currentTrack - 1
        playTrack(currentTrack)
    end
end)

-- Next button
nextButton.MouseButton1Click:Connect(function()
    if currentTrack < #playlist then
        currentTrack = currentTrack + 1
        playTrack(currentTrack)
    end
end)

-- Minimize button
minimizeBtn.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    if isMinimized then
        mainFrame:TweenSize(UDim2.new(0, 400, 0, 50), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true)
        minimizeBtn.Text = "+"
    else
        mainFrame:TweenSize(UDim2.new(0, 400, 0, 450), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true)
        minimizeBtn.Text = "−"
    end
end)

-- Close button
closeBtn.MouseButton1Click:Connect(function()
    if sound then
        sound:Stop()
        sound:Destroy()
    end
    screenGui:Destroy()
end)
