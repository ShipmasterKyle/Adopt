--[[
	MaketService
    Service for handling none robux shops
    Copyright ShipmasterKyle 2022
	All Rights Reserved.
]]

local service = {}

local wait = task.wait
local market = require(game.ReplicatedStorage.rawItems.MarketData)

function service.GetArrayItem(array,item)
	for i,v in pairs(array) do
		if v.Name == item then
			return v
		else end
		return false
	end
end

function service:LoadMarket(frame,template)
	--loop through the marketplace and add all for sale items to the ui
	if frame and template then
		for i,v in pairs(market) do
			if v.forSale == true then
				local copy = template:Clone()
				copy.Name = v.Name
				copy.NameBox.Text = v.Name
				-- TODO: Use UI Service to make a viewport frame.
				copy.Parent = frame
			end
		end
	else
		return "Build Error."
	end
end

function service:getItemValue(item)
	--Get the value of items.
	local itemExist = service.GetArrayItem(market,item)
	if itemExist then
		return market[item].Price
	else
		return nil
	end
end

function service:Hatch(item)
    --add
end

return service