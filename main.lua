local tweenservice = game:GetService("TweenService")
local skript = script.Parent
local darkscreen = skript.Frame
local loadinglabel = skript.loadinglabel

local info = TweenInfo.new(
	2,
	Enum.EasingStyle.Quint,
	Enum.EasingDirection.In,
	0,
	false,
	0
)


local loadinginfo = TweenInfo.new(
	11,
	Enum.EasingStyle.Linear,
	Enum.EasingDirection.Out,
	0,
	false,
	0
)

local goalss = {
	Size = UDim2.new(0.262, 0, 0.028, 0)
}

local goals = {
	Position = UDim2.new(-0.13, 0, -8, 0)
}


local tweenfuncs = tweenservice:Create(loadinglabel, loadinginfo, goalss)
local tweenfunc = tweenservice:Create(darkscreen, info, goals)


local counter = 0
local transparant = 0

local function loading ()
	repeat 
		wait(0.1)
		tweenfuncs:Play()
		counter = counter+1
		skript.loadingtext.Text = counter.."%"
		if counter == 33 then
			tweenfuncs:Pause()
			wait(5)
			tweenfuncs:Play()
		elseif counter == 72 then
			tweenfuncs:Pause()
			wait(2)
			tweenfuncs:Play()
		elseif counter == 98 then
			tweenfuncs:Pause()
			wait(9)
			tweenfuncs:Play()
		end
	until counter == 100
	if counter == 100 then
		skript.loadingtext.Text = "Finished"
		wait(1)
		skript.loadinglabel.Visible = false
		skript.loadingtext.Visible = false
		skript.loadinglabelcup.Visible = false
		tweenfunc:Play()
		wait(3)
		skript.loadinglabel:Destroy()
		skript.loadinglabelcup:Destroy()
		skript.loadingtext:Destroy()
		darkscreen:Destroy()
	end
end

loading()
