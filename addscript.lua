if not isfile("BootlegData.json") then
writefile("BootlegData.json",game:GetService("HttpService"):JSONEncode({
	{Name="Add Script",Desc="A simple GUI to add scripts to the command bar.",Script="addscript.lua"}
}))
end
if not isfolder("bootleg") then
	makefolder("bootleg")
end

local data = game:GetService("HttpService"):JSONDecode(readfile('BootlegData.json'))

local ScriptAdder = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Header = Instance.new("Frame")
local Info = Instance.new("TextLabel")
local Intro = Instance.new("Frame")
local Middle = Instance.new("Frame")
local Left = Instance.new("Frame")
local Right = Instance.new("Frame")
local Container = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Info2 = Instance.new("TextLabel")
local help = Instance.new("ImageButton")
local ScriptMain = Instance.new("Frame")
local line = Instance.new("Frame")
local ScriptListHolder = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local examplebutton = Instance.new("TextButton")
local Picker = Instance.new("Frame")
local chosenfile = Instance.new("TextLabel")
local chosenfilename = Instance.new("TextLabel")
local name = Instance.new("TextBox")
local desc = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local Info2_2 = Instance.new("TextLabel")
local AllSet = Instance.new("Frame")
local allsetlabel = Instance.new("TextLabel")
local lilfunny = Instance.new("TextLabel")
local check = Instance.new("ImageButton")
local Exit = Instance.new("ImageButton")

--Properties:

ScriptAdder.Name = "ScriptAdder"
ScriptAdder.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScriptAdder.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScriptAdder
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Main.BorderSizePixel = 0
Main.ClipsDescendants = true
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 0, 0, 282)

Header.Name = "Header"
Header.Parent = Main
Header.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Header.BorderSizePixel = 0
Header.Size = UDim2.new(0, 303, 0, 32)

Info.Name = "Info"
Info.Parent = Header
Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info.BackgroundTransparency = 1.000
Info.Size = UDim2.new(0, 156, 0, 32)
Info.Font = Enum.Font.SourceSansBold
Info.Text = "   ADD CUSTOM SCRIPTS"
Info.TextColor3 = Color3.fromRGB(255, 255, 255)
Info.TextScaled = true
Info.TextSize = 14.000
Info.TextWrapped = true
Info.TextXAlignment = Enum.TextXAlignment.Left

Intro.Name = "Intro"
Intro.Parent = Main
Intro.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Intro.BorderSizePixel = 0
Intro.Position = UDim2.new(0, 0, 0.114893623, 0)
Intro.Size = UDim2.new(0, 303, 0, 249)
Intro.Visible = true
Intro.ZIndex = 5

Middle.Name = "Middle"
Middle.Parent = Intro
Middle.AnchorPoint = Vector2.new(0.5, 0.5)
Middle.BackgroundColor3 = Color3.fromRGB(136, 136, 140)
Middle.BorderSizePixel = 0
Middle.Position = UDim2.new(0.497897714, 0, 0.437613726, 0)
Middle.Size = UDim2.new(0, 12, 0, 12)
Middle.ZIndex = 6

Left.Name = "Left"
Left.Parent = Intro
Left.AnchorPoint = Vector2.new(0.5, 0.5)
Left.BackgroundColor3 = Color3.fromRGB(136, 136, 140)
Left.BorderSizePixel = 0
Left.Position = UDim2.new(0.444999993, 0, 0.437000006, 0)
Left.Size = UDim2.new(0, 12, 0, 12)
Left.ZIndex = 6

Right.Name = "Right"
Right.Parent = Intro
Right.AnchorPoint = Vector2.new(0.5, 0.5)
Right.BackgroundColor3 = Color3.fromRGB(136, 136, 140)
Right.BorderSizePixel = 0
Right.Position = UDim2.new(0.550000012, 0, 0.437000006, 0)
Right.Size = UDim2.new(0, 12, 0, 12)
Right.ZIndex = 6

Container.Name = "Container"
Container.Parent = Main
Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Container.BackgroundTransparency = 1.000
Container.Position = UDim2.new(0, 0, 0.113475174, 0)
Container.Size = UDim2.new(0, 303, 0, 250)

