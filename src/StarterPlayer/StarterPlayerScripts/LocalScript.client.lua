local MarketPlaceService = game:GetService("MarketplaceService")

local Players = game:GetService("Players")
script.parent.MouseButton1Click:Connect(function()
	local ProductId = 971604647
	
	local function ProcessReceipt(ReceiptInfo)

		Player = Players:GetPlayerByUserId(ReceiptInfo.PlayerId)
		if not Player then
			return Enum.ProductPurchaseDecision.NotProcessedYet
		end
	end

	if Player then
		Player.leaderstats.Points.Value = Player.leaderstats.Points.Value + 100
	end

	return Enum.ProductPurchaseDecision.PurchaseGranted
end)

