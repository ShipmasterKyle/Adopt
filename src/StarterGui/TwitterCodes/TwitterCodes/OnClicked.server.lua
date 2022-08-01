--scripted by AlemDev
function OnClicked() 
	script.Parent.Parent.holder.Visible = true
end 

script.Parent.ClickDetector.MouseButton1Click:connect(OnClicked) 