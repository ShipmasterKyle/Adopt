--[[
	EconomyService
	Copyright ShipmasterKyle 2022
	All Rights Reserved.
]]

local Service = {}

function Service.GiveSalary(plr, amnt)
	if plr then --prevent hackers from abusing this
		--TODO: Add a cooldown to further prevent hacker from abusing this
		if amnt == 100 then --> TODO Add a system where I can bypass this to check currency workinng at jobs
			local data = plr.leaderstats
			if data then
				local coins = data.Coins
				if coins then
					coins.Value += 100
				end
			end
		end
	end
end

return Service