Title.Name = "Title"
Title.Parent = Container
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.168316826, 0, 0.0399999991, 0)
Title.Size = UDim2.new(0, 200, 0, 23)
Title.Font = Enum.Font.GothamBold
Title.Text = "USERNAME'S SCRIPT ADDER"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18.000

Info2.Name = "Info2"
Info2.Parent = Container
Info2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info2.BackgroundTransparency = 1.000
Info2.Position = UDim2.new(0.168316826, 0, 0.131999999, 0)
Info2.Size = UDim2.new(0, 200, 0, 23)
Info2.Font = Enum.Font.SourceSans
Info2.Text = "Add custom scripts to the command bar!"
Info2.TextColor3 = Color3.fromRGB(115, 115, 115)
Info2.TextSize = 18.000

help.Name = "help"
help.Parent = Container
help.BackgroundTransparency = 1.000
help.Position = UDim2.new(0.0247524176, 0, 0.908000052, 0)
help.Size = UDim2.new(0, 17, 0, 17)
help.ZIndex = 2
help.Image = "rbxassetid://3926305904"
help.ImageRectOffset = Vector2.new(924, 164)
help.ImageRectSize = Vector2.new(36, 36)

ScriptMain.Name = "ScriptMain"
ScriptMain.Parent = Container
ScriptMain.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ScriptMain.BorderSizePixel = 0
ScriptMain.Position = UDim2.new(0.0231023096, 0, 0.236000001, 0)
ScriptMain.Size = UDim2.new(0, 289, 0, 162)

line.Name = "line"
line.Parent = ScriptMain
line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line.BorderSizePixel = 0
line.Position = UDim2.new(0.494809687, 0, 0, 0)
line.Size = UDim2.new(0, 2, 0, 162)

ScriptListHolder.Name = "ScriptListHolder"
ScriptListHolder.Parent = ScriptMain
ScriptListHolder.Active = true
ScriptListHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptListHolder.BackgroundTransparency = 1.000
ScriptListHolder.BorderSizePixel = 0
ScriptListHolder.Size = UDim2.new(0, 143, 0, 162)
ScriptListHolder.BottomImage = ""
ScriptListHolder.CanvasSize = UDim2.new(0, 0, 5, 0)
ScriptListHolder.ScrollBarThickness = 1
ScriptListHolder.TopImage = ""

UIListLayout.Parent = ScriptListHolder
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

examplebutton.Name = "examplebutton"
examplebutton.Parent = nil
examplebutton.Active = false
examplebutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
examplebutton.BackgroundTransparency = 1.000
examplebutton.Selectable = false
examplebutton.Size = UDim2.new(0, 143, 0, 27)
examplebutton.Font = Enum.Font.SourceSansLight
examplebutton.Text = "laststar.lua"
examplebutton.TextColor3 = Color3.fromRGB(255, 255, 255)
examplebutton.TextSize = 18.000

Picker.Name = "Picker"
Picker.Parent = ScriptMain
Picker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Picker.BackgroundTransparency = 1.000
Picker.Position = UDim2.new(0.501730084, 0, 0, 0)
Picker.Size = UDim2.new(0, 144, 0, 162)

chosenfile.Name = "chosenfile"
chosenfile.Parent = Picker
chosenfile.AnchorPoint = Vector2.new(0.5, 0)
chosenfile.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
chosenfile.BackgroundTransparency = 1.000
chosenfile.Position = UDim2.new(0.5, 0, 0.0209999997, 0)
chosenfile.Size = UDim2.new(0, 95, 0, 23)
chosenfile.Font = Enum.Font.SourceSans
chosenfile.Text = "Chosen file:"
chosenfile.TextColor3 = Color3.fromRGB(115, 115, 115)
chosenfile.TextSize = 18.000

chosenfilename.Name = "chosenfilename"
chosenfilename.Parent = Picker
chosenfilename.AnchorPoint = Vector2.new(0.5, 0)
chosenfilename.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
chosenfilename.BackgroundTransparency = 1.000
chosenfilename.Position = UDim2.new(0.5, 0, 0.162975311, 0)
chosenfilename.Size = UDim2.new(0, 95, 0, 23)
chosenfilename.Font = Enum.Font.SourceSans
chosenfilename.Text = "None!"
chosenfilename.TextColor3 = Color3.fromRGB(147, 147, 147)
chosenfilename.TextSize = 18.000

