local ball = Instance.new("Part")
ball.Name = "DeathBall"
ball.Shape = Enum.PartType.Ball
ball.Size = Vector3.new(10, 10, 10)
ball.Position = Vector3.new(0, 50, 0) -- Posição inicial da bola
ball.Color = ballColor -- Cor escolhida no menu
ball.Anchored = false
ball.CanCollide = true
ball.Parent = game.Workspace

-- Propriedades de Física
local bodyVelocity = Instance.new("BodyVelocity")
bodyVelocity.Velocity = Vector3.new(0, -50, 0) -- Velocidade da bola
bodyVelocity.MaxForce = Vector3.new(1000, 1000, 1000)
bodyVelocity.Parent = ball

-- Evento de colisão
ball.Touched:Connect(function(hit)
    if hit.Parent:FindFirstChild("Humanoid") then
        hit.Parent.Humanoid.Health = 0 -- Mata o jogador ao tocar a bola
    end
end)

-- Lógica para movimentar a bola
while true do
    -- Atualiza a posição e direção da bola aqui (exemplo: bouncing effect)
    wait(0.1) -- Ajuste conforme necessário
end
