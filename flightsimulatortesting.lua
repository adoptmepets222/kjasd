local Atlas1 = {}
local MainAtlasGuiColor = Color3.fromRGB(0, 213, 255)
local SecondaryAtlasGuiColor = Color3.fromRGB(0, 71, 84)
local TertiaryAtlasGuiColor = Color3.fromRGB(0, 64, 255)
local NonSelectedAtlasGuiColor = Color3.fromRGB(0, 100, 118)
-- ar
local LPH_OBFUSCATED = false
notworking = tostring(loadstring(game:HttpGet('https://raw.githubusercontent.com/supersixteen21/dsadewfewniergjsfo/main/notworking.lua'))()) -- hookmetamethod not supported
executor = tostring(identifyexecutor())
local hooksupported = true
if string.find(notworking,executor:lower()) then
    hooksupported = false
end
if not LPH_OBFUSCATED  and hooksupported then
    getfenv().LPH_NO_VIRTUALIZE = function(f) return f end
    getfenv().LPH_PRINT = function(...)
        local args = {...}
        local str = ""
        for i, v in ipairs(args) do
            str = str .. tostring(v) .. "\t"
        end
        print("[Luraph] " .. str)
    end
    getfenv().LPH_HOOK_FUNCTION = function(func, handler)
        return hookfunction(func, LPH_NO_VIRTUALIZE(handler))
    end
    getfenv().LPH_GET_METATABLE = function(obj)
        return getrawmetatable(obj)
    end
    getfenv().LPH_SET_METATABLE = function(obj, mt)
        return setmetatable(obj, mt)
    end
    getfenv().LPH_DEBUG_INFO = function(func, what)
        return debug.info(func, what)
    end
    getfenv().LPH_GET_ENV = function()
        return getfenv()
    end
    getfenv().LPH_GET_GC = function(all)
        return getgc(all)
    end
    getfenv().LPH_IS_CALLER = function(level)
        return checkcaller(level)
    end
    getfenv().LPH_IS_FUNCTION = function(f)
        return type(f) == "function"
    end
    getfenv().LPH_IS_TABLE = function(t)
        return type(t) == "table"
    end
    getfenv().LPH_RAWLEN = function(t)
        return rawlen(t)
    end
end
-- ff
ffcalc = 4102449570 * 2
local bypassloaded = false
print("test")
local hook = hookmetamethod
if not hook or hooksupported == false then
    bypassloaded = true
end
if game.PlaceId == ffcalc and hooksupported then
    local Hooks = {}
    local Targets = {}
    local Whitelisted = {
        {655, 775, 724, 633, 891},
        {760, 760, 771, 665, 898},
        {660, 759, 751, 863, 771},
    }

    local function TableEquality(x, y)
        if LPH_RAWLEN(x) ~= LPH_RAWLEN(y) then
            return false
        end

        for i, v in ipairs(x) do
            if y[i] ~= v then
                return false
            end
        end

        return true
    end

    LPH_NO_VIRTUALIZE(function()
        for i, v in ipairs(LPH_GET_GC(true)) do
            if LPH_IS_FUNCTION(v) then
                local ScriptTrace, Line = LPH_DEBUG_INFO(v, "sl")

                if string.find(ScriptTrace, "PlayerModule.LocalScript") and table.find({42, 51, 61}, Line) then
                    table.insert(Targets, v)
                end
            end

            if LPH_IS_TABLE(v) and LPH_RAWLEN(v) == 19 and LPH_GET_METATABLE(v) then
                Targets.__call = rawget(LPH_GET_METATABLE(v), "__call")
            end
        end
    end)()

    if not (Targets[1] and Targets[2] and Targets[3] and Targets.__call) then
        LPH_PRINT("bypass failed")
        bypassloaded = true
    end
    if bypassloaded ~= true then
        local ScriptPath = LPH_DEBUG_INFO(Targets[1], "s")

        Hooks.debug_info = LPH_HOOK_FUNCTION(debug.info, LPH_NO_VIRTUALIZE(function(...)
            if not LPH_IS_CALLER() and TableEquality({...}, {2, "s"}) then
                return ScriptPath
            end

            return Hooks.debug_info(...)
        end))

        LPH_HOOK_FUNCTION(Targets[1], LPH_NO_VIRTUALIZE(function() end))
        LPH_HOOK_FUNCTION(Targets[2], LPH_NO_VIRTUALIZE(function() end))
        LPH_HOOK_FUNCTION(Targets[3], LPH_NO_VIRTUALIZE(function() end))

        Hooks.__call = LPH_HOOK_FUNCTION(Targets.__call, LPH_NO_VIRTUALIZE(function(self, ...)
            if
                TableEquality(Whitelisted[1], {...}) or
                TableEquality(Whitelisted[2], {...}) or
                TableEquality(Whitelisted[3], {...})
            then
                return Hooks.__call(self, ...)
            end
        end))
        bypassloaded = true
        print("bypass activate")
    end
end
--
print("Testing")
while bypassloaded == false do
    task.wait(1)
end
print("Passed the Checkmark!")
 
local OldAtlasGui = game:GetService("CoreGui"):FindFirstChild("AtlasHubGui")
if OldAtlasGui then
    OldAtlasGui:Destroy()
end
local OldAtlasGui = game:GetService("CoreGui"):FindFirstChild("AtlasLoadingWizard")
if OldAtlasGui then
    OldAtlasGui:Destroy()
end
local OldAtlasGui = game:GetService("CoreGui"):FindFirstChild("AtlasKeySystem")
if OldAtlasGui then
    OldAtlasGui:Destroy()
end

local NotifGui = game:GetService("CoreGui"):FindFirstChild("AtlasHubNotifGui")
if NotifGui then
    NotifGui:Destroy()
end

local AtlasLoading = Instance.new("ScreenGui")
AtlasLoading.Parent = game:GetService("CoreGui")
AtlasLoading.Name = "AtlasLoadingWizard"
-- AtlasLoading.ZIndexBehavior = Enum.ZIndexBehavior.Sibling


local loadingimage = Instance.new("ImageLabel",AtlasLoading)
loadingimage.BackgroundTransparency = 1
loadingimage.Image = "http://www.roblox.com/asset/?id=18944305348" 
loadingimage.Name = "AtlasHubLoading"
loadingimage.AnchorPoint = Vector2.new(0.5, 0.5)
loadingimage.Position = UDim2.new(0.45, 0,0.45, 0)
loadingimage.Size = UDim2.new(0, 520,0, 517)
loadingimage.ImageColor3 = Color3.fromRGB(255, 255, 255)
loadingimage.ScaleType = Enum.ScaleType.Slice
loadingimage.ImageTransparency = 1


