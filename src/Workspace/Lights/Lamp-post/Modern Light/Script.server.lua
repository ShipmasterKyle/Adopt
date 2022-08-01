local lightPart = script.Parent
local pointlight = lightPart.PointLight
while true do
	wait (0.1)
	if game.Lighting:GetMinutesAfterMidnight()> 6 * 60 then
		lightPart.Material = Enum.Material.Glass
		pointlight.Enabled = false
	end
	if game.Lighting:GetMinutesAfterMidnight()> 18 * 60 then
		lightPart.Material = Enum.Material.Neon
		pointlight.Enabled = true
	end
end