name.Name = "name"
name.Parent = Picker
name.AnchorPoint = Vector2.new(0.5, 0)
name.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
name.BorderSizePixel = 0
name.Position = UDim2.new(0.5, 0, 0.346827179, 0)
name.Size = UDim2.new(0, 113, 0, 25)
name.Font = Enum.Font.SourceSans
name.PlaceholderText = "Name"
name.Text = ""
name.TextColor3 = Color3.fromRGB(255, 255, 255)
name.TextSize = 18.000
name.TextWrapped = true

desc.Name = "desc"
desc.Parent = Picker
desc.AnchorPoint = Vector2.new(0.5, 0)
desc.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
desc.BorderSizePixel = 0
desc.Position = UDim2.new(0.5, 0, 0.55053091, 0)
desc.Size = UDim2.new(0, 113, 0, 25)
desc.Font = Enum.Font.SourceSans
desc.PlaceholderText = "Description"
desc.Text = ""
desc.TextColor3 = Color3.fromRGB(255, 255, 255)
desc.TextSize = 18.000
desc.TextWrapped = true

TextButton.Parent = Picker
TextButton.AnchorPoint = Vector2.new(0.5, 0)
TextButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.5, 0, 0.779999971, 0)
TextButton.Size = UDim2.new(0, 97, 0, 25)
TextButton.AutoButtonColor = false
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Add"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 18.000
TextButton.TextWrapped = true

Info2_2.Name = "Info2"
Info2_2.Parent = Container
Info2_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info2_2.BackgroundTransparency = 1.000
Info2_2.Position = UDim2.new(0.0799999982, 0, 0.899999976, 0)
Info2_2.Size = UDim2.new(0, 271, 0, 20)
Info2_2.Font = Enum.Font.SourceSans
Info2_2.Text = "Wanna add a script? Add it to the \"bootleg\" folder in the workspace folder of your exploit!"
Info2_2.TextColor3 = Color3.fromRGB(115, 115, 115)
Info2_2.TextScaled = true
Info2_2.TextSize = 18.000
Info2_2.TextWrapped = true

AllSet.Name = "AllSet"
AllSet.Parent = Main
AllSet.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
AllSet.BorderSizePixel = 0
AllSet.Position = UDim2.new(1, 0, 0.114893623, 0)
AllSet.Size = UDim2.new(0, 303, 0, 249)
AllSet.ZIndex = 5

allsetlabel.Name = "allsetlabel"
allsetlabel.Parent = AllSet
allsetlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
allsetlabel.BackgroundTransparency = 1.000
allsetlabel.Position = UDim2.new(0.168316841, 0, 0.461847395, 0)
allsetlabel.Size = UDim2.new(0, 200, 0, 37)
allsetlabel.ZIndex = 6
allsetlabel.Font = Enum.Font.Gotham
allsetlabel.Text = "All set!"
allsetlabel.TextColor3 = Color3.fromRGB(0, 255, 127)
allsetlabel.TextSize = 18.000

lilfunny.Name = "lilfunny"
lilfunny.Parent = AllSet
lilfunny.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
lilfunny.BackgroundTransparency = 1.000
lilfunny.Position = UDim2.new(0, 0, 0.510040164, 0)
lilfunny.Size = UDim2.new(0, 303, 0, 65)
lilfunny.ZIndex = 6
lilfunny.Font = Enum.Font.Gotham
lilfunny.Text = "Your script has been successfully added."
lilfunny.TextColor3 = Color3.fromRGB(93, 93, 93)
lilfunny.TextSize = 14.000
lilfunny.TextWrapped = true

check.Name = "check"
check.Parent = AllSet
check.BackgroundTransparency = 1.000
check.LayoutOrder = 3
check.Position = UDim2.new(0.427392751, 0, 0.267068297, 0)
check.Size = UDim2.new(0, 44, 0, 44)
check.ZIndex = 6
check.Image = "rbxassetid://3926305904"
check.ImageColor3 = Color3.fromRGB(0, 255, 94)
check.ImageRectOffset = Vector2.new(312, 4)
check.ImageRectSize = Vector2.new(24, 24)

