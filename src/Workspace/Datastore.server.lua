local Datastore = game:GetService("DataStoreService")
local saveData = Datastore:GetDataStore("Adoptville")

game.Players.PlayerAdded:Connect(function(player)
	if player then
		local folder = Instance.new("Folder")
		folder.Name = "leaderstats"
		folder.Parent = player
		local Cash = Instance.new("IntValue")
		Cash.Name = "Coins"
		Cash.Parent = folder
		--load data
		local data

		local success, errormessage = pcall(function(player)
			data = saveData:GetAsync("User_"..player.UserId) --finish this
		end)

		if success then
			--set value
			Cash.Value = data --We only have one value for now
		end
	else
		warn("An error occured while loading data.")
	end
end)

game.Players.PlayerRemoving:Connect(function(player)
	local data = player.leaderstats.Cash.Value
	local success, errormessage = pcall(function()
		saveData:SetAsync("User_"..player.UserId, data)
	end)
	if success then
		print("Save Data Saved Sucessfully!")
	else
		warn("An Error Occured while saving save data to server")
		warn(errormessage)
	end
end)