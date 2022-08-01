local MPS = game:GetService("MarketplaceService")
local Players = game.Players

local barcodes = {}
--> Each purchasable object is repersented here as a barcode value.
barcodes[1153092235] = function(receipt, plr)
	if plr then
		local stat = plr:FindFirstChild('leaderstats')
		local coins = stat:FindFirstChild('Coins')
		if coins then
			coins.Value += 100
		end
	else
		warn("There was an error while handling a purchase")
	end
end

local function checkout(receiptInfo)
	local plr = Players:GetPlayerByUserId(receiptInfo.PlayerId)
	if not plr then
		--> The player is no longer in the game
		return Enum.ProductPurchaseDecision.NotProcessedYet
	end
	
	local itemLookup = barcodes[receiptInfo.ProductId] --> Find the item they bought in the table of items
	
	local yes,no = pcall(itemLookup, receiptInfo, plr)
	if not yes or not no then
		warn("There was an error while handling a purchase")
		print("\nProductId: "..receiptInfo.ProductId)
		print("\nPlayer: "..plr)
		return Enum.ProductPurchaseDecision.NotProcessedYet
	end
	
	-- Crutial. Required to tell Roblox that the purchase was suscessful.
	return Enum.ProductPurchaseDecision.PurchaseGranted
end

--Callback to handle all purchases
MPS.ProcessReceipt = checkout