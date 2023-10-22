--[[hi, if you're a premium user and didnt get your robux refund (others did get theirs idk why some dont, risked my account just to get the tshirt deleted so you can get refunded), dont worry after gta 6 release ill do tangerex v2 premium
i discontinued this version bc was very lazy idk, 
also reanimations used on this are ded 💀💀]]

function notf(str,sec)
game.StarterGui:SetCore("SendNotification", {
    Title ="Tangerex";
    Text = str or "Text";
    Icon = "";
    Duration = sec or "16";
})
end

function LoadUpTGX()
local library = {}

local TweenService = game:GetService("TweenService")
local TextService = game:GetService("TextService")
local UserInputService = game:GetService("UserInputService")

function dragify(Frame)
    local dragToggle = nil
    local dragSpeed = .25
    local dragInput = nil
    local dragStart = nil
    local dragPos = nil

    function updateInput(input)
        Delta = input.Position - dragStart
        Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
    end

    Frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
            dragToggle = true
            dragStart = input.Position
            startPos = Frame.Position
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

for i,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "TGXKronosUIEdit" then 
        v:Destroy()
    end
end

function library:Window(options)
    local TitleUI = options.Title or "Kronos Lib"
    local Accent = options.Accent or Color3.fromRGB(69, 69, 207)
    local Logo = options.Logo or '3610245066'
    local Toggle_Key = options.ToggleKey or Enum.KeyCode.LeftBracket

    local Kronos = Instance.new("ScreenGui")
    Kronos.Name = "TGXKronosUIEdit"
    Kronos.Parent = game.CoreGui
    Kronos.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local Mover = Instance.new("Frame")
    Mover.Name = "Mover"
    Mover.Parent = Kronos
    Mover.BackgroundColor3 = Color3.fromRGB(44, 43, 48)
    Mover.BackgroundTransparency = 1.000
    Mover.BorderSizePixel = 0
    Mover.Position = UDim2.new(0.274229079, 0, 0.191011235, 0)
    Mover.Size = UDim2.new(0, 70, 0, 400)

    dragify(Mover)

    local Main = Instance.new("Frame")
    Main.Name = "Main"
    Main.Parent = Mover
    Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Main.BackgroundTransparency = 1.000
    Main.BorderSizePixel = 0
    Main.Size = UDim2.new(0, 500, 0, 400)
    Main.ClipsDescendants = false

    local Main_Layout = Instance.new("UIListLayout")
    Main_Layout.Name = "Main_Layout"
    Main_Layout.Parent = Main
    Main_Layout.FillDirection = Enum.FillDirection.Horizontal

    local _1LeftSide = Instance.new("Frame")
    _1LeftSide.Name = "1LeftSide"
    _1LeftSide.Parent = Main
    _1LeftSide.BackgroundColor3 = Color3.fromRGB(44, 43, 48)
    _1LeftSide.Size = UDim2.new(0, 70, 0, 400)
    _1LeftSide.ClipsDescendants = false

    local leftside_corner = Instance.new("UICorner")
    leftside_corner.CornerRadius = UDim.new(0, 6)
    leftside_corner.Name = "leftside_corner"
    leftside_corner.Parent = _1LeftSide

    local hider_2 = Instance.new("Frame")
    hider_2.Name = "hider"
    hider_2.Parent = _1LeftSide
    hider_2.BackgroundColor3 = Color3.fromRGB(44, 43, 48)
    hider_2.BorderSizePixel = 0
    hider_2.Position = UDim2.new(0.914285719, 0, 0, 0)
    hider_2.Size = UDim2.new(0, 6, 0, 400)

    local Main_Logo = Instance.new("ImageButton")
    Main_Logo.Name = "Main_Logo"
    Main_Logo.Parent = _1LeftSide
    Main_Logo.BackgroundTransparency = 1.000
    Main_Logo.Position = UDim2.new(0.242857158, 0, 0.0225000009, 0)
    Main_Logo.Size = UDim2.new(0, 35, 0, 35)
    Main_Logo.Image = "rbxassetid://" .. tostring(Logo)
    Main_Logo.ImageColor3 = Color3.fromRGB(255,255,255)
    Main_Logo.ScaleType = Enum.ScaleType.Fit

    local Title = Instance.new("TextLabel")
    Title.Name = "Title"
    Title.Parent = Main_Logo
    Title.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    Title.BackgroundTransparency = 1.000
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(-0.485714316, 0, -1.08571434, 0)
    Title.Size = UDim2.new(0, 200, 0, 20)
    Title.Font = Enum.Font.Gotham
    Title.Text = TitleUI
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 14.000
    Title.TextTransparency = 1.000

    local TitleSize = TextService:GetTextSize(TitleUI, 12, Enum.Font.Gotham, Vector2.new(9e9, 20))
    Title.Size = UDim2.new(0, TitleSize.X + 70, 0, 20)

    Main_Logo.MouseEnter:Connect(function()
        TweenService:Create(Title, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
        TweenService:Create(Title, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextTransparency = 0}):Play()
    end)

    Main_Logo.MouseLeave:Connect(function()
        TweenService:Create(Title, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
        TweenService:Create(Title, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextTransparency = 1}):Play()
    end)

    local title_corner = Instance.new("UICorner")
    title_corner.Name = "title_corner"
    title_corner.Parent = Title

    local Tabs = Instance.new("ScrollingFrame")
    Tabs.Name = "Tabs"
    Tabs.Parent = _1LeftSide
    Tabs.Active = true
    Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tabs.BackgroundTransparency = 1.000
    Tabs.BorderSizePixel = 0
    Tabs.Position = UDim2.new(0.142857228, 0, 0.202500001, 0)
    Tabs.Size = UDim2.new(0, 50, 0, 280)
    Tabs.ScrollBarThickness = 0

    local tabs_layout = Instance.new("UIListLayout")
    tabs_layout.Name = "tabs_layout"
    tabs_layout.Parent = Tabs
    tabs_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    tabs_layout.SortOrder = Enum.SortOrder.LayoutOrder
    tabs_layout.Padding = UDim.new(0, 3)

    local Toggle_Mid = Instance.new("ImageButton")
    Toggle_Mid.Name = "Toggle_Mid"
    Toggle_Mid.Parent = _1LeftSide
    Toggle_Mid.BackgroundTransparency = 1.000
    Toggle_Mid.Position = UDim2.new(0.319158435, 0, 0.914166689, 0)
    Toggle_Mid.Rotation = 180.000
    Toggle_Mid.Size = UDim2.new(0, 25, 0, 25)
    Toggle_Mid.Image = "rbxassetid://4370337241"
    Toggle_Mid.ScaleType = Enum.ScaleType.Fit

    local _2MiddleSide = Instance.new("Frame")
    _2MiddleSide.Name = "2MiddleSide"
    _2MiddleSide.Parent = Main
    _2MiddleSide.BackgroundColor3 = Color3.fromRGB(36, 36, 38)
    _2MiddleSide.BorderSizePixel = 0
    _2MiddleSide.Position = UDim2.new(0.140000001, 0, 0, 0)
    _2MiddleSide.Size = UDim2.new(0, 150, 0, 400)
    _2MiddleSide.ClipsDescendants = true

    local _3Container = Instance.new("Frame")
    _3Container.Parent = Main
    _3Container.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    _3Container.BorderSizePixel = 0
    _3Container.Position = UDim2.new(0.439999998, 0, 0, 0)
    _3Container.Size = UDim2.new(0, 280, 0, 400)
    _3Container.ClipsDescendants = true
    _3Container.Name = "3Container"

    local container_corner = Instance.new("UICorner")
    container_corner.CornerRadius = UDim.new(0, 6)
    container_corner.Name = "container_corner"
    container_corner.Parent = _3Container

    local hider = Instance.new("Frame")
    hider.Name = "hider"
    hider.Parent = _3Container
    hider.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    hider.BorderSizePixel = 0
    hider.Size = UDim2.new(0, 6, 0, 400)

    local mid_toggle = false
    Toggle_Mid.MouseButton1Click:Connect(function()
        if mid_toggle == false then 
            mid_toggle = true
            TweenService:Create(Toggle_Mid, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Rotation = 360}):Play()
            TweenService:Create(_2MiddleSide, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 0, 0, 400)}):Play()
        else
            mid_toggle = false
            TweenService:Create(Toggle_Mid, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Rotation = 180}):Play()
            TweenService:Create(_2MiddleSide, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 150, 0, 400)}):Play()
        end
    end)

    tabs_layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        Tabs.CanvasSize = UDim2.new(0,0,0,tabs_layout.AbsoluteContentSize.Y) 
    end)

    local ui_toggle = false
    UserInputService.InputBegan:connect(function(key)
        if key.KeyCode == Toggle_Key then
            if ui_toggle == false then 
                ui_toggle = true
                Main.Visible = false
            else
                ui_toggle = false
                Main.Visible = true
            end
        end
    end)

    local TabsFunc = {}

    function TabsFunc:NewTab(options)
        local Logo = options.Logo or '4483345998'

        local tab_shell = Instance.new("TextButton")
        tab_shell.Name = "tab_shell"
        tab_shell.Parent = Tabs
        tab_shell.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        tab_shell.BackgroundTransparency = 1
        tab_shell.Size = UDim2.new(0, 40, 0, 40)
        tab_shell.AutoButtonColor = false
        tab_shell.Font = Enum.Font.SourceSans
        tab_shell.Text = ""
        tab_shell.TextColor3 = Color3.fromRGB(0, 0, 0)
        tab_shell.TextSize = 14.000

        local tab_option = Instance.new("ImageLabel")
        tab_option.Name = "tab_option"
        tab_option.Parent = tab_shell
        tab_option.BackgroundTransparency = 1.000
        tab_option.Position = UDim2.new(0.174999997, 0, 0.174999997, 0)
        tab_option.Size = UDim2.new(0, 25, 0, 25)
        tab_option.Image = "rbxassetid://" .. tostring(Logo)
        tab_option.ScaleType = Enum.ScaleType.Fit

        local tabshell_corner = Instance.new("UICorner")
        tabshell_corner.Name = "tabshell_corner"
        tabshell_corner.Parent = tab_shell

        local middle_scroll = Instance.new("ScrollingFrame")
        middle_scroll.Name = "middle_scroll"
        middle_scroll.Parent = _2MiddleSide
        middle_scroll.Active = true
        middle_scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        middle_scroll.BackgroundTransparency = 1.000
        middle_scroll.BorderSizePixel = 0
        middle_scroll.Position = UDim2.new(0.0799999982, 0, 0.0225000009, 0)
        middle_scroll.Size = UDim2.new(0, 125, 0, 380)
        middle_scroll.ScrollBarThickness = 0

        local middle_layout = Instance.new("UIListLayout")
        middle_layout.Name = "middle_layout"
        middle_layout.Parent = middle_scroll
        middle_layout.SortOrder = Enum.SortOrder.LayoutOrder
        middle_layout.Padding = UDim.new(0, 5)

        middle_layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            middle_scroll.CanvasSize = UDim2.new(0,0,0,middle_layout.AbsoluteContentSize.Y) 
        end)

        for i,v in pairs(_2MiddleSide:GetChildren()) do
            v.Size = UDim2.new(0,0,0,380)
        end

        tab_shell.MouseButton1Click:Connect(function()
            for i,v in next, Tabs:GetChildren() do 
                if v:IsA("TextButton") then 
                    TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
                end
            end
            TweenService:Create(tab_shell, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0.950}):Play()

            for i,v in pairs(_2MiddleSide:GetChildren()) do
                TweenService:Create(v, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 0, 0, 380)}):Play()
            end

            for i,v in pairs(_3Container:GetChildren()) do 
                if v.Name:find("NewPage") then 
                    TweenService:Create(v, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 0, 0, 400)}):Play()
                end
            end
            wait(.3)
            TweenService:Create(middle_scroll, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 125, 0, 380)}):Play()
            Extend_page()
        end)

        local mid_sections = {}
        
        local lastTabSection = ""

        function mid_sections:TabSection(options)
            local Title = options.Title or 'Tab Section'
            local Callback = options.Callback or function() end
            lastTabSection = Title
            local Section_Header = Instance.new("TextButton")
            Section_Header.Name = "Section_Header"
            Section_Header.Parent = middle_scroll
            Section_Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Section_Header.BackgroundTransparency = 1.000
            Section_Header.BorderSizePixel = 0
            Section_Header.Size = UDim2.new(0, 125, 0, 30)
            Section_Header.AutoButtonColor = false
            Section_Header.Font = Enum.Font.Gotham
            Section_Header.Text = Title
            Section_Header.TextColor3 = Color3.fromRGB(150, 150, 150)
            Section_Header.TextSize = 14.000
            Section_Header.TextXAlignment = Enum.TextXAlignment.Left
            Section_Header.Text = Title

            local Toggle_Section = Instance.new("ImageLabel")
            Toggle_Section.Name = "Toggle_Section"
            Toggle_Section.Parent = Section_Header
            Toggle_Section.BackgroundTransparency = 1.000
            Toggle_Section.Position = UDim2.new(0.800000072, 0, 0.0666666552, 0)
            Toggle_Section.Rotation = 270.000
            Toggle_Section.Size = UDim2.new(0, 25, 0, 25)
            Toggle_Section.Image = "rbxassetid://4370337241"
            Toggle_Section.ImageColor3 = Color3.fromRGB(150, 150, 150)
            Toggle_Section.ScaleType = Enum.ScaleType.Fit

            local Section_Frame = Instance.new("Frame")
            Section_Frame.Name = "Section_Frame"
            Section_Frame.Parent = middle_scroll
            Section_Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Section_Frame.BackgroundTransparency = 1
            Section_Frame.Size = UDim2.new(0, 125, 0, 0)
            Section_Frame.ClipsDescendants = true

            local Section_Layout = Instance.new("UIListLayout")
            Section_Layout.Name = "Section_Layout"
            Section_Layout.Parent = Section_Frame
            Section_Layout.SortOrder = Enum.SortOrder.LayoutOrder
            Section_Layout.Padding = UDim.new(0, 5)

            local tab_toggled = false
            Section_Header.MouseButton1Click:Connect(function()
                if tab_toggled == false then 
                    Callback(Title)
                    tab_toggled = true 
                    TweenService:Create(Toggle_Section, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Rotation = 90}):Play()
                    TweenService:Create(Toggle_Section, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                    TweenService:Create(Section_Header, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                    TweenService:Create(Section_Frame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0,125,0,Section_Layout.AbsoluteContentSize.Y)}):Play()
                else
                    tab_toggled = false
                    TweenService:Create(Toggle_Section, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Rotation = 270}):Play()
                    TweenService:Create(Toggle_Section, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {ImageColor3 = Color3.fromRGB(150, 150, 150)}):Play()
                    TweenService:Create(Section_Header, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Color3.fromRGB(150, 150, 150)}):Play()
                    TweenService:Create(Section_Frame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0,125,0,0)}):Play()
                end
            end)

            local columns = {}

            function columns:AddColumn(options)
                local Title = options.Title or 'New Column'
                local Callback = options.Callback or function() end

                local Sec_Option = Instance.new("TextButton")
                Sec_Option.Name = "Sec_Option"
                Sec_Option.Parent = Section_Frame
                Sec_Option.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Sec_Option.BackgroundTransparency = 1.000
                Sec_Option.Size = UDim2.new(0, 125, 0, 20)
                Sec_Option.Font = Enum.Font.Gotham
                Sec_Option.Text = Title
                Sec_Option.TextColor3 = Color3.fromRGB(150, 150, 150)
                Sec_Option.TextSize = 14.000

                local Sec_Frame = Instance.new("Frame")
                Sec_Frame.Name = "Sec_Frame"
                Sec_Frame.Parent = Sec_Option
                Sec_Frame.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
                Sec_Frame.BorderSizePixel = 0
                Sec_Frame.Position = UDim2.new(0.128000006, 0, 0.400000006, 0)
                Sec_Frame.Size = UDim2.new(0, 5, 0, 5)

                local Sec_Frame_Corner = Instance.new("UICorner")
                Sec_Frame_Corner.Name = "Sec_Frame_Corner"
                Sec_Frame_Corner.Parent = Sec_Frame

                local NewPage = Instance.new("Frame")
                NewPage.Name = "NewPage"..Title.."Tab"..lastTabSection
                NewPage.Parent = _3Container
                NewPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                NewPage.BackgroundTransparency = 1.000
                NewPage.BorderSizePixel = 0
                NewPage.Size = UDim2.new(0, 280, 0, 400)
                NewPage.ClipsDescendants = true

                local page_name = Instance.new("TextLabel")
                page_name.Name = "page_name"
                page_name.Parent = NewPage
                page_name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                page_name.BackgroundTransparency = 1.000
                page_name.Position = UDim2.new(0.0428571478, 0, 0.0450000018, 0)
                page_name.Size = UDim2.new(0, 112, 0, 11)
                page_name.Font = Enum.Font.Gotham
                page_name.Text = Title
                page_name.TextColor3 = Color3.fromRGB(255, 255, 255)
                page_name.TextSize = 15.000
                page_name.TextXAlignment = Enum.TextXAlignment.Left

                local InnerPage = Instance.new("ScrollingFrame")
                InnerPage.Name = "InnerPage"
                InnerPage.Parent = NewPage
                InnerPage.Active = true
                InnerPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                InnerPage.BackgroundTransparency = 1.000
                InnerPage.BorderSizePixel = 0
                InnerPage.Position = UDim2.new(0, 0, 0.109999999, 0)
                InnerPage.Size = UDim2.new(0, 280, 0, 345)
                InnerPage.ScrollBarThickness = 3

                local innerpage_layout = Instance.new("UIListLayout")
                innerpage_layout.Name = "innerpage_layout"
                innerpage_layout.Parent = InnerPage
                innerpage_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                innerpage_layout.SortOrder = Enum.SortOrder.LayoutOrder
                innerpage_layout.Padding = UDim.new(0, 5)

                for i,v in pairs(_3Container:GetChildren()) do 
                    if v.Name:find("NewPage") then 
                        NewPage.Size = UDim2.new(0, 0, 0, 400)
                    end
                end

                getgenv().Extend_page = function()
                    wait(.3)
                    for i,v in next, Section_Frame:GetChildren() do
                        if v:IsA("TextButton") then
                            for i2, pname in next, _3Container:GetChildren() do 
                                if pname:FindFirstChild("page_name") then
                                    if v.Sec_Frame.BackgroundColor3 == Color3.fromRGB(255, 255, 255) and middle_scroll.Size == UDim2.new(0,125,0,380) then
                                        if v.Text == pname.page_name.Text and v.TextColor3 == Color3.fromRGB(255,255,255) then
                                            TweenService:Create(pname, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 280, 0, 400)}):Play()
                                        end
                                    end
                                end
                            end
                        end
                    end
                end

                Sec_Option.MouseButton1Click:Connect(function()
                    for i,v in pairs(Section_Frame:GetChildren()) do
                        if v:IsA("TextButton") then 
                            TweenService:Create(v, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Color3.fromRGB(150, 150, 150)}):Play()
                            TweenService:Create(v.Sec_Frame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(150, 150, 150)}):Play()
                        end
                    end
                    TweenService:Create(Sec_Option, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                    TweenService:Create(Sec_Frame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                    Callback(Title)
                    for i,v in pairs(_3Container:GetChildren()) do 
                        if v.Name:find("NewPage") then 
                            TweenService:Create(v, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 0, 0, 400)}):Play()
                        end
                    end
                    wait(.3)
                    TweenService:Create(NewPage, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 280, 0, 400)}):Play()
                end)

                innerpage_layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                    InnerPage.CanvasSize = UDim2.new(0,0,0,innerpage_layout.AbsoluteContentSize.Y) 
                end)

                local frame_sections = {}

                function frame_sections:Section(options)
                    local Title = options.Title or "New Section"

                    local Section_Frame_2 = Instance.new("Frame")
                    Section_Frame_2.Name = "Section_Frame"
                    Section_Frame_2.Parent = InnerPage
                    Section_Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    Section_Frame_2.BackgroundTransparency = 1.000
                    Section_Frame_2.BorderSizePixel = 0
                    Section_Frame_2.Position = UDim2.new(0, 0, -0.0231884066, 0)
                    Section_Frame_2.Size = UDim2.new(0, 280, 0, 33)

                    local NewSecName = Instance.new("TextLabel")
                    NewSecName.Name = "NewSecName"
                    NewSecName.Parent = Section_Frame_2
                    NewSecName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    NewSecName.BackgroundTransparency = 1.000
                    NewSecName.BorderSizePixel = 0
                    NewSecName.Position = UDim2.new(0.142857228, 0, 0.212121218, 0)
                    NewSecName.Size = UDim2.new(0, 200, 0, 13)
                    NewSecName.Font = Enum.Font.Gotham
                    NewSecName.Text = Title
                    NewSecName.TextColor3 = Color3.fromRGB(50, 50, 50)
                    NewSecName.TextSize = 14.000

                    local SepFrame = Instance.new("Frame")
                    SepFrame.Name = "SepFrame"
                    SepFrame.Parent = Section_Frame_2
                    SepFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                    SepFrame.BorderSizePixel = 0
                    SepFrame.Position = UDim2.new(0.042857144, 0, 0.724444449, 0)
                    SepFrame.Size = UDim2.new(0, 258, 0, 1)

                    local main_functions = {}

                    function main_functions:Button(options)
                        local Title = options.Text or "uiButton"
                        local callback = options.Callback or function() end

                        local uiButton = Instance.new("TextButton")
                        uiButton.Name = "uiButton"
                        uiButton.Parent = InnerPage
                        uiButton.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                        uiButton.BorderSizePixel = 0
                        uiButton.Size = UDim2.new(0, 258, 0, 30)
                        uiButton.AutoButtonColor = false
                        uiButton.Font = Enum.Font.Gotham
                        uiButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                        uiButton.TextSize = 14.000
                        uiButton.Text = Title

                        local uibutton_corner = Instance.new("UICorner")
                        uibutton_corner.CornerRadius = UDim.new(0, 6)
                        uibutton_corner.Name = "uibutton_corner"
                        uibutton_corner.Parent = uiButton
                        
                        uiButton.MouseButton1Click:Connect(function()
                            callback()
                        end)

                        local button_functions = {}

                        function button_functions:Update(text)
                            uiButton.Text = text
                        end

                        return button_functions
                    end

                    function main_functions:Toggle(options)
                        local Title = options.Text 
                        local callback = options.Callback 
                        local State = options.State or false
                        if State == nil then State = false end

                        local uiToggle = Instance.new("TextButton")
                        uiToggle.Name = "uiToggle"..Title..lastTabSection
                        uiToggle.Parent = InnerPage
                        uiToggle.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                        uiToggle.BackgroundTransparency = 1.000
                        uiToggle.BorderSizePixel = 0
                        uiToggle.Size = UDim2.new(0, 258, 0, 30)
                        uiToggle.AutoButtonColor = false
                        uiToggle.Font = Enum.Font.Gotham
                        uiToggle.Text = tostring(State)
                        uiToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
                        uiToggle.TextSize = 14.000
                        uiToggle.TextTransparency = 1

                        local uitoggle_corner = Instance.new("UICorner")
                        uitoggle_corner.CornerRadius = UDim.new(0, 6)
                        uitoggle_corner.Name = "uitoggle_corner"
                        uitoggle_corner.Parent = uiToggle

                        local T1 = Instance.new("Frame")
                        T1.Name = "T1"
                        T1.Parent = uiToggle
                        T1.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                        T1.BorderSizePixel = 0
                        T1.Position = UDim2.new(0.00387597084, 0, 0.166666672, 0)
                        T1.Size = UDim2.new(0, 20, 0, 20)

                        local UICorner = Instance.new("UICorner")
                        UICorner.CornerRadius = UDim.new(0, 4)
                        UICorner.Parent = T1

                        local T2 = Instance.new("Frame")
                        T2.Name = "T2"
                        T2.Parent = T1
                        T2.BackgroundColor3 = Accent
                        T2.BackgroundTransparency = 1
                        T2.BorderSizePixel = 0
                        T2.Position = UDim2.new(0.150000006, 0, 0.150000006, 0)
                        T2.Size = UDim2.new(0, 14, 0, 14)

                        local UICorner_2 = Instance.new("UICorner")
                        UICorner_2.CornerRadius = UDim.new(0, 4)
                        UICorner_2.Parent = T2

                        local TextLabel = Instance.new("TextLabel")
                        TextLabel.Parent = uiToggle
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.BorderSizePixel = 0
                        TextLabel.Position = UDim2.new(0.116279073, 0, 0.366666675, 0)
                        TextLabel.Size = UDim2.new(0, 200, 0, 8)
                        TextLabel.Font = Enum.Font.Gotham
                        TextLabel.Text = Title
                        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.TextSize = 14.000
                        TextLabel.TextXAlignment = Enum.TextXAlignment.Left

                        local toggled = false 

                        uiToggle:GetPropertyChangedSignal("Text"):Connect(function()
                            if uiToggle.Text == "true" then
                                callback(true)
                                TweenService:Create(T2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
                            elseif uiToggle.Text == "false" then
                                callback(false)
                                TweenService:Create(T2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
                            end
                        end)

                        if State == true then 
                            toggled = true
                            callback(toggled)
                            TweenService:Create(T2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
                        else
                            toggled = false
                            callback(toggled)
                            TweenService:Create(T2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
                        end

                        uiToggle.MouseButton1Click:Connect(function()
                            if toggled == false then 
                                toggled = true
                                uiToggle.Text = "true"
                                --callback(toggled)
                                
                            else
                                toggled = false
                                uiToggle.Text = "false"
                                --callback(toggled)
                            end
                        end)

                        local toggle_functions = {}

                        function toggle_functions:SetState(State)
                            if State == true then 
                                toggled = true
                                callback(toggled)
                                TweenService:Create(T2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
                            else
                                toggled = false
                                callback(toggled)
                                TweenService:Create(T2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
                            end
                        end

                        return toggle_functions
                    end

                    function main_functions:TextLabel(options)
                        local Title = options.Text or  "TextLabel"

                        local uiTextlabel = Instance.new("TextLabel")
                        uiTextlabel.Name = "uiTextlabel"
                        uiTextlabel.Parent = InnerPage
                        uiTextlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        uiTextlabel.BackgroundTransparency = 1.000
                        uiTextlabel.BorderSizePixel = 0
                        uiTextlabel.Size = UDim2.new(0, 258, 0, 30)
                        uiTextlabel.Font = Enum.Font.Gotham
                        uiTextlabel.Text = Title
                        uiTextlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        uiTextlabel.TextSize = 14.000
                        uiTextlabel.TextXAlignment = Enum.TextXAlignment.Left

                        local lable_functions = {}

                        function lable_functions:Update(Title)
                            uiTextlabel.Text = Title
                        end

                        return lable_functions
                    end

                    function main_functions:Divide()
                        local uiSep = Instance.new("Frame")
                        uiSep.Name = "uiSep"
                        uiSep.Parent = InnerPage
                        uiSep.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                        uiSep.BorderSizePixel = 0
                        uiSep.Position = UDim2.new(0.042857144, 0, 0.724444449, 0)
                        uiSep.Size = UDim2.new(0, 258, 0, 1)
                    end

                    function main_functions:Keybind(options)
                        local Title = options.Text or "Keybind"
                        local Key = options.Key.Name
                        local callback = options.Callback or function() end 

                        local uiKeybind = Instance.new("TextButton")
                        uiKeybind.Name = "uiKeybind"
                        uiKeybind.Parent = InnerPage
                        uiKeybind.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                        uiKeybind.BorderSizePixel = 0
                        uiKeybind.Size = UDim2.new(0, 258, 0, 30)
                        uiKeybind.AutoButtonColor = false
                        uiKeybind.Font = Enum.Font.Gotham
                        uiKeybind.Text = Title
                        uiKeybind.TextColor3 = Color3.fromRGB(255, 255, 255)
                        uiKeybind.TextSize = 14.000

                        local uikeybind = Instance.new("UICorner")
                        uikeybind.CornerRadius = UDim.new(0, 6)
                        uikeybind.Name = "uikeybind"
                        uikeybind.Parent = uiKeybind

                        local key_text = Instance.new("TextLabel")
                        key_text.Name = "key_text"
                        key_text.Parent = uiKeybind
                        key_text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        key_text.BackgroundTransparency = 1.000
                        key_text.BorderSizePixel = 0
                        key_text.Position = UDim2.new(0.86434108, 0, 0.0666666701, 0)
                        key_text.Size = UDim2.new(0, 25, 0, 25)
                        key_text.Font = Enum.Font.Gotham
                        key_text.Text = '[' .. Key .. ']'
                        key_text.TextColor3 = Color3.fromRGB(255, 255, 255)
                        key_text.TextSize = 14.000

                        uiKeybind.MouseButton1Click:Connect(function()
                            key_text.Text = '[. . .]'
                            local a, b = game:GetService('UserInputService').InputBegan:wait();
                            if a.KeyCode.Name ~= "Unknown" then
                                key_text.Text = '[' .. a.KeyCode.Name .. ']'
                                Key = a.KeyCode.Name;
                            end
                        end)
                        
                        game:GetService("UserInputService").InputBegan:connect(function(current, pressed)
                            if not pressed then
                                if current.KeyCode.Name == Key then
                                    callback(Key)
                                end
                            end
                        end)

                        local keybind_functions = {}

                        function keybind_functions:UpdateKey(option)
                            key_text.Text = '[' .. option.Name .. ']'
                            Key = option.Name;
                            callback(Key)
                        end

                        return keybind_functions
                    end

                    function main_functions:Textbox(options)
                        local Title = options.Text or "Textbox"
                        local callback = options.Callback or function() end 

                        local text_shell = Instance.new("TextButton")
                        text_shell.Name = "text_shell"
                        text_shell.Parent = InnerPage
                        text_shell.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                        text_shell.BorderSizePixel = 0
                        text_shell.Size = UDim2.new(0, 258, 0, 30)
                        text_shell.AutoButtonColor = false
                        text_shell.Font = Enum.Font.Gotham
                        text_shell.Text = ""
                        text_shell.TextColor3 = Color3.fromRGB(255, 255, 255)
                        text_shell.TextSize = 14.000

                        local textshell_corner = Instance.new("UICorner")
                        textshell_corner.CornerRadius = UDim.new(0, 6)
                        textshell_corner.Name = "textshell_corner"
                        textshell_corner.Parent = text_shell

                        local TextBox = Instance.new("TextBox")
                        TextBox.Parent = text_shell
                        TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextBox.BackgroundTransparency = 1.000
                        TextBox.BorderSizePixel = 0
                        TextBox.Position = UDim2.new(0.0542635657, 0, 0.233333334, 0)
                        TextBox.Size = UDim2.new(0, 228, 0, 15)
                        TextBox.Font = Enum.Font.Gotham
                        TextBox.Text = Title
                        TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TextBox.TextScaled = true
                        TextBox.TextSize = 12.000
                        TextBox.TextWrapped = true

                        TextBox.FocusLost:Connect(function(enterPressed)
                            callback(TextBox.Text)
                        end)

                        local textbox_functions = {}

                        function textbox_functions:Update(text,doescallback)
                            TextBox.Text = text 
                            if doescallback then
                            callback(TextBox.Text) end
                        end

                        return textbox_functions
                    end

                    function main_functions:Dropdown(options)
                        local Title = options.Text or 'Dropdown'
                        local List = options.List or {}
                        local callback = options.Callback or function() end 

                        local uiDropdown = Instance.new("TextButton")
                        uiDropdown.Name = "uiDropdown"
                        uiDropdown.Parent = InnerPage
                        uiDropdown.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                        uiDropdown.BorderSizePixel = 0
                        uiDropdown.Size = UDim2.new(0, 258, 0, 30)
                        uiDropdown.AutoButtonColor = false
                        uiDropdown.Font = Enum.Font.Gotham
                        uiDropdown.Text = Title
                        uiDropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
                        uiDropdown.TextSize = 14.000

                        local uidropdown_corner = Instance.new("UICorner")
                        uidropdown_corner.CornerRadius = UDim.new(0, 6)
                        uidropdown_corner.Name = "uidropdown_corner"
                        uidropdown_corner.Parent = uiDropdown

                        local Toggle_Section_2 = Instance.new("ImageLabel")
                        Toggle_Section_2.Name = "Toggle_Section"
                        Toggle_Section_2.Parent = uiDropdown
                        Toggle_Section_2.BackgroundTransparency = 1.000
                        Toggle_Section_2.Position = UDim2.new(0.862015605, 0, 0.0666666552, 0)
                        Toggle_Section_2.Rotation = 270.000
                        Toggle_Section_2.Size = UDim2.new(0, 25, 0, 25)
                        Toggle_Section_2.Image = "rbxassetid://4370337241"
                        Toggle_Section_2.ScaleType = Enum.ScaleType.Fit

                        local Dropdown_Container = Instance.new("ScrollingFrame")
                        Dropdown_Container.Name = "Dropdown_Container"
                        Dropdown_Container.Parent = InnerPage
                        Dropdown_Container.Active = true
                        Dropdown_Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        Dropdown_Container.BackgroundTransparency = 1
                        Dropdown_Container.BorderSizePixel = 0
                        Dropdown_Container.Position = UDim2.new(0.0392857157, 0, 0.515942037, 0)
                        Dropdown_Container.Size = UDim2.new(0, 258, 0, 0)
                        Dropdown_Container.ScrollBarThickness = 0
                        Dropdown_Container.ClipsDescendants = true
                        Dropdown_Container.Visible = false
                        
                        local drop_con_layout = Instance.new("UIListLayout")
                        drop_con_layout.Name = "drop_con_layout"
                        drop_con_layout.Parent = Dropdown_Container
                        drop_con_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                        drop_con_layout.SortOrder = Enum.SortOrder.LayoutOrder
                        drop_con_layout.Padding = UDim.new(0, 4)

                        local droptog = false
                        uiDropdown.MouseButton1Click:Connect(function()
                            if droptog == false then 
                                droptog = true 
                                Dropdown_Container.Visible = true
                                TweenService:Create(Toggle_Section_2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Rotation = 90}):Play()
                                TweenService:Create(Dropdown_Container, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 258, 0, drop_con_layout.AbsoluteContentSize.Y)}):Play()
                            else
                                droptog = false 
                                TweenService:Create(Toggle_Section_2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Rotation = 270}):Play()
                                local tween = TweenService:Create(Dropdown_Container, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 258, 0, 0)})
                                tween:Play()
                                tween.Completed:Connect(function(playbackState)
                                    if playbackState == Enum.PlaybackState.Completed then
                                        Dropdown_Container.Visible = false
                                    end
                                end)
                            end
                        end)

                        
                        drop_con_layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                            Dropdown_Container.CanvasSize = UDim2.new(0,0,0,drop_con_layout.AbsoluteContentSize.Y) 
                        end)

                        for i,v in pairs(List) do
                            local option = Instance.new("TextButton")
                            option.Name = "option"
                            option.Parent = Dropdown_Container
                            option.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                            option.BorderSizePixel = 0
                            option.Size = UDim2.new(0, 258, 0, 20)
                            option.AutoButtonColor = false
                            option.Font = Enum.Font.Gotham
                            option.Text = v
                            option.TextColor3 = Color3.fromRGB(255, 255, 255)
                            option.TextSize = 11.000

                            local option_corner = Instance.new("UICorner")
                            option_corner.Name = "option_corner"
                            option_corner.Parent = option

                            option.MouseButton1Click:Connect(function()
                                uiDropdown.Text = Title .. ' - ' .. option.Text
                                droptog = false
                                callback(option.Text)
                                TweenService:Create(Toggle_Section_2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Rotation = 270}):Play()
                                local tween = TweenService:Create(Dropdown_Container, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 258, 0, 0)})
                                tween:Play()
                                tween.Completed:Connect(function(playbackState)
                                    if playbackState == Enum.PlaybackState.Completed then
                                        wait()
                                        Dropdown_Container.Visible = false
                                    end
                                end)
                            end)
                        end

                        local dropdown_functions = {}

                        function dropdown_functions:UpdateList(List)
                            local List = List or {}

                            droptog = false
                            TweenService:Create(Toggle_Section_2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Rotation = 270}):Play()
                            TweenService:Create(Dropdown_Container, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 258, 0, 0)}):Play()

                            for i,v in pairs(Dropdown_Container:GetChildren()) do
                                if v.Name == "option" then 
                                    v:Destroy()
                                end
                            end

                            for i,v in pairs(List) do
                                local option = Instance.new("TextButton")
                                option.Name = "option"
                                option.Parent = Dropdown_Container
                                option.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                                option.BorderSizePixel = 0
                                option.Size = UDim2.new(0, 258, 0, 20)
                                option.AutoButtonColor = false
                                option.Font = Enum.Font.Gotham
                                option.Text = v
                                option.TextColor3 = Color3.fromRGB(255, 255, 255)
                                option.TextSize = 11.000
    
                                local option_corner = Instance.new("UICorner")
                                option_corner.Name = "option_corner"
                                option_corner.Parent = option
    
                                option.MouseButton1Click:Connect(function()
                                    uiDropdown.Text = Title .. ' - ' .. option.Text
                                    droptog = false
                                    callback(option.Text)
                                    TweenService:Create(Toggle_Section_2, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Rotation = 270}):Play()
                                    local tween = TweenService:Create(Dropdown_Container, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Size = UDim2.new(0, 258, 0, 0)})
                                    tween:Play()
                                    tween.Completed:Connect(function(playbackState)
                                        if playbackState == Enum.PlaybackState.Completed then
                                            wait()
                                            Dropdown_Container.Visible = false
                                        end
                                    end)
                                end)
                            end
                        end

                        return dropdown_functions
                    end

                    function main_functions:Slider(options)
                        local Title = options.Text or 'Slider'
                        local Min = options.Min or 0 
                        local Max = options.Max or 100 
                        local Def = options.Def or 50
                        local callback = options.Callback or function() end 

                        local slider_holder = Instance.new("TextButton")
                        slider_holder.Name = "slider_holder"..lastTabSection
                        slider_holder.Parent = InnerPage
                        slider_holder.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                        slider_holder.BorderSizePixel = 0
                        slider_holder.Size = UDim2.new(0, 258, 0, 50)
                        slider_holder.AutoButtonColor = false
                        slider_holder.Font = Enum.Font.Gotham
                        slider_holder.Text = ""
                        slider_holder.TextColor3 = Color3.fromRGB(255, 255, 255)
                        slider_holder.TextSize = 14.000

                        local uislider_corner = Instance.new("UICorner")
                        uislider_corner.CornerRadius = UDim.new(0, 6)
                        uislider_corner.Name = "uislider_corner"
                        uislider_corner.Parent = slider_holder

                        local slider_name = Instance.new("TextLabel")
                        slider_name.Name = "slider_name"
                        slider_name.Parent = slider_holder
                        slider_name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        slider_name.BackgroundTransparency = 1.000
                        slider_name.Position = UDim2.new(0.0503875986, 0, 0.159999996, 0)
                        slider_name.Size = UDim2.new(0, 100, 0, 10)
                        slider_name.Font = Enum.Font.Gotham
                        slider_name.Text = Title
                        slider_name.TextColor3 = Color3.fromRGB(255, 255, 255)
                        slider_name.TextSize = 14.000
                        slider_name.TextXAlignment = Enum.TextXAlignment.Left

                        local slider_shell = Instance.new("Frame")
                        slider_shell.Name = "slider_shell"
                        slider_shell.Parent = slider_holder
                        slider_shell.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                        slider_shell.Position = UDim2.new(0.0503875986, 0, 0.479999989, 0)
                        slider_shell.Size = UDim2.new(0, 230, 0, 20)

                        local slidershell_corner = Instance.new("UICorner")
                        slidershell_corner.CornerRadius = UDim.new(0, 6)
                        slidershell_corner.Name = "slidershell_corner"
                        slidershell_corner.Parent = slider_shell

                        local uiSlider = Instance.new("Frame")
                        uiSlider.Name = "uiSlider"
                        uiSlider.Parent = slider_shell
                        uiSlider.BackgroundColor3 = Accent
                        uiSlider.Position = UDim2.new(0.00434782589, 0, 0.0500000007, 0)
                        uiSlider.Size = UDim2.new(((tonumber(Def) or min) - Min) / (Max - Min), 0, 0, 18)
                        uiSlider.BorderSizePixel = 0

                        local uislider_corner_2 = Instance.new("UICorner")
                        uislider_corner_2.CornerRadius = UDim.new(0, 6)
                        uislider_corner_2.Name = "uislider_corner"
                        uislider_corner_2.Parent = uiSlider

                        local slider_text = Instance.new("TextBox")
                        slider_text.Name = "slider_text" .. Title .. "Tab" .. lastTabSection
                        slider_text.Parent = slider_shell
                        slider_text.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                        slider_text.BackgroundTransparency = 0
                        slider_text.BorderSizePixel = 0
                        slider_text.Position = UDim2.new(0.78, 0, -1.125, 0)
                        slider_text.Size = UDim2.new(0, 50, 0, 20)
                        slider_text.Font = Enum.Font.Gotham
                        slider_text.Text = Def
                        slider_text.TextColor3 = Color3.fromRGB(200, 200, 200)
                        slider_text.TextSize = 14
                        slider_text.TextXAlignment = Enum.TextXAlignment.Center
                        slider_text.TextTruncate = 1

                        local slider_text_corner = Instance.new("UICorner")
                        slider_text_corner.CornerRadius = UDim.new(0, 6)
                        slider_text_corner.Name = "slider_text_corner"
                        slider_text_corner.Parent = slider_text

                        -- // Slider by Dawid cause idk how to make them \\ -- 
                        local dragging = false 
                        
                        slider_text.FocusLost:Connect(function()
                            local valtext = tonumber(slider_text.Text)
                            
                            if not slider_text.Text or slider_text.Text == "" or not tonumber(slider_text.Text) then
                                slider_text.Text = Def
                            elseif valtext < tonumber(Min) then
                                slider_text.Text = Min
                            elseif valtext > tonumber(Max) then
                                slider_text.Text = Max
                            end
                            
                            uiSlider:TweenSize(UDim2.new(((tonumber(slider_text.Text) or min) - Min) / (Max - Min), 0, 0, 18), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
                            callback(slider_text.Text)
                        end)

                        local function slide(input)
                            local pos = UDim2.new(math.clamp((input.Position.X - slider_shell.AbsolutePosition.X) / slider_shell.AbsoluteSize.X, 0, 1), 0, 0, 18)
                            uiSlider:TweenSize(pos, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
                            local value = ((pos.X.Scale * Max) / Max) * (Max - Min) + Min
                            value2 = string.format("%.1f", value)
                            slider_text.Text = tostring(value2)
                            callback(value2)
                        end

                        slider_shell.InputBegan:Connect(function(input)
                            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                slide(input)
                                dragging = true
                            end
                        end)
            
                        slider_shell.InputEnded:Connect(function(input)
                            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                dragging = false
                            end
                        end)
            
                        UserInputService.InputChanged:Connect(function(input)
                            if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                                slide(input)
                            end
                        end)

                        local slider_functions = {}

                        function slider_functions:UpdateSlider(Def)
                            slider_text:CaptureFocus()
                            slider_text:SetTextFromInput(Def)
                            slider_text:ReleaseFocus()
                        end

                        return slider_functions
                    end

                    return main_functions
                end

                return frame_sections
            end

            return columns
        end

        return mid_sections
    end
    
    function TabsFunc:GetSliderFromName(arg1)
    for i,v in next, Kronos:GetDescendants() do
    if v.Name == "slider_text"..arg1 then
    return v
    end
    end
    end

    function TabsFunc:GetObjectFromName(arg1)
    for i,v in next, Kronos:GetDescendants() do
    if v.Name == arg1 then
    return v
    end
    end
    end
    
    function TabsFunc:LoadSliderValuesFromTable(t)
    for i,v in next, t do
    THATPATH=TabsFunc:GetObjectFromName(v["Path"])
    THATPATH:CaptureFocus()
    THATPATH:SetTextFromInput(tonumber(v["Value"]))
    THATPATH:ReleaseFocus()
    end
    end

    function TabsFunc:LoadToggleValuesFromTable(t)
    for i,v in next, t do
    THATPATH=TabsFunc:GetObjectFromName(v["Path"])
    THATPATH.Text = v["Value"]
    end
    end

    function TabsFunc:GetAllSliderValues()
    slidervalues={}
    for i,v in next, Kronos:GetDescendants() do
    if v.Name:find("slider_text") and v:IsA("TextBox") then
    table.insert(slidervalues,{Path=v.Name,Value=v.Text})
    end
    end
    return slidervalues
    end

    function TabsFunc:GetAllToggleValues()
    togvalues={}
    for i,v in next, Kronos:GetDescendants() do
    if v.Name:find("uiToggle") and v:IsA("TextButton") then
    table.insert(togvalues,{Path=v.Name,Value=v.Text})
    end
    end
    return togvalues
    end

    function TabsFunc:Reset()
    for i,v in next, Kronos:GetDescendants() do
    if string.find(v.Name,"slider_text") and v:IsA("TextBox") then
    v:CaptureFocus()
    v:SetTextFromInput("Reset")
    v:ReleaseFocus()
    elseif string.find(v.Name,"uiToggle") and v:IsA("TextButton") then
    v.Text = "false"
    end
    end
    end

    return TabsFunc
end

--[[
section:Button({
   Text = "Button",
   Callback = function() end
})

section:Toggle({
   Text = "Toggle",
   State = false,
   Callback = function() end
})

section:Keybind({
   Text = "Keybind",
   Key = Enum.KeyCode.F,
   Callback = function() end
})

section:Textbox({
   Text = "Textbox",
   Callback = function() end
})

section:Dropdown({
   Text = "Dropdown",
   List = {'option1', 'option2', 'option3'},
   Callback = function() end
})]]

local Head = {
Position={
X=0,
Y=1,
Z=0,
XL=0,
YL=0,
ZL=0,
SX=10,
SY=10,
SZ=10
},
Rotation={
X=0,
Y=0,
Z=0,
XL=0,
YL=0,
ZL=0,
SX=10,
SY=10,
SZ=10
},
Type={
PX='cos',
PY='cos',
PZ='cos',
RX='cos',
RY='cos',
RZ='cos'
}
}

local Torso = {
Position={
X=0,
Y=-1,
Z=0,
XL=0,
YL=0,
ZL=0,
SX=10,
SY=10,
SZ=10
},
Rotation={
X=0,
Y=0,
Z=0,
XL=0,
YL=0,
ZL=0,
SX=10,
SY=10,
SZ=10
},
Type={
PX='cos',
PY='cos',
PZ='cos',
RX='cos',
RY='cos',
RZ='cos'
}
}

local Right_Arm = {
Position={
X=1.5,
Y=0.5,
Z=0,
XL=0,
YL=0,
ZL=0,
SX=10,
SY=10,
SZ=10
},
Rotation={
X=0,
Y=0,
Z=0,
XL=0,
YL=0,
ZL=0,
SX=10,
SY=10,
SZ=10
},
Type={
PX='cos',
PY='cos',
PZ='cos',
RX='cos',
RY='cos',
RZ='cos'
}
}

local Left_Arm = {
Position={
X=-1.5,
Y=0.5,
Z=0,
XL=0,
YL=0,
ZL=0,
SX=10,
SY=10,
SZ=10
},
Rotation={
X=0,
Y=0,
Z=0,
XL=0,
YL=0,
ZL=0,
SX=10,
SY=10,
SZ=10
},
Type={
PX='cos',
PY='cos',
PZ='cos',
RX='cos',
RY='cos',
RZ='cos'
}
}

local Right_Leg = {
Position={
X=0.5,
Y=-1,
Z=0,
XL=0,
YL=0,
ZL=0,
SX=10,
SY=10,
SZ=10
},
Rotation={
X=0,
Y=0,
Z=0,
XL=0,
YL=0,
ZL=0,
SX=10,
SY=10,
SZ=10
},
Type={
PX='cos',
PY='cos',
PZ='cos',
RX='cos',
RY='cos',
RZ='cos'
}
}

local Left_Leg = {
Position={
X=-0.5,
Y=-1,
Z=0,
XL=0,
YL=0,
ZL=0,
SX=10,
SY=10,
SZ=10
},
Rotation={
X=0,
Y=0,
Z=0,
XL=0,
YL=0,
ZL=0,
SX=10,
SY=10,
SZ=10
},
Type={
PX='cos',
PY='cos',
PZ='cos',
RX='cos',
RY='cos',
RZ='cos'
}
}

local HatC0 = {
Position={
X=0,
Y=0,
Z=0,
XL=0,
YL=0,
ZL=0,
SX=10,
SY=10,
SZ=10
},
Rotation={
X=0,
Y=0,
Z=0,
XL=0,
YL=0,
ZL=0,
SX=10,
SY=10,
SZ=10
},
Type={
PX='cos',
PY='cos',
PZ='cos',
RX='cos',
RY='cos',
RZ='cos'
}
}

local lerpspeed = .5
local footplant = false
local alignlegstoroot = false
local arcorhandles = false

function getbodylerps()
local lerptoreturn = ''
if footplant then
lerptoreturn = (table.concat({[[
NECK.C0=NECK.C0:Lerp(CFrame.new(]]..Head.Position.X..[[+]]..Head.Position.XL..[[*math.]]..Head.Type.PX..[[(sine/]]..Head.Position.SX..[[),]]..Head.Position.Y..[[+]]..Head.Position.YL..[[*math.]]..Head.Type.PY..[[(sine/]]..Head.Position.SY..[[),]]..Head.Position.Z..[[+]]..Head.Position.ZL..[[*math.]]..Head.Type.PZ..[[(sine/]]..Head.Position.SZ..[[)*lookvel)*CFrame.Angles(math.rad(]]..Head.Rotation.X..[[+]]..Head.Rotation.XL..[[*math.]]..Head.Type.RX..[[(sine/]]..Head.Rotation.SX..[[)),math.rad(]]..Head.Rotation.Y..[[+]]..Head.Rotation.YL..[[*math.]]..Head.Type.RY..[[(sine/]]..Head.Rotation.SY..[[)),math.rad(]]..Head.Rotation.Z..[[+]]..Head.Rotation.ZL..[[*math.]]..Head.Type.RX..[[(sine/]]..Head.Rotation.SZ..[[))*rightvel),]]..lerpspeed..[[)]],[[ 
RJ.C0=RJ.C0:Lerp(CFrame.new(]]..Torso.Position.X..[[+]]..Torso.Position.XL..[[*math.]]..Torso.Type.PX..[[(sine/]]..Torso.Position.SX..[[),]]..Torso.Position.Y..[[+]]..Torso.Position.YL..[[*math.]]..Torso.Type.PY..[[(sine/]]..Torso.Position.SY..[[),]]..Torso.Position.Z..[[+]]..Torso.Position.ZL..[[*math.]]..Torso.Type.PZ..[[(sine/]]..Torso.Position.SZ..[[)*lookvel)*CFrame.Angles(math.rad(]]..Torso.Rotation.X..[[+]]..Torso.Rotation.XL..[[*math.]]..Torso.Type.RX..[[(sine/]]..Torso.Rotation.SX..[[))*lookvel,math.rad(]]..Torso.Rotation.Y..[[+]]..Torso.Rotation.YL..[[*math.]]..Torso.Type.RY..[[(sine/]]..Torso.Rotation.SY..[[)),math.rad(]]..Torso.Rotation.Z..[[+]]..Torso.Rotation.ZL..[[*math.]]..Torso.Type.RZ..[[(sine/]]..Torso.Rotation.SZ..[[))*rightvel),]]..lerpspeed..[[)]],[[ 
RS.C0=RS.C0:Lerp(CFrame.new(]]..Right_Arm.Position.X..[[+]]..Right_Arm.Position.XL..[[*math.]]..Right_Arm.Type.PX..[[(sine/]]..Right_Arm.Position.SX..[[),]]..Right_Arm.Position.Y..[[+]]..Right_Arm.Position.YL..[[*math.]]..Right_Arm.Type.PY..[[(sine/]]..Right_Arm.Position.SY..[[),]]..Right_Arm.Position.Z..[[+]]..Right_Arm.Position.ZL..[[*math.]]..Right_Arm.Type.PZ..[[(sine/]]..Right_Arm.Position.SZ..[[)*lookvel)*CFrame.Angles(math.rad(]]..Right_Arm.Rotation.X..[[+]]..Right_Arm.Rotation.XL..[[*math.]]..Right_Arm.Type.RX..[[(sine/]]..Right_Arm.Rotation.SX..[[))*lookvel,math.rad(]]..Right_Arm.Rotation.Y..[[+]]..Right_Arm.Rotation.YL..[[*math.]]..Right_Arm.Type.RY..[[(sine/]]..Right_Arm.Rotation.SY..[[)),math.rad(]]..Right_Arm.Rotation.Z..[[+]]..Right_Arm.Rotation.ZL..[[*math.]]..Right_Arm.Type.RZ..[[(sine/]]..Right_Arm.Rotation.SZ..[[))*rightvel),]]..lerpspeed..[[)]],[[ 
LS.C0=LS.C0:Lerp(CFrame.new(]]..Left_Arm.Position.X..[[+]]..Left_Arm.Position.XL..[[*math.]]..Left_Arm.Type.PX..[[(sine/]]..Left_Arm.Position.SX..[[),]]..Left_Arm.Position.Y..[[+]]..Left_Arm.Position.YL..[[*math.]]..Left_Arm.Type.PY..[[(sine/]]..Left_Arm.Position.SY..[[),]]..Left_Arm.Position.Z..[[+]]..Left_Arm.Position.ZL..[[*math.]]..Left_Arm.Type.PZ..[[(sine/]]..Left_Arm.Position.SZ..[[)*lookvel)*CFrame.Angles(math.rad(]]..Left_Arm.Rotation.X..[[+]]..Left_Arm.Rotation.XL..[[*math.]]..Left_Arm.Type.RX..[[(sine/]]..Left_Arm.Rotation.SX..[[))*lookvel,math.rad(]]..Left_Arm.Rotation.Y..[[+]]..Left_Arm.Rotation.YL..[[*math.]]..Left_Arm.Type.RY..[[(sine/]]..Left_Arm.Rotation.SY..[[)),math.rad(]]..Left_Arm.Rotation.Z..[[+]]..Left_Arm.Rotation.ZL..[[*math.]]..Left_Arm.Type.RZ..[[(sine/]]..Left_Arm.Rotation.SZ..[[))*rightvel),]]..lerpspeed..[[)]],[[ 
RH.C0=RH.C0:Lerp(CFrame.new(]]..Right_Leg.Position.X..[[+]]..Right_Leg.Position.XL..[[*math.]]..Right_Leg.Type.PX..[[(sine/]]..Right_Leg.Position.SX..[[),]]..Right_Leg.Position.Y..[[+]]..Right_Leg.Position.YL..[[*math.]]..Right_Leg.Type.PY..[[(sine/]]..Right_Leg.Position.SY..[[),]]..Right_Leg.Position.Z..[[+]]..Right_Leg.Position.ZL..[[*math.]]..Right_Leg.Type.PZ..[[(sine/]]..Right_Leg.Position.SZ..[[)*lookvel)*CFrame.Angles(math.rad(]]..Right_Leg.Rotation.X..[[+]]..Right_Leg.Rotation.XL..[[*math.]]..Right_Leg.Type.RX..[[(sine/]]..Right_Leg.Rotation.SX..[[))*lookvel,math.rad(]]..Right_Leg.Rotation.Y..[[+]]..Right_Leg.Rotation.YL..[[*math.]]..Right_Leg.Type.RY..[[(sine/]]..Right_Leg.Rotation.SY..[[)),math.rad(]]..Right_Leg.Rotation.Z..[[+]]..Right_Leg.Rotation.ZL..[[*math.]]..Right_Leg.Type.RZ..[[(sine/]]..Right_Leg.Rotation.SZ..[[))*rightvel),]]..lerpspeed..[[)]],[[ 
LH.C0=LH.C0:Lerp(CFrame.new(]]..Left_Leg.Position.X..[[+]]..Left_Leg.Position.XL..[[*math.]]..Left_Leg.Type.PX..[[(sine/]]..Left_Leg.Position.SX..[[),]]..Left_Leg.Position.Y..[[+]]..Left_Leg.Position.YL..[[*math.]]..Left_Leg.Type.PY..[[(sine/]]..Left_Leg.Position.SY..[[),]]..Left_Leg.Position.Z..[[+]]..Left_Leg.Position.ZL..[[*math.]]..Left_Leg.Type.PZ..[[(sine/]]..Left_Leg.Position.SZ..[[)*lookvel)*CFrame.Angles(math.rad(]]..Left_Leg.Rotation.X..[[+]]..Left_Leg.Rotation.XL..[[*math.]]..Left_Leg.Type.RX..[[(sine/]]..Left_Leg.Rotation.SX..[[))*lookvel,math.rad(]]..Left_Leg.Rotation.Y..[[+]]..Left_Leg.Rotation.YL..[[*math.]]..Left_Leg.Type.RY..[[(sine/]]..Left_Leg.Rotation.SY..[[)),math.rad(]]..Left_Leg.Rotation.Z..[[+]]..Left_Leg.Rotation.ZL..[[*math.]]..Left_Leg.Type.RZ..[[(sine/]]..Left_Leg.Rotation.SZ..[[))*rightvel),]]..lerpspeed..[[)]]}
))
else
lerptoreturn = (table.concat({[[
NECK.C0=NECK.C0:Lerp(CFrame.new(]]..Head.Position.X..[[+]]..Head.Position.XL..[[*math.]]..Head.Type.PX..[[(sine/]]..Head.Position.SX..[[),]]..Head.Position.Y..[[+]]..Head.Position.YL..[[*math.]]..Head.Type.PY..[[(sine/]]..Head.Position.SY..[[),]]..Head.Position.Z..[[+]]..Head.Position.ZL..[[*math.]]..Head.Type.PZ..[[(sine/]]..Head.Position.SZ..[[))*CFrame.Angles(math.rad(]]..Head.Rotation.X..[[+]]..Head.Rotation.XL..[[*math.]]..Head.Type.RX..[[(sine/]]..Head.Rotation.SX..[[)),math.rad(]]..Head.Rotation.Y..[[+]]..Head.Rotation.YL..[[*math.]]..Head.Type.RY..[[(sine/]]..Head.Rotation.SY..[[)),math.rad(]]..Head.Rotation.Z..[[+]]..Head.Rotation.ZL..[[*math.]]..Head.Type.RX..[[(sine/]]..Head.Rotation.SZ..[[))),]]..lerpspeed..[[)]],[[ 
RJ.C0=RJ.C0:Lerp(CFrame.new(]]..Torso.Position.X..[[+]]..Torso.Position.XL..[[*math.]]..Torso.Type.PX..[[(sine/]]..Torso.Position.SX..[[),]]..Torso.Position.Y..[[+]]..Torso.Position.YL..[[*math.]]..Torso.Type.PY..[[(sine/]]..Torso.Position.SY..[[),]]..Torso.Position.Z..[[+]]..Torso.Position.ZL..[[*math.]]..Torso.Type.PZ..[[(sine/]]..Torso.Position.SZ..[[))*CFrame.Angles(math.rad(]]..Torso.Rotation.X..[[+]]..Torso.Rotation.XL..[[*math.]]..Torso.Type.RX..[[(sine/]]..Torso.Rotation.SX..[[)),math.rad(]]..Torso.Rotation.Y..[[+]]..Torso.Rotation.YL..[[*math.]]..Torso.Type.RY..[[(sine/]]..Torso.Rotation.SY..[[)),math.rad(]]..Torso.Rotation.Z..[[+]]..Torso.Rotation.ZL..[[*math.]]..Torso.Type.RZ..[[(sine/]]..Torso.Rotation.SZ..[[))),]]..lerpspeed..[[)]],[[ 
RS.C0=RS.C0:Lerp(CFrame.new(]]..Right_Arm.Position.X..[[+]]..Right_Arm.Position.XL..[[*math.]]..Right_Arm.Type.PX..[[(sine/]]..Right_Arm.Position.SX..[[),]]..Right_Arm.Position.Y..[[+]]..Right_Arm.Position.YL..[[*math.]]..Right_Arm.Type.PY..[[(sine/]]..Right_Arm.Position.SY..[[),]]..Right_Arm.Position.Z..[[+]]..Right_Arm.Position.ZL..[[*math.]]..Right_Arm.Type.PZ..[[(sine/]]..Right_Arm.Position.SZ..[[))*CFrame.Angles(math.rad(]]..Right_Arm.Rotation.X..[[+]]..Right_Arm.Rotation.XL..[[*math.]]..Right_Arm.Type.RX..[[(sine/]]..Right_Arm.Rotation.SX..[[)),math.rad(]]..Right_Arm.Rotation.Y..[[+]]..Right_Arm.Rotation.YL..[[*math.]]..Right_Arm.Type.RY..[[(sine/]]..Right_Arm.Rotation.SY..[[)),math.rad(]]..Right_Arm.Rotation.Z..[[+]]..Right_Arm.Rotation.ZL..[[*math.]]..Right_Arm.Type.RZ..[[(sine/]]..Right_Arm.Rotation.SZ..[[))),]]..lerpspeed..[[)]],[[ 
LS.C0=LS.C0:Lerp(CFrame.new(]]..Left_Arm.Position.X..[[+]]..Left_Arm.Position.XL..[[*math.]]..Left_Arm.Type.PX..[[(sine/]]..Left_Arm.Position.SX..[[),]]..Left_Arm.Position.Y..[[+]]..Left_Arm.Position.YL..[[*math.]]..Left_Arm.Type.PY..[[(sine/]]..Left_Arm.Position.SY..[[),]]..Left_Arm.Position.Z..[[+]]..Left_Arm.Position.ZL..[[*math.]]..Left_Arm.Type.PZ..[[(sine/]]..Left_Arm.Position.SZ..[[))*CFrame.Angles(math.rad(]]..Left_Arm.Rotation.X..[[+]]..Left_Arm.Rotation.XL..[[*math.]]..Left_Arm.Type.RX..[[(sine/]]..Left_Arm.Rotation.SX..[[)),math.rad(]]..Left_Arm.Rotation.Y..[[+]]..Left_Arm.Rotation.YL..[[*math.]]..Left_Arm.Type.RY..[[(sine/]]..Left_Arm.Rotation.SY..[[)),math.rad(]]..Left_Arm.Rotation.Z..[[+]]..Left_Arm.Rotation.ZL..[[*math.]]..Left_Arm.Type.RZ..[[(sine/]]..Left_Arm.Rotation.SZ..[[))),]]..lerpspeed..[[)]],[[ 
RH.C0=RH.C0:Lerp(CFrame.new(]]..Right_Leg.Position.X..[[+]]..Right_Leg.Position.XL..[[*math.]]..Right_Leg.Type.PX..[[(sine/]]..Right_Leg.Position.SX..[[),]]..Right_Leg.Position.Y..[[+]]..Right_Leg.Position.YL..[[*math.]]..Right_Leg.Type.PY..[[(sine/]]..Right_Leg.Position.SY..[[),]]..Right_Leg.Position.Z..[[+]]..Right_Leg.Position.ZL..[[*math.]]..Right_Leg.Type.PZ..[[(sine/]]..Right_Leg.Position.SZ..[[))*CFrame.Angles(math.rad(]]..Right_Leg.Rotation.X..[[+]]..Right_Leg.Rotation.XL..[[*math.]]..Right_Leg.Type.RX..[[(sine/]]..Right_Leg.Rotation.SX..[[)),math.rad(]]..Right_Leg.Rotation.Y..[[+]]..Right_Leg.Rotation.YL..[[*math.]]..Right_Leg.Type.RY..[[(sine/]]..Right_Leg.Rotation.SY..[[)),math.rad(]]..Right_Leg.Rotation.Z..[[+]]..Right_Leg.Rotation.ZL..[[*math.]]..Right_Leg.Type.RZ..[[(sine/]]..Right_Leg.Rotation.SZ..[[))),]]..lerpspeed..[[)]],[[ 
LH.C0=LH.C0:Lerp(CFrame.new(]]..Left_Leg.Position.X..[[+]]..Left_Leg.Position.XL..[[*math.]]..Left_Leg.Type.PX..[[(sine/]]..Left_Leg.Position.SX..[[),]]..Left_Leg.Position.Y..[[+]]..Left_Leg.Position.YL..[[*math.]]..Left_Leg.Type.PY..[[(sine/]]..Left_Leg.Position.SY..[[),]]..Left_Leg.Position.Z..[[+]]..Left_Leg.Position.ZL..[[*math.]]..Left_Leg.Type.PZ..[[(sine/]]..Left_Leg.Position.SZ..[[))*CFrame.Angles(math.rad(]]..Left_Leg.Rotation.X..[[+]]..Left_Leg.Rotation.XL..[[*math.]]..Left_Leg.Type.RX..[[(sine/]]..Left_Leg.Rotation.SX..[[)),math.rad(]]..Left_Leg.Rotation.Y..[[+]]..Left_Leg.Rotation.YL..[[*math.]]..Left_Leg.Type.RY..[[(sine/]]..Left_Leg.Rotation.SY..[[)),math.rad(]]..Left_Leg.Rotation.Z..[[+]]..Left_Leg.Rotation.ZL..[[*math.]]..Left_Leg.Type.RZ..[[(sine/]]..Left_Leg.Rotation.SZ..[[))),]]..lerpspeed..[[)]]}
))
end

local part0legs = ''

if alignlegstoroot then
part0legs = [[RH.Part0 = workspace.Camera.CameraSubject.RootPart
LH.Part0 = workspace.Camera.CameraSubject.RootPart]]
else
part0legs = [[RH.Part0 = workspace.Camera.CameraSubject.Parent.Torso
LH.Part0 = workspace.Camera.CameraSubject.Parent.Torso]]
end
return part0legs.."\n"..lerptoreturn
end

local window = library:Window({
   Title = "Tangerex Premium",
   Accent = Color3.fromRGB(206, 109, 39),
   Logo = 10048990832,
   ToggleKey = Enum.KeyCode.Insert
})

local tab = window:NewTab({
   Logo = 7072715962
})

local hattab = window:NewTab({
   Logo = 7072718011
})

local main = tab:TabSection({
   Title = "Main"
})

local mainanim = main:AddColumn({
   Title = "Animate"
})

local mainanimsection = mainanim:Section({
   Title = "Animate"
})

local mainloadsaves = main:AddColumn({
   Title = "Saves/Load"
})

local mainloadsavesection = mainloadsaves:Section({
   Title = "Saves/Load"
})

local mainadvance = main:AddColumn({
   Title = "Advanced"
})

local mainadvancesection = mainadvance:Section({
   Title = "Advanced"
})

local mainpresets = main:AddColumn({
   Title = "Presets"
})

local mainpresetssection = mainpresets:Section({
   Title = "Presets"
})

cos=math.cos
sin=math.sin
cf=CFrame.new
angles=CFrame.Angles
rad=math.rad


local ct = {}

Animating = false

js = {}

function js.enc(t)
return game:GetService("HttpService"):JSONEncode(t)
end

function js.dec(t)
return game:GetService("HttpService"):JSONDecode(t)
end

function Set(tb,val)
tb:CaptureFocus()
tb:SetTextFromInput(val)
tb:ReleaseFocus()
end

--"Mover.Main.3Container.NewPagePositionTabHead.InnerPage.slider_holderHead.slider_shell.slider_textX"

mainadvancesection:Button({Text = "Reset",Callback = function()
window:Reset()
end})

local replicatedanims = false

mainadvancesection:Slider({
   Text = "Lerp Alpha",
   Min = 0.1,
   Max = 1,
   Def = 0.5,
   Callback = function(a)
lerpspeed = tonumber(a)
end
})

mainadvancesection:Toggle({
   Text = "Replicate",
   State = false,
   Callback = function(a)
replicatedanims = a
end
})

mainadvancesection:Toggle({
   Text = "Footplant",
   State = false,
   Callback = function(a)
footplant = a
end
})

mainadvancesection:Toggle({
   Text = "Align legs to root",
   State = false,
   Callback = function(a)
alignlegstoroot = a
end
})

mainadvancesection:Toggle({
   Text = "ArcHandles/Handles",
   State = false,
   Callback = function(a)
if a == false then
for i,v in next, game.Players.LocalPlayer.Character:GetDescendants() do
if v:IsA("SelectionBox") then
v:Destroy()
end
end
if game.CoreGui:FindFirstChild("Rotation") then
game.CoreGui:FindFirstChild("Rotation"):Destroy()
end
if game.CoreGui:FindFirstChild("Position") then
game.CoreGui:FindFirstChild("Position"):Destroy()
end
end
arcorhandles = a
end
})

local setas = 
{idle = "--idle lerp here",
walk = "--walk lerp here",
run = "--run lerp here",
jump = "--jump lerp here",
fall = "--fall lerp here"}

mainadvancesection:Dropdown({
   Text = "Set lerps",
   List = {"Idle","Walk","Run","Jump","Fall"},
   Callback = function(sets) setas[sets:lower()] = getbodylerps() end
})

if not isfolder("TangerexData/Presets") then
makefolder("TangerexData/Presets")
writefile("TangerexData/Presets/Walk.txt",
[==[
[{"Value":"0","Path":"slider_textXTabHead"},{"Value":"0","Path":"slider_textX {L}TabHead"},{"Value":"1","Path":"slider_textYTabHead"},{"Value":"0","Path":"slider_textY {L}TabHead"},{"Value":"0","Path":"slider_textZTabHead"},{"Value":"0","Path":"slider_textZ {L}TabHead"},{"Value":"0","Path":"slider_textX {Rad}TabHead"},{"Value":"0","Path":"slider_textX {L} {Rad}TabHead"},{"Value":"0","Path":"slider_textY {Rad}TabHead"},{"Value":"0","Path":"slider_textY {L} {Rad}TabHead"},{"Value":"0","Path":"slider_textZ {Rad}TabHead"},{"Value":"0","Path":"slider_textZ {L} {Rad}TabHead"},{"Value":"10","Path":"slider_textPXTabHead"},{"Value":"10","Path":"slider_textPYTabHead"},{"Value":"10","Path":"slider_textPZTabHead"},{"Value":"10","Path":"slider_textRXTabHead"},{"Value":"10","Path":"slider_textRYTabHead"},{"Value":"10","Path":"slider_textRZTabHead"},{"Value":"0","Path":"slider_textXTabTorso"},{"Value":"0","Path":"slider_textX {L}TabTorso"},{"Value":"-1","Path":"slider_textYTabTorso"},{"Value":"0.2","Path":"slider_textY {L}TabTorso"},{"Value":"0","Path":"slider_textZTabTorso"},{"Value":"0","Path":"slider_textZ {L}TabTorso"},{"Value":"-10","Path":"slider_textX {Rad}TabTorso"},{"Value":"4","Path":"slider_textX {L} {Rad}TabTorso"},{"Value":"0","Path":"slider_textY {Rad}TabTorso"},{"Value":"0","Path":"slider_textY {L} {Rad}TabTorso"},{"Value":"0","Path":"slider_textZ {Rad}TabTorso"},{"Value":"0","Path":"slider_textZ {L} {Rad}TabTorso"},{"Value":"10","Path":"slider_textPXTabTorso"},{"Value":"4","Path":"slider_textPYTabTorso"},{"Value":"4","Path":"slider_textPZTabTorso"},{"Value":"4","Path":"slider_textRXTabTorso"},{"Value":"10","Path":"slider_textRYTabTorso"},{"Value":"4","Path":"slider_textRZTabTorso"},{"Value":"-1.5","Path":"slider_textXTabLeft Arm"},{"Value":"0","Path":"slider_textX {L}TabLeft Arm"},{"Value":"0.5","Path":"slider_textYTabLeft Arm"},{"Value":"0","Path":"slider_textY {L}TabLeft Arm"},{"Value":"0","Path":"slider_textZTabLeft Arm"},{"Value":"0.25","Path":"slider_textZ {L}TabLeft Arm"},{"Value":"0","Path":"slider_textX {Rad}TabLeft Arm"},{"Value":"-20","Path":"slider_textX {L} {Rad}TabLeft Arm"},{"Value":"0","Path":"slider_textY {Rad}TabLeft Arm"},{"Value":"10","Path":"slider_textY {L} {Rad}TabLeft Arm"},{"Value":"0","Path":"slider_textZ {Rad}TabLeft Arm"},{"Value":"0","Path":"slider_textZ {L} {Rad}TabLeft Arm"},{"Value":"10","Path":"slider_textPXTabLeft Arm"},{"Value":"8","Path":"slider_textPYTabLeft Arm"},{"Value":"8","Path":"slider_textPZTabLeft Arm"},{"Value":"8","Path":"slider_textRXTabLeft Arm"},{"Value":"8","Path":"slider_textRYTabLeft Arm"},{"Value":"8","Path":"slider_textRZTabLeft Arm"},{"Value":"1.5","Path":"slider_textXTabRight Arm"},{"Value":"0","Path":"slider_textX {L}TabRight Arm"},{"Value":"0.5","Path":"slider_textYTabRight Arm"},{"Value":"0","Path":"slider_textY {L}TabRight Arm"},{"Value":"0","Path":"slider_textZTabRight Arm"},{"Value":"-0.25","Path":"slider_textZ {L}TabRight Arm"},{"Value":"0","Path":"slider_textX {Rad}TabRight Arm"},{"Value":"20","Path":"slider_textX {L} {Rad}TabRight Arm"},{"Value":"0","Path":"slider_textY {Rad}TabRight Arm"},{"Value":"10","Path":"slider_textY {L} {Rad}TabRight Arm"},{"Value":"0","Path":"slider_textZ {Rad}TabRight Arm"},{"Value":"0","Path":"slider_textZ {L} {Rad}TabRight Arm"},{"Value":"10","Path":"slider_textPXTabRight Arm"},{"Value":"8","Path":"slider_textPYTabRight Arm"},{"Value":"8","Path":"slider_textPZTabRight Arm"},{"Value":"8","Path":"slider_textRXTabRight Arm"},{"Value":"8","Path":"slider_textRYTabRight Arm"},{"Value":"8","Path":"slider_textRZTabRight Arm"},{"Value":"-0.5","Path":"slider_textXTabLeft Leg"},{"Value":"0","Path":"slider_textX {L}TabLeft Leg"},{"Value":"-1","Path":"slider_textYTabLeft Leg"},{"Value":"0.5","Path":"slider_textY {L}TabLeft Leg"},{"Value":"0","Path":"slider_textZTabLeft Leg"},{"Value":"-0.5","Path":"slider_textZ {L}TabLeft Leg"},{"Value":"0","Path":"slider_textX {Rad}TabLeft Leg"},{"Value":"40","Path":"slider_textX {L} {Rad}TabLeft Leg"},{"Value":"0","Path":"slider_textY {Rad}TabLeft Leg"},{"Value":"-10","Path":"slider_textY {L} {Rad}TabLeft Leg"},{"Value":"0","Path":"slider_textZ {Rad}TabLeft Leg"},{"Value":"0","Path":"slider_textZ {L} {Rad}TabLeft Leg"},{"Value":"10","Path":"slider_textPXTabLeft Leg"},{"Value":"8","Path":"slider_textPYTabLeft Leg"},{"Value":"8","Path":"slider_textPZTabLeft Leg"},{"Value":"8","Path":"slider_textRXTabLeft Leg"},{"Value":"8","Path":"slider_textRYTabLeft Leg"},{"Value":"8","Path":"slider_textRZTabLeft Leg"},{"Value":"0.5","Path":"slider_textXTabRight Leg"},{"Value":"0","Path":"slider_textX {L}TabRight Leg"},{"Value":"-1","Path":"slider_textYTabRight Leg"},{"Value":"-0.5","Path":"slider_textY {L}TabRight Leg"},{"Value":"0","Path":"slider_textZTabRight Leg"},{"Value":"0.5","Path":"slider_textZ {L}TabRight Leg"},{"Value":"0","Path":"slider_textX {Rad}TabRight Leg"},{"Value":"-40","Path":"slider_textX {L} {Rad}TabRight Leg"},{"Value":"0","Path":"slider_textY {Rad}TabRight Leg"},{"Value":"-10","Path":"slider_textY {L} {Rad}TabRight Leg"},{"Value":"0","Path":"slider_textZ {Rad}TabRight Leg"},{"Value":"0","Path":"slider_textZ {L} {Rad}TabRight Leg"},{"Value":"10","Path":"slider_textPXTabRight Leg"},{"Value":"8","Path":"slider_textPYTabRight Leg"},{"Value":"8","Path":"slider_textPZTabRight Leg"},{"Value":"8","Path":"slider_textRXTabRight Leg"},{"Value":"8","Path":"slider_textRYTabRight Leg"},{"Value":"8","Path":"slider_textRZTabRight Leg"}]
--[[Toggles]]
[{"Value":"false","Path":"uiToggleReplicateMain"},{"Value":"false","Path":"uiToggleFootplantMain"},{"Value":"false","Path":"uiToggleArcHandles/HandlesMain"},{"Value":"false","Path":"uiTogglePX Cos/SinHead"},{"Value":"false","Path":"uiTogglePY Cos/SinHead"},{"Value":"false","Path":"uiTogglePZ Cos/SinHead"},{"Value":"false","Path":"uiToggleRX Cos/SinHead"},{"Value":"false","Path":"uiToggleRY Cos/SinHead"},{"Value":"false","Path":"uiToggleRZ Cos/SinHead"},{"Value":"false","Path":"uiTogglePX Cos/SinTorso"},{"Value":"false","Path":"uiTogglePY Cos/SinTorso"},{"Value":"true","Path":"uiTogglePZ Cos/SinTorso"},{"Value":"true","Path":"uiToggleRX Cos/SinTorso"},{"Value":"false","Path":"uiToggleRY Cos/SinTorso"},{"Value":"false","Path":"uiToggleRZ Cos/SinTorso"},{"Value":"false","Path":"uiTogglePX Cos/SinLeft Arm"},{"Value":"false","Path":"uiTogglePY Cos/SinLeft Arm"},{"Value":"true","Path":"uiTogglePZ Cos/SinLeft Arm"},{"Value":"true","Path":"uiToggleRX Cos/SinLeft Arm"},{"Value":"true","Path":"uiToggleRY Cos/SinLeft Arm"},{"Value":"false","Path":"uiToggleRZ Cos/SinLeft Arm"},{"Value":"false","Path":"uiTogglePX Cos/SinRight Arm"},{"Value":"false","Path":"uiTogglePY Cos/SinRight Arm"},{"Value":"true","Path":"uiTogglePZ Cos/SinRight Arm"},{"Value":"true","Path":"uiToggleRX Cos/SinRight Arm"},{"Value":"true","Path":"uiToggleRY Cos/SinRight Arm"},{"Value":"false","Path":"uiToggleRZ Cos/SinRight Arm"},{"Value":"false","Path":"uiTogglePX Cos/SinLeft Leg"},{"Value":"false","Path":"uiTogglePY Cos/SinLeft Leg"},{"Value":"false","Path":"uiTogglePZ Cos/SinLeft Leg"},{"Value":"true","Path":"uiToggleRX Cos/SinLeft Leg"},{"Value":"false","Path":"uiToggleRY Cos/SinLeft Leg"},{"Value":"false","Path":"uiToggleRZ Cos/SinLeft Leg"},{"Value":"false","Path":"uiTogglePX Cos/SinRight Leg"},{"Value":"false","Path":"uiTogglePY Cos/SinRight Leg"},{"Value":"false","Path":"uiTogglePZ Cos/SinRight Leg"},{"Value":"true","Path":"uiToggleRX Cos/SinRight Leg"},{"Value":"false","Path":"uiToggleRY Cos/SinRight Leg"},{"Value":"false","Path":"uiToggleRZ Cos/SinRight Leg"}]
]==])
writefile("TangerexData/Presets/Run.txt",[==[[{"Value":"0","Path":"slider_textXTabHead"},{"Value":"0","Path":"slider_textX {L}TabHead"},{"Value":"1","Path":"slider_textYTabHead"},{"Value":"0","Path":"slider_textY {L}TabHead"},{"Value":"0","Path":"slider_textZTabHead"},{"Value":"0","Path":"slider_textZ {L}TabHead"},{"Value":"0","Path":"slider_textX {Rad}TabHead"},{"Value":"0","Path":"slider_textX {L} {Rad}TabHead"},{"Value":"0","Path":"slider_textY {Rad}TabHead"},{"Value":"0","Path":"slider_textY {L} {Rad}TabHead"},{"Value":"0","Path":"slider_textZ {Rad}TabHead"},{"Value":"0","Path":"slider_textZ {L} {Rad}TabHead"},{"Value":"10","Path":"slider_textPXTabHead"},{"Value":"10","Path":"slider_textPYTabHead"},{"Value":"10","Path":"slider_textPZTabHead"},{"Value":"10","Path":"slider_textRXTabHead"},{"Value":"10","Path":"slider_textRYTabHead"},{"Value":"10","Path":"slider_textRZTabHead"},{"Value":"0","Path":"slider_textXTabTorso"},{"Value":"0","Path":"slider_textX {L}TabTorso"},{"Value":"-1","Path":"slider_textYTabTorso"},{"Value":"0.2000000000000000111","Path":"slider_textY {L}TabTorso"},{"Value":"0","Path":"slider_textZTabTorso"},{"Value":"-0.25","Path":"slider_textZ {L}TabTorso"},{"Value":"-20","Path":"slider_textX {Rad}TabTorso"},{"Value":"5","Path":"slider_textX {L} {Rad}TabTorso"},{"Value":"0","Path":"slider_textY {Rad}TabTorso"},{"Value":"0","Path":"slider_textY {L} {Rad}TabTorso"},{"Value":"0","Path":"slider_textZ {Rad}TabTorso"},{"Value":"0","Path":"slider_textZ {L} {Rad}TabTorso"},{"Value":"10","Path":"slider_textPXTabTorso"},{"Value":"2.5","Path":"slider_textPYTabTorso"},{"Value":"2.5","Path":"slider_textPZTabTorso"},{"Value":"2.5","Path":"slider_textRXTabTorso"},{"Value":"5","Path":"slider_textRYTabTorso"},{"Value":"2.5","Path":"slider_textRZTabTorso"},{"Value":"-1.5","Path":"slider_textXTabLeft Arm"},{"Value":"0","Path":"slider_textX {L}TabLeft Arm"},{"Value":"0.5","Path":"slider_textYTabLeft Arm"},{"Value":"0","Path":"slider_textY {L}TabLeft Arm"},{"Value":"0","Path":"slider_textZTabLeft Arm"},{"Value":"0.5","Path":"slider_textZ {L}TabLeft Arm"},{"Value":"0","Path":"slider_textX {Rad}TabLeft Arm"},{"Value":"-50","Path":"slider_textX {L} {Rad}TabLeft Arm"},{"Value":"0","Path":"slider_textY {Rad}TabLeft Arm"},{"Value":"20","Path":"slider_textY {L} {Rad}TabLeft Arm"},{"Value":"-10","Path":"slider_textZ {Rad}TabLeft Arm"},{"Value":"0","Path":"slider_textZ {L} {Rad}TabLeft Arm"},{"Value":"10","Path":"slider_textPXTabLeft Arm"},{"Value":"10","Path":"slider_textPYTabLeft Arm"},{"Value":"5","Path":"slider_textPZTabLeft Arm"},{"Value":"5","Path":"slider_textRXTabLeft Arm"},{"Value":"5","Path":"slider_textRYTabLeft Arm"},{"Value":"5","Path":"slider_textRZTabLeft Arm"},{"Value":"1.5","Path":"slider_textXTabRight Arm"},{"Value":"0","Path":"slider_textX {L}TabRight Arm"},{"Value":"0.5","Path":"slider_textYTabRight Arm"},{"Value":"0","Path":"slider_textY {L}TabRight Arm"},{"Value":"0","Path":"slider_textZTabRight Arm"},{"Value":"-0.5","Path":"slider_textZ {L}TabRight Arm"},{"Value":"0","Path":"slider_textX {Rad}TabRight Arm"},{"Value":"50","Path":"slider_textX {L} {Rad}TabRight Arm"},{"Value":"0","Path":"slider_textY {Rad}TabRight Arm"},{"Value":"20","Path":"slider_textY {L} {Rad}TabRight Arm"},{"Value":"10","Path":"slider_textZ {Rad}TabRight Arm"},{"Value":"0","Path":"slider_textZ {L} {Rad}TabRight Arm"},{"Value":"10","Path":"slider_textPXTabRight Arm"},{"Value":"10","Path":"slider_textPYTabRight Arm"},{"Value":"5","Path":"slider_textPZTabRight Arm"},{"Value":"5","Path":"slider_textRXTabRight Arm"},{"Value":"5","Path":"slider_textRYTabRight Arm"},{"Value":"5","Path":"slider_textRZTabRight Arm"},{"Value":"-0.5","Path":"slider_textXTabLeft Leg"},{"Value":"0","Path":"slider_textX {L}TabLeft Leg"},{"Value":"-1","Path":"slider_textYTabLeft Leg"},{"Value":"0.5","Path":"slider_textY {L}TabLeft Leg"},{"Value":"0","Path":"slider_textZTabLeft Leg"},{"Value":"-1","Path":"slider_textZ {L}TabLeft Leg"},{"Value":"0","Path":"slider_textX {Rad}TabLeft Leg"},{"Value":"80","Path":"slider_textX {L} {Rad}TabLeft Leg"},{"Value":"0","Path":"slider_textY {Rad}TabLeft Leg"},{"Value":"-20","Path":"slider_textY {L} {Rad}TabLeft Leg"},{"Value":"0","Path":"slider_textZ {Rad}TabLeft Leg"},{"Value":"0","Path":"slider_textZ {L} {Rad}TabLeft Leg"},{"Value":"10","Path":"slider_textPXTabLeft Leg"},{"Value":"5","Path":"slider_textPYTabLeft Leg"},{"Value":"5","Path":"slider_textPZTabLeft Leg"},{"Value":"5","Path":"slider_textRXTabLeft Leg"},{"Value":"5","Path":"slider_textRYTabLeft Leg"},{"Value":"5","Path":"slider_textRZTabLeft Leg"},{"Value":"0.5","Path":"slider_textXTabRight Leg"},{"Value":"0","Path":"slider_textX {L}TabRight Leg"},{"Value":"-1","Path":"slider_textYTabRight Leg"},{"Value":"-0.5","Path":"slider_textY {L}TabRight Leg"},{"Value":"0","Path":"slider_textZTabRight Leg"},{"Value":"1","Path":"slider_textZ {L}TabRight Leg"},{"Value":"0","Path":"slider_textX {Rad}TabRight Leg"},{"Value":"-80","Path":"slider_textX {L} {Rad}TabRight Leg"},{"Value":"0","Path":"slider_textY {Rad}TabRight Leg"},{"Value":"-20","Path":"slider_textY {L} {Rad}TabRight Leg"},{"Value":"0","Path":"slider_textZ {Rad}TabRight Leg"},{"Value":"0","Path":"slider_textZ {L} {Rad}TabRight Leg"},{"Value":"10","Path":"slider_textPXTabRight Leg"},{"Value":"5","Path":"slider_textPYTabRight Leg"},{"Value":"5","Path":"slider_textPZTabRight Leg"},{"Value":"5","Path":"slider_textRXTabRight Leg"},{"Value":"5","Path":"slider_textRYTabRight Leg"},{"Value":"5","Path":"slider_textRZTabRight Leg"}]
--[[Toggles]]
[{"Value":"false","Path":"uiToggleReplicateMain"},{"Value":"false","Path":"uiToggleFootplantMain"},{"Value":"false","Path":"uiToggleArcHandles/HandlesMain"},{"Value":"false","Path":"uiTogglePX Cos/SinHead"},{"Value":"false","Path":"uiTogglePY Cos/SinHead"},{"Value":"false","Path":"uiTogglePZ Cos/SinHead"},{"Value":"false","Path":"uiToggleRX Cos/SinHead"},{"Value":"false","Path":"uiToggleRY Cos/SinHead"},{"Value":"false","Path":"uiToggleRZ Cos/SinHead"},{"Value":"false","Path":"uiTogglePX Cos/SinTorso"},{"Value":"false","Path":"uiTogglePY Cos/SinTorso"},{"Value":"true","Path":"uiTogglePZ Cos/SinTorso"},{"Value":"true","Path":"uiToggleRX Cos/SinTorso"},{"Value":"true","Path":"uiToggleRY Cos/SinTorso"},{"Value":"false","Path":"uiToggleRZ Cos/SinTorso"},{"Value":"false","Path":"uiTogglePX Cos/SinLeft Arm"},{"Value":"false","Path":"uiTogglePY Cos/SinLeft Arm"},{"Value":"true","Path":"uiTogglePZ Cos/SinLeft Arm"},{"Value":"true","Path":"uiToggleRX Cos/SinLeft Arm"},{"Value":"true","Path":"uiToggleRY Cos/SinLeft Arm"},{"Value":"false","Path":"uiToggleRZ Cos/SinLeft Arm"},{"Value":"false","Path":"uiTogglePX Cos/SinRight Arm"},{"Value":"false","Path":"uiTogglePY Cos/SinRight Arm"},{"Value":"true","Path":"uiTogglePZ Cos/SinRight Arm"},{"Value":"true","Path":"uiToggleRX Cos/SinRight Arm"},{"Value":"true","Path":"uiToggleRY Cos/SinRight Arm"},{"Value":"false","Path":"uiToggleRZ Cos/SinRight Arm"},{"Value":"false","Path":"uiTogglePX Cos/SinLeft Leg"},{"Value":"false","Path":"uiTogglePY Cos/SinLeft Leg"},{"Value":"false","Path":"uiTogglePZ Cos/SinLeft Leg"},{"Value":"true","Path":"uiToggleRX Cos/SinLeft Leg"},{"Value":"false","Path":"uiToggleRY Cos/SinLeft Leg"},{"Value":"true","Path":"uiToggleRZ Cos/SinLeft Leg"},{"Value":"false","Path":"uiTogglePX Cos/SinRight Leg"},{"Value":"false","Path":"uiTogglePY Cos/SinRight Leg"},{"Value":"false","Path":"uiTogglePZ Cos/SinRight Leg"},{"Value":"true","Path":"uiToggleRX Cos/SinRight Leg"},{"Value":"false","Path":"uiToggleRY Cos/SinRight Leg"},{"Value":"true","Path":"uiToggleRZ Cos/SinRight Leg"}]]==])

end

files=listfiles("TangerexData/Presets")

for i,v in next, files do
files[i]=tostring(v):gsub([[TangerexData/Presets\]],""):gsub(".txt","")
end

selectedpreset="Walk"

presetdropdown=mainpresetssection:Dropdown({
Text = "Presets",
List = files,
Callback = function(a)
selectedpreset = tostring(a)
end
})

mainpresetssection:Button({
Text = "Refresh",
Callback = function()
files=listfiles("TangerexData/Presets")

for i,v in next, files do
files[i]=tostring(v):gsub([[TangerexData/Presets\]],""):gsub(".txt","")
end
presetdropdown:UpdateList(files)
end
})

mainpresetssection:Button({
Text = "Load Selected Preset",
Callback=function()
window:LoadSliderValuesFromTable(js.dec(readfile("TangerexData/Presets/"..selectedpreset..".txt"):split("--[[Toggles]]")[1]))
window:LoadToggleValuesFromTable(js.dec(readfile("TangerexData/Presets/"..selectedpreset..".txt"):split("--[[Toggles]]")[2]))
end
})

presetname = "Preset"

mainpresetssection:Divide()

presetnamer=mainpresetssection:Textbox({
   Text = "Preset Name",
   Callback = function(a) presetnamer:Update(a,false) presetname = a end
})

mainpresetssection:Button({Text = "Save as Preset",Callback = function()
if not isfolder("TangerexData") then
makefolder("TangerexData")
end
writefile("TangerexData/Presets/"..presetname..".txt",js.enc(window:GetAllSliderValues()).."\n--[[Toggles]]\n"..js.enc(window:GetAllToggleValues()))
end})

filename = "SavedLerps"

mainloadsavesection:Button({Text = "Save lerps",Callback = function()
if not isfolder("TangerexData") then
makefolder("TangerexData")
end
writefile("TangerexData/"..filename..".txt",js.enc(window:GetAllSliderValues()).."\n--[[Toggles]]\n"..js.enc(window:GetAllToggleValues()))
end})

mainloadsavesection:Button({Text = "Load saved lerps",Callback = function()
if not isfolder("TangerexData") then
makefolder("TangerexData")
end
if not readfile("TangerexData/"..filename..".txt") then
writefile("TangerexData/"..filename..".txt",js.enc(window:GetAllSliderValues()).."\n--[[Toggles]]\n"..js.enc(window:GetAllToggleValues()))
end
window:LoadSliderValuesFromTable(js.dec(readfile("TangerexData/"..filename..".txt"):split("--[[Toggles]]")[1]))
window:LoadToggleValuesFromTable(js.dec(readfile("TangerexData/"..filename..".txt"):split("--[[Toggles]]")[2]))
end})

local fakeparts={
Head = {parte=Instance.new("Part",game.Players.LocalPlayer.PlayerGui),lastcf=CFrame.new(Head.Position.X,Head.Position.Y,Head.Position.Z)*CFrame.Angles(math.rad(Head.Rotation.X),math.rad(Head.Rotation.Y),math.rad(Head.Rotation.Z))},
Torso ={parte=Instance.new("Part",game.Players.LocalPlayer.PlayerGui),lastcf=CFrame.new(Torso.Position.X,Torso.Position.Y,Torso.Position.Z)*CFrame.Angles(math.rad(Torso.Rotation.X),math.rad(Torso.Rotation.Y),math.rad(Torso.Rotation.Z))},
["Left Arm"] = {parte=Instance.new("Part",game.Players.LocalPlayer.PlayerGui),lastcf=CFrame.new(Left_Arm.Position.X,Left_Arm.Position.Y,Left_Arm.Position.Z)*CFrame.Angles(math.rad(Left_Arm.Rotation.X),math.rad(Left_Arm.Rotation.Y),math.rad(Left_Arm.Rotation.Z))},
["Right Arm"] = {parte=Instance.new("Part",game.Players.LocalPlayer.PlayerGui),lastcf=CFrame.new(Right_Arm.Position.X,Right_Arm.Position.Y,Right_Arm.Position.Z)*CFrame.Angles(math.rad(Right_Arm.Rotation.X),math.rad(Right_Arm.Rotation.Y),math.rad(Right_Arm.Rotation.Z))},
["Left Leg"] = {parte=Instance.new("Part",game.Players.LocalPlayer.PlayerGui),lastcf=CFrame.new(Left_Leg.Position.X,Left_Leg.Position.Y,Left_Leg.Position.Z)*CFrame.Angles(math.rad(Left_Leg.Rotation.X),math.rad(Left_Leg.Rotation.Y),math.rad(Left_Leg.Rotation.Z))},
["Right Leg"] = {parte=Instance.new("Part",game.Players.LocalPlayer.PlayerGui),lastcf=CFrame.new(Right_Leg.Position.X,Right_Leg.Position.Y,Right_Leg.Position.Z)*CFrame.Angles(math.rad(Right_Leg.Rotation.X),math.rad(Right_Leg.Rotation.Y),math.rad(Right_Leg.Rotation.Z))}
}

function refp()
fakeparts={
Head = {parte=Instance.new("Part",game.Players.LocalPlayer.PlayerGui),lastcf=CFrame.new(Head.Position.X,Head.Position.Y,Head.Position.Z)*CFrame.Angles(math.rad(Head.Rotation.X),math.rad(Head.Rotation.Y),math.rad(Head.Rotation.Z))},
Torso ={parte=Instance.new("Part",game.Players.LocalPlayer.PlayerGui),lastcf=CFrame.new(Torso.Position.X,Torso.Position.Y,Torso.Position.Z)*CFrame.Angles(math.rad(Torso.Rotation.X),math.rad(Torso.Rotation.Y),math.rad(Torso.Rotation.Z))},
["Left Arm"] = {parte=Instance.new("Part",game.Players.LocalPlayer.PlayerGui),lastcf=CFrame.new(Left_Arm.Position.X,Left_Arm.Position.Y,Left_Arm.Position.Z)*CFrame.Angles(math.rad(Left_Arm.Rotation.X),math.rad(Left_Arm.Rotation.Y),math.rad(Left_Arm.Rotation.Z))},
["Right Arm"] = {parte=Instance.new("Part",game.Players.LocalPlayer.PlayerGui),lastcf=CFrame.new(Right_Arm.Position.X,Right_Arm.Position.Y,Right_Arm.Position.Z)*CFrame.Angles(math.rad(Right_Arm.Rotation.X),math.rad(Right_Arm.Rotation.Y),math.rad(Right_Arm.Rotation.Z))},
["Left Leg"] = {parte=Instance.new("Part",game.Players.LocalPlayer.PlayerGui),lastcf=CFrame.new(Left_Leg.Position.X,Left_Leg.Position.Y,Left_Leg.Position.Z)*CFrame.Angles(math.rad(Left_Leg.Rotation.X),math.rad(Left_Leg.Rotation.Y),math.rad(Left_Leg.Rotation.Z))},
["Right Leg"] = {parte=Instance.new("Part",game.Players.LocalPlayer.PlayerGui),lastcf=CFrame.new(Right_Leg.Position.X,Right_Leg.Position.Y,Right_Leg.Position.Z)*CFrame.Angles(math.rad(Right_Leg.Rotation.X),math.rad(Right_Leg.Rotation.Y),math.rad(Right_Leg.Rotation.Z))}
}
end

local ct={}

mainanimsection:Button({Text = "Start",Callback = function()
if replicatedanims ~= true then
notf("This does not replicate in server\nIf you want to replicate it just convert it to script or toggle replicate.")
else
notf("Replicate animating.")
end
if Animating then notf("You are already animating!") return end
refp()
if replicatedanims then
HumanDied = false

local plr = game.Players.LocalPlayer
local char = plr.Character
local srv = game:GetService('RunService')
local cttt = {}

for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") then 
table.insert(cttt,game:GetService("RunService").Heartbeat:connect(function()
v.AssemblyLinearVelocity = Vector3.new(-30,0,0)
sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge)
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",999999999)
end))
end
end

char.Archivable = true
local reanim = char:Clone()
reanim.Name = 'Tangerex '..plr.Name..''
fl=Instance.new('Folder',char) fl.Name ='Tangerex'
reanim.Animate.Disabled=true
char.HumanoidRootPart:Destroy()
char.Humanoid:ChangeState(16)

for i,v in next, char.Humanoid:GetPlayingAnimationTracks() do
v:Stop()
end
char.Animate:Remove()

function create(part, parent, p, r)
Instance.new("Attachment",part)
Instance.new("AlignPosition",part)
Instance.new("AlignOrientation",part)
Instance.new("Attachment",parent)
part.Attachment.Name = part.Name
parent.Attachment.Name = part.Name
part.AlignPosition.Attachment0 = part[part.Name]
part.AlignOrientation.Attachment0 = part[part.Name]
part.AlignPosition.Attachment1 = parent[part.Name]
part.AlignOrientation.Attachment1 = parent[part.Name]
parent[part.Name].Position = p or Vector3.new()
part[part.Name].Orientation = r or Vector3.new()
part.AlignPosition.MaxForce = 1e+35
part.AlignPosition.MaxVelocity = 1e+35
part.AlignPosition.ReactionForceEnabled = false
part.AlignPosition.Responsiveness = 1e+35
part.AlignOrientation.Responsiveness = 1e+35
part.AlignPosition.RigidityEnabled = false
part.AlignOrientation.MaxTorque = 1e+35
end

for i,v in next, char:GetDescendants() do
if v:IsA('Accessory') then
v.Handle:BreakJoints()
create(v.Handle,reanim[v.Name].Handle)
end
end

char.Torso['Left Shoulder']:Destroy()
char.Torso['Right Shoulder']:Destroy()
char.Torso['Left Hip']:Destroy()
char.Torso['Right Hip']:Destroy()

create(char['Torso'],reanim['Torso'])
create(char['Left Arm'],reanim['Left Arm'])
create(char['Right Arm'],reanim['Right Arm'])
create(char['Left Leg'],reanim['Left Leg'])
create(char['Right Leg'],reanim['Right Leg'])

for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') or v:IsA('Decal') then v.Transparency = 1 end end

reanim.Parent = fl

for i,v in next, reanim:GetDescendants() do
if v:IsA('BasePart') then
table.insert(cttt,srv.RenderStepped:Connect(function()
v.CanCollide = false
end))
end
end

for i,v in next, char:GetDescendants() do
if v:IsA('BasePart') then
table.insert(cttt,srv.RenderStepped:Connect(function()
v.CanCollide = false
end))
end
end

for i,v in next, reanim:GetDescendants() do
if v:IsA('BasePart') then
table.insert(cttt,srv.Stepped:Connect(function()
v.CanCollide = false
end))
end
end

for i,v in next, char:GetDescendants() do
if v:IsA('BasePart') then
table.insert(cttt,srv.Stepped:Connect(function()
v.CanCollide = false
end))
end
end

table.insert(cttt,reanim.Humanoid.Died:Connect(function()
plr.Character = char
char:BreakJoints()
reanim:Destroy()
game.Players:Chat('-gr')
HumanDied = true
for _,v in pairs(ct) do v:Disconnect() end
for _,v in pairs(cttt) do v:Disconnect() end
end))

plr.Character = reanim
workspace.CurrentCamera.CameraSubject = reanim.Humanoid
end
local plr = game.Players.LocalPlayer
local char = plr.Character
local srv = game:GetService('RunService')
reanim = char
Animating = true

for i,v in next, char.Humanoid:GetPlayingAnimationTracks() do
v:Stop()
end
if char:FindFirstChild("Animate") then
char.Animate:Remove()
end

table.insert(ct,plr:GetMouse().KeyDown:Connect(function(k)
if k:lower() == "r" then
switcharchan()
end
end))

table.insert(ct,char.Humanoid.Died:Connect(function()
if game.CoreGui:FindFirstChild("Position") and game.CoreGui:FindFirstChild("Rotation") then
game.CoreGui.Position:Destroy()
game.CoreGui.Rotation:Destroy()
end
Animating = false
for _,v in pairs(ct) do v:Disconnect() end
end))

sine = 1
speed = 1

root = reanim.HumanoidRootPart

RJ = reanim.HumanoidRootPart.RootJoint
NECK = reanim.Torso.Neck
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
RJ.C1 = cf(0,-1,0)*angles(rad(0),rad(0),rad(0))
RJ.C0 = cf(0,0,0)*angles(rad(0),rad(0),rad(0))
NECK.C0 = cf(0,0,0)*angles(rad(0),rad(0),rad(0))
NECK.C1 = cf(0,-0.5,0)*angles(rad(0),rad(0),rad(0))
RS.C1 = cf(0,0.5,0)*angles(rad(0),rad(0),rad(0))
LS.C1 = cf(0,0.5,0)*angles(rad(0),rad(0),rad(0))
RH.C1 = cf(0,1,0)*angles(rad(0),rad(0),rad(0))
LH.C1 = cf(0,1,0)*angles(rad(0),rad(0),rad(0))
RH.C0 = cf(0,0,0)*angles(rad(0),rad(0),rad(0))
LH.C0 = cf(0,0,0)*angles(rad(0),rad(0),rad(0))
RS.C0 = cf(0,0,0)*angles(rad(0),rad(0),rad(0))
LS.C0 = cf(0,0,0)*angles(rad(0),rad(0),rad(0))

table.insert(ct,srv.RenderStepped:Connect(function()
sine=sine+speed
local rlegray = Ray.new(reanim["Right Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
local llegray = Ray.new(reanim["Left Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
local rightvector = (root.Velocity * root.CFrame.rightVector).X + (root.Velocity * root.CFrame.rightVector).Z
local lookvector = (root.Velocity * root.CFrame.lookVector).X + (root.Velocity * root.CFrame.lookVector).Z
if lookvector > char.Humanoid.WalkSpeed then
lookvector = char.Humanoid.WalkSpeed
end
if lookvector < -char.Humanoid.WalkSpeed then
lookvector = -char.Humanoid.WalkSpeed
end
if rightvector > char.Humanoid.WalkSpeed then
rightvector = char.Humanoid.WalkSpeed
end
if rightvector < -char.Humanoid.WalkSpeed then
rightvector = -char.Humanoid.WalkSpeed
end
local lookvel = lookvector / char.Humanoid.WalkSpeed
local rightvel = rightvector / char.Humanoid.WalkSpeed
if alignlegstoroot == false then
RH.Part0 = reanim.Torso
LH.Part0 = reanim.Torso
elseif alignlegstoroot == true then
RH.Part0 = reanim.HumanoidRootPart
LH.Part0 = reanim.HumanoidRootPart
end
if footplant == false then
NECK.C0 = NECK.C0:Lerp(cf(Head.Position.X+Head.Position.XL*math[Head.Type.PX](sine/Head.Position.SX),Head.Position.Y+Head.Position.YL*math[Head.Type.PY](sine/Head.Position.SY),Head.Position.Z+Head.Position.ZL*math[Head.Type.PZ](sine/Head.Position.SZ))*angles(rad(Head.Rotation.X+Head.Rotation.XL*math[Head.Type.RX](sine/Head.Rotation.SX)),rad(Head.Rotation.Y+Head.Rotation.YL*math[Head.Type.RY](sine/Head.Rotation.SY)),rad(Head.Rotation.Z+Head.Rotation.ZL*math[Head.Type.RZ](sine/Head.Rotation.SZ))),lerpspeed)
RJ.C0 = RJ.C0:Lerp(cf(Torso.Position.X+Torso.Position.XL*math[Torso.Type.PX](sine/Torso.Position.SX),Torso.Position.Y+Torso.Position.YL*math[Torso.Type.PY](sine/Torso.Position.SY),Torso.Position.Z+Torso.Position.ZL*math[Torso.Type.PZ](sine/Torso.Position.SZ))*angles(rad(Torso.Rotation.X+Torso.Rotation.XL*math[Torso.Type.RX](sine/Torso.Rotation.SX)),rad(Torso.Rotation.Y+Torso.Rotation.YL*math[Torso.Type.RY](sine/Torso.Rotation.SY)),rad(Torso.Rotation.Z+Torso.Rotation.ZL*math[Torso.Type.RZ](sine/Torso.Rotation.SZ))),lerpspeed)
RS.C0 = RS.C0:Lerp(cf(Right_Arm.Position.X+Right_Arm.Position.XL*math[Right_Arm.Type.PX](sine/Right_Arm.Position.SX),Right_Arm.Position.Y+Right_Arm.Position.YL*math[Right_Arm.Type.PY](sine/Right_Arm.Position.SY),Right_Arm.Position.Z+Right_Arm.Position.ZL*math[Right_Arm.Type.PZ](sine/Right_Arm.Position.SZ))*angles(rad(Right_Arm.Rotation.X+Right_Arm.Rotation.XL*math[Right_Arm.Type.RX](sine/Right_Arm.Rotation.SX)),rad(Right_Arm.Rotation.Y+Right_Arm.Rotation.YL*math[Right_Arm.Type.RY](sine/Right_Arm.Rotation.SY)),rad(Right_Arm.Rotation.Z+Right_Arm.Rotation.ZL*math[Right_Arm.Type.RZ](sine/Right_Arm.Rotation.SZ))),lerpspeed)
LS.C0 = LS.C0:Lerp(cf(Left_Arm.Position.X+Left_Arm.Position.XL*math[Left_Arm.Type.PX](sine/Left_Arm.Position.SX),Left_Arm.Position.Y+Left_Arm.Position.YL*math[Left_Arm.Type.PY](sine/Left_Arm.Position.SY),Left_Arm.Position.Z+Left_Arm.Position.ZL*math[Left_Arm.Type.PZ](sine/Left_Arm.Position.SZ))*angles(rad(Left_Arm.Rotation.X+Left_Arm.Rotation.XL*math[Left_Arm.Type.RX](sine/Left_Arm.Rotation.SX)),rad(Left_Arm.Rotation.Y+Left_Arm.Rotation.YL*math[Left_Arm.Type.RY](sine/Left_Arm.Rotation.SY)),rad(Left_Arm.Rotation.Z+Left_Arm.Rotation.ZL*math[Left_Arm.Type.RZ](sine/Left_Arm.Rotation.SZ))),lerpspeed)
RH.C0 = RH.C0:Lerp(cf(Right_Leg.Position.X+Right_Leg.Position.XL*math[Right_Leg.Type.PX](sine/Right_Leg.Position.SX),Right_Leg.Position.Y+Right_Leg.Position.YL*math[Right_Leg.Type.PY](sine/Right_Leg.Position.SY),Right_Leg.Position.Z+Right_Leg.Position.ZL*math[Right_Leg.Type.PZ](sine/Right_Leg.Position.SZ))*angles(rad(Right_Leg.Rotation.X+Right_Leg.Rotation.XL*math[Right_Leg.Type.RX](sine/Right_Leg.Rotation.SX)),rad(Right_Leg.Rotation.Y+Right_Leg.Rotation.YL*math[Right_Leg.Type.RY](sine/Right_Leg.Rotation.SY)),rad(Right_Leg.Rotation.Z+Right_Leg.Rotation.ZL*math[Right_Leg.Type.RZ](sine/Right_Leg.Rotation.SZ))),lerpspeed)
LH.C0 = LH.C0:Lerp(cf(Left_Leg.Position.X+Left_Leg.Position.XL*math[Left_Leg.Type.PX](sine/Left_Leg.Position.SX),Left_Leg.Position.Y+Left_Leg.Position.YL*math[Left_Leg.Type.PY](sine/Left_Leg.Position.SY),Left_Leg.Position.Z+Left_Leg.Position.ZL*math[Left_Leg.Type.PZ](sine/Left_Leg.Position.SZ))*angles(rad(Left_Leg.Rotation.X+Left_Leg.Rotation.XL*math[Left_Leg.Type.RX](sine/Left_Leg.Rotation.SX)),rad(Left_Leg.Rotation.Y+Left_Leg.Rotation.YL*math[Left_Leg.Type.RY](sine/Left_Leg.Rotation.SY)),rad(Left_Leg.Rotation.Z+Left_Leg.Rotation.ZL*math[Left_Leg.Type.RZ](sine/Left_Leg.Rotation.SZ))),lerpspeed)
elseif footplant == true then
NECK.C0 = NECK.C0:Lerp(cf(Head.Position.X+Head.Position.XL*math[Head.Type.PX](sine/Head.Position.SX),Head.Position.Y+Head.Position.YL*math[Head.Type.PY](sine/Head.Position.SY),Head.Position.Z+Head.Position.ZL*math[Head.Type.PZ](sine/Head.Position.SZ))*angles(rad(Head.Rotation.X+Head.Rotation.XL*math[Head.Type.RX](sine/Head.Rotation.SX)),rad(Head.Rotation.Y+Head.Rotation.YL*math[Head.Type.RY](sine/Head.Rotation.SY)),rad(Head.Rotation.Z+Head.Rotation.ZL*math[Head.Type.RZ](sine/Head.Rotation.SZ))*rightvel),lerpspeed)
RJ.C0 = RJ.C0:Lerp(cf(Torso.Position.X+Torso.Position.XL*math[Torso.Type.PX](sine/Torso.Position.SX),Torso.Position.Y+Torso.Position.YL*math[Torso.Type.PY](sine/Torso.Position.SY),Torso.Position.Z+Torso.Position.ZL*math[Torso.Type.PZ](sine/Torso.Position.SZ)*lookvel)*angles(rad(Torso.Rotation.X+Torso.Rotation.XL*math[Torso.Type.RX](sine/Torso.Rotation.SX))*lookvel,rad(Torso.Rotation.Y+Torso.Rotation.YL*math[Torso.Type.RY](sine/Torso.Rotation.SY)),rad(Torso.Rotation.Z+Torso.Rotation.ZL*math[Torso.Type.RZ](sine/Torso.Rotation.SZ))*rightvel),lerpspeed)
RS.C0 = RS.C0:Lerp(cf(Right_Arm.Position.X+Right_Arm.Position.XL*math[Right_Arm.Type.PX](sine/Right_Arm.Position.SX),Right_Arm.Position.Y+Right_Arm.Position.YL*math[Right_Arm.Type.PY](sine/Right_Arm.Position.SY),Right_Arm.Position.Z+Right_Arm.Position.ZL*math[Right_Arm.Type.PZ](sine/Right_Arm.Position.SZ)*lookvel)*angles(rad(Right_Arm.Rotation.X+Right_Arm.Rotation.XL*math[Right_Arm.Type.RX](sine/Right_Arm.Rotation.SX))*lookvel,rad(Right_Arm.Rotation.Y+Right_Arm.Rotation.YL*math[Right_Arm.Type.RY](sine/Right_Arm.Rotation.SY)),rad(Right_Arm.Rotation.Z+Right_Arm.Rotation.ZL*math[Right_Arm.Type.RZ](sine/Right_Arm.Rotation.SZ))*rightvel),lerpspeed)
LS.C0 = LS.C0:Lerp(cf(Left_Arm.Position.X+Left_Arm.Position.XL*math[Left_Arm.Type.PX](sine/Left_Arm.Position.SX),Left_Arm.Position.Y+Left_Arm.Position.YL*math[Left_Arm.Type.PY](sine/Left_Arm.Position.SY),Left_Arm.Position.Z+Left_Arm.Position.ZL*math[Left_Arm.Type.PZ](sine/Left_Arm.Position.SZ)*lookvel)*angles(rad(Left_Arm.Rotation.X+Left_Arm.Rotation.XL*math[Left_Arm.Type.RX](sine/Left_Arm.Rotation.SX))*lookvel,rad(Left_Arm.Rotation.Y+Left_Arm.Rotation.YL*math[Left_Arm.Type.RY](sine/Left_Arm.Rotation.SY)),rad(Left_Arm.Rotation.Z+Left_Arm.Rotation.ZL*math[Left_Arm.Type.RZ](sine/Left_Arm.Rotation.SZ))*rightvel),lerpspeed)
RH.C0 = RH.C0:Lerp(cf(Right_Leg.Position.X+Right_Leg.Position.XL*math[Right_Leg.Type.PX](sine/Right_Leg.Position.SX)*rightvel,Right_Leg.Position.Y+Right_Leg.Position.YL*math[Right_Leg.Type.PY](sine/Right_Leg.Position.SY),Right_Leg.Position.Z+Right_Leg.Position.ZL*math[Right_Leg.Type.PZ](sine/Right_Leg.Position.SZ)*lookvel)*angles(rad(Right_Leg.Rotation.X+Right_Leg.Rotation.XL*math[Right_Leg.Type.RX](sine/Right_Leg.Rotation.SX))*lookvel,rad(Right_Leg.Rotation.Y+Right_Leg.Rotation.YL*math[Right_Leg.Type.RY](sine/Right_Leg.Rotation.SY)),rad(Right_Leg.Rotation.Z+Right_Leg.Rotation.ZL*math[Right_Leg.Type.RZ](sine/Right_Leg.Rotation.SZ))*rightvel),lerpspeed)
LH.C0 = LH.C0:Lerp(cf(Left_Leg.Position.X+Left_Leg.Position.XL*math[Left_Leg.Type.PX](sine/Left_Leg.Position.SX)*rightvel,Left_Leg.Position.Y+Left_Leg.Position.YL*math[Left_Leg.Type.PY](sine/Left_Leg.Position.SY),Left_Leg.Position.Z+Left_Leg.Position.ZL*math[Left_Leg.Type.PZ](sine/Left_Leg.Position.SZ)*lookvel)*angles(rad(Left_Leg.Rotation.X+Left_Leg.Rotation.XL*math[Left_Leg.Type.RX](sine/Left_Leg.Rotation.SX))*lookvel,rad(Left_Leg.Rotation.Y+Left_Leg.Rotation.YL*math[Left_Leg.Type.RY](sine/Left_Leg.Rotation.SY)),rad(Left_Leg.Rotation.Z+Left_Leg.Rotation.ZL*math[Left_Leg.Type.RZ](sine/Left_Leg.Rotation.SZ))*rightvel),lerpspeed)
end
end))
end})

function updarchan()
fakeparts["Head"]["lastcf"] = CFrame.new(Head.Position.X,Head.Position.Y,Head.Position.Z)*CFrame.Angles(math.rad(Head.Rotation.X),math.rad(Head.Rotation.Y),math.rad(Head.Rotation.Z))
fakeparts["Torso"]["lastcf"] = CFrame.new(Torso.Position.X,Torso.Position.Y,Torso.Position.Z)*CFrame.Angles(math.rad(Torso.Rotation.X),math.rad(Torso.Rotation.Y),math.rad(Torso.Rotation.Z))
fakeparts["Left Arm"]["lastcf"] = CFrame.new(Left_Arm.Position.X,Left_Arm.Position.Y,Left_Arm.Position.Z)*CFrame.Angles(math.rad(Left_Arm.Rotation.X),math.rad(Left_Arm.Rotation.Y),math.rad(Left_Arm.Rotation.Z))
fakeparts["Right Arm"]["lastcf"] = CFrame.new(Right_Arm.Position.X,Right_Arm.Position.Y,Right_Arm.Position.Z)*CFrame.Angles(math.rad(Right_Arm.Rotation.X),math.rad(Right_Arm.Rotation.Y),math.rad(Right_Arm.Rotation.Z))
fakeparts["Left Leg"]["lastcf"] = CFrame.new(Left_Leg.Position.X,Left_Leg.Position.Y,Left_Leg.Position.Z)*CFrame.Angles(math.rad(Left_Leg.Rotation.X),math.rad(Left_Leg.Rotation.Y),math.rad(Left_Leg.Rotation.Z))
fakeparts["Right Leg"]["lastcf"] = CFrame.new(Right_Leg.Position.X,Right_Leg.Position.Y,Right_Leg.Position.Z)*CFrame.Angles(math.rad(Right_Leg.Rotation.X),math.rad(Right_Leg.Rotation.Y),math.rad(Right_Leg.Rotation.Z))
end

bim = {}

incremento = 0.5

function handlespos(dodopart,sliders)
if Animating == false or arcorhandles == false then return end
if game.CoreGui:FindFirstChild("Rotation") then
game.CoreGui:FindFirstChild("Rotation").Visible = false
end
plr = game.Players.LocalPlayer
if game.CoreGui:FindFirstChild("Position") then
game.CoreGui:FindFirstChild("Position"):Destroy()
end

for i,v in next, plr.Character:GetDescendants() do
if v:IsA("SelectionBox") then
v:Destroy()
end
end

local Highlight = Instance.new("SelectionBox")
Highlight.Adornee = plr.Character[dodopart]
Highlight.LineThickness=0.05
Highlight.Color3 = Color3.fromRGB(140,90,0)
Highlight.Parent = plr.Character[dodopart]
Highlight.Name = dodopart.."Highlight"

Handles = Instance.new('Handles',game.CoreGui)
Handles.Name = "Position"
Handles.Style = 'Movement'
Handles.Adornee=plr.Character[dodopart]
Handles.Color3 = Color3.fromRGB(140,90,0)

local increment2 = incremento
fakeparts[dodopart]["parte"].CFrame = fakeparts[dodopart]["lastcf"]
Handles.MouseButton1Down:connect(function()
    fakeparts[dodopart]["lastcf"] = fakeparts[dodopart]["parte"].CFrame
end)
Handles.MouseDrag:Connect(function(face, dist)
for i,v in next, bim do
v:Disconnect()
end
    fakeparts[dodopart]["parte"].CFrame = fakeparts[dodopart]["lastcf"]+Vector3.FromNormalId(face)*(math.floor(dist/increment2)*increment2)
    Set(sliders.X,fakeparts[dodopart]["parte"].CFrame.Position.X)
Set(sliders.Y,fakeparts[dodopart]["parte"].CFrame.Position.Y)
Set(sliders.Z,fakeparts[dodopart]["parte"].CFrame.Position.Z)
end)
Handles.MouseButton1Up:Connect(function()
table.insert(bim,sliders.X.Changed:Connect(function()
updarchan()
end))
table.insert(bim,sliders.Z.Changed:Connect(function()
updarchan()
end))
table.insert(bim,sliders.Y.Changed:Connect(function()
updarchan()
end))
end)

end

function arc(dodopart,sliders)
if Animating == false or arcorhandles == false then return end
if game.CoreGui:FindFirstChild("Position") then
game.CoreGui:FindFirstChild("Position").Visible = false
end
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

if game.CoreGui:FindFirstChild("Rotation") then
game.CoreGui:FindFirstChild("Rotation"):Destroy()
end

ArcHandles=Instance.new('ArcHandles',game.CoreGui)
ArcHandles.Name = "Rotation"
ArcHandles.Adornee=player.Character[dodopart]
ArcHandles.Color3 = Color3.fromRGB(140,90,0)

for i,v in next, player.Character:GetDescendants() do
if v:IsA("SelectionBox") then
v:Destroy()
end
end

local Highlight = Instance.new("SelectionBox")
Highlight.Adornee = player.Character[dodopart]
Highlight.LineThickness=0.05
Highlight.Color3 = Color3.fromRGB(140,90,0)
Highlight.Parent = player.Character[dodopart]
Highlight.Name = dodopart.."Highlight"

local increment = incremento

function round(number)
    return math.floor((number / increment) + 1) * increment
end
function AngleFromAxis(axis, r)
    local relativeAngle = math.rad(round(math.deg(r)))
    
    return axis == Enum.Axis.X and {relativeAngle, 0, 0} 
        or axis == Enum.Axis.Y and {0, relativeAngle, 0} 
        or axis == Enum.Axis.Z and {0, 0, relativeAngle}
end

ArcHandles.MouseButton1Down:Connect(function()
    fakeparts[dodopart]["lastcf"] = fakeparts[dodopart]["parte"].CFrame
end)

ArcHandles.MouseDrag:Connect(function(axis, relativeAngle, delta)
for i,v in next, bim do
v:Disconnect()
end
fakeparts[dodopart]["parte"].CFrame = fakeparts[dodopart]["lastcf"] * CFrame.Angles(unpack(AngleFromAxis(axis, relativeAngle)))
Set(sliders.X,fakeparts[dodopart]["parte"].Rotation.X)
Set(sliders.Y,fakeparts[dodopart]["parte"].Rotation.Y)
Set(sliders.Z,fakeparts[dodopart]["parte"].Rotation.Z)
end)
 
ArcHandles.MouseButton1Up:Connect(function()
table.insert(bim,sliders.X.Changed:Connect(function()
updarchan()
end))
table.insert(bim,sliders.Z.Changed:Connect(function()
updarchan()
end))
table.insert(bim,sliders.Y.Changed:Connect(function()
print("Y is changed")
updarchan()
end))
end)
end

function GSFN(arg1,arg2)
return window:GetSliderFromName(arg2.."Tab"..arg1)
end

local head = tab:TabSection({
   Title = "Head",
   Callback = function(a) print(a) end
})

local headpos = head:AddColumn({
   Title = "Position",
   Callback = function() 
   handlespos("Head",{X=GSFN("Head","X"),Y=GSFN("Head","Y"),Z=GSFN("Head","Z")})
   end
})

local headpossection = headpos:Section({
   Title = "Position"
})

headpossection:Slider({
   Text = "X",
   Min = -360,
   Max = 360,
   Def = Head.Position.X,
   Callback = function(a)
Head.Position.X = tonumber(a)
end
})

headpossection:Slider({
   Text = "X {L}",
   Min = -360,
   Max = 360,
   Def = Head.Position.XL,
   Callback = function(a)
Head.Position.XL = tonumber(a)
end
})

headpossection:Slider({
   Text = "Y",
   Min = -360,
   Max = 360,
   Def = Head.Position.Y,
   Callback = function(a)
Head.Position.Y = tonumber(a)
end
})

headpossection:Slider({
   Text = "Y {L}",
   Min = -360,
   Max = 360,
   Def = Head.Position.YL,
   Callback = function(a)
Head.Position.YL = tonumber(a)
end
})

headpossection:Slider({
   Text = "Z",
   Min = -360,
   Max = 360,
   Def = Head.Position.Z,
   Callback = function(a)
Head.Position.Z = tonumber(a)
end
})

headpossection:Slider({
   Text = "Z {L}",
   Min = -360,
   Max = 360,
   Def = Head.Position.ZL,
   Callback = function(a)
Head.Position.ZL = tonumber(a)
end
})

local headrot = head:AddColumn({
   Title = "Rotation",
   Callback = function() 
   arc("Head",{X=GSFN("Head","X {Rad}"),Y=GSFN("Head","Y {Rad}"),Z=GSFN("Head","Z {Rad}")})
   end
})

local headrotsection = headrot:Section({
   Title = "Rotation"
})

headrotsection:Slider({
   Text = "X {Rad}",
   Min = -360,
   Max = 360,
   Def = Head.Rotation.X,
   Callback = function(a)
Head.Rotation.X = tonumber(a)
end
})

headrotsection:Slider({
   Text = "X {L} {Rad}",
   Min = -360,
   Max = 360,
   Def = Head.Rotation.XL,
   Callback = function(a)
Head.Rotation.XL = tonumber(a)
end
})

headrotsection:Slider({
   Text = "Y {Rad}",
   Min = -360,
   Max = 360,
   Def = Head.Rotation.Y,
   Callback = function(a)
Head.Rotation.Y = tonumber(a)
end
})

headrotsection:Slider({
   Text = "Y {L} {Rad}",
   Min = -360,
   Max = 360,
   Def = Head.Rotation.YL,
   Callback = function(a)
Head.Rotation.YL = tonumber(a)
end
})

headrotsection:Slider({
   Text = "Z {Rad}",
   Min = -360,
   Max = 360,
   Def = Head.Rotation.Z,
   Callback = function(a)
Head.Rotation.Z = tonumber(a)
end
})

headrotsection:Slider({
   Text = "Z {L} {Rad}",
   Min = -360,
   Max = 360,
   Def = Head.Rotation.ZL,
   Callback = function(a)
Head.Rotation.ZL = tonumber(a)
end
})

local headst = head:AddColumn({
   Title = "Sine Type"
})

local headstsection = headst:Section({
   Title = "Sine Type"
})

headstsection:Toggle({
   Text = "PX Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Head.Type.PX='cos'
elseif a == true then
Head.Type.PX='sin'
end
end
})

headstsection:Toggle({
   Text = "PY Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Head.Type.PY='cos'
elseif a == true then
Head.Type.PY='sin'
end
end
})

headstsection:Toggle({
   Text = "PZ Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Head.Type.PZ='cos'
elseif a == true then
Head.Type.PZ='sin'
end
end
})

headstsection:Toggle({
   Text = "RX Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Head.Type.RX='cos'
elseif a == true then
Head.Type.RX='sin'
end
end
})

headstsection:Toggle({
   Text = "RY Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Head.Type.RY='cos'
elseif a == true then
Head.Type.RY='sin'
end
end
})

headstsection:Toggle({
   Text = "RZ Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Head.Type.RZ='cos'
elseif a == true then
Head.Type.RZ='sin'
end
end
})

local headspeed = head:AddColumn({
   Title = "Speed"
})

local headspeedsection = headspeed:Section({
   Title = "Speed"
})

headspeedsection:Slider({
   Text = "PX",
   Min = 0,
   Max = 1000,
   Def = Head.Position.SX,
   Callback = function(a)
Head.Position.SX = a
end
})

headspeedsection:Slider({
   Text = "PY",
   Min = 0,
   Max = 1000,
   Def = Head.Position.SY,
   Callback = function(a)
Head.Position.SY = a
end
})

headspeedsection:Slider({
   Text = "PZ",
   Min = 0,
   Max = 1000,
   Def = Head.Position.SZ,
   Callback = function(a)
Head.Position.SZ = a
end
})

headspeedsection:Slider({
   Text = "RX",
   Min = 0,
   Max = 1000,
   Def = Head.Rotation.SX,
   Callback = function(a)
Head.Rotation.SX = a
end
})

headspeedsection:Slider({
   Text = "RY",
   Min = 0,
   Max = 1000,
   Def = Head.Rotation.SY,
   Callback = function(a)
Head.Rotation.SY = a
end
})

headspeedsection:Slider({
   Text = "RZ",
   Min = 0,
   Max = 1000,
   Def = Head.Rotation.SZ,
   Callback = function(a)
Head.Rotation.SZ = a
end
})

local torso = tab:TabSection({
   Title = "Torso"
})

local torsopos = torso:AddColumn({
   Title = "Position",
   Callback = function() 
   handlespos("Torso",{X=GSFN("Torso","X"),Y=GSFN("Torso","Y"),Z=GSFN("Torso","Z")})
   end
})

local torsopossection = torsopos:Section({
   Title = "Position"
})

torsopossection:Slider({
   Text = "X",
   Min = -360,
   Max = 360,
   Def = Torso.Position.X,
   Callback = function(a)
Torso.Position.X = tonumber(a)
end
})

torsopossection:Slider({
   Text = "X {L}",
   Min = -360,
   Max = 360,
   Def = Torso.Position.XL,
   Callback = function(a)
Torso.Position.XL = tonumber(a)
end
})

torsopossection:Slider({
   Text = "Y",
   Min = -360,
   Max = 360,
   Def = Torso.Position.Y,
   Callback = function(a)
Torso.Position.Y = tonumber(a)
end
})

torsopossection:Slider({
   Text = "Y {L}",
   Min = -360,
   Max = 360,
   Def = Torso.Position.YL,
   Callback = function(a)
Torso.Position.YL = tonumber(a)
end
})

torsopossection:Slider({
   Text = "Z",
   Min = -360,
   Max = 360,
   Def = Torso.Position.Z,
   Callback = function(a)
Torso.Position.Z = tonumber(a)
end
})

torsopossection:Slider({
   Text = "Z {L}",
   Min = -360,
   Max = 360,
   Def = Torso.Position.ZL,
   Callback = function(a)
Torso.Position.ZL = tonumber(a)
end
})

local torsorot = torso:AddColumn({
   Title = "Rotation",
   Callback = function() 
   arc("Torso",{X=GSFN("Torso","X {Rad}"),Y=GSFN("Torso","Y {Rad}"),Z=GSFN("Torso","Z {Rad}")})
   end
})

local torsorotsection = torsorot:Section({
   Title = "Rotation"
})

torsorotsection:Slider({
   Text = "X {Rad}",
   Min = -360,
   Max = 360,
   Def = Torso.Rotation.X,
   Callback = function(a)
Torso.Rotation.X = tonumber(a)
end
})

torsorotsection:Slider({
   Text = "X {L} {Rad}",
   Min = -360,
   Max = 360,
   Def = Torso.Rotation.XL,
   Callback = function(a)
Torso.Rotation.XL = tonumber(a)
end
})

torsorotsection:Slider({
   Text = "Y {Rad}",
   Min = -360,
   Max = 360,
   Def = Torso.Rotation.Y,
   Callback = function(a)
Torso.Rotation.Y = tonumber(a)
end
})

torsorotsection:Slider({
   Text = "Y {L} {Rad}",
   Min = -360,
   Max = 360,
   Def = Torso.Rotation.YL,
   Callback = function(a)
Torso.Rotation.YL = tonumber(a)
end
})

torsorotsection:Slider({
   Text = "Z {Rad}",
   Min = -360,
   Max = 360,
   Def = Torso.Rotation.Z,
   Callback = function(a)
Torso.Rotation.Z = tonumber(a)
end
})

torsorotsection:Slider({
   Text = "Z {L} {Rad}",
   Min = -360,
   Max = 360,
   Def = Torso.Rotation.ZL,
   Callback = function(a)
Torso.Rotation.ZL = tonumber(a)
end
})

local torsost = torso:AddColumn({
   Title = "Sine Type"
})

local torsostsection = torsost:Section({
   Title = "Sine Type"
})

torsostsection:Toggle({
   Text = "PX Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Torso.Type.PX='cos'
elseif a == true then
Torso.Type.PX='sin'
end
end
})

torsostsection:Toggle({
   Text = "PY Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Torso.Type.PY='cos'
elseif a == true then
Torso.Type.PY='sin'
end
end
})

torsostsection:Toggle({
   Text = "PZ Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Torso.Type.PZ='cos'
elseif a == true then
Torso.Type.PZ='sin'
end
end
})

torsostsection:Toggle({
   Text = "RX Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Torso.Type.RX='cos'
elseif a == true then
Torso.Type.RX='sin'
end
end
})

torsostsection:Toggle({
   Text = "RY Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Torso.Type.RY='cos'
elseif a == true then
Torso.Type.RY='sin'
end
end
})

torsostsection:Toggle({
   Text = "RZ Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Torso.Type.RZ='cos'
elseif a == true then
Torso.Type.RZ='sin'
end
end
})

local torsospeed = torso:AddColumn({
   Title = "Speed"
})

local torsospeedsection = torsospeed:Section({
   Title = "Speed"
})

torsospeedsection:Slider({
   Text = "PX",
   Min = 0,
   Max = 1000,
   Def = Torso.Position.SX,
   Callback = function(a)
Torso.Position.SX = a
end
})

torsospeedsection:Slider({
   Text = "PY",
   Min = 0,
   Max = 1000,
   Def = Torso.Position.SY,
   Callback = function(a)
Torso.Position.SY = a
end
})

torsospeedsection:Slider({
   Text = "PZ",
   Min = 0,
   Max = 1000,
   Def = Torso.Position.SZ,
   Callback = function(a)
Torso.Position.SZ = a
end
})

torsospeedsection:Slider({
   Text = "RX",
   Min = 0,
   Max = 1000,
   Def = Torso.Rotation.SX,
   Callback = function(a)
Torso.Rotation.SX = a
end
})

torsospeedsection:Slider({
   Text = "RY",
   Min = 0,
   Max = 1000,
   Def = Torso.Rotation.SY,
   Callback = function(a)
Torso.Rotation.SY = a
end
})

torsospeedsection:Slider({
   Text = "RZ",
   Min = 0,
   Max = 1000,
   Def = Torso.Rotation.SZ,
   Callback = function(a)
Torso.Rotation.SZ = a
end
})

local leftarm = tab:TabSection({
   Title = "Left Arm"
})

local leftarmpos = leftarm:AddColumn({
   Title = "Position",
   Callback = function() 
   handlespos("Left Arm",{X=GSFN("Left Arm","X"),Y=GSFN("Left Arm","Y"),Z=GSFN("Left Arm","Z")})
   end

})

local leftarmpossection = leftarmpos:Section({
   Title = "Position"
})

leftarmpossection:Slider({
   Text = "X",
   Min = -360,
   Max = 360,
   Def = Left_Arm.Position.X,
   Callback = function(a)
Left_Arm.Position.X = tonumber(a)
end
})

leftarmpossection:Slider({
   Text = "X {L}",
   Min = -360,
   Max = 360,
   Def = Left_Arm.Position.XL,
   Callback = function(a)
Left_Arm.Position.XL = tonumber(a)
end
})

leftarmpossection:Slider({
   Text = "Y",
   Min = -360,
   Max = 360,
   Def = Left_Arm.Position.Y,
   Callback = function(a)
Left_Arm.Position.Y = tonumber(a)
end
})

leftarmpossection:Slider({
   Text = "Y {L}",
   Min = -360,
   Max = 360,
   Def = Left_Arm.Position.YL,
   Callback = function(a)
Left_Arm.Position.YL = tonumber(a)
end
})

leftarmpossection:Slider({
   Text = "Z",
   Min = -360,
   Max = 360,
   Def = Left_Arm.Position.Z,
   Callback = function(a)
Left_Arm.Position.Z = tonumber(a)
end
})

leftarmpossection:Slider({
   Text = "Z {L}",
   Min = -360,
   Max = 360,
   Def = Left_Arm.Position.ZL,
   Callback = function(a)
Left_Arm.Position.ZL = tonumber(a)
end
})

local leftarmrot = leftarm:AddColumn({
   Title = "Rotation",
   Callback = function() 
   arc("Left Arm",{X=GSFN("Left Arm","X {Rad}"),Y=GSFN("Left Arm","Y {Rad}"),Z=GSFN("Left Arm","Z {Rad}")})
   end
})

local leftarmrotsection = leftarmrot:Section({
   Title = "Rotation"
})

leftarmrotsection:Slider({
   Text = "X {Rad}",
   Min = -360,
   Max = 360,
   Def = Left_Arm.Rotation.X,
   Callback = function(a)
Left_Arm.Rotation.X = tonumber(a)
end
})

leftarmrotsection:Slider({
   Text = "X {L} {Rad}",
   Min = -360,
   Max = 360,
   Def = Left_Arm.Rotation.XL,
   Callback = function(a)
Left_Arm.Rotation.XL = tonumber(a)
end
})

leftarmrotsection:Slider({
   Text = "Y {Rad}",
   Min = -360,
   Max = 360,
   Def = Left_Arm.Rotation.Y,
   Callback = function(a)
Left_Arm.Rotation.Y = tonumber(a)
end
})

leftarmrotsection:Slider({
   Text = "Y {L} {Rad}",
   Min = -360,
   Max = 360,
   Def = Left_Arm.Rotation.YL,
   Callback = function(a)
Left_Arm.Rotation.YL = tonumber(a)
end
})

leftarmrotsection:Slider({
   Text = "Z {Rad}",
   Min = -360,
   Max = 360,
   Def = Left_Arm.Rotation.Z,
   Callback = function(a)
Left_Arm.Rotation.Z = tonumber(a)
end
})

leftarmrotsection:Slider({
   Text = "Z {L} {Rad}",
   Min = -360,
   Max = 360,
   Def = Left_Arm.Rotation.ZL,
   Callback = function(a)
Left_Arm.Rotation.ZL = tonumber(a)
end
})

local leftarmst = leftarm:AddColumn({
   Title = "Sine Type"
})

local leftarmstsection = leftarmst:Section({
   Title = "Sine Type"
})

leftarmstsection:Toggle({
   Text = "PX Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Left_Arm.Type.PX='cos'
elseif a == true then
Left_Arm.Type.PX='sin'
end
end
})

leftarmstsection:Toggle({
   Text = "PY Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Left_Arm.Type.PY='cos'
elseif a == true then
Left_Arm.Type.PY='sin'
end
end
})

leftarmstsection:Toggle({
   Text = "PZ Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Left_Arm.Type.PZ='cos'
elseif a == true then
Left_Arm.Type.PZ='sin'
end
end
})

leftarmstsection:Toggle({
   Text = "RX Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Left_Arm.Type.RX='cos'
elseif a == true then
Left_Arm.Type.RX='sin'
end
end
})

leftarmstsection:Toggle({
   Text = "RY Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Left_Arm.Type.RY='cos'
elseif a == true then
Left_Arm.Type.RY='sin'
end
end
})

leftarmstsection:Toggle({
   Text = "RZ Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Left_Arm.Type.RZ='cos'
elseif a == true then
Left_Arm.Type.RZ='sin'
end
end
})

local leftarmspeed = leftarm:AddColumn({
   Title = "Speed"
})

local leftarmspeedsection = leftarmspeed:Section({
   Title = "Speed"
})

leftarmspeedsection:Slider({
   Text = "PX",
   Min = 0,
   Max = 1000,
   Def = Left_Arm.Position.SX,
   Callback = function(a)
Left_Arm.Position.SX = a
end
})

leftarmspeedsection:Slider({
   Text = "PY",
   Min = 0,
   Max = 1000,
   Def = Left_Arm.Position.SY,
   Callback = function(a)
Left_Arm.Position.SY = a
end
})

leftarmspeedsection:Slider({
   Text = "PZ",
   Min = 0,
   Max = 1000,
   Def = Left_Arm.Position.SZ,
   Callback = function(a)
Left_Arm.Position.SZ = a
end
})

leftarmspeedsection:Slider({
   Text = "RX",
   Min = 0,
   Max = 1000,
   Def = Left_Arm.Rotation.SX,
   Callback = function(a)
Left_Arm.Rotation.SX = a
end
})

leftarmspeedsection:Slider({
   Text = "RY",
   Min = 0,
   Max = 1000,
   Def = Left_Arm.Rotation.SY,
   Callback = function(a)
Left_Arm.Rotation.SY = a
end
})

leftarmspeedsection:Slider({
   Text = "RZ",
   Min = 0,
   Max = 1000,
   Def = Left_Arm.Rotation.SZ,
   Callback = function(a)
Left_Arm.Rotation.SZ = a
end
})

local rightarm = tab:TabSection({
   Title = "Right Arm"
})

local rightarmpos = rightarm:AddColumn({
   Title = "Position",
   Callback = function() 
   handlespos("Right Arm",{X=GSFN("Right Arm","X"),Y=GSFN("Right Arm","Y"),Z=GSFN("Right Arm","Z")})
   end

})

local rightarmpossection = rightarmpos:Section({
   Title = "Position"
})

rightarmpossection:Slider({
   Text = "X",
   Min = -360,
   Max = 360,
   Def = Right_Arm.Position.X,
   Callback = function(a)
Right_Arm.Position.X = tonumber(a)
end
})

rightarmpossection:Slider({
   Text = "X {L}",
   Min = -360,
   Max = 360,
   Def = Right_Arm.Position.XL,
   Callback = function(a)
Right_Arm.Position.XL = tonumber(a)
end
})

rightarmpossection:Slider({
   Text = "Y",
   Min = -360,
   Max = 360,
   Def = Right_Arm.Position.Y,
   Callback = function(a)
Right_Arm.Position.Y = tonumber(a)
end
})

rightarmpossection:Slider({
   Text = "Y {L}",
   Min = -360,
   Max = 360,
   Def = Right_Arm.Position.YL,
   Callback = function(a)
Right_Arm.Position.YL = tonumber(a)
end
})

rightarmpossection:Slider({
   Text = "Z",
   Min = -360,
   Max = 360,
   Def = Right_Arm.Position.Z,
   Callback = function(a)
Right_Arm.Position.Z = tonumber(a)
end
})

rightarmpossection:Slider({
   Text = "Z {L}",
   Min = -360,
   Max = 360,
   Def = Right_Arm.Position.ZL,
   Callback = function(a)
Right_Arm.Position.ZL = tonumber(a)
end
})

local rightarmrot = rightarm:AddColumn({
   Title = "Rotation",
   Callback = function() 
   arc("Right Arm",{X=GSFN("Right Arm","X {Rad}"),Y=GSFN("Right Arm","Y {Rad}"),Z=GSFN("Right Arm","Z {Rad}")})
   end
})

local rightarmrotsection = rightarmrot:Section({
   Title = "Rotation"
})

rightarmrotsection:Slider({
   Text = "X {Rad}",
   Min = -360,
   Max = 360,
   Def = Right_Arm.Rotation.X,
   Callback = function(a)
Right_Arm.Rotation.X = tonumber(a)
end
})

rightarmrotsection:Slider({
   Text = "X {L} {Rad}",
   Min = -360,
   Max = 360,
   Def = Right_Arm.Rotation.XL,
   Callback = function(a)
Right_Arm.Rotation.XL = tonumber(a)
end
})

rightarmrotsection:Slider({
   Text = "Y {Rad}",
   Min = -360,
   Max = 360,
   Def = Right_Arm.Rotation.Y,
   Callback = function(a)
Right_Arm.Rotation.Y = tonumber(a)
end
})

rightarmrotsection:Slider({
   Text = "Y {L} {Rad}",
   Min = -360,
   Max = 360,
   Def = Right_Arm.Rotation.YL,
   Callback = function(a)
Right_Arm.Rotation.YL = tonumber(a)
end
})

rightarmrotsection:Slider({
   Text = "Z {Rad}",
   Min = -360,
   Max = 360,
   Def = Right_Arm.Rotation.Z,
   Callback = function(a)
Right_Arm.Rotation.Z = tonumber(a)
end
})

rightarmrotsection:Slider({
   Text = "Z {L} {Rad}",
   Min = -360,
   Max = 360,
   Def = Right_Arm.Rotation.ZL,
   Callback = function(a)
Right_Arm.Rotation.ZL = tonumber(a)
end
})

local rightarmst = rightarm:AddColumn({
   Title = "Sine Type"
})

local rightarmstsection = rightarmst:Section({
   Title = "Sine Type"
})

rightarmstsection:Toggle({
   Text = "PX Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Right_Arm.Type.PX='cos'
elseif a == true then
Right_Arm.Type.PX='sin'
end
end
})

rightarmstsection:Toggle({
   Text = "PY Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Right_Arm.Type.PY='cos'
elseif a == true then
Right_Arm.Type.PY='sin'
end
end
})

rightarmstsection:Toggle({
   Text = "PZ Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Right_Arm.Type.PZ='cos'
elseif a == true then
Right_Arm.Type.PZ='sin'
end
end
})

rightarmstsection:Toggle({
   Text = "RX Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Right_Arm.Type.RX='cos'
elseif a == true then
Right_Arm.Type.RX='sin'
end
end
})

rightarmstsection:Toggle({
   Text = "RY Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Right_Arm.Type.RY='cos'
elseif a == true then
Right_Arm.Type.RY='sin'
end
end
})

rightarmstsection:Toggle({
   Text = "RZ Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Right_Arm.Type.RZ='cos'
elseif a == true then
Right_Arm.Type.RZ='sin'
end
end
})

local rightarmspeed = rightarm:AddColumn({
   Title = "Speed"
})

local rightarmspeedsection = rightarmspeed:Section({
   Title = "Speed"
})

rightarmspeedsection:Slider({
   Text = "PX",
   Min = 0,
   Max = 1000,
   Def = Right_Arm.Position.SX,
   Callback = function(a)
Right_Arm.Position.SX = a
end
})

rightarmspeedsection:Slider({
   Text = "PY",
   Min = 0,
   Max = 1000,
   Def = Right_Arm.Position.SY,
   Callback = function(a)
Right_Arm.Position.SY = a
end
})

rightarmspeedsection:Slider({
   Text = "PZ",
   Min = 0,
   Max = 1000,
   Def = Right_Arm.Position.SZ,
   Callback = function(a)
Right_Arm.Position.SZ = a
end
})

rightarmspeedsection:Slider({
   Text = "RX",
   Min = 0,
   Max = 1000,
   Def = Right_Arm.Rotation.SX,
   Callback = function(a)
Right_Arm.Rotation.SX = a
end
})

rightarmspeedsection:Slider({
   Text = "RY",
   Min = 0,
   Max = 1000,
   Def = Right_Arm.Rotation.SY,
   Callback = function(a)
Right_Arm.Rotation.SY = a
end
})

rightarmspeedsection:Slider({
   Text = "RZ",
   Min = 0,
   Max = 1000,
   Def = Right_Arm.Rotation.SZ,
   Callback = function(a)
Right_Arm.Rotation.SZ = a
end
})

local leftleg = tab:TabSection({
   Title = "Left Leg"
})

local leftlegpos = leftleg:AddColumn({
   Title = "Position",
   Callback = function() 
   handlespos("Left Leg",{X=GSFN("Left Leg","X"),Y=GSFN("Left Leg","Y"),Z=GSFN("Left Leg","Z")})
   end

})

local leftlegpossection = leftlegpos:Section({
   Title = "Position"
})

leftlegpossection:Slider({
   Text = "X",
   Min = -360,
   Max = 360,
   Def = Left_Leg.Position.X,
   Callback = function(a)
Left_Leg.Position.X = tonumber(a)
end
})

leftlegpossection:Slider({
   Text = "X {L}",
   Min = -360,
   Max = 360,
   Def = Left_Leg.Position.XL,
   Callback = function(a)
Left_Leg.Position.XL = tonumber(a)
end
})

leftlegpossection:Slider({
   Text = "Y",
   Min = -360,
   Max = 360,
   Def = Left_Leg.Position.Y,
   Callback = function(a)
Left_Leg.Position.Y = tonumber(a)
end
})

leftlegpossection:Slider({
   Text = "Y {L}",
   Min = -360,
   Max = 360,
   Def = Left_Leg.Position.YL,
   Callback = function(a)
Left_Leg.Position.YL = tonumber(a)
end
})

leftlegpossection:Slider({
   Text = "Z",
   Min = -360,
   Max = 360,
   Def = Left_Leg.Position.Z,
   Callback = function(a)
Left_Leg.Position.Z = tonumber(a)
end
})

leftlegpossection:Slider({
   Text = "Z {L}",
   Min = -360,
   Max = 360,
   Def = Left_Leg.Position.ZL,
   Callback = function(a)
Left_Leg.Position.ZL = tonumber(a)
end
})

local leftlegrot = leftleg:AddColumn({
   Title = "Rotation",
   Callback = function() 
   arc("Left Leg",{X=GSFN("Left Leg","X {Rad}"),Y=GSFN("Left Leg","Y {Rad}"),Z=GSFN("Left Leg","Z {Rad}")})
   end

})

local leftlegrotsection = leftlegrot:Section({
   Title = "Rotation"
})

leftlegrotsection:Slider({
   Text = "X {Rad}",
   Min = -360,
   Max = 360,
   Def = Left_Leg.Rotation.X,
   Callback = function(a)
Left_Leg.Rotation.X = tonumber(a)
end
})

leftlegrotsection:Slider({
   Text = "X {L} {Rad}",
   Min = -360,
   Max = 360,
   Def = Left_Leg.Rotation.XL,
   Callback = function(a)
Left_Leg.Rotation.XL = tonumber(a)
end
})

leftlegrotsection:Slider({
   Text = "Y {Rad}",
   Min = -360,
   Max = 360,
   Def = Left_Leg.Rotation.Y,
   Callback = function(a)
Left_Leg.Rotation.Y = tonumber(a)
end
})

leftlegrotsection:Slider({
   Text = "Y {L} {Rad}",
   Min = -360,
   Max = 360,
   Def = Left_Leg.Rotation.YL,
   Callback = function(a)
Left_Leg.Rotation.YL = tonumber(a)
end
})

leftlegrotsection:Slider({
   Text = "Z {Rad}",
   Min = -360,
   Max = 360,
   Def = Left_Leg.Rotation.Z,
   Callback = function(a)
Left_Leg.Rotation.Z = tonumber(a)
end
})

leftlegrotsection:Slider({
   Text = "Z {L} {Rad}",
   Min = -360,
   Max = 360,
   Def = Left_Leg.Rotation.ZL,
   Callback = function(a)
Left_Leg.Rotation.ZL = tonumber(a)
end
})

local leftlegst = leftleg:AddColumn({
   Title = "Sine Type"
})

local leftlegstsection = leftlegst:Section({
   Title = "Sine Type"
})

leftlegstsection:Toggle({
   Text = "PX Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Left_Leg.Type.PX='cos'
elseif a == true then
Left_Leg.Type.PX='sin'
end
end
})

leftlegstsection:Toggle({
   Text = "PY Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Left_Leg.Type.PY='cos'
elseif a == true then
Left_Leg.Type.PY='sin'
end
end
})

leftlegstsection:Toggle({
   Text = "PZ Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Left_Leg.Type.PZ='cos'
elseif a == true then
Left_Leg.Type.PZ='sin'
end
end
})

leftlegstsection:Toggle({
   Text = "RX Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Left_Leg.Type.RX='cos'
elseif a == true then
Left_Leg.Type.RX='sin'
end
end
})

leftlegstsection:Toggle({
   Text = "RY Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Left_Leg.Type.RY='cos'
elseif a == true then
Left_Leg.Type.RY='sin'
end
end
})

leftlegstsection:Toggle({
   Text = "RZ Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Left_Leg.Type.RZ='cos'
elseif a == true then
Left_Leg.Type.RZ='sin'
end
end
})

local leftlegspeed = leftleg:AddColumn({
   Title = "Speed"
})

local leftlegspeedsection = leftlegspeed:Section({
   Title = "Speed"
})

leftlegspeedsection:Slider({
   Text = "PX",
   Min = 0,
   Max = 1000,
   Def = Left_Leg.Position.SX,
   Callback = function(a)
Left_Leg.Position.SX = a
end
})

leftlegspeedsection:Slider({
   Text = "PY",
   Min = 0,
   Max = 1000,
   Def = Left_Leg.Position.SY,
   Callback = function(a)
Left_Leg.Position.SY = a
end
})

leftlegspeedsection:Slider({
   Text = "PZ",
   Min = 0,
   Max = 1000,
   Def = Left_Leg.Position.SZ,
   Callback = function(a)
Left_Leg.Position.SZ = a
end
})

leftlegspeedsection:Slider({
   Text = "RX",
   Min = 0,
   Max = 1000,
   Def = Left_Leg.Rotation.SX,
   Callback = function(a)
Left_Leg.Rotation.SX = a
end
})

leftlegspeedsection:Slider({
   Text = "RY",
   Min = 0,
   Max = 1000,
   Def = Left_Leg.Rotation.SY,
   Callback = function(a)
Left_Leg.Rotation.SY = a
end
})

leftlegspeedsection:Slider({
   Text = "RZ",
   Min = 0,
   Max = 1000,
   Def = Left_Leg.Rotation.SZ,
   Callback = function(a)
Left_Leg.Rotation.SZ = a
end
})

local rightleg = tab:TabSection({
   Title = "Right Leg"
})

local rightlegpos = rightleg:AddColumn({
   Title = "Position",
   Callback = function() 
   handlespos("Right Leg",{X=GSFN("Right Leg","X"),Y=GSFN("Right Leg","Y"),Z=GSFN("Right Leg","Z")})
   end

})

local rightlegpossection = rightlegpos:Section({
   Title = "Position"
})

rightlegpossection:Slider({
   Text = "X",
   Min = -360,
   Max = 360,
   Def = Right_Leg.Position.X,
   Callback = function(a)
Right_Leg.Position.X = tonumber(a)
end
})

rightlegpossection:Slider({
   Text = "X {L}",
   Min = -360,
   Max = 360,
   Def = Right_Leg.Position.XL,
   Callback = function(a)
Right_Leg.Position.XL = tonumber(a)
end
})

rightlegpossection:Slider({
   Text = "Y",
   Min = -360,
   Max = 360,
   Def = Right_Leg.Position.Y,
   Callback = function(a)
Right_Leg.Position.Y = tonumber(a)
end
})

rightlegpossection:Slider({
   Text = "Y {L}",
   Min = -360,
   Max = 360,
   Def = Right_Leg.Position.YL,
   Callback = function(a)
Right_Leg.Position.YL = tonumber(a)
end
})

rightlegpossection:Slider({
   Text = "Z",
   Min = -360,
   Max = 360,
   Def = Right_Leg.Position.Z,
   Callback = function(a)
Right_Leg.Position.Z = tonumber(a)
end
})

rightlegpossection:Slider({
   Text = "Z {L}",
   Min = -360,
   Max = 360,
   Def = Right_Leg.Position.ZL,
   Callback = function(a)
Right_Leg.Position.ZL = tonumber(a)
end
})

local rightlegrot = rightleg:AddColumn({
   Title = "Rotation",
   Callback = function() 
   arc("Right Leg",{X=GSFN("Right Leg","X {Rad}"),Y=GSFN("Right Leg","Y {Rad}"),Z=GSFN("Right Leg","Z {Rad}")})
   end

})

local rightlegrotsection = rightlegrot:Section({
   Title = "Rotation"
})

rightlegrotsection:Slider({
   Text = "X {Rad}",
   Min = -360,
   Max = 360,
   Def = Right_Leg.Rotation.X,
   Callback = function(a)
Right_Leg.Rotation.X = tonumber(a)
end
})

rightlegrotsection:Slider({
   Text = "X {L} {Rad}",
   Min = -360,
   Max = 360,
   Def = Right_Leg.Rotation.XL,
   Callback = function(a)
Right_Leg.Rotation.XL = tonumber(a)
end
})

rightlegrotsection:Slider({
   Text = "Y {Rad}",
   Min = -360,
   Max = 360,
   Def = Right_Leg.Rotation.Y,
   Callback = function(a)
Right_Leg.Rotation.Y = tonumber(a)
end
})

rightlegrotsection:Slider({
   Text = "Y {L} {Rad}",
   Min = -360,
   Max = 360,
   Def = Right_Leg.Rotation.YL,
   Callback = function(a)
Right_Leg.Rotation.YL = tonumber(a)
end
})

rightlegrotsection:Slider({
   Text = "Z {Rad}",
   Min = -360,
   Max = 360,
   Def = Right_Leg.Rotation.Z,
   Callback = function(a)
Right_Leg.Rotation.Z = tonumber(a)
end
})

rightlegrotsection:Slider({
   Text = "Z {L} {Rad}",
   Min = -360,
   Max = 360,
   Def = Right_Leg.Rotation.ZL,
   Callback = function(a)
Right_Leg.Rotation.ZL = tonumber(a)
end
})

local rightlegst = rightleg:AddColumn({
   Title = "Sine Type"
})

local rightlegstsection = rightlegst:Section({
   Title = "Sine Type"
})

rightlegstsection:Toggle({
   Text = "PX Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Right_Leg.Type.PX='cos'
elseif a == true then
Right_Leg.Type.PX='sin'
end
end
})

rightlegstsection:Toggle({
   Text = "PY Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Right_Leg.Type.PY='cos'
elseif a == true then
Right_Leg.Type.PY='sin'
end
end
})

rightlegstsection:Toggle({
   Text = "PZ Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Right_Leg.Type.PZ='cos'
elseif a == true then
Right_Leg.Type.PZ='sin'
end
end
})

rightlegstsection:Toggle({
   Text = "RX Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Right_Leg.Type.RX='cos'
elseif a == true then
Right_Leg.Type.RX='sin'
end
end
})

rightlegstsection:Toggle({
   Text = "RY Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Right_Leg.Type.RY='cos'
elseif a == true then
Right_Leg.Type.RY='sin'
end
end
})

rightlegstsection:Toggle({
   Text = "RZ Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
Right_Leg.Type.RZ='cos'
elseif a == true then
Right_Leg.Type.RZ='sin'
end
end
})

local rightlegspeed = rightleg:AddColumn({
   Title = "Speed"
})

local rightlegspeedsection = rightlegspeed:Section({
   Title = "Speed"
})

rightlegspeedsection:Slider({
   Text = "PX",
   Min = 0,
   Max = 1000,
   Def = Right_Leg.Position.SX,
   Callback = function(a)
Right_Leg.Position.SX = a
end
})

rightlegspeedsection:Slider({
   Text = "PY",
   Min = 0,
   Max = 1000,
   Def = Right_Leg.Position.SY,
   Callback = function(a)
Right_Leg.Position.SY = a
end
})

rightlegspeedsection:Slider({
   Text = "PZ",
   Min = 0,
   Max = 1000,
   Def = Right_Leg.Position.SZ,
   Callback = function(a)
Right_Leg.Position.SZ = a
end
})

rightlegspeedsection:Slider({
   Text = "RX",
   Min = 0,
   Max = 1000,
   Def = Right_Leg.Rotation.SX,
   Callback = function(a)
Right_Leg.Rotation.SX = a
end
})

rightlegspeedsection:Slider({
   Text = "RY",
   Min = 0,
   Max = 1000,
   Def = Right_Leg.Rotation.SY,
   Callback = function(a)
Right_Leg.Rotation.SY = a
end
})

rightlegspeedsection:Slider({
   Text = "RZ",
   Min = 0,
   Max = 1000,
   Def = Right_Leg.Rotation.SZ,
   Callback = function(a)
Right_Leg.Rotation.SZ = a
end
})

local conv = tab:TabSection({
   Title = "Converter"
})

local conve = conv:AddColumn({
   Title = "Body"
})

local convesection = conve:Section({
   Title = "Lerps/Templates"
})

convesection:Button({
   Text = "Copy Template",
   Callback = function() 
    local temptoreturn = [=[
local tangerex = loadstring(game:HttpGet("https://tangerexfe.000webhostapp.com/template.lua"))()

reanimate = tangerex:Reanimate("SP",false --[[Usage: true or false to toggle click fling]]) -- SP / Simple, LF / Leg Fling, TF / Torso Fling, PD / Perma Death [Fling]

reanimate:Animation("idle",function()
--idlelerphere
end)

reanimate:Animation("walk",function()
--walklerphere
end)

reanimate:Animation("run",function()
--runlerphere
end)

reanimate:Animation("jump",function()
--jumplerphere
end)

reanimate:Animation("fall",function()
--falllerphere
end)

-- Read the documentation for modes/attacks/keybinds/clickbinds
]=]   
setclipboard(temptoreturn:gsub("--idlelerphere",setas.idle):gsub("--walklerphere",setas.walk):gsub("--runlerphere",setas.run):gsub("--jumplerphere",setas.jump):gsub("--falllerphere",setas.fall))
 end
})

convesection:Button({
   Text = "Copy Lerps",
   Callback = function() setclipboard(getbodylerps()) end
})

local hat = hattab:TabSection({
   Title = "Hat",
   Callback = function(a) end
})

local hathandle = hat:AddColumn({
   Title = "Handle",
   Callback = function() 
   end
})

local hathandlesection = hathandle:Section({
   Title = "Handle"
})

hatstable={}

for i,v in next, game.Players.LocalPlayer.Character:GetChildren() do
if v:IsA("Accessory") then
table.insert(hatstable,v.Name)
end
end

if #hatstable < 1 then
hatstable = {"No hats"}
end

selhat = hatstable[1]

hatdropdown=hathandlesection:Dropdown({
Text = "Handle",
List = hatstable,
Callback = function(a)
hatstable={}

for i,v in next, game.Players.LocalPlayer.Character:GetChildren() do
if v:IsA("Accessory") then
table.insert(hatstable,v.Name)
end
end

if #hatstable < 1 then
hatstable = {"No hats"}
end

hatdropdown:UpdateList(hatstable)
selhat = a
end
})

hathandlesection:TextLabel({
Text = "Multi Hat (Soon)",
})

hathandlesection:Button({
Text = "Refresh Hats",
Callback = function()
hatstable={}



for i,v in next, game.Players.LocalPlayer.Character:GetChildren() do
if v:IsA("Accessory") then
table.insert(hatstable,v.Name)
end
end

if #hatstable < 1 then
hatstable = {"No hats"}
end

hatdropdown:UpdateList(hatstable)
end
})


selpart = "Head"

parts = {}

for i,v in next, game.Players.LocalPlayer.Character:GetChildren() do
table.insert(parts,v.Name)
end

local hatpart = hat:AddColumn({
   Title = "Part",
   Callback = function() 
   end
})

local hatpartsection = hatpart:Section({
   Title = "Part"
})

hatpartdropdown=hatpartsection:Dropdown({
Text = "Part",
List = parts,
Callback = function(a)
selpart = a
end
})

local hatdebug = hat:AddColumn({
   Title = "Debug",
   Callback = function() 
   end
})

local hatdebugsection = hatdebug:Section({
   Title = "Debug"
})

cf=CFrame.new
angles=CFrame.Angles

hatdebugsection:Button({
Text = "Debug",
Callback = function()
if not Animating then return end
local animhat = selhat
local animpart = selpart
table.insert(ct,game:GetService("RunService").Stepped:Connect(function()
pcall(function()
if game.Players.LocalPlayer.Character.Humanoid.Health < 0.1 then
for i,v in next, ct do
v:Disconnect()
end
end
game.Players.LocalPlayer.Character[animhat].Handle.AccessoryWeld.C1 = CFrame.new()
game.Players.LocalPlayer.Character[animhat].Handle.AccessoryWeld.C0 = game.Players.LocalPlayer.Character[animhat].Handle.AccessoryWeld.C0:Lerp(cf(HatC0.Position.X+HatC0.Position.XL*math[HatC0.Type.PX](sine/HatC0.Position.SX),HatC0.Position.Y+HatC0.Position.YL*math[HatC0.Type.PY](sine/HatC0.Position.SY),HatC0.Position.Z+HatC0.Position.ZL*math[HatC0.Type.PZ](sine/HatC0.Position.SZ))*angles(rad(HatC0.Rotation.X+HatC0.Rotation.XL*math[HatC0.Type.RX](sine/HatC0.Rotation.SX)),rad(HatC0.Rotation.Y+HatC0.Rotation.YL*math[HatC0.Type.RY](sine/HatC0.Rotation.SY)),rad(HatC0.Rotation.Z+HatC0.Rotation.ZL*math[HatC0.Type.RZ](sine/HatC0.Rotation.SZ))),lerpspeed)
game.Players.LocalPlayer.Character[animhat].Handle.AccessoryWeld.Part1 = game.Players.LocalPlayer.Character[animpart]
end)
end))
end
})

local hatpos = hat:AddColumn({
   Title = "Position",
   Callback = function() 
   end
})

local hatpossection = hatpos:Section({
   Title = "Position"
})

hatpossection:Slider({
   Text = "X",
   Min = -360,
   Max = 360,
   Def = HatC0.Position.X,
   Callback = function(a)
HatC0.Position.X = tonumber(a)
end
})

hatpossection:Slider({
   Text = "X {L}",
   Min = -360,
   Max = 360,
   Def = HatC0.Position.XL,
   Callback = function(a)
HatC0.Position.XL = tonumber(a)
end
})

hatpossection:Slider({
   Text = "Y",
   Min = -360,
   Max = 360,
   Def = HatC0.Position.Y,
   Callback = function(a)
HatC0.Position.Y = tonumber(a)
end
})

hatpossection:Slider({
   Text = "Y {L}",
   Min = -360,
   Max = 360,
   Def = HatC0.Position.YL,
   Callback = function(a)
HatC0.Position.YL = tonumber(a)
end
})

hatpossection:Slider({
   Text = "Z",
   Min = -360,
   Max = 360,
   Def = HatC0.Position.Z,
   Callback = function(a)
HatC0.Position.Z = tonumber(a)
end
})

hatpossection:Slider({
   Text = "Z {L}",
   Min = -360,
   Max = 360,
   Def = HatC0.Position.ZL,
   Callback = function(a)
HatC0.Position.ZL = tonumber(a)
end
})

local hatrot = hat:AddColumn({
   Title = "Rotation",
   Callback = function() 
   end
})

local hatrotsection = hatrot:Section({
   Title = "Rotation"
})

hatrotsection:Slider({
   Text = "X {Rad}",
   Min = -360,
   Max = 360,
   Def = HatC0.Rotation.X,
   Callback = function(a)
HatC0.Rotation.X = tonumber(a)
end
})

hatrotsection:Slider({
   Text = "X {L} {Rad}",
   Min = -360,
   Max = 360,
   Def = HatC0.Rotation.XL,
   Callback = function(a)
HatC0.Rotation.XL = tonumber(a)
end
})

hatrotsection:Slider({
   Text = "Y {Rad}",
   Min = -360,
   Max = 360,
   Def = HatC0.Rotation.Y,
   Callback = function(a)
HatC0.Rotation.Y = tonumber(a)
end
})

hatrotsection:Slider({
   Text = "Y {L} {Rad}",
   Min = -360,
   Max = 360,
   Def = HatC0.Rotation.YL,
   Callback = function(a)
HatC0.Rotation.YL = tonumber(a)
end
})

hatrotsection:Slider({
   Text = "Z {Rad}",
   Min = -360,
   Max = 360,
   Def = HatC0.Rotation.Z,
   Callback = function(a)
HatC0.Rotation.Z = tonumber(a)
end
})

hatrotsection:Slider({
   Text = "Z {L} {Rad}",
   Min = -360,
   Max = 360,
   Def = HatC0.Rotation.ZL,
   Callback = function(a)
HatC0.Rotation.ZL = tonumber(a)
end
})

local hatst = hat:AddColumn({
   Title = "Sine Type"
})

local hatstsection = hatst:Section({
   Title = "Sine Type"
})

hatstsection:Toggle({
   Text = "PX Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
HatC0.Type.PX='cos'
elseif a == true then
HatC0.Type.PX='sin'
end
end
})

hatstsection:Toggle({
   Text = "PY Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
HatC0.Type.PY='cos'
elseif a == true then
HatC0.Type.PY='sin'
end
end
})

hatstsection:Toggle({
   Text = "PZ Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
HatC0.Type.PZ='cos'
elseif a == true then
HatC0.Type.PZ='sin'
end
end
})

hatstsection:Toggle({
   Text = "RX Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
HatC0.Type.RX='cos'
elseif a == true then
HatC0.Type.RX='sin'
end
end
})

hatstsection:Toggle({
   Text = "RY Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
HatC0.Type.RY='cos'
elseif a == true then
HatC0.Type.RY='sin'
end
end
})

hatstsection:Toggle({
   Text = "RZ Cos/Sin",
   State = false,
   Callback = function(a)
if a == false then
HatC0.Type.RZ='cos'
elseif a == true then
HatC0.Type.RZ='sin'
end
end
})

local hatspeed = hat:AddColumn({
   Title = "Speed"
})

local hatspeedsection = hatspeed:Section({
   Title = "Speed"
})

hatspeedsection:Slider({
   Text = "PX",
   Min = 0,
   Max = 1000,
   Def = HatC0.Position.SX,
   Callback = function(a)
HatC0.Position.SX = a
end
})

hatspeedsection:Slider({
   Text = "PY",
   Min = 0,
   Max = 1000,
   Def = HatC0.Position.SY,
   Callback = function(a)
HatC0.Position.SY = a
end
})

hatspeedsection:Slider({
   Text = "PZ",
   Min = 0,
   Max = 1000,
   Def = HatC0.Position.SZ,
   Callback = function(a)
HatC0.Position.SZ = a
end
})

hatspeedsection:Slider({
   Text = "RX",
   Min = 0,
   Max = 1000,
   Def = HatC0.Rotation.SX,
   Callback = function(a)
HatC0.Rotation.SX = a
end
})

hatspeedsection:Slider({
   Text = "RY",
   Min = 0,
   Max = 1000,
   Def = HatC0.Rotation.SY,
   Callback = function(a)
HatC0.Rotation.SY = a
end
})

hatspeedsection:Slider({
   Text = "RZ",
   Min = 0,
   Max = 1000,
   Def = HatC0.Rotation.SZ,
   Callback = function(a)
HatC0.Rotation.SZ = a
end
})

function gethatoklol()
local hasmesh = false
if workspace[game.Players.LocalPlayer.Name][selhat]:FindFirstChildOfClass("SpecialMesh") then
hasmesh = true
else
hasmesh = false
end
hattoreturn = [[
reanimate:Hat("]]..(animhat or selhat)..[[","]]..(animpart or selpart)..[[",]]..tostring(hasmesh)..[[,function()
]]..[[workspace.Camera.CameraSubject.Parent["]]..(animhat or selhat)..[["].Handle.AccessoryWeld.C0=]]..[[workspace.Camera.CameraSubject.Parent["]]..(animhat or selhat)..[["].Handle.AccessoryWeld.C0:Lerp(CFrame.new(]]..HatC0.Position.X..[[+]]..HatC0.Position.XL..[[*math.]]..HatC0.Type.PX..[[(sine/]]..HatC0.Position.SX..[[),]]..HatC0.Position.Y..[[+]]..HatC0.Position.YL..[[*math.]]..HatC0.Type.PY..[[(sine/]]..HatC0.Position.SY..[[),]]..HatC0.Position.Z..[[+]]..HatC0.Position.ZL..[[*math.]]..HatC0.Type.PZ..[[(sine/]]..HatC0.Position.SZ..[[))*CFrame.Angles(math.rad(]]..HatC0.Rotation.X..[[+]]..HatC0.Rotation.XL..[[*math.]]..HatC0.Type.RX..[[(sine/]]..HatC0.Rotation.SX..[[)),math.rad(]]..HatC0.Rotation.Y..[[+]]..HatC0.Rotation.YL..[[*math.]]..HatC0.Type.RY..[[(sine/]]..HatC0.Rotation.SY..[[)),math.rad(]]..HatC0.Rotation.Z..[[+]]..HatC0.Rotation.ZL..[[*math.]]..HatC0.Type.RX..[[(sine/]]..HatC0.Rotation.SZ.."))),"..lerpspeed..[[)]]..[[

end)]]

return hattoreturn
end

local convhat = hattab:TabSection({
Title = "Converter"
})

local hatconv = convhat:AddColumn({
   Title = "Hat",
   Callback = function() 
   end
})

local hatconvsection = hatconv:Section({
   Title = "Hat"
})

hatconvsection:Button({
Text = "Copy Hat",
Callback = function()
setclipboard(gethatoklol())
end
})

hatconvsection:Button({
Text = "Copy Hat Lerps",
Callback = function()
setclipboard([[workspace.Camera.CameraSubject.Parent["]]..(animhat or selhat)..[["].Handle.AccessoryWeld.C0=]]..[[workspace.Camera.CameraSubject.Parent["]]..(animhat or selhat)..[["].Handle.AccessoryWeld.C0:Lerp(CFrame.new(]]..HatC0.Position.X..[[+]]..HatC0.Position.XL..[[*math.]]..HatC0.Type.PX..[[(sine/]]..HatC0.Position.SX..[[),]]..HatC0.Position.Y..[[+]]..HatC0.Position.YL..[[*math.]]..HatC0.Type.PY..[[(sine/]]..HatC0.Position.SY..[[),]]..HatC0.Position.Z..[[+]]..HatC0.Position.ZL..[[*math.]]..HatC0.Type.PZ..[[(sine/]]..HatC0.Position.SZ..[[))*CFrame.Angles(math.rad(]]..HatC0.Rotation.X..[[+]]..HatC0.Rotation.XL..[[*math.]]..HatC0.Type.RX..[[(sine/]]..HatC0.Rotation.SX..[[)),math.rad(]]..HatC0.Rotation.Y..[[+]]..HatC0.Rotation.YL..[[*math.]]..HatC0.Type.RY..[[(sine/]]..HatC0.Rotation.SY..[[)),math.rad(]]..HatC0.Rotation.Z..[[+]]..HatC0.Rotation.ZL..[[*math.]]..HatC0.Type.RX..[[(sine/]]..HatC0.Rotation.SZ.."))),"..lerpspeed..[[)]])
end
})
end

notf("Loading Tangerex Premium...")

function hash(str)
str=tostring(str)
fin0 = (str:gsub('.', function (c)
return string.byte(c)*123
end))
fin1=tostring(fin0)
return fin1
end

httpreq = http_request or request or HttpPost or syn.request or fluxus.request

gamer={}

function gamer:HttpGet(a)
result=httpreq({
Url = (tostring(a)),
Method = 'GET'
})
return result.Body
end

key = getfenv().TGXKey

local body = httpreq({Url = 'https://httpbin.org/headers'; Method = 'GET'}).Body;
local decoded = game:GetService('HttpService'):JSONDecode(body)
local hwid_list = {"Syn-Fingerprint", "Exploit-Guid", "Proto-User-Identifier", "Sentinel-Fingerprint", "Krnl-Fingerprint", "Flux-Fingerprint", "SW-Fingerprint"};
 
local CLIENT_HWID

for i, v in next, hwid_list do
	if decoded.headers[v] then
        CLIENT_HWID=decoded.headers[v]
    end
end

local TGXWhitelist={}

hwids = game:HttpGet("https://api.github.com/gists/9ee9e19b86e74d2b6528c6afe3b8b250")

hwids = game:GetService("HttpService"):JSONDecode(hwids)

hwids = game:GetService("HttpService"):JSONDecode(game:HttpGet(hwids["files"]["tgxhwidstorage.json"]["raw_url"]))

table.foreach(hwids,print)

local TGXRandom = math.random(100000,900000)

TGXWhitelist[tostring(TGXRandom)] = hash("false")

for i,v in next, hwids do
if key == hash(v) and hash(CLIENT_HWID) == hash(v) and hash(v) == key and type(hwids) == 'table' then
TGXWhitelist[tostring(TGXRandom)] = hash("true")
break
end
end

if TGXWhitelist[tostring(TGXRandom)] == hash("true") then
notf("Loaded Tangerex Premium!")
LoadUpTGX()
else
notf("No Whitelist Found on this device\nBuy Tangerex Premium at\ndiscord.gg/k8gwz7NzTH")
end