Exit.Name = "Exit"
Exit.Parent = Header
Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit.BackgroundTransparency = 1.000
Exit.Position = UDim2.new(0.910194516, 0, 0.168749809, 0)
Exit.Size = UDim2.new(0, 20, 0, 20)
Exit.Image = "rbxassetid://2887256606"
Exit.ImageColor3 = Color3.fromRGB(185, 185, 185)

local SelectedScript

for i,v in pairs(listfiles("bootleg")) do
	if not v:find("addscript.lua") then
	local examplebutton=examplebutton:Clone()
	examplebutton.Name = v:sub(9)
	examplebutton.Parent = ScriptListHolder
	examplebutton.Active = false
	examplebutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	examplebutton.BackgroundTransparency = 1.000
	examplebutton.Selectable = false
	examplebutton.Size = UDim2.new(0, 143, 0, 27)
	examplebutton.Font = Enum.Font.SourceSansLight
	examplebutton.Text = v:sub(9)
	examplebutton.TextSize = 18.000
	examplebutton.MouseButton1Down:Connect(function()
		SelectedScript=examplebutton.Name
		chosenfilename.Text=SelectedScript
	end)
	end
end

local Tween = function(Object, Time, Style, Direction, Customization)
	if Style or Direction then
		game:GetService("TweenService"):Create(Object, TweenInfo.new(Time, Enum["EasingStyle"][Style], Enum["EasingDirection"][Direction]), Customization):Play()
	else
		game:GetService("TweenService"):Create(Object, TweenInfo.new(Time), Customization):Play()
	end
end

local Ripple = function(Button)
	Button.MouseButton1Down:Connect(function()
		Button.ClipsDescendants = true
		local Mouse				= game:GetService("Players").LocalPlayer:GetMouse()
		local Diagonal			= math.sqrt((Button.Size.X.Offset) ^ 2 + (Button.Size.Y.Offset) ^ 2)
		local Size				= UDim2.new(0, Diagonal * 2.15, 0, Diagonal * 2.15)
		local X 				= (Mouse.X) - (Button.AbsolutePosition.X)
		local Y 				= (Mouse.Y) - (Button.AbsolutePosition.Y)
		local Circle			= Instance.new("ImageLabel")
		Circle.Name = "Circle"
		Circle.Parent = Button
		Circle.AnchorPoint = Vector2.new(0.5, 0.5)
		Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Circle.BackgroundTransparency = 1.000
		Circle.BorderSizePixel = 0
		Circle.Image = "rbxasset://textures/whiteCircle.png"
		Circle.ImageTransparency = 0.800
		Circle.Parent			= Button
		Circle.Position			= UDim2.new(0, X, 0, Y)
		Circle.ZIndex			= Button.ZIndex + 2
		Button.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				while game:GetService("RunService").RenderStepped:wait() do
					if Circle.Size	== Size then
						Tween(Circle, .3, "Linear", "Out", {ImageTransparency = 1})
							wait(1.2)
						Circle:Destroy()
						break
					end
				end
			end
		end)
		
		Button.MouseButton1Up:Connect(function()
			wait(.17)
				Tween(Circle, .3, "Linear", "Out", {ImageTransparency = 1})
			wait(1.2)
				Circle:Destroy()
		end)
		
		Tween(Circle, .4, "Linear", "Out", {Size = Size})
	end)
end

function Draggable(Frame)
	local dragInput
	local startPos
	local dragStart
	local dragToggle
	
	local updateInput = function(input)
		local Delta = input.Position - dragStart
		local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		Tween(Main, .1, "Linear", "In", {Position = Position})
	end
	
	Frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
			dragToggle = true
			dragStart = input.Position
			startPos = Main.Position
			input.Changed:Connect(function()
				if (input.UserInputState == Enum.UserInputState.End) then
					dragToggle = false
				end
			end)
		end
	end)
	
	Frame.InputChanged:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			dragInput = input
		end
	end)
	
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if (input == dragInput and dragToggle) then
			updateInput(input)
		end
	end)
end

Draggable(Header)

wait(.5)

Tween(Main, .5, nil, nil, {Size = UDim2.new(0, 303, 0, 282)})

wait(.5)

