-- \\atleast credits if you use it please// --
-- \\also firecat/firedawg dont skid it im begging u fr you know coding is hard like why are you even skidding// --
local Notification = {}
    local tween = game:GetService("TweenService")
    local NotificationFrame = Instance.new("ScreenGui")
    local LayoutFrame = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")

    NotificationFrame.Name = "NotificationFrame"
    NotificationFrame.Parent = game.CoreGui
    NotificationFrame.IgnoreGuiInset = true

    LayoutFrame.Name = "LayoutFrame"
    LayoutFrame.Parent = NotificationFrame
    LayoutFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LayoutFrame.BackgroundTransparency = 1.000
    LayoutFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    LayoutFrame.BorderSizePixel = 0
    LayoutFrame.Position = UDim2.new(0.363265306, 0, 0.0118028345, 0)
    LayoutFrame.Size = UDim2.new(0.636734664, 0, 0.962352931, 0)

    UIListLayout.Parent = LayoutFrame
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
    UIListLayout.Padding = UDim.new(0, 5)
    Notification.Send = function(title, text, duration)
        local NormalNotify = Instance.new("Frame")
        NormalNotify.Name = "NormalNotify"
        NormalNotify.Parent = LayoutFrame
        NormalNotify.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
        NormalNotify.BorderColor3 = Color3.fromRGB(0, 0, 0)
        NormalNotify.BorderSizePixel = 0
        NormalNotify.Position = UDim2.new(0.448717952, 0, 0.876923084, 0)
        NormalNotify.Size = UDim2.new(0, 0,0, 96)
        
        local Title_3 = Instance.new("TextLabel")
        Title_3.Name = "Title"
        Title_3.Parent = NormalNotify
        Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title_3.BackgroundTransparency = 1.000
        Title_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Title_3.BorderSizePixel = 0
        Title_3.Position = UDim2.new(0.0872092992, 0, 0, 0)
        Title_3.Size = UDim2.new(1, 0, 0.520833313, 0)
        Title_3.Font = Enum.Font.GothamMedium
        Title_3.Text = "   ".. title
        Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title_3.TextScaled = true
        Title_3.TextSize = 20.000
        Title_3.TextWrapped = true
        Title_3.TextXAlignment = Enum.TextXAlignment.Left
        
        local UITextSizeConstraint_7 = Instance.new("UITextSizeConstraint")
        UITextSizeConstraint_7.Parent = Title_3
        UITextSizeConstraint_7.MaxTextSize = 20
        
        local Icon_3 = Instance.new("TextLabel")
        Icon_3.Name = "Icon"
        Icon_3.Parent = NormalNotify
        Icon_3.BackgroundColor3 = Color3.fromRGB(1, 136, 255)
        Icon_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Icon_3.BorderSizePixel = 0
        Icon_3.Position = UDim2.new(0.00968992244, 0, 0.0520833321, 0)
        Icon_3.Size = UDim2.new(0.0775193796, 0, 0.416666657, 0)
        Icon_3.Font = Enum.Font.Unknown
        Icon_3.Text = "i"
        Icon_3.TextColor3 = Color3.fromRGB(255, 255, 255)
        Icon_3.TextScaled = true
        Icon_3.TextSize = 35.000
        Icon_3.TextWrapped = true
        
        local UICorner_5 = Instance.new("UICorner")
        UICorner_5.CornerRadius = UDim.new(0, 15)
        UICorner_5.Parent = Icon_3
        
        local UITextSizeConstraint_8 = Instance.new("UITextSizeConstraint")
        UITextSizeConstraint_8.Parent = Icon_3
        UITextSizeConstraint_8.MaxTextSize = 35
        
        local UICorner_6 = Instance.new("UICorner")
        UICorner_6.CornerRadius = UDim.new(0, 4)
        UICorner_6.Parent = NormalNotify
        
        local Text_3 = Instance.new("TextLabel")
        Text_3.Name = "Text"
        Text_3.Parent = NormalNotify
        Text_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Text_3.BackgroundTransparency = 1.000
        Text_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Text_3.BorderSizePixel = 0
        Text_3.Position = UDim2.new(0.0872092992, 0, 0.3125, 0)
        Text_3.Size = UDim2.new(1, 0, 0.6875, 0)
        Text_3.Font = Enum.Font.GothamMedium
        Text_3.Text = "    ".. text
        Text_3.TextColor3 = Color3.fromRGB(255, 255, 255)
        Text_3.TextScaled = true
        Text_3.TextSize = 18.000
        Text_3.TextTransparency = 0.050
        Text_3.TextWrapped = true
        Text_3.TextXAlignment = Enum.TextXAlignment.Left
        
        local UITextSizeConstraint_9 = Instance.new("UITextSizeConstraint")
        UITextSizeConstraint_9.Parent = Text_3
        UITextSizeConstraint_9.MaxTextSize = 18
        NormalNotify:TweenSize(UDim2.new(0, 516,0, 96), Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.12)
        wait(duration)
        NormalNotify:TweenSize(UDim2.new(0, 0,0, 96), Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.12)
        wait(0.5)
        NormalNotify:Destroy()
    end
    function Notification.Enable(text, duration)
        local EnableNotify = Instance.new("Frame")
        local UIGradient_2 = Instance.new("UIGradient")
        local Title_2 = Instance.new("TextLabel")
        local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
        local Text_2 = Instance.new("TextLabel")
        local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
        local Icon_2 = Instance.new("TextLabel")
        local UICorner_3 = Instance.new("UICorner")
        local UITextSizeConstraint_6 = Instance.new("UITextSizeConstraint")
        local UICorner_4 = Instance.new("UICorner")
        
        EnableNotify.Name = "EnableNotify"
        EnableNotify.Parent = LayoutFrame
        EnableNotify.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        EnableNotify.BorderColor3 = Color3.fromRGB(0, 0, 0)
        EnableNotify.BorderSizePixel = 0
        EnableNotify.Position = UDim2.new(0.448717952, 0, 0.876923084, 0)
        EnableNotify.Size = UDim2.new(0.551282108, 0, 0.117359415, 0)
        
        UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 159, 41)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(85, 211, 40))}
        UIGradient_2.Parent = EnableNotify
        
        Title_2.Name = "Title"
        Title_2.Parent = EnableNotify
        Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title_2.BackgroundTransparency = 1.000
        Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Title_2.BorderSizePixel = 0
        Title_2.Position = UDim2.new(0.0872092992, 0, 0, 0)
        Title_2.Size = UDim2.new(1, 0, 0.520833313, 0)
        Title_2.Font = Enum.Font.GothamMedium
        Title_2.Text = "   Module Toggled"
        Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title_2.TextScaled = true
        Title_2.TextSize = 20.000
        Title_2.TextWrapped = true
        Title_2.TextXAlignment = Enum.TextXAlignment.Left
        
        UITextSizeConstraint_4.Parent = Title_2
        UITextSizeConstraint_4.MaxTextSize = 20
        
        Text_2.Name = "Text"
        Text_2.Parent = EnableNotify
        Text_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Text_2.BackgroundTransparency = 1.000
        Text_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Text_2.BorderSizePixel = 0
        Text_2.Position = UDim2.new(0.0872092992, 0, 0.3125, 0)
        Text_2.Size = UDim2.new(1, 0, 0.6875, 0)
        Text_2.Font = Enum.Font.GothamMedium
        Text_2.Text = "    "..text
        Text_2.TextColor3 = Color3.fromRGB(255, 255, 255)
        Text_2.TextScaled = true
        Text_2.TextSize = 18.000
        Text_2.TextTransparency = 0.050
        Text_2.TextWrapped = true
        Text_2.TextXAlignment = Enum.TextXAlignment.Left
        
        UITextSizeConstraint_5.Parent = Text_2
        UITextSizeConstraint_5.MaxTextSize = 18
        
        Icon_2.Name = "Icon"
        Icon_2.Parent = EnableNotify
        Icon_2.BackgroundColor3 = Color3.fromRGB(1, 136, 255)
        Icon_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Icon_2.BorderSizePixel = 0
        Icon_2.Position = UDim2.new(0.00968992244, 0, 0.0520833321, 0)
        Icon_2.Size = UDim2.new(0.0775193796, 0, 0.416666657, 0)
        Icon_2.Font = Enum.Font.Unknown
        Icon_2.Text = "i"
        Icon_2.TextColor3 = Color3.fromRGB(255, 255, 255)
        Icon_2.TextScaled = true
        Icon_2.TextSize = 35.000
        Icon_2.TextWrapped = true
        
        UICorner_3.CornerRadius = UDim.new(0, 15)
        UICorner_3.Parent = Icon_2
        
        UITextSizeConstraint_6.Parent = Icon_2
        UITextSizeConstraint_6.MaxTextSize = 35
        
        UICorner_4.CornerRadius = UDim.new(0, 4)
        UICorner_4.Parent = EnableNotify
        EnableNotify:TweenSize(UDim2.new(0, 516,0, 96), Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.12)
        wait(duration)
        EnableNotify:TweenSize(UDim2.new(0, 0,0, 96), Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.12)
        wait(0.5)
        EnableNotify:Destroy()
    end
    
    function Notification.Disable(text, duration)
        local DisableNotify = Instance.new("Frame")
        DisableNotify.Name = "DisableNotify"
        DisableNotify.Parent = LayoutFrame
        DisableNotify.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        DisableNotify.BorderColor3 = Color3.fromRGB(0, 0, 0)
        DisableNotify.BorderSizePixel = 0
        DisableNotify.Position = UDim2.new(0.448717952, 0, 0.876923084, 0)
        DisableNotify.Size = UDim2.new(0.551282108, 0, 0.117359415, 0)
        
        local UIGradient = Instance.new("UIGradient")
        UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(159, 0, 3)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(194, 0, 3))}
        UIGradient.Parent = DisableNotify
        
        local Title = Instance.new("TextLabel")
        Title.Name = "Title"
        Title.Parent = DisableNotify
        Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title.BackgroundTransparency = 1.000
        Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Title.BorderSizePixel = 0
        Title.Position = UDim2.new(0.0872092992, 0, 0, 0)
        Title.Size = UDim2.new(1, 0, 0.520833313, 0)
        Title.Font = Enum.Font.GothamMedium
        Title.Text = "   Module Toggled"
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextScaled = true
        Title.TextSize = 20.000
        Title.TextWrapped = true
        Title.TextXAlignment = Enum.TextXAlignment.Left
        
        local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
        UITextSizeConstraint.Parent = Title
        UITextSizeConstraint.MaxTextSize = 20
        
        local Text = Instance.new("TextLabel")
        Text.Name = "Text"
        Text.Parent = DisableNotify
        Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Text.BackgroundTransparency = 1.000
        Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Text.BorderSizePixel = 0
        Text.Position = UDim2.new(0.0872092992, 0, 0.3125, 0)
        Text.Size = UDim2.new(1, 0, 0.6875, 0)
        Text.Font = Enum.Font.GothamMedium
        Text.Text = "    "..text
        Text.TextColor3 = Color3.fromRGB(255, 255, 255)
        Text.TextScaled = true
        Text.TextSize = 18.000
        Text.TextTransparency = 0.050
        Text.TextWrapped = true
        Text.TextXAlignment = Enum.TextXAlignment.Left
        
        local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
        UITextSizeConstraint_2.Parent = Text
        UITextSizeConstraint_2.MaxTextSize = 18
        
        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 4)
        UICorner.Parent = DisableNotify
        
        local Icon = Instance.new("TextLabel")
        Icon.Name = "Icon"
        Icon.Parent = DisableNotify
        Icon.BackgroundColor3 = Color3.fromRGB(1, 136, 255)
        Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Icon.BorderSizePixel = 0
        Icon.Position = UDim2.new(0.00968992244, 0, 0.0520833321, 0)
        Icon.Size = UDim2.new(0.0775193796, 0, 0.416666657, 0)
        Icon.Font = Enum.Font.Unknown
        Icon.Text = "i"
        Icon.TextColor3 = Color3.fromRGB(255, 255, 255)
        Icon.TextScaled = true
        Icon.TextSize = 35.000
        Icon.TextWrapped = true
        
        local UICorner_2 = Instance.new("UICorner")
        UICorner_2.CornerRadius = UDim.new(0, 15)
        UICorner_2.Parent = Icon
        
        local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
        UITextSizeConstraint_3.Parent = Icon
        UITextSizeConstraint_3.MaxTextSize = 35
        DisableNotify:TweenSize(UDim2.new(0, 516,0, 96), Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.12)
        wait(duration)
        DisableNotify:TweenSize(UDim2.new(0, 0,0, 96), Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.12)
        wait(0.5)
        DisableNotify:Destroy()
    end
return Notification