local newTransparency =0
local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
local loadingtween = game.TweenService:Create(loadingimage, tweenInfo, {ImageTransparency = newTransparency})
loadingtween:Play()
function Atlas1.CreateWindow(libName, logoId) 
    local AtlasLib = Instance.new("ScreenGui")
    local shadow = Instance.new("ImageLabel")
    local MainFrame = Instance.new("Frame")
    local sideHeading = Instance.new("Frame")
    local MainCorner = Instance.new("UICorner")
    local sideCover = Instance.new("Frame")
    local hubLogo = Instance.new("ImageLabel")
    local MainCorner_2 = Instance.new("UICorner")
    local hubName = Instance.new("TextLabel")
    local tabFrame = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local usename = Instance.new("TextLabel")
    local MainCorner_3 = Instance.new("UICorner")
    local wave = Instance.new("ImageLabel")
    local MainCorner_4 = Instance.new("UICorner")
    local framesAll = Instance.new("Frame")
    local pageFolder = Instance.new("Folder")
    local userimage = Instance.new("ImageLabel")

    local key1 = Instance.new("TextButton")
    local UICorner = Instance.new("UICorner")
    local keybindInfo1 = Instance.new("TextLabel")

    key1.Name = "key1"
    key1.Parent = sideHeading
    key1.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
    key1.Position = UDim2.new(0.0508064516, 0, 0.935261786, 0)
    key1.Size = UDim2.new(0, 76, 0, 22)
    key1.ZIndex = 2
    key1.Font = Enum.Font.GothamSemibold
    key1.Text = "LeftAlt"
    key1.TextColor3 = MainAtlasGuiColor
    key1.TextSize = 14.000

    local oldKey = Enum.KeyCode.LeftAlt.Name

    key1.MouseButton1Click:connect(function(e) 
        key1.Text = ". . ."
        local a, b = game:GetService('UserInputService').InputBegan:wait();
        if a.KeyCode.Name ~= "Unknown" then
            key1.Text = a.KeyCode.Name
            oldKey = a.KeyCode.Name;
        end
    end)

    game:GetService("UserInputService").InputBegan:connect(function(current, ok) 
        if not ok then 
            if current.KeyCode.Name == oldKey then 
                if AtlasLib.Enabled == true then
                    AtlasLib.Enabled = false
                else
                    AtlasLib.Enabled = true
                end
            end
        end
    end)

    UICorner.CornerRadius = UDim.new(0, 5)
    UICorner.Parent = key1

    keybindInfo1.Name = "keybindInfo"
    keybindInfo1.Parent = sideHeading
    keybindInfo1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    keybindInfo1.BackgroundTransparency = 1.000
    keybindInfo1.Position = UDim2.new(0.585064113, 0, 0.935261846, 0)
    keybindInfo1.Size = UDim2.new(0, 50, 0, 22)
    keybindInfo1.ZIndex = 2
    keybindInfo1.Font = Enum.Font.GothamSemibold
    keybindInfo1.Text = "Close"
    keybindInfo1.TextColor3 = Color3.fromRGB(255, 255, 255)
    keybindInfo1.TextSize = 13.000
    keybindInfo1.TextXAlignment = Enum.TextXAlignment.Left

    local UserInputService = game:GetService("UserInputService")

    local TopBar = sideHeading

    local Camera = workspace:WaitForChild("Camera")

    local DragMousePosition
    local FramePosition
    local Draggable = false
    TopBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            Draggable = true
            DragMousePosition = Vector2.new(input.Position.X, input.Position.Y)
            FramePosition = Vector2.new(shadow.Position.X.Scale, shadow.Position.Y.Scale)
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if Draggable == true then
            local NewPosition = FramePosition + ((Vector2.new(input.Position.X, input.Position.Y) - DragMousePosition) / Camera.ViewportSize)
            shadow.Position = UDim2.new(NewPosition.X, 0, NewPosition.Y, 0)
        end
    end)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            Draggable = false
        end
    end)

    pageFolder.Name = "pageFolder"
    pageFolder.Parent = framesAll

    --
    logoId = logoId or ""
    --

    AtlasLib.Name = "AtlasHubGui"
    AtlasLib.Parent = game:GetService("CoreGui")
    AtlasLib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    MainFrame.Name = "MainFrame"
    MainFrame.Parent = shadow
    MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    MainFrame.Position = UDim2.new(0.048, 0,0.075, 0)
    MainFrame.Size = UDim2.new(0, 553, 0, 452)

    sideHeading.Name = "sideHeading"
    sideHeading.Parent = MainFrame
    sideHeading.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
    sideHeading.Size = UDim2.new(0, 155, 0, 452)
    sideHeading.ZIndex = 2

    MainCorner.CornerRadius = UDim.new(0, 5)
    MainCorner.Name = "MainCorner"
    MainCorner.Parent = sideHeading

    sideCover.Name = "sideCover"
    sideCover.Parent = sideHeading
    sideCover.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
    sideCover.BorderSizePixel = 0
    sideCover.Position = UDim2.new(0.909677446, 0, 0, 0)
    sideCover.Size = UDim2.new(0, 14, 0, 452)

    hubLogo.Name = "hubLogo" -- circle
    hubLogo.Parent = sideHeading
    hubLogo.BackgroundColor3 = MainAtlasGuiColor
    hubLogo.Position = UDim2.new(0.0567928664, 0, 0.0243411884, 0)
    hubLogo.Size = UDim2.new(0, 30, 0, 30)
    hubLogo.ZIndex = 2
    hubLogo.Image = "rbxassetid://"..logoId

    MainCorner_2.CornerRadius = UDim.new(0, 999)
    MainCorner_2.Name = "MainCorner"
    MainCorner_2.Parent = hubLogo

    hubName.Name = "hubName"
    hubName.Parent = sideHeading
    hubName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    hubName.BackgroundTransparency = 1.000
    hubName.Position = UDim2.new(0.290000081, 0, 0.0299999975, 0)
    hubName.Size = UDim2.new(0, 110, 0, 16)
    hubName.ZIndex = 2
    hubName.Font = Enum.Font.GothamSemibold
    hubName.Text = libName
    hubName.TextColor3 = MainAtlasGuiColor
    hubName.TextSize = 14.000
    hubName.TextWrapped = true
    hubName.TextXAlignment = Enum.TextXAlignment.Left

    tabFrame.Name = "tabFrame"
    tabFrame.Parent = sideHeading
    tabFrame.Active = true
    tabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tabFrame.BackgroundTransparency = 1.000
    tabFrame.BorderSizePixel = 0
    tabFrame.Position = UDim2.new(0.0761478543, 0, 0.126385808, 0)
    tabFrame.Size = UDim2.new(0, 135, 0, 347)
    tabFrame.ZIndex = 2
    tabFrame.ScrollBarThickness = 0

    UIListLayout.Parent = tabFrame
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 5)

    userimage.Parent = sideHeading
    userimage.Name = "userimage"
    userimage.BackgroundTransparency = 1.000
    local atlasplaceholder = "rbxassetid://18944193672"
    userimage.Position = hubLogo.Position
    userimage.ZIndex = 3
    userimage.Size = UDim2.new(0, 30, 0, 30)

    local thumbType = Enum.ThumbnailType.HeadShot

    local thumbSize = Enum.ThumbnailSize.Size420x420
    local content, isReady = game:GetService("Players"):GetUserThumbnailAsync(game:GetService("Players").LocalPlayer.UserId, thumbType, thumbSize)

    userimage.Image = (isReady and content) or atlasplaceholder
    if isReady then
        uicorner = Instance.new("UICorner",userimage)
        uicorner.CornerRadius = UDim.new(1, 0)
    end

    usename.Name = "username"
    usename.Parent = sideHeading
    usename.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    usename.BackgroundTransparency = 1.000
    usename.Position = UDim2.new(0.290000081, 0, 0.0700000152, 0)
    usename.Size = UDim2.new(0, 110, 0, 16)
    usename.ZIndex = 2
    usename.Font = Enum.Font.GothamSemibold
    usename.Text = game:GetService("Players").LocalPlayer.Name
    usename.TextColor3 = SecondaryAtlasGuiColor
    usename.TextSize = 12.000
    usename.TextWrapped = true
    usename.TextXAlignment = Enum.TextXAlignment.Left

    MainCorner_3.CornerRadius = UDim.new(0, 5)
    MainCorner_3.Name = "MainCorner"
    MainCorner_3.Parent = MainFrame

    wave.Name = "wave"
    wave.Parent = MainFrame
    wave.BackgroundColor3 = MainAtlasGuiColor
    wave.BackgroundTransparency = 1.000
    wave.Position = UDim2.new(0.0213434305, 0, 0, 0)
    wave.Size = UDim2.new(0.97865659, 0, 0.557522118, 0)
    wave.Image = "http://www.roblox.com/asset/?id=18944211223" 
    wave.ImageColor3 = Color3.fromRGB(255, 255, 255)
    wave.ImageTransparency = 0.100
    wave.ScaleType = Enum.ScaleType.Slice

    MainCorner_4.CornerRadius = UDim.new(0, 3)
    MainCorner_4.Name = "MainCorner"
    MainCorner_4.Parent = wave

    framesAll.Name = "framesAll"
    framesAll.Parent = MainFrame
    framesAll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    framesAll.BackgroundTransparency = 1.000
    framesAll.BorderSizePixel = 0
    framesAll.Position = UDim2.new(0.296564192, 0, 0.0242873337, 0)
    framesAll.Size = UDim2.new(0, 381, 0, 431)
    framesAll.ZIndex = 2

    shadow.Name = "shadow"
    shadow.Parent = AtlasLib
    shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    shadow.BackgroundTransparency = 1.000
    shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    shadow.Position = UDim2.new(0.5,0,0.5,0)
    shadow.Size = UDim2.new(0, 609, 0, 530)
    shadow.ZIndex = 0
    shadow.Image = "http://www.roblox.com/asset/?id=6105530152"
    shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    shadow.ImageTransparency = 0.300

    local TabHandling = {}

    function TabHandling:Tab(tabText, tabId)
        local tabBtnFrame = Instance.new("Frame")
        local tabBtn = Instance.new("TextButton")
        local tabLogo = Instance.new("ImageLabel")

        --
        tabText = tabText or "Tab"
        tabId = tabId or ""

        tabBtnFrame.Name = "tabBtnFrame"
        tabBtnFrame.Parent = tabFrame
        tabBtnFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        tabBtnFrame.BackgroundTransparency = 1.000
        tabBtnFrame.Size = UDim2.new(0, 135, 0, 30)
        tabBtnFrame.ZIndex = 2

        tabBtn.Name = "tabBtn"
        tabBtn.Parent = tabBtnFrame
        tabBtn.BackgroundColor3 = Color3.fromRGB(166, 248, 255)
        tabBtn.BackgroundTransparency = 1.000
        tabBtn.Position = UDim2.new(0.245534033, 0, 0, 0)
        tabBtn.Size = UDim2.new(0, 101, 0, 30)
        tabBtn.ZIndex = 2
        tabBtn.Font = Enum.Font.Gotham
        tabBtn.Text = tabText
        tabBtn.TextColor3 = MainAtlasGuiColor
        tabBtn.TextSize = 14.000
        tabBtn.TextXAlignment = Enum.TextXAlignment.Left

        tabLogo.Name = "tabLogo"
        tabLogo.Position = UDim2.new(-0.007, 0,0.067, 0)
        tabLogo.Parent = tabBtnFrame
        tabLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        tabLogo.BackgroundTransparency = 1.000
        tabLogo.BorderSizePixel = 0
        tabLogo.Size = UDim2.new(0, 25, 0, 25)
        tabLogo.ZIndex = 2
        tabLogo.Image = "rbxassetid://"..tabId
        tabLogo.ImageColor3 = Color3.fromRGB(255, 255, 255)
        --

        local newPage = Instance.new("ScrollingFrame")
        local sectionList = Instance.new("UIListLayout")

        newPage.Name = "newPage"..tabText
        newPage.Parent = pageFolder
        newPage.Active = true
        newPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        newPage.BackgroundTransparency = 1.000
        newPage.BorderSizePixel = 0
        newPage.Size = UDim2.new(1, 0, 1, 0)
        newPage.ZIndex = 2
        newPage.ScrollBarThickness = 0
        newPage.Visible = false

        sectionList.Name = "sectionList"
        sectionList.Parent = newPage
        sectionList.SortOrder = Enum.SortOrder.LayoutOrder
        sectionList.Padding = UDim.new(0, 3)

        
        local function UpdateSize()
            local cS = sectionList.AbsoluteContentSize

            game.TweenService:Create(newPage, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                CanvasSize = UDim2.new(0,cS.X,0,cS.Y)
            }):Play()
        end
        UpdateSize()
        newPage.ChildAdded:Connect(UpdateSize)
        newPage.ChildRemoved:Connect(UpdateSize)

        tabBtn.MouseButton1Click:Connect(function()
            UpdateSize()
            for i,v in next, pageFolder:GetChildren() do
                UpdateSize()
                v.Visible = false
            end
            newPage.Visible = true
            for i,v in next, tabFrame:GetChildren() do
                if v:IsA("Frame") then
                    for i,v in next, v:GetChildren() do
                        if v:IsA("TextButton") then
                            game.TweenService:Create(v, TweenInfo.new(0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
                                TextColor3 = NonSelectedAtlasGuiColor
                            }):Play()
                        end
                        if v:IsA("ImageLabel") then
                            game.TweenService:Create(v, TweenInfo.new(0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
                                ImageColor3 = Color3.fromRGB(59,59,59)
                            }):Play()
                        end
                    end
                end
            end
            game.TweenService:Create(tabLogo, TweenInfo.new(0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
                ImageColor3 = Color3.fromRGB(255,255,255)
            }):Play()
            game.TweenService:Create(tabBtn, TweenInfo.new(0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
                TextColor3 = MainAtlasGuiColor
            }):Play()

        end)

        local sectionHandling = {}

        function sectionHandling:Section(sectionText)
            local sectionFrame = Instance.new("Frame")
            local MainCorner = Instance.new("UICorner")
            local mainSectionHead = Instance.new("Frame")
            local sectionName = Instance.new("TextLabel")
            local sectionExpannd = Instance.new("ImageButton")

            local sectionInnerList = Instance.new("UIListLayout")

            sectionInnerList.Name = "sectionInnerList"
            sectionInnerList.Parent = sectionFrame
            sectionInnerList.HorizontalAlignment = Enum.HorizontalAlignment.Center
            sectionInnerList.SortOrder = Enum.SortOrder.LayoutOrder
            sectionInnerList.Padding = UDim.new(0, 3)
            --
            sectionText = sectionText or "Section"
            local isDropped = false
            --

            sectionFrame.Name = "sectionFrame"
            sectionFrame.Parent = newPage
            sectionFrame.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
            sectionFrame.Position = UDim2.new(0, 0, 7.08064434e-08, 0)
            sectionFrame.Size = UDim2.new(1, 0,0, 36)
            sectionFrame.ZIndex = 2
            sectionFrame.ClipsDescendants = true

            MainCorner.CornerRadius = UDim.new(0, 5)
            MainCorner.Name = "MainCorner"
            MainCorner.Parent = sectionFrame

            mainSectionHead.Name = "mainSectionHead"
            mainSectionHead.Parent = sectionFrame
            mainSectionHead.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            mainSectionHead.BackgroundTransparency = 1.000
            mainSectionHead.BorderSizePixel = 0
            mainSectionHead.Size = UDim2.new(0, 381, 0, 36)

            sectionName.Name = "sectionName"
            sectionName.Parent = mainSectionHead
            sectionName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            sectionName.BackgroundTransparency = 1.000
            sectionName.Position = UDim2.new(0.0236220472, 0, 0, 0)
            sectionName.Size = UDim2.new(0, 302, 0, 36)
            sectionName.Font = Enum.Font.GothamSemibold
            sectionName.Text = sectionText
            sectionName.TextColor3 = MainAtlasGuiColor
            sectionName.TextSize = 14.000
            sectionName.TextXAlignment = Enum.TextXAlignment.Left

            sectionExpannd.Name = "sectionExpannd"
            sectionExpannd.Parent = mainSectionHead
            sectionExpannd.BackgroundTransparency = 1.000
            sectionExpannd.Position = UDim2.new(0.91863519, 0, 0.138888896, 0)
            sectionExpannd.Size = UDim2.new(0, 25, 0, 25)
            sectionExpannd.ZIndex = 2
            sectionExpannd.Image = "rbxassetid://3926305904"
            sectionExpannd.ImageColor3 = MainAtlasGuiColor
            sectionExpannd.ImageRectOffset = Vector2.new(564, 284)
            sectionExpannd.ImageRectSize = Vector2.new(36, 36)
            sectionExpannd.MouseButton1Click:Connect(function()
                if isDropped then
                    isDropped = false
                    sectionFrame:TweenSize(UDim2.new(1, 0,0, 36), "In", "Quint", 0.10)
                    game.TweenService:Create(sectionExpannd, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
                        Rotation = 0
                    }):Play()
                    wait(0.10)
                    UpdateSize()
                else
                    isDropped = true
                    sectionFrame:TweenSize(UDim2.new(1,0, 0, sectionInnerList.AbsoluteContentSize.Y + 5), "In", "Quint", 0.10)
                    game.TweenService:Create(sectionExpannd, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
                        Rotation = 180
                    }):Play()
                    wait(0.10)
                    UpdateSize()
                end
            end)

            local ItemHandling = {}

            function ItemHandling:Button(btnText, callback)
                local ButtonFrame = Instance.new("Frame")
                local TextButton = Instance.new("TextButton")
                local UICorner = Instance.new("UICorner")
                local UIListLayout = Instance.new("UIListLayout")

                --
                btnText = btnText or "TextButton"
                callback = callback or function() end
                --

                ButtonFrame.Name = "ButtonFrame"
                ButtonFrame.Parent = sectionFrame
                ButtonFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                ButtonFrame.BackgroundTransparency = 1.000
                ButtonFrame.Size = UDim2.new(0, 365, 0, 36)

                TextButton.Parent = ButtonFrame
                TextButton.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                TextButton.Size = UDim2.new(0, 365, 0, 36)
                TextButton.ZIndex = 2
                TextButton.AutoButtonColor = false
                TextButton.Text = btnText
                TextButton.Font = Enum.Font.GothamSemibold
                TextButton.TextColor3 = Color3.fromRGB(180, 180, 180)
                TextButton.TextSize = 14.000

                local debounce = false
                local debounce1 = false
                TextButton.MouseButton1Click:Connect(function()
                    if not debounce then
                        debounce = true
                        callback()
                        wait(1)
                        debounce = false
                    end
                end)

                UICorner.CornerRadius = UDim.new(0, 3)
                UICorner.Parent = TextButton

                UIListLayout.Parent = ButtonFrame
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                TextButton.MouseButton1Up:Connect(function()
                    TextButton:TweenSize(UDim2.new(0, 365,0, 36), "InOut", "Quint", 0.18, true)
                    game.TweenService:Create(TextButton, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                        BackgroundColor3 = Color3.fromRGB(18,18,18),
                        TextColor3 = Color3.fromRGB(180, 180, 180)
                    }):Play()
                end)
                
                TextButton.MouseButton1Down:Connect(function()
                    if not debounce1 then
                        debounce1 = true
                        TextButton:TweenSize(UDim2.new(0, 359,0, 30), "InOut", "Quint", 0.18, true)
                        game.TweenService:Create(TextButton, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                            BackgroundColor3 = Color3.fromRGB(101, 168, 157),
                            TextColor3 = Color3.fromRGB(0,0,0)
                        }):Play()
                        wait(1)
                        debounce1 = false
                    end
                end)
                
                TextButton.MouseEnter:Connect(function()
                    game.TweenService:Create(TextButton, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                        BackgroundColor3 = Color3.fromRGB(30, 30, 30),
                        TextColor3 = Color3.fromRGB(250,250,250)
                    }):Play()
                end)
                
                TextButton.MouseLeave:Connect(function()
                    game.TweenService:Create(TextButton, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                        BackgroundColor3 = Color3.fromRGB(18,18,18),
                        TextColor3 = Color3.fromRGB(180, 180, 180)
                    }):Play()
                end)
            end

                function ItemHandling:Toggle(toggInfo, callback)
                    local ToggleFrame = Instance.new("Frame")
                    local toggleFrame = Instance.new("Frame")
                    local UICorner = Instance.new("UICorner")
                    local checkBtn = Instance.new("ImageButton")
                    local toggleInfo = Instance.new("TextLabel")
                    local togInList = Instance.new("UIListLayout")
                    local toginPad = Instance.new("UIPadding")
                    local UIListLayout = Instance.new("UIListLayout")
                    local a 
                    --
                    toggInfo = toggInfo or "Toggle"
                    callback = callback or function() end

                    ToggleFrame.Name = "ToggleFrame"
                    ToggleFrame.Parent = sectionFrame
                    ToggleFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                    ToggleFrame.BackgroundTransparency = 1.000
                    ToggleFrame.Size = UDim2.new(0, 365, 0, 36)

                    toggleFrame.Name = "toggleFrame"
                    toggleFrame.Parent = ToggleFrame
                    toggleFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                    toggleFrame.Size = UDim2.new(0, 365, 0, 36)
                    toggleFrame.ZIndex = 2

                    UICorner.CornerRadius = UDim.new(0, 3)
                    UICorner.Parent = toggleFrame

                    checkBtn.Name = "checkBtn"
                    checkBtn.Parent = toggleFrame
                    checkBtn.BackgroundTransparency = 1.000
                    checkBtn.Position = UDim2.new(0.0191780813, 0, 0.138888896, 0)
                    checkBtn.Size = UDim2.new(0, 25, 0, 25)
                    checkBtn.ZIndex = 2
                    checkBtn.Image = "rbxassetid://3926311105"
                    checkBtn.ImageColor3 = Color3.fromRGB(97, 97, 97)
                    checkBtn.ImageRectOffset = Vector2.new(940, 784)
                    checkBtn.ImageRectSize = Vector2.new(48, 48)

                    toggleInfo.Name = "toggleInfo"
                    toggleInfo.Parent = toggleFrame
                    toggleInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    toggleInfo.BackgroundTransparency = 1.000
                    toggleInfo.Position = UDim2.new(0.104109593, 0, 0, 0)
                    toggleInfo.Size = UDim2.new(0.254794508, 162, 1, 0)
                    toggleInfo.ZIndex = 2
                    toggleInfo.Font = Enum.Font.GothamSemibold
                    toggleInfo.Text = toggInfo
                    toggleInfo.TextColor3 = Color3.fromRGB(97, 97, 97)
                    toggleInfo.TextSize = 14.000
                    toggleInfo.TextXAlignment = Enum.TextXAlignment.Left

                    togInList.Name = "togInList"
                    togInList.Parent = toggleFrame
                    togInList.FillDirection = Enum.FillDirection.Horizontal
                    togInList.SortOrder = Enum.SortOrder.LayoutOrder
                    togInList.VerticalAlignment = Enum.VerticalAlignment.Center
                    togInList.Padding = UDim.new(0, 5)

                    toginPad.Name = "toginPad"
                    toginPad.Parent = toggleFrame
                    toginPad.PaddingLeft = UDim.new(0, 7)

                    UIListLayout.Parent = ToggleFrame
                    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                    UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                    local on = false
                    local togDe = false
                    checkBtn.MouseButton1Click:Connect(function()
                        if not togDe then
                                togDe = true
                                on = not on
                                 callback(on) 
                                if on then
                                    checkBtn.Parent.toggleInfo.TextColor3 = MainAtlasGuiColor
                                    checkBtn.ImageColor3 = MainAtlasGuiColor
                                    checkBtn.ImageRectOffset = Vector2.new(4, 836)
                                    checkBtn.ImageRectSize = Vector2.new(48,48)
                                else
                                    checkBtn.Parent.toggleInfo.TextColor3 = Color3.fromRGB(97, 97, 97)
                                    checkBtn.ImageColor3 = Color3.fromRGB(97, 97, 97)
                                    checkBtn.ImageRectOffset = Vector2.new(940, 784)
                                    checkBtn.ImageRectSize = Vector2.new(48,48)
                                end
                                wait(1)
                                togDe = false
                            end
                    end)

                    checkBtn.MouseButton1Up:Connect(function()
                        checkBtn.Parent:TweenSize(UDim2.new(0, 365,0, 36), "InOut", "Quint", 0.18, true)
                    end)

                    checkBtn.MouseButton1Down:Connect(function()
                        checkBtn.Parent:TweenSize(UDim2.new(0, 359,0, 30), "InOut", "Quint", 0.18, true)
                    end)
                end

                    function ItemHandling:KeyBind(keyInfo, first, callback)
                        --
                        keyInfo = keyInfo or "KeyBind"
                        local oldKey = first.Name
                        callback = callback or function() end

                        local KeyBindFrame = Instance.new("Frame")
                        local keybindFrame = Instance.new("Frame")
                        local UICorner = Instance.new("UICorner")
                        local key = Instance.new("TextButton")
                        local UICorner_2 = Instance.new("UICorner")
                        local keybindInfo = Instance.new("TextLabel")
                        local toginPad = Instance.new("UIPadding")
                        local togInList = Instance.new("UIListLayout")
                        local UIListLayout = Instance.new("UIListLayout")

                        KeyBindFrame.Name = "KeyBindFrame"
                        KeyBindFrame.Parent = sectionFrame
                        KeyBindFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                        KeyBindFrame.BackgroundTransparency = 1.000
                        KeyBindFrame.Size = UDim2.new(0, 365, 0, 36)

                        keybindFrame.Name = "keybindFrame"
                        keybindFrame.Parent = KeyBindFrame
                        keybindFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                        keybindFrame.Size = UDim2.new(0, 365, 0, 36)
                        keybindFrame.ZIndex = 2

                        UICorner.CornerRadius = UDim.new(0, 3)
                        UICorner.Parent = keybindFrame

                        key.Name = "key"
                        key.Parent = keybindFrame
                        key.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
                        key.Position = UDim2.new(0.0250000004, 0, 0.194111288, 0)
                        key.Size = UDim2.new(0, 100, 0, 22)
                        key.ZIndex = 2
                        key.Font = Enum.Font.GothamSemibold
                        key.Text = oldKey
                        key.TextColor3 = MainAtlasGuiColor
                        key.TextSize = 14.000

                        UICorner_2.CornerRadius = UDim.new(0, 5)
                        UICorner_2.Parent = key

                        keybindInfo.Name = "keybindInfo"
                        keybindInfo.Parent = keybindFrame
                        keybindInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        keybindInfo.BackgroundTransparency = 1.000
                        keybindInfo.Position = UDim2.new(0.320547938, 0, 0.166666672, 0)
                        keybindInfo.Size = UDim2.new(0, 239, 0, 22)
                        keybindInfo.ZIndex = 2
                        keybindInfo.Font = Enum.Font.GothamSemibold
                        keybindInfo.Text = keyInfo
                        keybindInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
                        keybindInfo.TextSize = 13.000
                        keybindInfo.TextXAlignment = Enum.TextXAlignment.Left

                        toginPad.Name = "toginPad"
                        toginPad.Parent = keybindFrame
                        toginPad.PaddingLeft = UDim.new(0, 7)

                        togInList.Name = "togInList"
                        togInList.Parent = keybindFrame
                        togInList.FillDirection = Enum.FillDirection.Horizontal
                        togInList.SortOrder = Enum.SortOrder.LayoutOrder
                        togInList.VerticalAlignment = Enum.VerticalAlignment.Center
                        togInList.Padding = UDim.new(0, 8)

                        UIListLayout.Parent = KeyBindFrame
                        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                        UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                        key.MouseButton1Click:connect(function(e) 
                            keybindFrame:TweenSize(UDim2.new(0, 359,0, 30), "InOut", "Quint", 0.18, true)
                            key.Text = ". . ."
                            local a, b = game:GetService('UserInputService').InputBegan:wait();
                            if a.KeyCode.Name ~= "Unknown" then
                                keybindFrame:TweenSize(UDim2.new(0, 365,0, 36), "InOut", "Quint", 0.18, true)
                                key.Text = a.KeyCode.Name
                                oldKey = a.KeyCode.Name;
                            end
                        end)
                        local keyDebounce = false
                        game:GetService("UserInputService").InputBegan:connect(function(current, ok) 
                            if not ok then 
                                if current.KeyCode.Name == oldKey then 
                                    if not keyDebounce then
                                        keyDebounce = true
                                        callback()
                                        keybindFrame:TweenSize(UDim2.new(0, 359,0, 30), "InOut", "Quint", 0.18, true)
                                        wait(0.18)
                                        keybindFrame:TweenSize(UDim2.new(0, 365,0, 36), "InOut", "Quint", 0.18, true)
                                        wait(0.5)
                                        keyDebounce = false
                                    end
                                end
                            end
                        end)
                    end

                        function ItemHandling:TextBox(infbix, textPlace, callback)
                            --
                            infbix = infbix or "TextBox"
                            textPlace = textPlace or "PlaceHolder"
                            callback = callback or function() end
                            --
                            local a
                            local TextBoxFrame = Instance.new("Frame")
                            local textboxFrame = Instance.new("Frame")
                            local UICorner = Instance.new("UICorner")
                            local textboxInfo = Instance.new("TextLabel")
                            local TextBox = Instance.new("TextBox")
                            local UICorner_2 = Instance.new("UICorner")
                            local textboxinlist = Instance.new("UIListLayout")
                            local txtboxpa = Instance.new("UIPadding")
                            local UIListLayout = Instance.new("UIListLayout")

                            TextBoxFrame.Name = "TextBoxFrame"
                            TextBoxFrame.Parent = sectionFrame
                            TextBoxFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                            TextBoxFrame.BackgroundTransparency = 1.000
                            TextBoxFrame.Size = UDim2.new(0, 365, 0, 36)

                            textboxFrame.Name = "textboxFrame"
                            textboxFrame.Parent = TextBoxFrame
                            textboxFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                            textboxFrame.Size = UDim2.new(0, 365, 0, 36)
                            textboxFrame.ZIndex = 2

                            UICorner.CornerRadius = UDim.new(0, 3)
                            UICorner.Parent = textboxFrame

                            textboxInfo.Name = "textboxInfo"
                            textboxInfo.Parent = textboxFrame
                            textboxInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            textboxInfo.BackgroundTransparency = 1.000
                            textboxInfo.Position = UDim2.new(0.320547938, 0, 0.166666672, 0)
                            textboxInfo.Size = UDim2.new(0, 239, 0, 22)
                            textboxInfo.ZIndex = 2
                            textboxInfo.Font = Enum.Font.GothamSemibold
                            textboxInfo.Text = infbix
                            textboxInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
                            textboxInfo.TextSize = 13.000
                            textboxInfo.TextXAlignment = Enum.TextXAlignment.Left

                            TextBox.Parent = textboxFrame
                            TextBox.BackgroundColor3 = MainAtlasGuiColor
                            TextBox.ClipsDescendants = true
                            TextBox.Position = UDim2.new(0.0250000004, 0, 0.194000006, 0)
                            TextBox.Size = UDim2.new(0, 100, 0, 22)
                            TextBox.ZIndex = 2
                            TextBox.ClearTextOnFocus = false
                            TextBox.Font = Enum.Font.GothamSemibold
                            TextBox.PlaceholderColor3 = Color3.fromRGB(24, 24, 24)
                            TextBox.Text = ""
                            TextBox.TextColor3 = Color3.fromRGB(0,0,0)
                            TextBox.TextSize = 13.000
                            TextBox.PlaceholderText = textPlace

                            UICorner_2.CornerRadius = UDim.new(0, 5)
                            UICorner_2.Parent = TextBox

                            textboxinlist.Name = "textboxinlist"
                            textboxinlist.Parent = textboxFrame
                            textboxinlist.FillDirection = Enum.FillDirection.Horizontal
                            textboxinlist.VerticalAlignment = Enum.VerticalAlignment.Center
                            textboxinlist.Padding = UDim.new(0, 8)

                            txtboxpa.Name = "txtboxpa"
                            txtboxpa.Parent = textboxFrame
                            txtboxpa.PaddingLeft = UDim.new(0, 7)

                            UIListLayout.Parent = TextBoxFrame
                            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                            UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                            function anim(property)
                                if property == "Text" then
                                    textboxFrame:TweenSize(UDim2.new(0, 359,0, 30), "InOut", "Quint", 0.18, true)
                                    wait(0.18)
                                    textboxFrame:TweenSize(UDim2.new(0, 365,0, 36), "InOut", "Quint", 0.18, true)
                                end
                            end
                            TextBox.Changed:Connect(anim)

                            TextBox.FocusLost:Connect(function(EnterPressed)
                                if not EnterPressed then return end
                                callback(TextBox.Text)
                                textboxFrame:TweenSize(UDim2.new(0, 359,0, 30), "InOut", "Quint", 0.18, true)
                                wait(0.18)
                                textboxFrame:TweenSize(UDim2.new(0, 365,0, 36), "InOut", "Quint", 0.18, true)
                                TextBox.Text = ""  
                            end)
                        end

                            function ItemHandling:Slider(slidInfo, minvalue, maxvalue, callback)
                                local SliderFrame = Instance.new("Frame")
                                local sliderFrame = Instance.new("Frame")
                                local UICorner = Instance.new("UICorner")
                                local sliderbtn = Instance.new("TextButton")
                                local UICorner_2 = Instance.new("UICorner")
                                local dragSlider = Instance.new("Frame")
                                local UICorner_3 = Instance.new("UICorner")
                                local dragPrecent = Instance.new("TextLabel")
                                local UICorner_4 = Instance.new("UICorner")
                                local triangle = Instance.new("ImageLabel")
                                local precentlist = Instance.new("UIListLayout")
                                local precentPad = Instance.new("UIPadding")
                                local dragList = Instance.new("UIListLayout")
                                local dragPad = Instance.new("UIPadding")
                                local sliderlist_2 = Instance.new("UIListLayout")
                                local sliderlist = Instance.new("UIListLayout")
                                local UIListLayout = Instance.new("UIListLayout")
                                local sliderInfo = Instance.new("TextLabel")
                                --
                                slidInfo = slidInfo or "Slider"
                                minvalue = minvalue or 0
                                maxvalue = maxvalue or 500
                                ---

                                SliderFrame.Name = "SliderFrame"
                                SliderFrame.Parent = sectionFrame
                                SliderFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                                SliderFrame.BackgroundTransparency = 1.000
                                SliderFrame.Size = UDim2.new(0, 365, 0, 36)

                                sliderFrame.Name = "sliderFrame"
                                sliderFrame.Parent = SliderFrame
                                sliderFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                                sliderFrame.Size = UDim2.new(0, 365, 0, 36)
                                sliderFrame.ZIndex = 2

                                UICorner.CornerRadius = UDim.new(0, 3)
                                UICorner.Parent = sliderFrame

                                sliderbtn.Name = "sliderbtn"
                                sliderbtn.Parent = sliderFrame
                                sliderbtn.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
                                sliderbtn.Position = UDim2.new(0.0167808235, 0, 0.416333348, 0)
                                sliderbtn.Size = UDim2.new(0, 150, 0, 6)
                                sliderbtn.ZIndex = 2
                                sliderbtn.AutoButtonColor = false
                                sliderbtn.Font = Enum.Font.SourceSans
                                sliderbtn.Text = ""
                                sliderbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
                                sliderbtn.TextSize = 14.000

                                UICorner_2.CornerRadius = UDim.new(0, 5)
                                UICorner_2.Parent = sliderbtn

                                dragSlider.Name = "dragSlider"
                                dragSlider.Parent = sliderbtn
                                dragSlider.BackgroundColor3 = MainAtlasGuiColor
                                dragSlider.Size = UDim2.new(0, 0, 0, 6)
                                dragSlider.ZIndex = 2

                                UICorner_3.CornerRadius = UDim.new(0, 5)
                                UICorner_3.Parent = dragSlider

                                dragPrecent.Name = "dragPrecent"
                                dragPrecent.Parent = dragSlider
                                dragPrecent.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
                                dragPrecent.BorderSizePixel = 0
                                dragPrecent.Position = UDim2.new(0.727272749, 0, -2, 0)
                                dragPrecent.Size = UDim2.new(0, 44, 0, 15)
                                dragPrecent.ZIndex = 2
                                dragPrecent.Font = Enum.Font.GothamSemibold
                                dragPrecent.Text = "0%"
                                dragPrecent.TextColor3 = Color3.fromRGB(255, 255, 255)
                                dragPrecent.TextSize = 12.000
                                dragPrecent.BackgroundTransparency = 1
                                dragPrecent.TextTransparency = 1

                                UICorner_4.CornerRadius = UDim.new(0, 3)
                                UICorner_4.Parent = dragPrecent

                                triangle.Name = "triangle"
                                triangle.Parent = dragPrecent
                                triangle.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
                                triangle.BackgroundTransparency = 1.000
                                triangle.Size = UDim2.new(0, 44, 0, 39)
                                triangle.ZIndex = 2
                                triangle.Image = "rbxassetid://3926307971"
                                triangle.ImageColor3 = Color3.fromRGB(31, 31, 31)
                                triangle.ImageRectOffset = Vector2.new(324, 524)
                                triangle.ImageRectSize = Vector2.new(36, 36)
                                triangle.ImageTransparency = 1

                                precentlist.Name = "precentlist"
                                precentlist.Parent = dragPrecent
                                precentlist.HorizontalAlignment = Enum.HorizontalAlignment.Right
                                precentlist.SortOrder = Enum.SortOrder.LayoutOrder

                                precentPad.Name = "precentPad"
                                precentPad.Parent = dragPrecent

                                dragList.Name = "dragList"
                                dragList.Parent = dragSlider
                                dragList.HorizontalAlignment = Enum.HorizontalAlignment.Right
                                dragList.SortOrder = Enum.SortOrder.LayoutOrder

                                dragPad.Name = "dragPad"
                                dragPad.Parent = dragSlider
                                dragPad.PaddingLeft = UDim.new(0, -15)
                                dragPad.PaddingRight = UDim.new(0, -20)
                                dragPad.PaddingTop = UDim.new(0, -18)

                                sliderlist.Name = "sliderlist"
                                sliderlist.Parent = sliderbtn
                                sliderlist.SortOrder = Enum.SortOrder.LayoutOrder
                                sliderlist.VerticalAlignment = Enum.VerticalAlignment.Center

                                sliderlist_2.Name = "sliderlist"
                                sliderlist_2.Parent = sliderFrame
                                sliderlist_2.FillDirection = Enum.FillDirection.Horizontal
                                sliderlist_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
                                sliderlist_2.SortOrder = Enum.SortOrder.LayoutOrder
                                sliderlist_2.VerticalAlignment = Enum.VerticalAlignment.Center
                                sliderlist_2.Padding = UDim.new(0, 8)

                                UIListLayout.Parent = SliderFrame
                                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                                UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                                sliderInfo.Name = "sliderInfo"
                                sliderInfo.Parent = sliderFrame
                                sliderInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                sliderInfo.BackgroundTransparency = 1.000
                                sliderInfo.Position = UDim2.new(0.466095895, 0, 0, 0)
                                sliderInfo.Size = UDim2.new(0, 193, 0, 36)
                                sliderInfo.ZIndex = 2
                                sliderInfo.Font = Enum.Font.GothamSemibold
                                sliderInfo.Text = slidInfo
                                sliderInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
                                sliderInfo.TextSize = 14.000
                                sliderInfo.TextXAlignment = Enum.TextXAlignment.Left

                                local mouse = game:GetService("Players").LocalPlayer:GetMouse()
                                local uis = game:GetService("UserInputService")
                                local Value;
        
                                sliderbtn.MouseButton1Down:Connect(function()
                                    Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 150) * dragSlider.AbsoluteSize.X) + tonumber(minvalue)) or 0
                                    pcall(function()
                                        callback(Value)
                                    end)
                                    dragSlider.Size = UDim2.new(0, math.clamp(mouse.X - dragSlider.AbsolutePosition.X, 0, 150), 0, 6)
                                    moveconnection = mouse.Move:Connect(function()
                                        local Percentage = (Value/ maxvalue) * 100
                                        dragPrecent.Text = math.floor(Percentage).."%"
                                        Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 150) * dragSlider.AbsoluteSize.X) + tonumber(minvalue))
                                        pcall(function()
                                            callback(Value)
                                        end)
                                        dragSlider.Size = UDim2.new(0, math.clamp(mouse.X - dragSlider.AbsolutePosition.X, 0, 150), 0, 6)
                                    end)
                                    releaseconnection = uis.InputEnded:Connect(function(Mouse)
                                        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                                            Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 150) * dragSlider.AbsoluteSize.X) + tonumber(minvalue))
                                            pcall(function()
                                                callback(Value)
                                            end)
                                            Percentage = (Value/ maxvalue) * 100
                                            dragPrecent.Text = math.floor(Percentage).."%"
                                            dragSlider.Size = UDim2.new(0, math.clamp(mouse.X - dragSlider.AbsolutePosition.X, 0, 150), 0, 6)
                                            moveconnection:Disconnect()
                                            releaseconnection:Disconnect()
                                        end
                                    end)
                                end)

                                function anim(property)
                                    if property == "Size" then
                                        sliderFrame:TweenSize(UDim2.new(0, 359,0, 30), "InOut", "Quint", 0.18, true)
                                        wait(0.18)
                                        sliderFrame:TweenSize(UDim2.new(0, 365,0, 36), "InOut", "Quint", 0.18, true)
                                    end
                                end
                                dragSlider.Changed:Connect(anim)

                                sliderbtn.MouseButton1Up:Connect(function()
                                    game.TweenService:Create(dragPrecent, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.In),{
                                        BackgroundTransparency = 1,
                                        TextTransparency = 1
                                    }):Play()
                                    game.TweenService:Create(triangle, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.In),{
                                        ImageTransparency = 1
                                    }):Play()
                                end)
                                
                                sliderbtn.MouseButton1Down:Connect(function()
                                    game.TweenService:Create(dragPrecent, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.In),{
                                        BackgroundTransparency = 0,
                                        TextTransparency = 0
                                    }):Play()
                                    game.TweenService:Create(triangle, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.In),{
                                        ImageTransparency = 0
                                    }):Play()
                                end)
                            end

                            function ItemHandling:Label(labelInfo)
                                local TextLabelFrame = Instance.new("Frame")
                                local UIListLayout = Instance.new("UIListLayout")
                                local TextLabel = Instance.new("TextLabel")
                                local UICorner = Instance.new("UICorner")
                                labelInfo = labelInfo or "Text Label"

                                TextLabelFrame.Name = "TextLabelFrame"
                                TextLabelFrame.Parent = sectionFrame
                                TextLabelFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                                TextLabelFrame.BackgroundTransparency = 1.000
                                TextLabelFrame.Size = UDim2.new(0, 365, 0, 36)

                                UIListLayout.Parent = TextLabelFrame
                                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                                UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                                TextLabel.Parent = TextLabelFrame
                                TextLabel.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                                TextLabel.Size = UDim2.new(0, 365, 0, 36)
                                TextLabel.ZIndex = 2
                                TextLabel.Font = Enum.Font.GothamSemibold
                                TextLabel.Text = labelInfo
                                TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                                TextLabel.TextSize = 14.000

                                UICorner.CornerRadius = UDim.new(0, 5)
                                UICorner.Parent = TextLabel
                            end

                            function ItemHandling:Credit(creditWho)
                                local TextLabelFrame = Instance.new("Frame")
                                local UIListLayout = Instance.new("UIListLayout")
                                local TextLabel = Instance.new("TextLabel")
                                local UICorner = Instance.new("UICorner")
                                creditWho = creditWho or "Text Label"

                                TextLabelFrame.Name = "TextLabelFrame"
                                TextLabelFrame.Parent = sectionFrame
                                TextLabelFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                                TextLabelFrame.BackgroundTransparency = 1.000
                                TextLabelFrame.Size = UDim2.new(0, 365, 0, 36)

                                UIListLayout.Parent = TextLabelFrame
                                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                                UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

                                TextLabel.Parent = TextLabelFrame
                                TextLabel.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                                TextLabel.Size = UDim2.new(0, 365, 0, 36)
                                TextLabel.ZIndex = 2
                                TextLabel.Font = Enum.Font.Gotham
                                TextLabel.Text = "  "..creditWho
                                TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                                TextLabel.TextSize = 14.000
                                TextLabel.TextXAlignment = Enum.TextXAlignment.Left

                                UICorner.CornerRadius = UDim.new(0, 5)
                                UICorner.Parent = TextLabel
                            end

                                function ItemHandling:DropDown(dropInfo, list, callback)
                                    callback = callback or function() end
                                    list = list or {}
                                    dropInfo = dropInfo or ""
        
                                    local isDropped1 = false
                                    local DropDownFrame = Instance.new("Frame")
                                    local dropdownFrame = Instance.new("Frame")
                                    local UICorner = Instance.new("UICorner")
                                    local dropdownFrameMain = Instance.new("Frame")
                                    local UICorner_2 = Instance.new("UICorner")
                                    local expand_more = Instance.new("ImageButton")
                                    local dropdownItem1 = Instance.new("TextLabel")
                                    local UIListLayout = Instance.new("UIListLayout")
                                    local UIListLayout_2 = Instance.new("UIListLayout")
                                    local UIListLayout_3 = Instance.new("UIListLayout")

                                    local DropYSize = 36

                                    DropDownFrame.Name = "DropDownFrame"
                                    DropDownFrame.Parent = sectionFrame
                                    DropDownFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                                    DropDownFrame.BackgroundTransparency = 1.000
                                    DropDownFrame.Position = UDim2.new(0.0209973752, 0, 0.439849585, 0)
                                    DropDownFrame.Size = UDim2.new(0, 365, 0, 36)
                                    DropDownFrame.ClipsDescendants = true

                                    dropdownFrame.Name = "dropdownFrame"
                                    dropdownFrame.Parent = DropDownFrame
                                    dropdownFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                                    dropdownFrame.Size = UDim2.new(1, 0, 1, 0)
                                    dropdownFrame.ZIndex = 2

                                    UICorner.CornerRadius = UDim.new(0, 3)
                                    UICorner.Parent = dropdownFrame

                                    dropdownFrameMain.Name = "dropdownFrameMain"
                                    dropdownFrameMain.Parent = dropdownFrame
                                    dropdownFrameMain.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                                    dropdownFrameMain.Size = UDim2.new(0, 365, 0, 36)
                                    dropdownFrameMain.ZIndex = 2

                                    UICorner_2.CornerRadius = UDim.new(0, 3)
                                    UICorner_2.Parent = dropdownFrameMain

                                    expand_more.Name = "expand_more"
                                    expand_more.Parent = dropdownFrameMain
                                    expand_more.BackgroundTransparency = 1.000
                                    expand_more.Position = UDim2.new(0.91900003, 0, 0.138999999, 0)
                                    expand_more.Size = UDim2.new(0, 25, 0, 25)
                                    expand_more.ZIndex = 2
                                    expand_more.Image = "rbxassetid://3926305904"
                                    expand_more.ImageColor3 = MainAtlasGuiColor
                                    expand_more.ImageRectOffset = Vector2.new(564, 284)
                                    expand_more.ImageRectSize = Vector2.new(36, 36)
                                    expand_more.MouseButton1Click:Connect(function()
                                        if isDropped1 then
                                            isDropped1 = false
                                            DropDownFrame:TweenSize(UDim2.new(0, 365, 0, 36), "In", "Quint", 0.10)
                                            game.TweenService:Create(expand_more, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
                                                Rotation = 0
                                            }):Play()
                                            wait(0.10)
                                            sectionFrame:TweenSize(UDim2.new(1,0, 0, sectionInnerList.AbsoluteContentSize.Y + 5), "In", "Quint", 0.10)
                                            wait(0.10)
                                            UpdateSize()
                                        else
                                            isDropped1 = true
                                            DropDownFrame:TweenSize(UDim2.new(0, 365, 0, DropYSize), "In", "Quint", 0.10)
                                            game.TweenService:Create(expand_more, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
                                                Rotation = 180
                                            }):Play()
                                            wait(0.10)
                                            sectionFrame:TweenSize(UDim2.new(1,0, 0, sectionInnerList.AbsoluteContentSize.Y + 5), "In", "Quint", 0.10)
                                            wait(0.10)
                                            UpdateSize()
                                        end
                                    end)

                                    dropdownItem1.Name = "dropdownItem1"
                                    dropdownItem1.Parent = dropdownFrameMain
                                    dropdownItem1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                    dropdownItem1.BackgroundTransparency = 1.000
                                    dropdownItem1.Position = UDim2.new(0.0250000004, 0, 0.0833333358, 0)
                                    dropdownItem1.Size = UDim2.new(0, 293, 0, 30)
                                    dropdownItem1.ZIndex = 2
                                    dropdownItem1.Font = Enum.Font.GothamSemibold
                                    dropdownItem1.Text = dropInfo
                                    dropdownItem1.TextColor3 = MainAtlasGuiColor
                                    dropdownItem1.TextSize = 14.000
                                    dropdownItem1.TextXAlignment = Enum.TextXAlignment.Left

                                    UIListLayout.Parent = dropdownFrame
                                    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                                    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                                    UIListLayout.Padding = UDim.new(0, 3)

                                    UIListLayout_2.Parent = optionBtnFrame
                                    UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
                                    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
                                    UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

                                    UIListLayout_3.Parent = DropDownFrame
                                    UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
                                    UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
                                    UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
                                    UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center

                                    for i,v in next, list do
                                        local optionBtnFrame = Instance.new("Frame")
                                        local optionBtn1 = Instance.new("TextButton")
                                        local UICorner_3 = Instance.new("UICorner")

                                        optionBtnFrame.Name = "optionBtnFrame"
                                        optionBtnFrame.Parent = dropdownFrame
                                        optionBtnFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                        optionBtnFrame.BackgroundTransparency = 1.000
                                        optionBtnFrame.BorderSizePixel = 0
                                        optionBtnFrame.Size = UDim2.new(0, 339, 0, 34)
    
                                        optionBtn1.Name = "optionBtn1"
                                        optionBtn1.Parent = optionBtnFrame
                                        optionBtn1.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
                                        optionBtn1.Size = UDim2.new(0, 339, 0, 34)
                                        optionBtn1.ZIndex = 2
                                        optionBtn1.AutoButtonColor = false
                                        optionBtn1.Font = Enum.Font.GothamSemibold
                                        optionBtn1.Text = "  "..v
                                        optionBtn1.TextColor3 = Color3.fromRGB(255,255,255)
                                        optionBtn1.TextSize = 14.000
                                        optionBtn1.TextXAlignment = Enum.TextXAlignment.Left
    
                                        UICorner_3.CornerRadius = UDim.new(0, 3)
                                        UICorner_3.Parent = optionBtn1

                                        DropYSize = DropYSize + 40
                                        optionBtn1.MouseButton1Click:Connect(function()
                                            callback(v)
                                            dropdownItem1.Text = v
                                            DropDownFrame:TweenSize(UDim2.new(0, 365, 0, 36), "In", "Quint", 0.10)
                                            wait()
                                            isDropped = false
                                            wait(0.10)
                                            sectionFrame:TweenSize(UDim2.new(1,0, 0, sectionInnerList.AbsoluteContentSize.Y + 5), "In", "Quint", 0.10)
                                            wait(0.10)
                                            UpdateSize()
                                            game.TweenService:Create(expand_more, TweenInfo.new(0.10, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
                                                Rotation = 0
                                            }):Play()
                                        end)
                                        optionBtn1.MouseButton1Down:Connect(function()
                                            optionBtn1:TweenSize(UDim2.new(0, 335,0, 30), "InOut", "Quint", 0.12, true)
                                            game.TweenService:Create(optionBtn1, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                                                BackgroundColor3 = Color3.fromRGB(21,21,21),
                                                TextColor3 = Color3.fromRGB(180, 180, 180)
                                            }):Play()
                                        end)
                                        
                                        optionBtn1.MouseButton1Up:Connect(function()
                                            optionBtn1:TweenSize(UDim2.new(0, 339,0, 34), "InOut", "Quint", 0.12, true)
                                            game.TweenService:Create(optionBtn1, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                                                BackgroundColor3 = Color3.fromRGB(101, 168, 157),
                                                TextColor3 = Color3.fromRGB(0,0,0)
                                            }):Play()
                                        end)
                                        
                                        optionBtn1.MouseEnter:Connect(function()
                                            game.TweenService:Create(optionBtn1, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                                                BackgroundColor3 = Color3.fromRGB(15, 15, 15),
                                                TextColor3 = Color3.fromRGB(250,250,250)
                                            }):Play()
                                        end)
                                        
                                        optionBtn1.MouseLeave:Connect(function()
                                            game.TweenService:Create(optionBtn1, TweenInfo.new(0.18, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{
                                                BackgroundColor3 = Color3.fromRGB(21, 21, 21),
                                                TextColor3 = NonSelectedAtlasGuiColor
                                            }):Play()
                                        end)
                                end
                            end
                        
            return ItemHandling
        end
        return sectionHandling
    end
    return TabHandling
end
local currentlynotifying = false
function CreateNotification(title,description,time)
    local NotifGui = game:GetObjects("rbxassetid://18968086715")[1]
    NotifGui.Parent = game:GetService("CoreGui")
    local Frame = NotifGui.Main
    Frame.ZIndex = 60
    local Button = NotifGui.Main.Close
    local Edge = NotifGui.Main.Edge
    local Description = NotifGui.Main.Description
    local Title = NotifGui.Main.Title
    local Signature = NotifGui.Main.Signature

    Title.Text = title
    Description.Text = description
    currentlynotifying = true
    local tweenspeed = 1

    local showTween = game:GetService("TweenService"):Create(Frame, TweenInfo.new(tweenspeed, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
        Position = UDim2.new(0.48, 0,0.9, 0)
    })
    local hideTween = game:GetService("TweenService"):Create(Frame, TweenInfo.new(tweenspeed, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
        Position = UDim2.new(0.48, 0, 1.8, 0)
    })

    showTween:Play()
    
    local function onClose()
        currentlynotifying = false
        hideTween:Play()
        hideTween.Completed:Connect(function()
            NotifGui:Destroy()
        end)
    end

    Button.MouseButton1Click:Connect(onClose)
    
    task.delay(time, function()
        if currentlynotifying then
            onClose() -- Automatically close after the specified time
        end
    end)
    
end

loadingtween.Completed:Wait()
local newTransparency =1
local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
local loadingtween2 = game.TweenService:Create(loadingimage, tweenInfo, {ImageTransparency = newTransparency})
loadingtween2:Play()
loadingtween2.Completed:Wait()
AtlasLoading:Destroy()
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
local whitelistedtable = loadstring(game:HttpGet("https://raw.githubusercontent.com/supersixteen21/dsadewfewniergjsfo/main/whitelist"))()
local blacklistedtable = loadstring(game:HttpGet("https://raw.githubusercontent.com/supersixteen21/dsadewfewniergjsfo/main/blacklist"))()
local whitelisted = false
local blacklisted = false
local function escapePercent(str) 
   local newstring  = str:gsub('[%p%c%s]', '')
   return newstring
end

local function parseDate(dateString)
    local month, day, year = dateString:match("(%d+)/(%d+)/(%d+)")
    return {
        year = tonumber(year),
        month = tonumber(month),
        day = tonumber(day),
    }
end

local function toTimestamp(dateTable)
    return os.time({
        year = dateTable.year,
        month = dateTable.month,
        day = dateTable.day,
        hour = 0,
        min = 0,
        sec = 0
    })
end
local userid = game:GetService("Players").LocalPlayer.UserId
local stringedid = tostring(userid)
for i, v in pairs(blacklistedtable) do
    originalv = v
    v = escapePercent(v)
    if string.find(tostring(v),stringedid) then
        blacklisted = true
        -- Remove HWID and any preceding characters from the string
        local date = string.match(originalv, ":(.*)")
        local dateToCompare = parseDate(date)
        local dateToCompareTimestamp = toTimestamp(dateToCompare)

        -- Current date
        local currentDate = os.date("*t")
        local currentDateTimestamp = toTimestamp({
            year = currentDate.year,
            month = currentDate.month,
            day = currentDate.day
        })
        -- Compare dates
        if currentDateTimestamp > dateToCompareTimestamp then
            blacklisted = false
            warn("Your Blacklist ended on "..tostring(date))
        else
            local player = game:GetService("Players").LocalPlayer
            player:Kick("You are blacklisted from using Atlas Gold! Join https://discord.gg/BngS4PFTDK to appeal")
            break
        end
    end
end
for i, v in pairs(whitelistedtable) do
    originalv = v
    v = escapePercent(v)
    HWID = escapePercent(v)
    if string.find(tostring(v),stringedid) then
        whitelisted = true
        -- Remove HWID and any preceding characters from the string
        local date = string.match(originalv, ":(.*)")
        local dateToCompare = parseDate(date)
        local dateToCompareTimestamp = toTimestamp(dateToCompare)

        -- Current date
        local currentDate = os.date("*t")
        local currentDateTimestamp = toTimestamp({
            year = currentDate.year,
            month = currentDate.month,
            day = currentDate.day
        })
        -- Compare dates
        if currentDateTimestamp > dateToCompareTimestamp then
            whitelisted = false
            warn("Your Gold Subscription Expired on "..tostring(date))
            CreateNotification("Gold Expired","Your Gold Subscription Expired on "..tostring(date),3)
        else
            print("You are whitelisted in the premium Database")
            break
        end
    end
end
local linktokey = "Link Api Down"
local connectomasterkeyrobloxatlashub = ""
if whitelisted == false then
    local ratelimited = false
    warn("Not Gold Member please do our key system")
    -- Plato configuration
    local accountId = 52376; -- Plato account id [IMPORTANT]
    local allowPassThrough = false; -- Allow user through if error occurs, may reduce security
    local allowKeyRedeeming = false; -- Automatically check keys to redeem if valid
    local useDataModel = false;

    -- Plato callbacks
    local onMessage = function(message)
        print(message)
    end;

    -- Plato internals [START]
    local fRequest, fStringFormat, fSpawn, fWait = request or http.request or http_request or syn.request, string.format, task.spawn, task.wait;
    local localPlayerId = game:GetService("Players").LocalPlayer.UserId;
    local rateLimit, rateLimitCountdown, errorWait = false, 0, false;
    -- Plato internals [END]

    -- Plato global functions [START]
    function getLink()
        return fStringFormat("https://gateway.platoboost.com/a/%i?id=%i", accountId, localPlayerId);
    end;
    linktokey = getLink()

    function verify(key)
        if errorWait or rateLimit then 
            return false;
        end;

        onMessage("Verifying Key...");

        if (useDataModel) then
            local status, result = pcall(function() 
                return game:HttpGetAsync(fStringFormat("https://api-gateway.platoboost.com/v1/public/whitelist/%i/%i?key=%s", accountId, localPlayerId, key));
            end);
            
            if status then
                if string.find(result, "true") then
                    onMessage("Successfully whitelisted!");
                    return true;
                elseif string.find(result, "false") then
                    if allowKeyRedeeming then
                        local status1, result1 = pcall(function()
                            return game:HttpPostAsync(fStringFormat("https://api-gateway.platoboost.com/v1/authenticators/redeem/%i/%i/%s", accountId, localPlayerId, key), {});
                        end);

                        if status1 then
                            if string.find(result1, "true") then
                                onMessage("Successfully redeemed key!");
                                return true;
                            end;
                        end;
                    end;
                    
                    onMessage("Key is invalid!");
                    return false;
                else
                    return false;
                end;
            else
                onMessage("An error occured while contacting the server!");
                return allowPassThrough;
            end;
        else
            local status, result = pcall(function() 
                return fRequest({
                    Url = fStringFormat("https://api-gateway.platoboost.com/v1/public/whitelist/%i/%i?key=%s", accountId, localPlayerId, key),
                    Method = "GET"
                });
            end);
            if status then
                if result.StatusCode == 200 then
                    if string.find(result.Body, "true") then
                        return true; --  key works
                    else
                        return false; -- key doesnt work
                    end;
                elseif result.StatusCode == 204 then
                    onMessage("Account wasn't found, check accountId");
                    return false;
                elseif result.StatusCode == 429 then
                    if not rateLimit then 
                        rateLimit = true;
                        rateLimitCountdown = 10;
                        fSpawn(function() 
                            while rateLimit do
                                ratelimited = true
                                return false;
                                
                            end;
                        end); 
                    end;
                else
                    return allowPassThrough;
                end;    
            else
                return allowPassThrough;
            end;
        end;
    end;
    precheck = verify("test")
    if precheck == true then return Atlas1 end

    setclipboard(linktokey)
    local KeyGui = game:GetObjects("rbxassetid://18963149288")[1]
    KeyGui.Parent = game:GetService("CoreGui")
    image = KeyGui.Shadow.Main.Submit
    entertextbox = KeyGui.Shadow.Main['Key Input']
    getkey = KeyGui.Shadow.Main.GetKey
    getdiscord  = KeyGui.Shadow.Main.Discord
    local selectedkey = 0
    local masterkeyu09213102u9409u12040u580385891289521y8249889y4189y412841 = "audsdhufduwsfvewy_fgerwvgyewvuygcvetwyvtfcdetrqwycdtrfqwatxdsadgysagsuqwuoidequidwqodnwqnodsqoxnsakxcsiufcdneuifvber8ewy3iufb32932893r7r818fbv3712e1ne2nd19n99dw1fbd9c81f838f3eb87fc819drf319r1y67r876g3216r217re72176dvb2176dv716276d21v76d16273ydh1vywh"
    getdiscord.MouseButton1Click:Connect(function()
        setclipboard("https://discord.gg/ubx3NJTtS7")
        entertextbox.Text = "Discord Link copied to your clipboard! Or Go to https://discord.gg/ubx3NJTtS7"
        entertextbox.TextColor3 = Color3.fromRGB(0, 85, 255)
        task.wait(4)
        entertextbox.TextColor3 = Color3.fromRGB(36,36,36)
        entertextbox.Text = linktokey
    end)
    getkey.MouseButton1Click:Connect(function()
        setclipboard(linktokey)
        entertextbox.Text = "Key Link copied to your clipboard! Or go to "..tostring(linktokey)
        entertextbox.TextColor3 = Color3.fromRGB(0, 85, 255)
        task.wait(4)
        entertextbox.TextColor3 = Color3.fromRGB(36,36,36)
        entertextbox.Text = linktokey
    end)
    image.MouseButton1Click:Connect(function()
        selectedkey = entertextbox.Text
        selectedkey = string.gsub(selectedkey, "^%s*", "")
        local check = verify(selectedkey)
        local add = ""
        if check ~= true then
            add = "not "
        end
        warn("Your key is "..add.."valid")
        if check == true then
            entertextbox.Text = "Correct Key!"
            entertextbox.TextColor3 = Color3.fromRGB(85,255,0)
            connectomasterkeyrobloxatlashub = "audsdhufduwsfvewy_fgerwvgyewvuygcvetwyvtfcdetrqwycdtrfqwatxdsadgysagsuqwuoidequidwqodnwqnodsqoxnsakxcsiufcdneuifvber8ewy3iufb32932893r7r818fbv3712e1ne2nd19n99dw1fbd9c81f838f3eb87fc819drf319r1y67r876g3216r217re72176dvb2176dv716276d21v76d16273ydh1vywh"
            task.wait(1)
            KeyGui:Destroy()
        else
            keyinputed = selectedkey
            if ratelimited == false then
                entertextbox.Text =  "Incorrect Key!"
            else
                entertextbox.Text = "Rate Limited! Please cool down..."
            end
            entertextbox.TextColor3 = Color3.fromRGB(255,0,0)
            setclipboard(linktokey)
            task.wait(1)
            entertextbox.TextColor3 = Color3.fromRGB(36,36,36)
            entertextbox.Text = linktokey
        end
    end)
    while connectomasterkeyrobloxatlashub ~= masterkeyu09213102u9409u12040u580385891289521y8249889y4189y412841 do
        task.wait(1)
    end
end
connectomasterkeyrobloxatlashub = ""
return Atlas1
