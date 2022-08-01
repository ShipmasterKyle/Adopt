while wait()do
local player = game.Players.LocalPlayer
script.Parent.Text = "$"..player:WaitForChild("leaderstats"):FindFirstChild("Coins").Value
end