for Index = 1, 3 do
	Tween(Left, .4, "Quart", "InOut", {Size = UDim2.new(0, 12, 0, 22), BackgroundColor3 = Color3.fromRGB(59, 141, 210)})
	wait(.2)
	Tween(Middle, .4, "Quart", "InOut", {Size = UDim2.new(0, 12, 0, 22), BackgroundColor3 = Color3.fromRGB(59, 141, 210)})
	wait(.2)
	Tween(Right, .4, "Quart", "InOut", {Size = UDim2.new(0, 12, 0, 22), BackgroundColor3 = Color3.fromRGB(59, 141, 210)})
	wait(.2)
	
	Tween(Left, .4, "Quart", "InOut", {Size = UDim2.new(0, 12, 0, 12), BackgroundColor3 = Color3.fromRGB(136, 136, 140)})
	wait(.16)
	Tween(Middle, .4, "Quart", "InOut", {Size = UDim2.new(0, 12, 0, 12), BackgroundColor3 = Color3.fromRGB(136, 136, 140)})
	wait(.16)
	Tween(Right, .4, "Quart", "InOut", {Size = UDim2.new(0, 12, 0, 12), BackgroundColor3 = Color3.fromRGB(136, 136, 140)})
	wait(.16)

end

Tween(Intro, .5, nil, nil, {Position = UDim2.new(1, 0, 0.114893623, 0)})

Ripple(TextButton)

function Add(name,desc,script)
	local datatable={}
	for i,v in pairs(data) do
		table.insert(datatable,v)
	end
	module={Name=(name or "Unknown"),Desc=(desc or "Unknown"),Script=(script or "unknown")};
	for i,v in pairs(data) do
		if v.Script==script or v.Name==name then
			table.remove(datatable,i)
		end
	end
	table.insert(datatable,module)
	writefile("BootlegData.json",game:GetService("HttpService"):JSONEncode(datatable))
end

Exit.MouseButton1Down:Connect(function()
	Tween(Main, .5, nil, nil, {Size = UDim2.new(0, 0, 0, 282)})
	wait(.5)
	ScriptAdder:Remove()
	-- Main.Size = UDim2.new(0, 0, 0, 282)
end)


TextButton.MouseButton1Down:Connect(function()
	if SelectedScript then
	local ScriptTable={name.Text,desc.Text,SelectedScript}
	Add(unpack(ScriptTable))
	Tween(Intro, .5, nil, nil, {Position = UDim2.new(0, 0, 0.114893623, 0)})
	for Index = 1, 2 do
		Tween(Left, .4, "Quart", "InOut", {Size = UDim2.new(0, 12, 0, 22), BackgroundColor3 = Color3.fromRGB(59, 141, 210)})
		wait(.2)
		Tween(Middle, .4, "Quart", "InOut", {Size = UDim2.new(0, 12, 0, 22), BackgroundColor3 = Color3.fromRGB(59, 141, 210)})
		wait(.2)
		Tween(Right, .4, "Quart", "InOut", {Size = UDim2.new(0, 12, 0, 22), BackgroundColor3 = Color3.fromRGB(59, 141, 210)})
		wait(.2)
		
		Tween(Left, .4, "Quart", "InOut", {Size = UDim2.new(0, 12, 0, 12), BackgroundColor3 = Color3.fromRGB(136, 136, 140)})
		wait(.16)
		Tween(Middle, .4, "Quart", "InOut", {Size = UDim2.new(0, 12, 0, 12), BackgroundColor3 = Color3.fromRGB(136, 136, 140)})
		wait(.16)
		Tween(Right, .4, "Quart", "InOut", {Size = UDim2.new(0, 12, 0, 12), BackgroundColor3 = Color3.fromRGB(136, 136, 140)})
		wait(.16)
	end
	-- UDim2.new(1, 0, 0.114893623, 0)
	Tween(AllSet, .5, nil, nil, {Position = UDim2.new(0, 0, 0.114893623, 0)})
	wait(.5)
	Tween(Intro, .5, nil, nil, {Position = UDim2.new(1, 0, 0.114893623, 0)})
	
	wait(4)
	Tween(AllSet, .5, nil, nil, {Position = UDim2.new(1, 0, 0.114893623, 0)})
	SelectedScript=nil
	chosenfilename.Text="None!"
	else
	chosenfilename.Text="Select a script!"
	wait(1)
	chosenfilename.Text="None!"
	end
end)
