-- Coloque isso no ServerScriptService
local deathBall = script.Parent -- A bola da morte

local speed = 50 -- Velocidade da bola
local damage = 20 -- Quantidade de dano ao jogador
local killRadius = 5 -- Distância de impacto para causar dano

-- Função para mover a bola em direção aos jogadores
local function moveDeathBall()
    while true do
        wait(0.1)
        local players = game.Players:GetPlayers()

        for _, player in pairs(players) do
            if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                local target = player.Character.HumanoidRootPart.Position
                local ballPosition = deathBall.Position
                local direction = (target - ballPosition).unit -- Direção para o jogador
                
                deathBall.Velocity = direction * speed

                -- Verifica se a bola está próxima o suficiente para causar dano
                if (ballPosition - target).magnitude <= killRadius then
                    local humanoid = player.Character:FindFirstChild("Humanoid")
                    if humanoid then
                        humanoid:TakeDamage(damage)
                    end
                end
            end
        end
    end
end

-- Inicia o movimento da bola da morte
moveDeathBall()
