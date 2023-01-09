print("Resetting scripts...")

writefile("BootlegData.json",game:GetService("HttpService"):JSONEncode({
	{Name="Add Script",Desc="A simple GUI to add scripts to the command bar.",Script="addscript.lua"};
	{Name="Reset Scripts",Desc="A permanent action! Do not use unless you absolutely want to!",Script="https://raw.githubusercontent.com/TypicallyAUser/bootleg/main/reset.lua",IsLoadstring=true};
}))

print("Resetted!")
