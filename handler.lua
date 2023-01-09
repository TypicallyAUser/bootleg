--[[

bootleg

a command bar made for you

-----------------------------------------------------------------------

BOOTLEG WAS NOT MADE FOR THE SYNAPSE X ENVIRONMENT! IF YOU HAVE ANY ISSUES THIS MAY BE THE REASON!

IF ISSUES, PLEASE CONTACT typicalusername#1444 ON DISCORD WITH THE ERROR IN CONSOLE! I MAY NOT RESPOND IMMEDIATELY!

DO NOT SPAM MY DMS IF YOU HAVE AN ISSUE. I'M NOT VERY ACTIVE!

BOOTLEG IS BASED OFF OF A EXOLINER REQUIRE THAT I FOUND INSIDE OF A GUI!

IT USES SOME FUNCTIONS FROM IT, AND THE UI IS INSPIRED BY IT!

credits to whoever made the code used in this.

-----------------------------------------------------------------------

typicalusername made bootleg. thats all im saying

and yes i skidded a bit but hey i aint selling it! its not for profit its for ur use ig

idk.

]]

warn([[

BOOTLEG VERSION 1.0 - Creation!

How to add scripts to bootleg:

Add scripts to the folder named "bootleg" in your workspace folder (in your exploit folder for the bozos)

Run the command "Add Script" in the command bar (doesn't need to be fully spelt like that)

Your script should show up in the script list of the gui. Select your script, fill in the info, and it's added!

bootleg is that simple.

]])
	
if not isfile("BootlegData.json") then
writefile("BootlegData.json",game:GetService("HttpService"):JSONEncode({
	{Name="Add Script",Desc="A simple GUI to add scripts to the command bar.",Script="addscript.lua"};
	{Name="Reset Scripts",Desc="A permanent action! Do not use unless you absolutely want to!",Script="https://raw.githubusercontent.com/TypicallyAUser/bootleg/main/reset.lua",IsLoadstring=true};
}))
end
if not isfolder("bootleg") then
	makefolder("bootleg")
end
if not isfile("bootleg/addscript.lua") then
	writefile("bootleg/addscript.lua",game:HttpGet("https://raw.githubusercontent.com/TypicallyAUser/bootleg/main/addscript.lua"))
end

local data = game:GetService("HttpService"):JSONDecode(readfile('BootlegData.json'))

if game.CoreGui:FindFirstChild("ScreenGui") then
	
game.CoreGui:FindFirstChild("ScreenGui"):Remove()

end

local ScreenGui = Instance.new("ScreenGui")
local cmd = Instance.new("TextBox")
local Frame = Instance.new("Frame")
local Results = Instance.new("Folder")
local UICorner = Instance.new("UICorner")
local example = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local text = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui

cmd.Name = "cmd"
cmd.Parent = ScreenGui
cmd.AnchorPoint = Vector2.new(0.5, 0)
cmd.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
cmd.BorderSizePixel = 0
cmd.Position = UDim2.new(0.5, 0, 1, 0)
cmd.Size = UDim2.new(0, 593, 0, 34)
cmd.Font = Enum.Font.SourceSansLight
cmd.PlaceholderText = "Command Here"
cmd.Text = ""
cmd.TextColor3 = Color3.fromRGB(255, 255, 255)
cmd.TextSize = 18.000

Frame.Parent = cmd
Frame.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 1, 0)
Frame.Size = UDim2.new(0, 0, 0, 2)

Results.Name = "Results"
Results.Parent = cmd

UICorner.CornerRadius = UDim.new(0, 2)
UICorner.Parent = cmd

example.Name = "example"
example.Parent = cmd
example.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
example.BackgroundTransparency = 0.750
example.Position = UDim2.new(0, 0, 0, -38)
example.Size = UDim2.new(1, 0, 0, 34)
example.Visible = false

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = example

text.Name = "text"
text.Parent = example
text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
text.BackgroundTransparency = 1.000
text.Position = UDim2.new(0.0134907253, 0, 0, 0)
text.Size = UDim2.new(0, 585, 0, 34)
text.Font = Enum.Font.Gotham
text.Text = "Lost | example"
text.TextColor3 = Color3.fromRGB(255, 255, 255)
text.TextSize = 14.000
text.TextTransparency = 0.750
text.TextXAlignment = Enum.TextXAlignment.Left

