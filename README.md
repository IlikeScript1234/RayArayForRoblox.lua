# RayArayForRoblox
Overpower Script With Library And Script for AnyGame
# Get It Now: Soons
```lua

```

# How To use The Library:

# First: Get Loadstring
```lua
  local RayAray = loadstring(game:HttpGet("https://raw.githubusercontent.com/IlikeScript1234/RayArayForRoblox.lua/main/GuiLibrary.lua", true))()
```

# Second: Create Library
```lua
  local Library = RayAray.CreateWindow({
  	Blur = true,
  	Notify = true, -- u can change blur and notify to true or false whatever you want
  	Bind = Enum.KeyCode.V, -- you can change V to any key
  	SelfDestruct = Enum.KeyCode.Insert -- this will delete entire gui you can also change this
  })
```

# Now You Need To Create A Tab And Section By:
```lua
  local Tab = Library.CreateTab({
  	Name = "ThisIsTab" -- you can also change name dont be dumb
  })
  local Section = Tab.CreateSection({Name = "Tab"})
```

# Now You Can Create Button, Toggle And Slider For Now

# Toggle
```lua
local Toggle = Section.CreateToggle({
	Name = "NameHere",
	Bind = Enum.KeyCode.F, -- u dont need this but it will set to default as none
	Function = function(callback)
	if callback then
		print("kys pls bro")
	else
		print("still kys")
		end
	end	
})
```

# Button
```lua
local Button = Section.CreateButton({
	Name = "NameHere",
	Bind = Enum.KeyCode.F, -- u dont need this but it will set to default as none
	Function = function()
		print("kys2")
	end	
})
```
# Slider
```lua
local Button = Section.CreateSlider({
    Name = "NameHere",
    Min = 1,
    Max = 20,
    Function = function(val)
        print(val)
    end,
    Default = 5
})
```

# Contact Here:

https://discord.gg/XcRpZSPMSj
