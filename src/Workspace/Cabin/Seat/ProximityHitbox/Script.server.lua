local detector = script.Parent.ProximityPrompt
local Seat = script.Parent.Parent
local chairSeat = script.Parent.Parent.Seat

chairSeat.Disabled = true

detector.Triggered:Connect(function(plr)
	local char = plr.Character
	
	detector.Enabled = false
	chairSeat.Disabled = false
	char.HumanoidRootPart.Position = chairSeat.Position
	
	wait(1)
	
	repeat wait() until chairSeat.Occupant == nil
	
	if chairSeat.Occupant == nil then
		chairSeat.Disabled = true
		detector.Enabled = true
	end
end)