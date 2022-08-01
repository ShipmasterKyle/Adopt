script.Parent.Touched:Connect(function(HitPart)
	local Character = HitPart.Parent
	local Humanoid = Character:FindFirstChild("Humanoid")
	if Humanoid ~= nil then
		Humanoid.Sit = true
	end
end)