local runService = game:GetService("RunService")
local texture = script.Parent

local function update()
	texture.OffsetStudsU = (texture.OffsetStudsU + 0.0125) % texture.StudsPerTileU
	texture.OffsetStudsV = (texture.OffsetStudsV + 0.01
		* math.sin(tick())) % texture.StudsPerTileV
end

runService.Heartbeat:Connect(update)