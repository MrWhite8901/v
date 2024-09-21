local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Bobol", IntroText = "Loading...", SaveConfig = true, ConfigFolder = "OrionTest"})

--Main Tab
local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
--Main Section
local Section = MainTab:AddSection({
	Name = "Main"
})

MainTab:AddButton({
	Name = "Button!",
	Callback = function()
      		print("button pressed")
  	end    
})
