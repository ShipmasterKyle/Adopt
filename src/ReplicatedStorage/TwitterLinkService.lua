local service = {}

local datasrc = require(game.ReplicatedStorage.TwitterData)

--For searching data
function service.GetArrayItem(array,item)
	for i,v in pairs(array) do
		if v.Name == item then
			return v
		else end
		return false
	end
end

--Check if a code exist. This will either return a code or false
function service:GetCode(item)
	local itemExist = service.GetArrayItem(datasrc,item)
    return itemExist
end

--Reward the player with the item they should get for entering the code
function service:AcceptCode(item)
	local itemExist = service.GetArrayItem(datasrc,item)
    if itemExist then
        local rewardtype = itemExist.RewardType
        if rewardtype == "Coins" then
            --Send a signal to the server to handle data changes
            game.ReplicatedStorage.ChangeCoinValues:FireServer(tonumber(itemExist.Reward))
        elseif rewardtype == "Pet" then
            game.ReplicatedStorage.NewPetObject:FireServer(tostring(itemExist.Reward))
        elseif rewardtype == "Item" then
            game.ReplicatedStorage.NewItem:FireServer(tostring(itemExist.Reward))
        end
    end
end

return service