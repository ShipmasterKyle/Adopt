script.Parent.MouseButton1Click:Connect(function()
	if script.Parent.Text == " " then
		script.Parent.Text = "  "
		script.Parent.BackgroundColor3 = Color3.new(1, 0.45098, 0.45098)
		game:GetService("ReplicatedStorage").Music.BackgroundMusic.Volume = 0
	elseif script.Parent.Text == "  " then
		script.Parent.Text = " "
		script.Parent.BackgroundColor3 = Color3.new(0.52549, 1, 0.52549)
		game:GetService("ReplicatedStorage").Music.BackgroundMusic.Volume = 0.5
	end
end)