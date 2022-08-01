local SocialService = game:GetService('SocialService')

script.Parent.MouseButton1Click:Connect(function()
	SocialService:PromptGameInvite(game.Players.LocalPlayer)
end)