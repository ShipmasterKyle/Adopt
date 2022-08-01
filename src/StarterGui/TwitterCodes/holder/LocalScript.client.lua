local player = game.Players.LocalPlayer
local Codes = script.Parent:WaitForChild("holder"):WaitForChild("Codes"):GetChildren()
local CodeText = script.Parent.holder:WaitForChild("EnterCode")

local Cash = player:WaitForChild("leaderstats"):WaitForChild("Cash")

script.Parent.holder:WaitForChild("Confirm").MouseButton1Click:connect(function()
	for i, v in pairs(Codes) do
		if CodeText.Text == v.Name then
			if v.Redeemed.Value == false then
				Cash.Value = Cash.Value + v.CashToGive.Value
				v.Redeemed.Value = true
			end
		end
	end
end)