-- Scripts:

local function KANXR_fake_script() -- ScreenGui.LocalScript 
	local script = Instance.new('LocalScript', ScreenGui)

	--[[
	
	crappy ui made from exoliner require bootleg
	
	skidded? kind of
	
	yeah mostly skidded.
	
	]]
	
	local Commands=game:GetService("HttpService"):JSONDecode(readfile('BootlegData.json'))
	
	function findCMD(name)
		if name then
		for i,v in pairs(Commands) do
			if string.sub(string.lower(tostring(v.Name)), 1, #name) == string.lower(name) then
				return v
			end
		end
		end
	end
	
	
	function getResults(string)
		if string then
			local int = {}
			for i, v in pairs(Commands) do
				if string.sub(string.lower(tostring(v.Name)), 1, #string) == string.lower(string) then
					if #int <= 6 then
						table.insert(int, v.Name)
					end
				end
			end
			return int
		else
			return {}
		end
	end
	
	function Tween(Object, Time, Style, Direction, Customization)
		if Style == nil then
			game:GetService("TweenService"):Create(Object, TweenInfo.new(Time), Customization):Play()
		else
			game:GetService("TweenService"):Create(Object, TweenInfo.new(Time, Style, Direction), Customization):Play()
		end
	end
	
	script.Parent.cmd:GetPropertyChangedSignal("Text"):Connect(function()
		Commands=game:GetService("HttpService"):JSONDecode(readfile('BootlegData.json'))
		local cmd = script.Parent.cmd.Text:match("%S+") -- removes use of whitespace
		local pos = UDim2.new(0, -0, 0, -38)
		script.Parent.cmd.Results:ClearAllChildren()
		for i,v in pairs(getResults(cmd)) do
	
			local funny = findCMD(v)
	
			local Cool = script.Parent.cmd.example:Clone()
			Cool.Visible=true
			Cool.Position=pos
			Cool.text.Text=""..funny.Name.." | "..funny.Desc
			Cool.Parent=script.Parent.cmd.Results

			pos = pos + UDim2.new(0, 0, 0, -38)
			Tween(Cool, .15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, {BackgroundTransparency = 0})
			Tween(Cool.text, .15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, {TextTransparency = 0})
			Tween(Cool, .15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, {Position = Cool.Position + UDim2.new(0, 0, 0, -02)})
			if funny.Name=="Reset Scripts" then
				--print("e")
				Tween(Cool, 5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, {BackgroundColor3 = Color3.new(99, 0, 0)})
			else
				--print("r")
			end
		end
	end)
	
	script.Parent.cmd.Focused:Connect(function()
		Tween(cmd, .75, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, {Position = UDim2.new(0.5, 0, 0.904999971, 0)},true)
		--UDim2.new(0, 0, 0, 2)
		game.RunService.Heartbeat:wait()
		cmd.Text=""
		wait(.15)
		Tween(Frame, 1, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut, {Size = UDim2.new(1, 0, 0, 2)},true)
	end)
	
	script.Parent.cmd.FocusLost:Connect(function()
		Tween(cmd, .75, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, {Position = UDim2.new(0.5, 0, 1, 0)},true)
		Tween(Frame, .5, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut, {Size = UDim2.new(0, 0, 0, 2)},true)
				
		local cmd = script.Parent.cmd.Text:match("%S+")
		local Script = findCMD(cmd)
		script.Parent.cmd.Text=""
		if Script then
			if not Script.IsLoadstring then
				loadstring(readfile("bootleg/"..Script.Script))()
			else
				--loadstring(game:HttpGet(Script.Script))()
				local goof=game:HttpGet(Script.Script)
				--print(goof)
				loadstring(tostring(goof))()
			end
		end
	end)
	
	game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(e)
		if e==";" then
		cmd:CaptureFocus()
		end
	end)
end
coroutine.wrap(KANXR_fake_script)()
