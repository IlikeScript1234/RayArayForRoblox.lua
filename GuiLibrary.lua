local Library = {}
	local Hwid = game:GetService("RbxAnalyticsService"):GetClientId()
	if not isfile("RayArayCheck.lua") then
		print("You Will Be Known As ".. Hwid .. "From Now On!")
	end
	local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/IlikeScript1234/RayArayForRoblox.lua/main/Notification.lua", true))()
	local BindAble = true
	task.spawn(function()
		repeat task.wait()
			writefile("RayArayCheck.lua", Hwid)
		until BindAble == false
	end)
	if isfile("RayArayCheck.lua") then
		print("Welcome Back, "..Hwid.." User!")
	end	
	local UIS = game:GetService("UserInputService")
	local mouse = game.Players.LocalPlayer:GetMouse()
	local uis = game:GetService("UserInputService")
	local tween = game:GetService("TweenService")
	function MakeDraggable(object)
        local button = object
		local dragToggle = nil
		local dragSpeed = 0.35
		local dragStart = nil
		local startPos = nil
		
		local function updateInput(input)
			local delta = input.Position - dragStart
			local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
				startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			game:GetService('TweenService'):Create(button, TweenInfo.new(dragSpeed), {Position = position}):Play()
		end
		
		button.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
				dragToggle = true
				dragStart = input.Position
				startPos = button.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		
		UIS.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				if dragToggle then
					updateInput(input)
				end
			end
		end)
    end
	function Library.CreateWindow(args)
		local RayAray = Instance.new("ScreenGui")
		RayAray.Name = "RayAray"
		RayAray.Parent = game.CoreGui
		RayAray.IgnoreGuiInset = true

		local Main = Instance.new("Frame")
		Main.Name = "Main"
		Main.Parent = RayAray
		Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Main.BackgroundTransparency = 1.000
		Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Main.BorderSizePixel = 0
		Main.Position = UDim2.new(0.361431181, 0, 0.175294116, 0)
		Main.Size = UDim2.new(0.276867032, 0, 0.648235321, 0)

		local BlurEffect = Instance.new("Frame")
		BlurEffect.Visible = args.Blur
		BlurEffect.Name = "BlurEffect"
		BlurEffect.Parent = Main
		BlurEffect.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		BlurEffect.BackgroundTransparency = 0.700
		BlurEffect.BorderColor3 = Color3.fromRGB(0, 0, 0)
		BlurEffect.BorderSizePixel = 0
		BlurEffect.Position = UDim2.new(-2.82236838, 0, -0.858439207, 0)
		BlurEffect.Size = UDim2.new(0, 2630, 0, 1812)

		local TabF = Instance.new("Folder")
		TabF.Name = "Tab"
		TabF.Parent = Main
		local Tabs = {}
			function Tabs.CreateTab(args)
				local Tab = Instance.new("Frame")
				Tab.Name = args.Name
				Tab.Parent = TabF
				Tab.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
				Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Tab.BorderSizePixel = 0
				Tab.Position = UDim2.new(-1.29139137, 0, -0.252209783, 0)
				Tab.Size = UDim2.new(0.407894731, 0, 0.0544464625, 0)
				MakeDraggable(Tab)

				local TabName = Instance.new("TextLabel")
				TabName.Name = "TabName"
				TabName.Parent = Tab
				TabName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TabName.BackgroundTransparency = 1.000
				TabName.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TabName.BorderSizePixel = 0
				TabName.Size = UDim2.new(0.209677413, 0, 1, 0)
				TabName.Font = Enum.Font.Arial
				TabName.Text = "   ".. args.Name or "   Tab"
				TabName.TextColor3 = Color3.fromRGB(255, 255, 255)
				TabName.TextSize = 16.000
				TabName.TextXAlignment = Enum.TextXAlignment.Left
				local Sections = {}
				function Sections.CreateSection()
					local sectionInners = Instance.new("Frame")
					sectionInners.Name = "sectionInners"
					sectionInners.Parent = Tab
					sectionInners.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					sectionInners.BackgroundTransparency = 1.000
					sectionInners.BorderColor3 = Color3.fromRGB(0, 0, 0)
					sectionInners.BorderSizePixel = 0
					sectionInners.Position = UDim2.new(0, 0, 1, 0)
					sectionInners.Size = UDim2.new(1, 0, 0.333333343, 0)
					
					local MobileInnerOpener = Instance.new("TextButton")
					MobileInnerOpener.Name = "InnerOpener"
					MobileInnerOpener.Parent = Tab
					MobileInnerOpener.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					MobileInnerOpener.BackgroundTransparency = 1.000
					MobileInnerOpener.BorderColor3 = Color3.fromRGB(0, 0, 0)
					MobileInnerOpener.BorderSizePixel = 0
					MobileInnerOpener.Position = UDim2.new(0.844086051, 0, -3.17891455e-08, 0)
					MobileInnerOpener.Size = UDim2.new(0.155913979, 0, 1, 0)
					MobileInnerOpener.Font = Enum.Font.SourceSans
					MobileInnerOpener.Text = ""
					MobileInnerOpener.TextColor3 = Color3.fromRGB(0, 0, 0)
					MobileInnerOpener.TextSize = 14.000
					MobileInnerOpener.TextTransparency = 1.000
					MobileInnerOpener.MouseButton1Down:Connect(function()
						if sectionInners.Visible then
							sectionInners.Visible = false
						else
							sectionInners.Visible = true
						end
					end)
			
					local UIListLayout = Instance.new("UIListLayout")
					UIListLayout.Parent = sectionInners
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					local Elements = {}
					function Elements.CreateButton(args)
						local changeEnabled = false
						local TextLabel = Bbind
						local buttonColor = Color3.fromRGB(33, 33, 33)
						local buttontweenfunc = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0)
						local Bname = args.Name
						local callback = args.Function
						local Button = Instance.new("TextButton")
						Button.Name = "Button"
						Button.Parent = sectionInners
						Button.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
						Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
						Button.BorderSizePixel = 0
						Button.Size = UDim2.new(1, 0, 3.29999995, 0)
						Button.Font = Enum.Font.Gotham
						Button.Text = "   ".. Bname
						Button.TextColor3 = Color3.fromRGB(255, 255, 255)
						Button.TextSize = 14.000
						Button.TextXAlignment = Enum.TextXAlignment.Left
						Button.MouseButton1Down:Connect(function()
							pcall(callback)
							Button.BackgroundColor3 = Color3.fromRGB(176, 0, 3)
							wait(0.1)
							tween:Create(Button, buttontweenfunc, {BackgroundColor3 = buttonColor}):Play()
						end)

						local Bbind = Instance.new("TextButton")
						Bbind.Name = "Bbind"
						Bbind.Parent = Button
						Bbind.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
						Bbind.BorderColor3 = Color3.fromRGB(0, 0, 0)
						Bbind.BorderSizePixel = 0
						Bbind.Position = UDim2.new(0.607526898, 0, 0.24242425, 0)
						Bbind.Size = UDim2.new(0, 65, 0, 17)
						Bbind.Font = Enum.Font.Arial
						Bbind.Text = "Bind"
						Bbind.TextColor3 = Color3.fromRGB(255, 255, 255)
						Bbind.TextSize = 14.000
						Bbind.MouseButton1Click:Connect(function()
							local selectedKey = nil

							Bbind.MouseButton1Click:Connect(function()
								changeEnabled = true
							end)
							
							UIS.InputBegan:Connect(function(input)
								if input.UserInputType == Enum.UserInputType.Keyboard then
									if BindAble == true then
										local keyPressed = input.KeyCode.Name
										if changeEnabled then
											Bbind.Text = keyPressed
											selectedKey = keyPressed
											changeEnabled = false
										elseif keyPressed == selectedKey then
											pcall(callback)
											Button.BackgroundColor3 = Color3.fromRGB(176, 0, 3)
											wait(0.05)
											tween:Create(Button, buttontweenfunc, {BackgroundColor3 = buttonColor}):Play()
										end
									end
								end
							end)
						end)
					end
					function Elements.CreateToggle(args)
						local TogFunction = {}
						local TogNewColor = Color3.fromRGB(176, 0, 3)
						local TogOldColor = Color3.fromRGB(33, 33, 33)
						local Togtweenfunc = TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0)
						local tname = args.Name
						local callback = args.Function
						local toggled = false
						local DefaultT = toggled or false
						local Toggle = Instance.new("TextButton")
						Toggle.Name = "Toggle"
						Toggle.Parent = sectionInners
						Toggle.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
						Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
						Toggle.BorderSizePixel = 0
						Toggle.Position = UDim2.new(0, 0, 3.29999995, 0)
						Toggle.Size = UDim2.new(1, 0, 3.29999995, 0)
						Toggle.Font = Enum.Font.Gotham
						Toggle.Text = "   ".. tname
						Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
						Toggle.TextSize = 14.000
						Toggle.TextXAlignment = Enum.TextXAlignment.Left						
						Toggle.MouseButton1Down:Connect(function()
							if toggled then
								toggled = false
								pcall(callback, toggled)
								wait(0.1)
								tween:Create(Toggle, Togtweenfunc, {BackgroundColor3 = TogOldColor}):Play()
							else
								toggled = true
								pcall(callback, toggled)
								wait(0.1)
								tween:Create(Toggle, Togtweenfunc, {BackgroundColor3 = TogNewColor}):Play()
							end
						end)

						local TBind = Instance.new("TextButton")
						TBind.Name = "TBind"
						TBind.Parent = Toggle
						TBind.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
						TBind.BorderColor3 = Color3.fromRGB(0, 0, 0)
						TBind.BorderSizePixel = 0
						TBind.Position = UDim2.new(0.607526898, 0, 0.24242425, 0)
						TBind.Size = UDim2.new(0, 65, 0, 17)
						TBind.Font = Enum.Font.Arial
						TBind.Text = "Bind"
						TBind.TextColor3 = Color3.fromRGB(255, 255, 255)
						TBind.TextSize = 14.000
						TBind.MouseButton1Click:Connect(function()
							local selectedKey = nil

							TBind.MouseButton1Click:Connect(function()
								changeEnabled = true
							end)
							
							UIS.InputBegan:Connect(function(input)
								if input.UserInputType == Enum.UserInputType.Keyboard then
									if BindAble == true then
										local keyPressed = input.KeyCode.Name
										if changeEnabled then
											TBind.Text = keyPressed
											selectedKey = keyPressed
											changeEnabled = false
										elseif keyPressed == selectedKey then
											if toggled then
												toggled = false
												pcall(callback, toggled)
												wait(0.05)
												tween:Create(Toggle, Togtweenfunc, {BackgroundColor3 = TogOldColor}):Play()
											else
												toggled = true
												pcall(callback, toggled)
												wait(0.05)
												tween:Create(Toggle, Togtweenfunc, {BackgroundColor3 = TogNewColor}):Play()
											end
										end
									end
								end
							end)
						end)
						function TogFunction.ToggleButton(TogOn)
							TogOn = TogOn or toggled
							if TogOn then
								toggled = false
								pcall(callback, toggled)
								wait(0.2)
								tween:Create(Toggle, Togtweenfunc, {BackgroundColor3 = TogOldColor}):Play()
							else
								toggled = true
								pcall(callback, toggled)
								wait(0.2)
								tween:Create(Toggle, Togtweenfunc, {BackgroundColor3 = TogNewColor}):Play()
							end
						end
					end
					function Elements.CreateSlider(args)
						local sname = args.Name
						local callbacks = args.Function
						local minvalue = args.Min
						local maxvalue = args.Max
						local DefaultT = args.Default
						local Value = DefaultT or 2
						
						local Slider = Instance.new("Frame")
						Slider.Name = "Slider"
						Slider.Parent = sectionInners
						Slider.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
						Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
						Slider.BorderSizePixel = 0
						Slider.Position = UDim2.new(0, 0, 6.5999999, 0)
						Slider.Size = UDim2.new(1, 0, 3.29999995, 0)
						
						local SliderName = Instance.new("TextLabel")
						SliderName.Name = "SliderName"
						SliderName.Parent = Slider
						SliderName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						SliderName.BackgroundTransparency = 1.000
						SliderName.BorderColor3 = Color3.fromRGB(0, 0, 0)
						SliderName.BorderSizePixel = 0
						SliderName.Size = UDim2.new(0.0645161271, 0, 1, 0)
						SliderName.Font = Enum.Font.Gotham
						SliderName.Text = "   "..sname
						SliderName.TextColor3 = Color3.fromRGB(255, 255, 255)
						SliderName.TextSize = 14.000
						SliderName.TextXAlignment = Enum.TextXAlignment.Left
				
						local SliderFrame = Instance.new("Frame")
						SliderFrame.Name = "SliderFrame"
						SliderFrame.Parent = Slider
						SliderFrame.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
						SliderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
						SliderFrame.BorderSizePixel = 0
						SliderFrame.Position = UDim2.new(0.392473131, 0, 0.303030312, 0)
						SliderFrame.Size = UDim2.new(0.564516127, 0, 0.393939406, 0)
											
				
						local SliderButton = Instance.new("TextButton")
						SliderButton.Name = "SliderButton"
						SliderButton.Parent = SliderFrame
						SliderButton.BackgroundColor3 = Color3.fromRGB(176, 0, 3)
						SliderButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
						SliderButton.BorderSizePixel = 0
						SliderButton.Size = UDim2.new(0.380952388, 0, 1, 0)
						SliderButton.Font = Enum.Font.SourceSans
						SliderButton.Text = Value
						SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
						SliderButton.TextSize = 14.000
						minvalue = minvalue or 0
						maxvalue = maxvalue or 50
						
						pcall(function()
							pcall(callbacks, Value)
						end)

						SliderButton.MouseButton1Down:Connect(function()
							Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 123) * SliderButton.AbsoluteSize.X) + tonumber(minvalue)) or 0
							pcall(function()
								pcall(callbacks, Value)
							end)
							SliderButton.Size = UDim2.new(0, math.clamp(mouse.X - SliderButton.AbsolutePosition.X, 0, 123), 1, 0)
							moveconnection = mouse.Move:Connect(function()
								SliderButton.Text = Value
								Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 123) * SliderButton.AbsoluteSize.X) + tonumber(minvalue))
								pcall(function()
									pcall(callbacks, Value)
								end)
								SliderButton.Size = UDim2.new(0, math.clamp(mouse.X - SliderButton.AbsolutePosition.X, 0, 123), 1, 0)
							end)
							releaseconnection = uis.InputEnded:Connect(function(Mouse)
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
									Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 123) * SliderButton.AbsoluteSize.X) + tonumber(minvalue))
									pcall(function()
										pcall(callbacks, Value)
									end)
									SliderButton.Size = UDim2.new(0, math.clamp(mouse.X - SliderButton.AbsolutePosition.X, 0, 123), 1, 0)
									moveconnection:Disconnect()
									releaseconnection:Disconnect()
								end
							end)
						end)
					end
					return Elements
				end
				return Sections
			end
		return Tabs
	end
return Library
