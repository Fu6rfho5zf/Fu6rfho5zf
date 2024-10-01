local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local startButton = Instance.new("TextButton")
local difficultyDropdown = Instance.new("TextButton")
local colorDropdown = Instance.new("TextButton")

-- Propriedades do ScreenGui
screenGui.Name = "DeathBallMenu"
screenGui.Parent = player:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false

-- Propriedades da Frame
frame.Name = "MenuFrame"
frame.Parent = screenGui
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.Size = UDim2.new(0, 300, 0, 400)
frame.Position = UDim2.new(0.5, -150, 0.5, -200)

-- Propriedades do Título
title.Name = "Title"
title.Parent = frame
title.Text = "Bola da Morte"
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansBold
title.TextScaled = true

-- Propriedades do Botão de Iniciar
startButton.Name = "StartButton"
startButton.Parent = frame
startButton.Text = "Iniciar Jogo"
startButton.Size = UDim2.new(1, 0, 0, 50)
startButton.Position = UDim2.new(0, 0, 0, 100)
startButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
startButton.TextColor3 = Color3.fromRGB(255, 255, 255)
startButton.Font = Enum.Font.SourceSansBold
startButton.TextScaled = true

-- Propriedades da Dificuldade
difficultyDropdown.Name = "DifficultyDropdown"
difficultyDropdown.Parent = frame
difficultyDropdown.Text = "Dificuldade: Fácil"
difficultyDropdown.Size = UDim2.new(1, 0, 0, 50)
difficultyDropdown.Position = UDim2.new(0, 0, 0, 200)
difficultyDropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
difficultyDropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
difficultyDropdown.Font = Enum.Font.SourceSansBold
difficultyDropdown.TextScaled = true

-- Propriedades da Cor
colorDropdown.Name = "ColorDropdown"
colorDropdown.Parent = frame
colorDropdown.Text = "Cor da Bola: Vermelha"
colorDropdown.Size = UDim2.new(1, 0, 0, 50)
colorDropdown.Position = UDim2.new(0, 0, 0, 300)
colorDropdown.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
colorDropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
colorDropdown.Font = Enum.Font.SourceSansBold
colorDropdown.TextScaled = true

-- Funções para o Menu
local difficulty = "Fácil"
local ballColor = Color3.fromRGB(255, 0, 0)

startButton.MouseButton1Click:Connect(function()
    print("Jogo iniciado com dificuldade: " .. difficulty .. " e cor da bola: ")
    -- Aqui você pode iniciar a lógica do jogo
    -- Exemplo: Criar uma bola e iniciar o loop de "Bola da Morte"
end)

difficultyDropdown.MouseButton1Click:Connect(function()
    if difficulty == "Fácil" then
        difficulty = "Médio"
        difficultyDropdown.Text = "Dificuldade: Médio"
    elseif difficulty == "Médio" then
        difficulty = "Difícil"
        difficultyDropdown.Text = "Dificuldade: Difícil"
    else
        difficulty = "Fácil"
        difficultyDropdown.Text = "Dificuldade: Fácil"
    end
end)

colorDropdown.MouseButton1Click:Connect(function()
    if ballColor == Color3.fromRGB(255, 0, 0) then
        ballColor = Color3.fromRGB(0, 0, 255)
        colorDropdown.Text = "Cor da Bola: Azul"
        colorDropdown.BackgroundColor3 = ballColor
    elseif ballColor == Color3.fromRGB(0, 0, 255) then
        ballColor = Color3.fromRGB(0, 255, 0)
        colorDropdown.Text = "Cor da Bola: Verde"
        colorDropdown.BackgroundColor3 = ballColor
    else
        ballColor = Color3.fromRGB(255, 0, 0)
        colorDropdown.Text = "Cor da Bola: Vermelha"
        colorDropdown.BackgroundColor3 = ballColor
    end
end)
