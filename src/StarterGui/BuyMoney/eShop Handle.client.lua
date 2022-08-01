local MPS = game:GetService("MarketplaceService") --> The very important service used to make it so you can purchase things.
local trigger = script.Parent.Parent.OpeneShop --> The seperate Bindable we'll use to tell when the shop button is pressed
local frame = script.Parent.AddCurrencyUI --> The main frame that contains all the clickable buttons
local plr = game.Players.LocalPlayer --> Since we're on the client we're getting the user on the client.

--> This coroutine exist to make it so you can press buttons without lagging the rest of the script.
local runShop = coroutine.create(function()
	while wait() do
		for i,v in pairs(frame:GetDescendants()) do
			if v:IsA("ImageButton") then --We only want image buttons since they're the only clickable object.
				if v.Name == "100 Coins" then
					MPS:PromptProductPurchase(plr, 1153092235) --This will prompt the player to buy a developer product. The first param is a playerObject and the second is a productID
				end
				if v.Name == "300 Coins" then
					MPS:PromptProductPurchase(plr, 1188456151) --This will prompt the player to buy a developer product. The first param is a playerObject and the second is a productID
				end
				if v.Name == "600 Coins" then
					MPS:PromptProductPurchase(plr, 1274548458) --This will prompt the player to buy a developer product. The first param is a playerObject and the second is a productID
				end
				if v.Name == "1200 Coins" then
					MPS:PromptProductPurchase(plr, 1188456150) --This will prompt the player to buy a developer product. The first param is a playerObject and the second is a productID
				end
			end
		end
	end
end)

local function openShop()
	frame.Visible = true
	coroutine.resume(runShop)
end

local function closeShop()
	frame.Visible = false
	coroutine.yield(runShop)
end

script.Parent.PlusSign.AddCurrency.MouseButton1Click:Connect(function()
	if frame.Visible == false then
		openShop()
	else
		closeShop()
	end
end)

trigger.Event:Connect(function()
	if frame.Visible == false then
		openShop()
	else
		closeShop()
	end
end)