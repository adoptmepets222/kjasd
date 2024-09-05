function generateRandomString(length)
  local charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
  local result = {}
  for i = 1, length do
      local randomIndex = math.random(1, #charset)
      result[i] = charset:sub(randomIndex, randomIndex)
  end
  return table.concat(result)
end

local randomString = generateRandomString(10)
local UIParent = Instance.new("SkateboardController",game:GetService("CoreGui")) 
UIParent.Name = randomString

local Silver = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.new(0.8352941274642944, 0.8352941274642944, 0.8352941274642944)),
	ColorSequenceKeypoint.new(0.284722238779068, Color3.new(0.7333333492279053, 0.7843137383460999, 0.8352941274642944)),
	ColorSequenceKeypoint.new(0.4982638955116272, Color3.new(0.3333333432674408, 0.3333333432674408, 0.43921568989753723)),
	ColorSequenceKeypoint.new(0.5034722089767456, Color3.new(1, 1, 1)),
	ColorSequenceKeypoint.new(0.7152777910232544, Color3.new(0.7333333492279053, 0.7843137383460999, 0.8352941274642944)),
	ColorSequenceKeypoint.new(1, Color3.new(0.8352941274642944, 0.8352941274642944, 0.8352941274642944)),
})
local Zebra = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
	ColorSequenceKeypoint.new(0.015625, Color3.new(1, 1, 1)),
	ColorSequenceKeypoint.new(0.1458333283662796, Color3.new(1, 1, 1)),
	ColorSequenceKeypoint.new(0.2482638955116272, Color3.new(1, 1, 1)),
	ColorSequenceKeypoint.new(0.3559027910232544, Color3.new(1, 1, 1)),
	ColorSequenceKeypoint.new(0.4970000088214874, Color3.new(1, 1, 1)),
	ColorSequenceKeypoint.new(0.503000020980835, Color3.new(0, 0, 0)),
	ColorSequenceKeypoint.new(0.647569477558136, Color3.new(0, 0, 0)),
	ColorSequenceKeypoint.new(0.7829861044883728, Color3.new(0, 0, 0)),
	ColorSequenceKeypoint.new(0.890625, Color3.new(0, 0, 0)),
	ColorSequenceKeypoint.new(0.9774305820465088, Color3.new(0, 0, 0)),
	ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0)),
})
local Rainbow = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0)),
	ColorSequenceKeypoint.new(0.1510416716337204, Color3.new(0.615686297416687, 0, 1)),
	ColorSequenceKeypoint.new(0.3072916567325592, Color3.new(0.06666667014360428, 0, 1)),
	ColorSequenceKeypoint.new(0.4965277910232544, Color3.new(0, 1, 1)),
	ColorSequenceKeypoint.new(0.6649305820465088, Color3.new(0.01568627543747425, 1, 0)),
	ColorSequenceKeypoint.new(0.8385416865348816, Color3.new(1, 1, 0)),
	ColorSequenceKeypoint.new(1, Color3.new(1, 0, 0)),
})
local Oceanic = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.new(0, 0.45098039507865906, 1)),
	ColorSequenceKeypoint.new(0.125, Color3.new(1, 0, 0)),
	ColorSequenceKeypoint.new(0.2552083432674408, Color3.new(0, 0.45098039507865906, 1)),
	ColorSequenceKeypoint.new(0.3767361044883728, Color3.new(1, 0, 0)),
	ColorSequenceKeypoint.new(0.5, Color3.new(0, 0.45098039507865906, 1)),
	ColorSequenceKeypoint.new(0.6197916865348816, Color3.new(1, 0, 0)),
	ColorSequenceKeypoint.new(0.7374784350395203, Color3.new(0, 0.45098039507865906, 1)),
	ColorSequenceKeypoint.new(0.8680555820465088, Color3.new(1, 0, 0)),
	ColorSequenceKeypoint.new(1, Color3.new(0, 0.45098039507865906, 1)),
})
local Matrix = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.new(0.243137, 0.937254, 0.007843)),
	ColorSequenceKeypoint.new(0.015625, Color3.new(0.243137, 0.937254, 0.007843)),
	ColorSequenceKeypoint.new(0.1458333283662796, Color3.new(0.243137, 0.937254, 0.007843)),
	ColorSequenceKeypoint.new(0.2482638955116272, Color3.new(0.243137, 0.937254, 0.007843)),
	ColorSequenceKeypoint.new(0.3559027910232544, Color3.new(0.243137, 0.937254, 0.007843)),
	ColorSequenceKeypoint.new(0.4970000088214874, Color3.new(0.243137, 0.937254, 0.007843)),
	ColorSequenceKeypoint.new(0.503000020980835, Color3.new(0, 0, 0)),
	ColorSequenceKeypoint.new(0.647569477558136, Color3.new(0, 0, 0)),
	ColorSequenceKeypoint.new(0.7829861044883728, Color3.new(0, 0, 0)),
	ColorSequenceKeypoint.new(0.890625, Color3.new(0, 0, 0)),
	ColorSequenceKeypoint.new(0.9774305820465088, Color3.new(0, 0, 0)),
	ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0)),
})
local Lava = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0)),
	ColorSequenceKeypoint.new(0.125, Color3.new(1, 0.7843137383460999, 0)),
	ColorSequenceKeypoint.new(0.2552083432674408, Color3.new(1, 0, 0)),
	ColorSequenceKeypoint.new(0.3767361044883728, Color3.new(1, 0.7843137383460999, 0)),
	ColorSequenceKeypoint.new(0.5, Color3.new(1, 0, 0)),
	ColorSequenceKeypoint.new(0.6197916865348816, Color3.new(1, 0.7843137383460999, 0)),
	ColorSequenceKeypoint.new(0.7378472089767456, Color3.new(1, 0, 0)),
	ColorSequenceKeypoint.new(0.8680555820465088, Color3.new(1, 0.7843137383460999, 0)),
	ColorSequenceKeypoint.new(1, Color3.new(1, 0, 0)),
})
local Ice = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(109, 210, 212)),
	ColorSequenceKeypoint.new(0.171875, Color3.new(0.8784313797950745, 0.9411764740943909, 1)),
	ColorSequenceKeypoint.new(0.3177083432674408, Color3.fromRGB(140, 208, 209)),
	ColorSequenceKeypoint.new(0.4670138955116272, Color3.fromRGB(109, 210, 212)),
	ColorSequenceKeypoint.new(0.4982638955116272, Color3.fromRGB(109, 210, 212)),
	ColorSequenceKeypoint.new(0.5034722089767456, Color3.new(1, 1, 1)),
	ColorSequenceKeypoint.new(0.71875, Color3.new(0.7058823704719543, 1, 0.9529411792755127)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(109, 210, 212)),
})
local Green = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 0)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 0)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 0))
})
local GreenTransparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.7, 1),
	NumberSequenceKeypoint.new(1, 1)
})
local Gold = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.new(0.8352941274642944, 0.6823529601097107, 0.21960784494876862)),
	ColorSequenceKeypoint.new(0.220486119389534, Color3.new(0.8352941274642944, 0.6823529601097107, 0.21960784494876862)),
	ColorSequenceKeypoint.new(0.3680555522441864, Color3.new(0.7803921699523926, 0.5960784554481506, 0.0470588244497776)),
	ColorSequenceKeypoint.new(0.4982638955116272, Color3.new(0.8509804010391235, 0.6980392336845398, 0.0117647061124444)),
	ColorSequenceKeypoint.new(0.5034722089767456, Color3.new(1, 0.9254902005195618, 0.5058823823928833)),
	ColorSequenceKeypoint.new(0.6927083134651184, Color3.new(0.8352941274642944, 0.6823529601097107, 0.21960784494876862)),
	ColorSequenceKeypoint.new(0.7916666865348816, Color3.new(0.8352941274642944, 0.6823529601097107, 0.21960784494876862)),
	ColorSequenceKeypoint.new(1, Color3.new(0.8352941274642944, 0.6823529601097107, 0.21960784494876862)),
})
local Ghost = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
	ColorSequenceKeypoint.new(0.5, Color3.new(0.7098039388656616, 0.7215686440467834, 0.7372549176216125)),
	ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1)),
})
local GhostTransparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.09894459694623947, 0),
	NumberSequenceKeypoint.new(0.5, 1),
	NumberSequenceKeypoint.new(0.8997361660003662, 0),
	NumberSequenceKeypoint.new(1, 0),
})
local Fire = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.new(1, 0.917647, 0)),
	ColorSequenceKeypoint.new(0.1510416716337204, Color3.new(1, 0.917647, 0)),
	ColorSequenceKeypoint.new(0.3072916567325592, Color3.new(1, 0.6, 0)),
	ColorSequenceKeypoint.new(0.4965277910232544, Color3.new(0.545098, 0.368627, 0.035294)),
	ColorSequenceKeypoint.new(0.6649305820465088, Color3.new(1, 0.666666, 0)),
	ColorSequenceKeypoint.new(0.8385416865348816, Color3.new(0.678431, 0.490196, 0.113725)),
	ColorSequenceKeypoint.new(1, Color3.new(1, 0.917647, 0)),
})
local Death = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.new(0.6, 0, 0)),
	ColorSequenceKeypoint.new(0.125, Color3.new(1, 0, 0)),
	ColorSequenceKeypoint.new(0.2552083432674408, Color3.new(0.411764, 0, 0)),
	ColorSequenceKeypoint.new(0.3767361044883728, Color3.new(0.3, 0, 0)),
	ColorSequenceKeypoint.new(0.5, Color3.new(0.690196, 0, 0)),
	ColorSequenceKeypoint.new(0.6197916865348816, Color3.new(0.3, 0, 0)),
	ColorSequenceKeypoint.new(0.7378472089767456, Color3.new(1, 0, 0)),
	ColorSequenceKeypoint.new(0.8680555820465088, Color3.new(0.3, 0, 0)),
	ColorSequenceKeypoint.new(1, Color3.new(0.6, 0, 0))
})
local Chrome = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.new(0, 0.062745101749897, 0.3529411852359772)),
	ColorSequenceKeypoint.new(0.0677083358168602, Color3.new(0.686274528503418, 0.7882353067398071, 0.8352941274642944)),
	ColorSequenceKeypoint.new(0.171875, Color3.new(0.8784313797950745, 0.9411764740943909, 1)),
	ColorSequenceKeypoint.new(0.3177083432674408, Color3.new(1, 0.7058823704719543, 1)),
	ColorSequenceKeypoint.new(0.4670138955116272, Color3.new(0.2666666805744171, 0, 0.49803921580314636)),
	ColorSequenceKeypoint.new(0.4982638955116272, Color3.new(0.019607843831181526, 0.003921568859368563, 0.03529411926865578)),
	ColorSequenceKeypoint.new(0.5034722089767456, Color3.new(1, 1, 1)),
	ColorSequenceKeypoint.new(0.71875, Color3.new(0.7058823704719543, 1, 0.9529411792755127)),
	ColorSequenceKeypoint.new(0.9409722089767456, Color3.new(0.15203255414962769, 0.6226686239242554, 0.6860832571983337)),
	ColorSequenceKeypoint.new(1, Color3.new(0, 0.062745101749897, 0.3529411852359772)),
})
local Bubblegum = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.new(0.9529411792755127, 0.3960784375667572, 0.6941176652908325)),
	ColorSequenceKeypoint.new(0.5, Color3.new(1, 0.6549019813537598, 0.8901960849761963)),
	ColorSequenceKeypoint.new(1, Color3.new(0.9529411792755127, 0.3960784375667572, 0.6941176652908325)),
})
local BubblegumTransparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.09894459694623947, 0),
	NumberSequenceKeypoint.new(0.5, 1),
	NumberSequenceKeypoint.new(0.8997361660003662, 0),
	NumberSequenceKeypoint.new(1, 0),
})


local hook = hookmetamethod
if hook then
  print("Bypass Loaded")
end
local OldAtlasGui = UIParent:FindFirstChild("AtlasLoadingWizard")
if OldAtlasGui then
    OldAtlasGui:Destroy()
end
local OldAtlasGui = UIParent:FindFirstChild("AtlasKeySystem")
if OldAtlasGui then
    OldAtlasGui:Destroy()
end

local NotifGui = UIParent:FindFirstChild("AtlasHubNotifGui")
if NotifGui then
    NotifGui:Destroy()
end

local NotifGui2 = UIParent:FindFirstChild("AtlasMobileQBEnable")
if NotifGui2 then
    NotifGui:Destroy()
end


local AtlasLoading = game:GetObjects("rbxassetid://102129398182708")[1]
local closevalue = AtlasLoading.Background.Logo.Close

local Frame = AtlasLoading.Background
Frame.Position = UDim2.new(0.496, 0,1.495, 0)
local hideTween2 = game:GetService("TweenService"):Create(Frame, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
	Position = UDim2.new(0.496, 0,1.495, 0)
	})
local showTween2 = game:GetService("TweenService"):Create(Frame, TweenInfo.new(1, Enum.EasingStyle.Bounce, Enum.EasingDirection.In), {
	Position = UDim2.new(0.496, 0,0.495, 0)
})

showTween2:Play()
local LoadingConnection = closevalue.Changed:Connect(function(value)
	if value == true then
		hideTween2:Play()
	end
end)

local BackgroundGradient2  = AtlasLoading.Background.UIStroke.UIGradient
local LoadingGradient2 = AtlasLoading.Background.LoadingText.UIGradient
local logo2 = AtlasLoading.Background.Logo

BackgroundGradient2.Color = Rainbow
LoadingGradient2.Color = Silver


local RunService = game:GetService("RunService")

local RotationSpeed2 = 2

local function backgroundhandler2()
	BackgroundGradient2.Rotation += RotationSpeed2
	if BackgroundGradient2.Rotation == 180 then
		BackgroundGradient2.Rotation = -180
	end
end
local function loadinghandler2()
	LoadingGradient2.Rotation += RotationSpeed2
	if LoadingGradient2.Rotation == 180 then
		LoadingGradient2.Rotation = -180
	end
end
local increasingloading = true
local function logohandler2()
	if increasingloading == true then
		logo2.ImageTransparency += 0.01
	else
		logo2.ImageTransparency -= 0.01
	end
	if logo2.ImageTransparency == 1 then
		increasingloading = false
	elseif logo2.ImageTransparency == 0 then
		increasingloading = true
	end
	
end
local AtlasLoadingConnection = RunService.Heartbeat:Connect(function()
	loadinghandler2()
	backgroundhandler2()
	logohandler2()
	task.wait()
end)

AtlasLoading.Parent = UIParent



function CreateNotification(title,description,time)
    local NotifGui = game:GetObjects("rbxassetid://83382102861300")[1]
    NotifGui.Parent = UIParent
    local Frame = NotifGui.Main
    Frame.ZIndex = 60
    Frame.Position = UDim2.new(0.48,0,1.8,0)
    local Button = NotifGui.Main.Close
    local Description = NotifGui.Main.Description
    local Title = NotifGui.Main.Title
    Title.Text = title
    Description.Text = description
    local tweenspeed = 1

    local showTween = game:GetService("TweenService"):Create(Frame, TweenInfo.new(tweenspeed, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
        Position = UDim2.new(0.48, 0,0.9, 0)
    })
    local hideTween = game:GetService("TweenService"):Create(Frame, TweenInfo.new(tweenspeed, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
        Position = UDim2.new(0.48, 0, 1.8, 0)
    })

    showTween:Play()
    
    local function onClose()
        hideTween:Play()
        hideTween.Completed:Connect(function()
            NotifGui:Destroy()
        end)
    end

    Button.MouseButton1Click:Connect(onClose)
    
    task.delay(time, function()
            onClose()
    end)
    
end


local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
-- setclipboard(game:GetService("RbxAnalyticsService"):GetClientId())
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
    escapedhwid = escapePercent(HWID)
    if string.find(tostring(v),stringedid) or string.find(tostring(v),tostring(escapedhwid))  then
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
local whitelistedtable = loadstring(game:HttpGet("https://raw.githubusercontent.com/supersixteen21/dsadewfewniergjsfo/main/whitelist"))()
for i, v in pairs(whitelistedtable) do
  originalv = v
  v = escapePercent(v)
  escapedhwid = escapePercent(HWID)
  if string.find(tostring(v),stringedid) or string.find(tostring(v),tostring(escapedhwid))  then
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
          warn("Your Whitelist ended on "..tostring(date))
      else
          warn("You have Atlas Gold! Skipping Key system!")
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
    if precheck ~= true then
        setclipboard(linktokey)
        local KeyGui2 = game:GetObjects("rbxassetid://84989562177991")[1]
        KeyGui2.Parent = UIParent
        local image2 = KeyGui2.Background.Submit
        local getkey2 = KeyGui2.Background.GetKey
        local getdiscord2  = KeyGui2.Background.Discord
        local gethwid2 = KeyGui2.Background.CopyHWID
        local selectedkey2 = 0
        local BackgroundGradient2  = KeyGui2.Background.UIStroke.UIGradient
        local titlegradient2 = KeyGui2.Background.AtlasTitle.UIGradient
        local logo3 = KeyGui2.Background.Logo

        BackgroundGradient2.Color = Chrome
        titlegradient2.Color = Chrome



        local RunService = game:GetService("RunService")

        local RotationSpeed3 = 2

        local function backgroundhandler()
          local test = KeyGui2:FindFirstChild("Background") 
          if not test and KeyGradient then KeyGradient:Disconnect() return end
          if not test then return end
          BackgroundGradient2.Rotation += RotationSpeed3
          if BackgroundGradient2.Rotation == 180 then
            BackgroundGradient2.Rotation = -180
          end
          
          titlegradient2.Rotation += RotationSpeed3
          if titlegradient2.Rotation == 180 then
            titlegradient2.Rotation = -180
          end
        end
        local function rotates()
          local test = KeyGui2:FindFirstChild("Background") 
          if not test and KeyGradient then KeyGradient:Disconnect() return end
          if not test then return end
          local target = gethwid2.UIGradient
          target.Rotation += RotationSpeed3
          if target.Rotation == 180 then
            target.Rotation = -180
          end
          target = getdiscord2.UIGradient
          target.Rotation += RotationSpeed3
          if target.Rotation == 180 then
            target.Rotation = -180
          end
          target = getkey2.UIGradient
          target.Rotation += RotationSpeed3
          if target.Rotation == 180 then
            target.Rotation = -180
          end
          target = image2.UIGradient
          target.Rotation += RotationSpeed3
          if target.Rotation == 180 then
            target.Rotation = -180
          end
        end

        local increasing = true
        local function logohandler()
          local test = KeyGui2:FindFirstChild("Background") 
          if not test and KeyGradient then KeyGradient:Disconnect() return end
          if not test then return end
          if increasing == true then
            KeyGui2.Background.Logo.ImageTransparency += 0.01
          else
            KeyGui2.Background.Logo.ImageTransparency -= 0.01
          end
          if KeyGui2.Background.Logo.ImageTransparency == 1 then
            increasing = false
          elseif KeyGui2.Background.Logo.ImageTransparency == 0 then
            increasing = true
          end
          
        end
        local KeyGradient = RunService.Heartbeat:Connect(function()
          backgroundhandler()
          logohandler()
          rotates()
          task.wait()
        end)


        local masterkeyu09213102u9409u12040u580385891289521y8249889y4189y412841 = "audsdhufduwsfvewy_fgerwvgyewvuygcvetwyvtfcdetrqwycdtrfqwatxdsadgysagsuqwuoidequidwqodnwqnodsqoxnsakxcsiufcdneuifvber8ewy3iufb32932893r7r818fbv3712e1ne2nd19n99dw1fbd9c81f838f3eb87fc819drf319r1y67r876g3216r217re72176dvb2176dv716276d21v76d16273ydh1vywh"
        getdiscord2.MouseButton1Click:Connect(function()
            setclipboard("https://discord.gg/ubx3NJTtS7")
            CreateNotification("Discord Link Copied!","https://discord.gg/ubx3NJTtS7",2)
        end)
        gethwid2.MouseButton1Click:Connect(function()
            setclipboard(HWID)
            CreateNotification("HWID Copied!",tostring(HWID),2)
        end)
        getkey2.MouseButton1Click:Connect(function()
            setclipboard(linktokey)
            CreateNotification("Key Link Copied!",tostring(linktokey),2)
        end)
        image2.MouseButton1Click:Connect(function()
            local check = verify("test")
            if check == true then
                connectomasterkeyrobloxatlashub = "audsdhufduwsfvewy_fgerwvgyewvuygcvetwyvtfcdetrqwycdtrfqwatxdsadgysagsuqwuoidequidwqodnwqnodsqoxnsakxcsiufcdneuifvber8ewy3iufb32932893r7r818fbv3712e1ne2nd19n99dw1fbd9c81f838f3eb87fc819drf319r1y67r876g3216r217re72176dvb2176dv716276d21v76d16273ydh1vywh"
                KeyGui:Destroy()
            else
                keyinputed = selectedkey
                setclipboard(linktokey)
                if ratelimited == false then
                  CreateNotification("Incorrect Key!","Please try again!",2)
                else
                  CreateNotification("Ratelimited!","Please Cool Down...",2)
                end
            end
        end)
        local premiumdb = false
        local function checkpremium()
          if not premiumdb then
            warn("Checking the Atlas Gold Database to see if your in it...")
            local whitelistedtable = loadstring(game:HttpGet("https://raw.githubusercontent.com/supersixteen21/dsadewfewniergjsfo/main/whitelist"))()
            for i, v in pairs(whitelistedtable) do
              originalv = v
              v = escapePercent(v)
              escapedhwid = escapePercent(HWID)
              if string.find(tostring(v),stringedid) or string.find(tostring(v),tostring(escapedhwid))  then
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
                      warn("Your Whitelist ended on "..tostring(date))
                  else
                      warn("Found you in the premium database! Starting Atlas...")
                      if KeyGui2 then KeyGui2:Destroy() end
                      if KeyGradient then KeyGradient:Disconnect() end
                      connectomasterkeyrobloxatlashub = masterkeyu09213102u9409u12040u580385891289521y8249889y4189y412841
                      break
                  end
              end
            end
            premiumdb = true
            task.wait(5)
            premiumdb = false
          end
        end
        while connectomasterkeyrobloxatlashub ~= masterkeyu09213102u9409u12040u580385891289521y8249889y4189y412841 do
            if connectomasterkeyrobloxatlashub == masterkeyu09213102u9409u12040u580385891289521y8249889y4189y412841 then
              break
            end
            task.wait(1)
            task.spawn(function()
              checkpremium()
            end)   
        end
        if KeyGui2 then KeyGui2:Destroy() end
        if KeyGradient then KeyGradient:Disconnect() end
    else
       warn("Key Verified!")
    end
end
connectomasterkeyrobloxatlashub = ""

local MarketplaceService = game:GetService("MarketplaceService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local CoreGui = UIParent
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerMouse = Player:GetMouse()

local redzlib = {
  Themes = {
    Darker = {
        ["Color Hub 1"] = ColorSequence.new({
          ColorSequenceKeypoint.new(0.00, Color3.fromRGB(19,19,19)),
          ColorSequenceKeypoint.new(0.50, Color3.fromRGB(39,39,39)),
          ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0,0,0))
        }),
        ["Color Hub 2"] = Color3.fromRGB(15, 15, 15), -- frame color
        ["Color Stroke"] = Color3.fromRGB(255, 255, 255), -- Off 
        ["Color Theme"] = Color3.fromRGB(30, 30, 30), -- On Button
        ["Color Text"] = Color3.fromRGB(255, 255, 255),
        ["Color Dark Text"] = Color3.fromRGB(181, 181, 181)
      },
      Dark = {
        ["Color Hub 1"] = ColorSequence.new({
          ColorSequenceKeypoint.new(0.00, Color3.fromRGB(40, 40, 40)),
          ColorSequenceKeypoint.new(0.50, Color3.fromRGB(47.5, 47.5, 47.5)),
          ColorSequenceKeypoint.new(1.00, Color3.fromRGB(40, 40, 40))
        }),
        ["Color Hub 2"] = Color3.fromRGB(45, 45, 45),
        ["Color Stroke"] = Color3.fromRGB(65, 65, 65),
        ["Color Theme"] = Color3.fromRGB(65, 150, 255),
        ["Color Text"] = Color3.fromRGB(245, 245, 245),
        ["Color Dark Text"] = Color3.fromRGB(190, 190, 190)
    },
    Purple = {
      ["Color Hub 1"] = ColorSequence.new({
        ColorSequenceKeypoint.new(0.00, Color3.fromRGB(27.5, 25, 30)),
        ColorSequenceKeypoint.new(0.50, Color3.fromRGB(32.5, 32.5, 32.5)),
        ColorSequenceKeypoint.new(1.00, Color3.fromRGB(27.5, 25, 30))
      }),
      ["Color Hub 2"] = Color3.fromRGB(30, 30, 30),
      ["Color Stroke"] = Color3.fromRGB(40, 40, 40),
      ["Color Theme"] = Color3.fromRGB(150, 0, 255),
      ["Color Text"] = Color3.fromRGB(240, 240, 240),
      ["Color Dark Text"] = Color3.fromRGB(180, 180, 180)
    }
  },
  Info = {
    Version = "1.1.0"
  },
  Save = {
    UISize = {550, 380},
    TabSize = 160,
    Theme = "Darker"
  },
  Settings = {},
  Connection = {},
  Instances = {},
  Elements = {},
  Options = {},
  Flags = {},
  Tabs = {},
  Icons = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RedzLibV5/main/Icons.Lua"))()
}

local ViewportSize = workspace.CurrentCamera.ViewportSize
local UIScale = ViewportSize.Y / 450

local Settings = redzlib.Settings
local Flags = redzlib.Flags

local SetProps, SetChildren, InsertTheme, Create do
  InsertTheme = function(Instance, Type)
    table.insert(redzlib.Instances, {
      Instance = Instance,
      Type = Type
    })
    return Instance
  end
  
  SetChildren = function(Instance, Children)
    if Children then
      table.foreach(Children, function(_,Child)
        Child.Parent = Instance
      end)
    end
    return Instance
  end
  
  SetProps = function(Instance, Props)
    if Props then
      table.foreach(Props, function(prop, value)
        Instance[prop] = value
      end)
    end
    return Instance
  end
  
  Create = function(...)
    local args = {...}
    if type(args) ~= "table" then return end
    local new = Instance.new(args[1])
    local Children = {}
    
    if type(args[2]) == "table" then
      SetProps(new, args[2])
      SetChildren(new, args[3])
      Children = args[3] or {}
    elseif typeof(args[2]) == "Instance" then
      new.Parent = args[2]
      SetProps(new, args[3])
      SetChildren(new, args[4])
      Children = args[4] or {}
    end
    return new
  end
  
  local function Save(file)
    if readfile and isfile and isfile(file) then
      local decode = HttpService:JSONDecode(readfile(file))
      
      if type(decode) == "table" then
        if rawget(decode, "UISize") then redzlib.Save["UISize"] = decode["UISize"] end
        if rawget(decode, "TabSize") then redzlib.Save["TabSize"] = decode["TabSize"] end
        if rawget(decode, "Theme") and VerifyTheme(decode["Theme"]) then redzlib.Save["Theme"] = decode["Theme"] end
      end
    end
  end
  
  pcall(Save, "AtlashubSaveConfigs.lua")
end

local Funcs = {} do
  function Funcs:InsertCallback(tab, func)
    if type(func) == "function" then
      table.insert(tab, func)
    end
    return func
  end
  
  function Funcs:FireCallback(tab, ...)
    for _,v in ipairs(tab) do
      if type(v) == "function" then
        task.spawn(v, ...)
      end
    end
  end
  
  function Funcs:ToggleVisible(Obj, Bool)
    Obj.Visible = Bool ~= nil and Bool or Obj.Visible
  end
  
  function Funcs:ToggleParent(Obj, Parent)
    if Bool ~= nil then
      Obj.Parent = Bool
    else
      Obj.Parent = not Obj.Parent and Parent
    end
  end
  
  function Funcs:GetConnectionFunctions(ConnectedFuncs, func)
    local Connected = { Function = func, Connected = true }
    
    function Connected:Disconnect()
      if self.Connected then
        table.remove(ConnectedFuncs, table.find(ConnectedFuncs, self.Function))
        self.Connected = false
      end
    end
    
    function Connected:Fire(...)
      if self.Connected then
        task.spawn(self.Function, ...)
      end
    end
    
    return Connected
  end
  
  function Funcs:GetCallback(Configs, index)
    local func = Configs.Callback or Configs[index] or function()end
    
    if type(func) == "table" then
      return ({function(Value) func[1][func[2]] = Value end})
    end
    return {func}
  end
end

local Connections, Connection = {}, redzlib.Connection do
  local function NewConnectionList(List)
    if type(List) ~= "table" then return end
    
    for _,CoName in ipairs(List) do
      local ConnectedFuncs, Connect = {}, {}
      Connection[CoName] = Connect
      Connections[CoName] = ConnectedFuncs
      Connect.Name = CoName
      
      function Connect:Connect(func)
        if type(func) == "function" then
          table.insert(ConnectedFuncs, func)
          return Funcs:GetConnectionFunctions(ConnectedFuncs, func)
        end
      end
      
      function Connect:Once(func)
        if type(func) == "function" then
          local Connected;
          
          local _NFunc;_NFunc = function(...)
            task.spawn(func, ...)
            Connected:Disconnect()
          end
          
          Connected = Funcs:GetConnectionFunctions(ConnectedFuncs, _NFunc)
          return Connected
        end
      end
    end
  end
  
  function Connection:FireConnection(CoName, ...)
    local Connection = type(CoName) == "string" and Connections[CoName] or Connections[CoName.Name]
    for _,Func in pairs(Connection) do
      task.spawn(Func, ...)
    end
  end
  
  NewConnectionList({"FlagsChanged", "ThemeChanged", "FileSaved", "ThemeChanging", "OptionAdded"})
end

local GetFlag, SetFlag, CheckFlag do
  CheckFlag = function(Name)
    return type(Name) == "string" and Flags[Name] ~= nil
  end
  
  GetFlag = function(Name)
    return type(Name) == "string" and Flags[Name]
  end
  
  SetFlag = function(Flag, Value)
    if Flag and (Value ~= Flags[Flag] or type(Value) == "table") then
      Flags[Flag] = Value
      Connection:FireConnection("FlagsChanged", Flag, Value)
    end
  end
  
  local db
  Connection.FlagsChanged:Connect(function(Flag, Value)
    local ScriptFile = Settings.ScriptFile
    if not db and ScriptFile and writefile then
      db=true;task.wait(0.1);db=false
      
      local Success, Encoded = pcall(function()
        -- local _Flags = {}
        -- for _,Flag in pairs(Flags) do _Flags[_] = Flag.Value end
        return HttpService:JSONEncode(Flags)
      end)
      
      if Success then
        local Success = pcall(writefile, ScriptFile, Encoded)
        if Success then
          Connection:FireConnection("FileSaved", "Script-Flags", ScriptFile, Encoded)
        end
      end
    end
  end)
end

local parentthis = UIParent
local ScreenGui = Create("ScreenGui", parentthis, {
  Name = "ScreenGui",
}, {
  Create("UIScale", {
    Scale = UIScale,
    Name = "Scale"
  })
})
local ScreenFind = parentthis:FindFirstChild(ScreenGui.Name)
if ScreenFind and ScreenFind ~= ScreenGui then
  ScreenFind:Destroy()
end

local function GetStr(val)
  if type(val) == "function" then
    return val()
  end
  return val
end

local function ConnectSave(Instance, func)
  Instance.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
      while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do task.wait()
      end
    end
    func()
  end)
end

local function CreateTween(Configs)
  local Instance = Configs.Instance or Configs[1]
  local Prop = Configs.Prop or Configs[2]
  local NewVal = Configs.NewVal or Configs[3] 
  local Time = Configs.Time or Configs[4]  or 0.5
  local TweenWait = Configs.wait or Configs[5] or false
  local TweenInfo = TweenInfo.new(Time, Enum.EasingStyle.Quint)
  
  local Tween = TweenService:Create(Instance, TweenInfo, {[Prop] = NewVal})
  Tween:Play()
  if TweenWait then
    Tween.Completed:Wait()
  end
  return Tween
end

local function MakeDrag(Instance)
  task.spawn(function()
    SetProps(Instance, {
      Active = true,
      AutoButtonColor = false
    })
    
		local DragStart, StartPos, InputOn
		
		local function Update(Input)
			local delta = Input.Position - DragStart
			local Position = UDim2.new(StartPos.X.Scale, StartPos.X.Offset + delta.X / UIScale, StartPos.Y.Scale, StartPos.Y.Offset + delta.Y / UIScale)
			-- Instance.Position = Position
			CreateTween({Instance, "Position", Position, 0.35})
		end
		
		Instance.MouseButton1Down:Connect(function()
		  InputOn = true
		end)
		
    Instance.InputBegan:Connect(function(Input)
      if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
        StartPos = Instance.Position
        DragStart = Input.Position
        
        while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do RunService.Heartbeat:Wait()
          if InputOn then
            Update(Input)
          end
        end
        InputOn = false
      end
    end)
	end)
	return Instance
end

local function VerifyTheme(Theme)
  for name,_ in pairs(redzlib.Themes) do
    if name == Theme then
      return true
    end
  end
end

local function SaveJson(FileName, newData)
  if readfile and writefile and isfile then
    local existingData = {}
    if isfile(FileName) then
      local success, result = pcall(function()
        return HttpService:JSONDecode(readfile(FileName))
      end)
      if success then
        existingData = result
      end
    end
    
    -- Merge new data with existing data
    for key, value in pairs(newData) do
      existingData[key] = value
    end
    
    local json = HttpService:JSONEncode(existingData)
    writefile(FileName, json)
  end
end

local Theme = redzlib.Themes[redzlib.Save.Theme]

local function AddEle(Name, Func)
  redzlib.Elements[Name] = Func
end

local function Make(Ele, Instance, props, ...)
  local Element = redzlib.Elements[Ele](Instance, props, ...)
  return Element
end

AddEle("Corner", function(parent, CornerRadius)
  local New = SetProps(Create("UICorner", parent, {
    CornerRadius = CornerRadius or UDim.new(0, 7)
  }), props)
  return New
end)

AddEle("Stroke", function(parent, props, ...)
  local args = {...}
  local New = InsertTheme(SetProps(Create("UIStroke", parent, {
    Color = args[1] or Theme["Color Stroke"],
    Thickness = args[2] or 1,
    ApplyStrokeMode = "Border"
  }), props), "Stroke")
  return New
end)

AddEle("Button", function(parent, props, ...)
  local args = {...}
  local New = InsertTheme(SetProps(Create("TextButton", parent, {
    Text = "",
    Size = UDim2.fromScale(1, 1),
    BackgroundColor3 = Theme["Color Hub 2"],
    AutoButtonColor = false
  }), props), "Frame")
  
  New.MouseEnter:Connect(function()
    New.BackgroundTransparency = 0.4
  end)
  New.MouseLeave:Connect(function()
    New.BackgroundTransparency = 0
  end)
  if args[1] then
    New.Activated:Connect(args[1])
  end
  return New
end)

AddEle("Gradient", function(parent, props, ...)
  local args = {...}
  local New = InsertTheme(SetProps(Create("UIGradient", parent, {
    Color = Theme["Color Hub 1"]
  }), props), "Gradient")
  return New
end)

local function ButtonFrame(Instance, Title, Description, HolderSize)
  local TitleL = InsertTheme(Create("TextLabel", {
    Font = Enum.Font.GothamMedium,
    TextColor3 = Theme["Color Text"],
    Size = UDim2.new(1, -20),
    AutomaticSize = "Y",
    Position = UDim2.new(0, 0, 0.5),
    AnchorPoint = Vector2.new(0, 0.5),
    BackgroundTransparency = 1,
    TextTruncate = "AtEnd",
    TextSize = 10,
    TextXAlignment = "Left",
    Text = "",
    RichText = true
  }), "Text")
  
  local DescL = InsertTheme(Create("TextLabel", {
    Font = Enum.Font.Gotham,
    TextColor3 = Theme["Color Dark Text"],
    Size = UDim2.new(1, -20),
    AutomaticSize = "Y",
    Position = UDim2.new(0, 12, 0, 15),
    BackgroundTransparency = 1,
    TextWrapped = true,
    TextSize = 8,
    TextXAlignment = "Left",
    Text = "",
    RichText = true
  }), "DarkText")

  local Frame = Make("Button", Instance, {
    Size = UDim2.new(1, 0, 0, 25),
    AutomaticSize = "Y",
    Name = "Option"
  })Make("Corner", Frame, UDim.new(0, 6))
  
	LabelHolder = Create("Frame", Frame, {
		AutomaticSize = "Y",
		BackgroundTransparency = 1,
		Size = HolderSize,
		Position = UDim2.new(0, 10, 0),
		AnchorPoint = Vector2.new(0, 0)
	}, {
		Create("UIListLayout", {
			SortOrder = "LayoutOrder",
			VerticalAlignment = "Center",
			Padding = UDim.new(0, 2)
		}),
		Create("UIPadding", {
			PaddingBottom = UDim.new(0, 5),
			PaddingTop = UDim.new(0, 5)
		}),
		TitleL,
		DescL,
	})
  
  local Label = {}
  function Label:SetTitle(NewTitle)
    if type(NewTitle) == "string" and NewTitle:gsub(" ", ""):len() > 0 then
      TitleL.Text = NewTitle
    end
  end
  function Label:SetDesc(NewDesc)
    if type(NewDesc) == "string" and NewDesc:gsub(" ", ""):len() > 0 then
      DescL.Visible = true
      DescL.Text = NewDesc
      LabelHolder.Position = UDim2.new(0, 10, 0)
      LabelHolder.AnchorPoint = Vector2.new(0, 0)
    else
      DescL.Visible = false
      DescL.Text = ""
      LabelHolder.Position = UDim2.new(0, 10, 0.5)
      LabelHolder.AnchorPoint = Vector2.new(0, 0.5)
    end
  end
  
  Label:SetTitle(Title)
  Label:SetDesc(Description)
  return Frame, Label
end

local function ColorPickerFrame(Instance, Title, Description, HolderSize)
  local TitleL = InsertTheme(Create("TextLabel", {
    Font = Enum.Font.GothamMedium,
    TextColor3 = Theme["Color Text"],
    Size = UDim2.new(1, -20),
    AutomaticSize = "Y",
    Position = UDim2.new(0, 0, 0.5),
    AnchorPoint = Vector2.new(0, 0.5),
    BackgroundTransparency = 1,
    TextTruncate = "AtEnd",
    TextSize = 10,
    TextXAlignment = "Left",
    Text = "",
    RichText = true
  }), "Text")
  
  local DescL = InsertTheme(Create("TextLabel", {
    Font = Enum.Font.Gotham,
    TextColor3 = Theme["Color Dark Text"],
    Size = UDim2.new(1, -20),
    AutomaticSize = "Y",
    Position = UDim2.new(0, 12, 0, 15),
    BackgroundTransparency = 1,
    TextWrapped = true,
    TextSize = 8,
    TextXAlignment = "Left",
    Text = "",
    RichText = true
  }), "DarkText")

  local Frame = Make("Button", Instance, {
    Size = UDim2.new(1, 0, 0, 55),
    AutomaticSize = "Y",
    Name = "Option"
  })Make("Corner", Frame, UDim.new(0, 6))
  
	LabelHolder = Create("Frame", Frame, {
		AutomaticSize = "Y",
		BackgroundTransparency = 1,
		Size = HolderSize,
		Position = UDim2.new(0, 10, 0),
		AnchorPoint = Vector2.new(0, 0)
	}, {
		Create("UIListLayout", {
			SortOrder = "LayoutOrder",
			VerticalAlignment = "Center",
			Padding = UDim.new(0, 2)
		}),
		Create("UIPadding", {
			PaddingBottom = UDim.new(0, 5),
			PaddingTop = UDim.new(0, 5)
		}),
		TitleL,
		DescL,
	})
  
  local Label = {}
  function Label:SetTitle(NewTitle)
    if type(NewTitle) == "string" and NewTitle:gsub(" ", ""):len() > 0 then
      TitleL.Text = NewTitle
    end
  end
  function Label:SetDesc(NewDesc)
    if type(NewDesc) == "string" and NewDesc:gsub(" ", ""):len() > 0 then
      DescL.Visible = true
      DescL.Text = NewDesc
      LabelHolder.Position = UDim2.new(0, 10, 0)
      LabelHolder.AnchorPoint = Vector2.new(0, 0)
    else
      DescL.Visible = false
      DescL.Text = ""
      LabelHolder.Position = UDim2.new(0, 10, 0.5)
      LabelHolder.AnchorPoint = Vector2.new(0, 0.5)
    end
  end
  
  Label:SetTitle(Title)
  Label:SetDesc(Description)
  return Frame, Label
end

local function GetColor(Instance)
  if Instance:IsA("Frame") then
    return "BackgroundColor3"
  elseif Instance:IsA("ImageLabel") then
    return "ImageColor3"
  elseif Instance:IsA("TextLabel") then
    return "TextColor3"
  elseif Instance:IsA("ScrollingFrame") then
    return "ScrollBarImageColor3"
  elseif Instance:IsA("UIStroke") then
    return "Color"
  end
  return ""
end

-- /////////// --
function redzlib:GetIcon(IconName)
  if IconName:find("rbxassetid://") or IconName:len() < 1 then return IconName end
  IconName = IconName:lower():gsub("lucide", ""):gsub("-", "")
  
  for Name, Icon in pairs(redzlib.Icons) do
    Name = Name:gsub("lucide", ""):gsub("-", "")
    if Name == IconName then
      return Icon
    end
  end
  for Name, Icon in pairs(redzlib.Icons) do
    Name = Name:gsub("lucide", ""):gsub("-", "")
    if Name:find(IconName) then
      return Icon
    end
  end
  return IconName
end

function redzlib:SetTheme(NewTheme)
  if not VerifyTheme(NewTheme) then return end
  
  redzlib.Save.Theme = NewTheme
  SaveJson("AtlashubSaveConfigs.lua", redzlib.Save)
  Theme = redzlib.Themes[NewTheme]
  
  Comnection:FireConnection("ThemeChanged", NewTheme)
  table.foreach(redzlib.Instances, function(_,Val)
    if Val.Type == "Gradient" then
      Val.Instance.Color = Theme["Color Hub 1"]
    elseif Val.Type == "Frame" then
      Val.Instance.BackgroundColor3 = Theme["Color Hub 2"]
    elseif Val.Type == "Stroke" then
      Val.Instance[GetColor(Val.Instance)] = Theme["Color Stroke"]
    elseif Val.Type == "Theme" then
      Val.Instance[GetColor(Val.Instance)] = Theme["Color Theme"]
    elseif Val.Type == "Text" then
      Val.Instance[GetColor(Val.Instance)] = Theme["Color Text"]
    elseif Val.Type == "DarkText" then
      Val.Instance[GetColor(Val.Instance)] = Theme["Color Dark Text"]
    elseif Val.Type == "ScrollBar" then
      Val.Instance[GetColor(Val.Instance)] = Theme["Color Theme"]
    end
  end)
end

function redzlib:SetScale(NewScale)
  NewScale = ViewportSize.Y / math.clamp(NewScale, 300, 2000)
  UIScale, ScreenGui.Scale.Scale = NewScale, NewScale
end

function redzlib:MakeWindow(Configs)
  local WTitle = Configs.Name  or Configs.Title or Configs[1]  or "Atlas Hub"
  local WMiniText = Configs.SubTitle or  Configs[2]  or "Beta"
  
  Settings.ScriptFile =  Configs.SaveFolder  or Configs[3] or false
  
  local function LoadFile()
    local File = Settings.ScriptFile
    if type(File) ~= "string" then return end
    if not readfile or not isfile then return end
    local s, r = pcall(isfile, File)
    
    if s and r then
      local s, _Flags = pcall(readfile, File)
      
      if s and type(_Flags) == "string" then
        local s,r = pcall(function() return HttpService:JSONDecode(_Flags) end)
        Flags = s and r or {}
      end
    end
  end;LoadFile()
  
  local UISizeX, UISizeY = unpack(redzlib.Save.UISize)
  local MainFrame = InsertTheme(Create("ImageButton", ScreenGui, {
    Size = UDim2.fromOffset(UISizeX, UISizeY),
    Position = UDim2.new(0.5, -UISizeX/2, 0.5, -UISizeY/2),
    BackgroundTransparency = 0.5,
    Name = "Atlas"
  }), "Main")
  MainFrame.Image = "rbxassetid://104513195271927"
  MainFrame.BackgroundTransparency = 1
  MainFrame.ImageTransparency = 0.05000000074505806
--   Make("Gradient", MainFrame, {
--     Rotation = 45
--   })
  MakeDrag(MainFrame)
  
  local MainCorner = Make("Corner", MainFrame)
  
  local Components = Create("Folder", MainFrame, {
    Name = "Components"
  })
  
  local DropdownHolder = Create("Folder", ScreenGui, {
    Name = "Dropdown"
  })
  
  local TopBar = Create("Frame", Components, {
    Size = UDim2.new(1, 0, 0, 28),
    BackgroundTransparency = 1,
    Name = "Top Bar"
  })
  
  local Title = InsertTheme(Create("TextLabel", TopBar, {
    Position = UDim2.new(0, 15, 0.5),
    AnchorPoint = Vector2.new(0, 0.5),
    AutomaticSize = "XY",
    Text = WTitle,
    TextXAlignment = "Left",
    TextSize = 12,
    TextColor3 = Theme["Color Text"],
    BackgroundTransparency = 1,
    Font = Enum.Font.GothamMedium,
    Name = "Title"
  }, {
    InsertTheme(Create("TextLabel", {
      Size = UDim2.fromScale(0, 1),
      AutomaticSize = "X",
      AnchorPoint = Vector2.new(0, 1),
      Position = UDim2.new(1, 5, 0.9),
      Text = WMiniText,
      TextColor3 = Theme["Color Dark Text"],
      BackgroundTransparency = 1,
      TextXAlignment = "Left",
      TextYAlignment = "Bottom",
      TextSize = 8,
      Font = Enum.Font.Gotham,
      Name = "SubTitle"
    }), "DarkText")
  }), "Text")
  
  local MainScroll = InsertTheme(Create("ScrollingFrame", Components, {
    Size = UDim2.new(0, redzlib.Save.TabSize, 1, -TopBar.Size.Y.Offset),
    ScrollBarImageColor3 = Theme["Color Theme"],
    Position = UDim2.new(0, 0, 1, 0),
    AnchorPoint = Vector2.new(0, 1),
    ScrollBarThickness = 1.5,
    BackgroundTransparency = 1,
    ScrollBarImageTransparency = 0.2,
    CanvasSize = UDim2.new(),
    AutomaticCanvasSize = "Y",
    ScrollingDirection = "Y",
    BorderSizePixel = 0,
    Name = "Tab Scroll"
  }, {
    Create("UIPadding", {
      PaddingLeft = UDim.new(0, 10),
      PaddingRight = UDim.new(0, 10),
      PaddingTop = UDim.new(0, 10),
      PaddingBottom = UDim.new(0, 10)
    }), Create("UIListLayout", {
      Padding = UDim.new(0, 5)
    })
  }), "ScrollBar")
  
  local Containers = Create("Frame", Components, {
    Size = UDim2.new(1, -MainScroll.Size.X.Offset, 1, -TopBar.Size.Y.Offset),
    AnchorPoint = Vector2.new(1, 1),
    Position = UDim2.new(1, 0, 1, 0),
    BackgroundTransparency = 1,
    ClipsDescendants = true,
    Name = "Containers"
  })
  
  local ControlSize1, ControlSize2 = MakeDrag(Create("ImageButton", MainFrame, {
    Size = UDim2.new(0, 35, 0, 35),
    Position = MainFrame.Size,
    Active = true,
    AnchorPoint = Vector2.new(0.8, 0.8),
    BackgroundTransparency = 1,
    Name = "Control Hub Size"
  })), MakeDrag(Create("ImageButton", MainFrame, {
    Size = UDim2.new(0, 20, 1, -30),
    Position = UDim2.new(0, MainScroll.Size.X.Offset, 1, 0),
    AnchorPoint = Vector2.new(0.5, 1),
    Active = true,
    BackgroundTransparency = 1,
    Name = "Control Tab Size"
  }))
  
  local function ControlSize()
    local Pos1, Pos2 = ControlSize1.Position, ControlSize2.Position
    ControlSize1.Position = UDim2.fromOffset(math.clamp(Pos1.X.Offset, 430, 1000), math.clamp(Pos1.Y.Offset, 200, 500))
    ControlSize2.Position = UDim2.new(0, math.clamp(Pos2.X.Offset, 135, 250), 1, 0)
    
    MainScroll.Size = UDim2.new(0, ControlSize2.Position.X.Offset, 1, -TopBar.Size.Y.Offset)
    Containers.Size = UDim2.new(1, -MainScroll.Size.X.Offset, 1, -TopBar.Size.Y.Offset)
    MainFrame.Size = ControlSize1.Position
  end
  
  ControlSize1:GetPropertyChangedSignal("Position"):Connect(ControlSize)
  ControlSize2:GetPropertyChangedSignal("Position"):Connect(ControlSize)
  
  ConnectSave(ControlSize1, function()
    if not Minimized then
      SaveJson("AtlashubSaveConfigs.lua", {UISize = {MainFrame.Size.X.Offset, MainFrame.Size.Y.Offset}})
    end
    end)
    
  ConnectSave(ControlSize2, function()
    SaveJson("AtlashubSaveConfigs.lua", {TabSize = MainScroll.Size.X.Offset})
  end)
  
  local ButtonsFolder = Create("Folder", TopBar, {
    Name = "Buttons"
  })
  
  local CloseButton = Create("ImageButton", {
    Size = UDim2.new(0, 14, 0, 14),
    Position = UDim2.new(1, -10, 0.5),
    AnchorPoint = Vector2.new(1, 0.5),
    BackgroundTransparency = 1,
    Image = "rbxassetid://81911748716337",
    AutoButtonColor = false,
    Name = "Close"
  })
  
  local MinimizeButton = SetProps(CloseButton:Clone(), {
    Position = UDim2.new(1, -35, 0.5),
    Image = "rbxassetid://105615612588825",
    Name = "Minimize"
  })
  local GreenButton = SetProps(CloseButton:Clone(), {
    Position = UDim2.new(1, -60, 0.5),
    Image = "rbxassetid://96745368445366",
    Name = "Other"
  })
  
  SetChildren(ButtonsFolder, {
    CloseButton,
    MinimizeButton,
    GreenButton
  })
  
  local Minimized, SaveSize, WaitClick
  local Window, FirstTab = {}, false
  function Window:CloseBtn()
    local Dialog = Window:Dialog({
      Title = "Close",
      Text = "Are you sure you want to close this?",
      Options = {
        {"Confirm", function()
          ScreenGui:Destroy()
        end},
        {"Cancel"}
      }
    })
  end
  function Window:MinimizeBtn()
    if WaitClick then return end
    WaitClick = true
    
    if Minimized then
      MinimizeButton.Image = "rbxassetid://105615612588825"
      CreateTween({MainFrame, "Size", SaveSize, 0.25, true})
      ControlSize1.Visible = true
      ControlSize2.Visible = true
      Minimized = false
    else
      MinimizeButton.Image = "rbxassetid://105615612588825"
      SaveSize = MainFrame.Size
      ControlSize1.Visible = false
      ControlSize2.Visible = false
      CreateTween({MainFrame, "Size", UDim2.fromOffset(MainFrame.Size.X.Offset, 28), 0.25, true})
      Minimized = true
    end
    
    WaitClick = false
  end
  function Window:Minimize()
    MainFrame.Visible = not MainFrame.Visible
  end
  function Window:AddMinimizeButton(Configs)
    local Button = MakeDrag(Create("ImageButton", ScreenGui, {
      Size = UDim2.fromOffset(35, 35),
      Position = UDim2.fromScale(0.15, 0.15),
      BackgroundTransparency = 1,
      BackgroundColor3 = Theme["Color Hub 2"],
      AutoButtonColor = false
    }))
    
    local Stroke, Corner
    if Configs.Corner then
      Corner = Make("Corner", Button)
      SetProps(Corner, Configs.Corner)
    end
    if Configs.Stroke then
      Stroke = Make("Stroke", Button)
      SetProps(Stroke, Configs.Corner)
    end
    
    SetProps(Button, Configs.Button)
    Button.Activated:Connect(Window.Minimize)
    
    return {
      Stroke = Stroke,
      Corner = Corner,
      Button = Button
    }
  end
  function Window:Set(Val1, Val2)
    if type(Val1) == "string" and type(Val2) == "string" then
      Title.Text = Val1
      Title.SubTitle.Text = Val2
    elseif type(Val1) == "string" then
      Title.Text = Val1
    end
  end
  function Window:Dialog(Configs)
    if MainFrame:FindFirstChild("Dialog") then return end
    if Minimized then
      Window:MinimizeBtn()
    end
    
    local DTitle = Configs.Title or Configs[1]  or "Dialog"
    local DText = Configs.Text or Configs[2]  or "This is a Dialog"
    local DOptions = Configs.Options or Configs[3]  or {}
    
    local Frame = Create("Frame", {
      Active = true,
      Size = UDim2.fromOffset(250 * 1.08, 150 * 1.08),
      Position = UDim2.fromScale(0.5, 0.5),
      AnchorPoint = Vector2.new(0.5, 0.5)
    }, {
      InsertTheme(Create("TextLabel", {
        Font = Enum.Font.GothamBold,
        Size = UDim2.new(1, 0, 0, 20),
        Text = DTitle,
        TextXAlignment = "Left",
        TextColor3 = Theme["Color Text"],
        TextSize = 15,
        ZIndex = 2,
        Position = UDim2.fromOffset(15, 5),
        BackgroundTransparency = 1
      }), "Text"),
      InsertTheme(Create("TextLabel", {
        Font = Enum.Font.GothamMedium,
        Size = UDim2.new(1, -25),
        AutomaticSize = "Y",
        Text = DText,
        TextXAlignment = "Left",
        TextColor3 = Theme["Color Dark Text"],
        TextSize = 12,
        ZIndex = 2,
        Position = UDim2.fromOffset(15, 25),
        BackgroundTransparency = 1,
        TextWrapped = true
      }), "DarkText")
    })Make("Gradient", Frame, {Rotation = 270})Make("Corner", Frame)
    
    local ButtonsHolder = Create("Frame", Frame, {
      Size = UDim2.fromScale(1, 0.35),
      Position = UDim2.fromScale(0, 1),
      AnchorPoint = Vector2.new(0, 1),
      BackgroundColor3 = Theme["Color Hub 2"],
      BackgroundTransparency = 1
    }, {
      Create("UIListLayout", {
        Padding = UDim.new(0, 10),
			  VerticalAlignment = "Center",
			  FillDirection = "Horizontal",
			  HorizontalAlignment = "Center"
      })
    })
    
    local Screen = InsertTheme(Create("Frame", MainFrame, {
      BackgroundTransparency = 0.6,
      Active = true,
      BackgroundColor3 = Theme["Color Hub 2"],
      Size = UDim2.new(1, 0, 1, 0),
      BackgroundColor3 = Theme["Color Stroke"],
      Name = "Dialog"
    }), "Stroke")
    
    MainCorner:Clone().Parent = Screen
    Frame.Parent = Screen
    background = Instance.new("ImageLabel",Frame)
    background.Image = "rbxassetid://104513195271927"
    background.Name = "Pattern"
    background.Size = Frame.Size
    uicorner = Instance.new("UICorner",background)
    CreateTween({Frame, "Size", UDim2.fromOffset(250, 150), 0.2})
    CreateTween({Frame, "Transparency", 0, 0.15})
    CreateTween({Screen, "Transparency", 0.3, 0.15})
    
    local ButtonCount, Dialog = 1, {}
    function Dialog:Button(Configs)
      local Name = Configs.Name or Configs[1]  or Configs.Title or ""
      local Callback = Configs.Callback or  Configs[2] or function()end
      
      ButtonCount = ButtonCount + 1
      local Button = Make("Button", ButtonsHolder)
      Make("Corner", Button)
      SetProps(Button, {
        Text = Name,
        Font = Enum.Font.GothamBold,
        ZIndex = 2,
        TextColor3 = Theme["Color Text"],
        TextSize = 12
      })
      
      for _,Button in pairs(ButtonsHolder:GetChildren()) do
        if Button:IsA("TextButton") then
          Button.Size = UDim2.new(1 / ButtonCount, -(((ButtonCount - 1) * 20) / ButtonCount), 0, 32) -- Fluent Library :)
        end
      end
      Button.Activated:Connect(Dialog.Close)
      Button.Activated:Connect(Callback)
    end
    function Dialog:Close()
      CreateTween({Frame, "Size", UDim2.fromOffset(250 * 1.08, 150 * 1.08), 0.2})
      CreateTween({Screen, "Transparency", 1, 0.15})
      CreateTween({Frame, "Transparency", 1, 0.15, true})
      Screen:Destroy()
    end
    table.foreach(DOptions, function(_,Button)
      Dialog:Button(Button)
    end)
    return Dialog
  end
  function Window:SelectTab(TabSelect)
    if type(TabSelect) == "number" then
      redzlib.Tabs[TabSelect].func:Enable()
    else
      for _,Tab in pairs(redzlib.Tabs) do
        if Tab.Cont == TabSelect.Cont then
          Tab.func:Enable()
        end
      end
    end
  end
  
  local ContainerList = {}
  function Window:MakeTab(paste, Configs)
    if type(paste) == "table" then Configs = paste end
    local TName = Configs.Title or Configs[1] or "Tab!"
    local TIcon = Configs.Icon or Configs[2] or ""
    
    TIcon = redzlib:GetIcon(TIcon)
    if not TIcon:find("rbxassetid://") or TIcon:gsub("rbxassetid://", ""):len() < 6 then
      TIcon = false
    end
    
    
    local TabSelect = Make("Button", MainScroll, {
      Size = UDim2.new(1, 0, 0, 24)
    })Make("Corner", TabSelect)
    
    local LabelTitle = InsertTheme(Create("TextLabel", TabSelect, {
      Size = UDim2.new(1, TIcon and -25 or -15, 1),
      Position = UDim2.fromOffset(TIcon and 25 or 15),
      BackgroundTransparency = 1,
      Font = Enum.Font.GothamMedium,
      Text = TName,
      TextColor3 = Theme["Color Text"],
      TextSize = 10,
      TextXAlignment = Enum.TextXAlignment.Left,
      TextTransparency = (FirstTab and 0.3) or 0,
      TextTruncate = "AtEnd"
    }), "Text")
    
    local LabelIcon = InsertTheme(Create("ImageLabel", TabSelect, {
      Position = UDim2.new(0, 8, 0.5),
      Size = UDim2.new(0, 13, 0, 13),
      AnchorPoint = Vector2.new(0, 0.5),
      Image = TIcon or "",
      BackgroundTransparency = 1,
      ImageTransparency = (FirstTab and 0.3) or 0
    }), "Text")
    
    local Selected = InsertTheme(Create("Frame", TabSelect, {
      Size = FirstTab and UDim2.new(0, 4, 0, 4) or UDim2.new(0, 4, 0, 13),
      Position = UDim2.new(0, 1, 0.5),
      AnchorPoint = Vector2.new(0, 0.5),
      BackgroundColor3 = Theme["Color Theme"],
      BackgroundTransparency = FirstTab and 1 or 0
    }), "Theme")Make("Corner", Selected, UDim.new(0.5, 0))
    
    local Container = InsertTheme(Create("ScrollingFrame", {
      Size = UDim2.new(1, 0, 1, 0),
      Position = UDim2.new(0, 0, 1),
      AnchorPoint = Vector2.new(0, 1),
      ScrollBarThickness = 1.5,
      BackgroundTransparency = 1,
      ScrollBarImageTransparency = 0.2,
      ScrollBarImageColor3 = Theme["Color Theme"],
      AutomaticCanvasSize = "Y",
      ScrollingDirection = "Y",
      BorderSizePixel = 0,
      CanvasSize = UDim2.new(),
      Name = ("Container %i [ %s ]"):format(#ContainerList + 1, TName)
    }, {
      Create("UIPadding", {
        PaddingLeft = UDim.new(0, 10),
        PaddingRight = UDim.new(0, 10),
        PaddingTop = UDim.new(0, 10),
        PaddingBottom = UDim.new(0, 10)
      }), Create("UIListLayout", {
        Padding = UDim.new(0, 5)
      })
    }), "ScrollBar")
    
    table.insert(ContainerList, Container)
    
    if not FirstTab then Container.Parent = Containers end
    
    local function Tabs()
      if Container.Parent then return end
      for _,Frame in pairs(ContainerList) do
        if Frame:IsA("ScrollingFrame") and Frame ~= Container then
          Frame.Parent = nil
        end
      end
      Container.Parent = Containers
      Container.Size = UDim2.new(1, 0, 1, 150)
      table.foreach(redzlib.Tabs, function(_,Tab)
        if Tab.Cont ~= Container then
          Tab.func:Disable()
        end
      end)
      CreateTween({Container, "Size", UDim2.new(1, 0, 1, 0), 0.3})
      CreateTween({LabelTitle, "TextTransparency", 0, 0.35})
      CreateTween({LabelIcon, "ImageTransparency", 0, 0.35})
      CreateTween({Selected, "Size", UDim2.new(0, 4, 0, 13), 0.35})
      CreateTween({Selected, "BackgroundTransparency", 0, 0.35})
    end
    TabSelect.Activated:Connect(Tabs)
    
    FirstTab = true
    local Tab = {}
    table.insert(redzlib.Tabs, {TabInfo = {Name = TName, Icon = TIcon}, func = Tab, Cont = Container})
    Tab.Cont = Container
    
    function Tab:Disable()
      Container.Parent = nil
      CreateTween({LabelTitle, "TextTransparency", 0.3, 0.35})
      CreateTween({LabelIcon, "ImageTransparency", 0.3, 0.35})
      CreateTween({Selected, "Size", UDim2.new(0, 4, 0, 4), 0.35})
      CreateTween({Selected, "BackgroundTransparency", 1, 0.35})
    end
    function Tab:Enable()
      Tabs()
    end
    function Tab:Visible(Bool)
      Funcs:ToggleVisible(TabSelect, Bool)
      Funcs:ToggleParent(Container, Bool, Containers)
    end
    function Tab:Destroy() TabSelect:Destroy() Container:Destroy() end
    
    function Tab:AddSection(Configs)
      local SectionName = type(Configs) == "string" and Configs or Configs.Name or  Configs.Title or Configs[1]  or Configs.Section
      
      local SectionFrame = Create("Frame", Container, {
        Size = UDim2.new(1, 0, 0, 20),
        BackgroundTransparency = 1,
        Name = "Option"
      })
      
      local SectionLabel = InsertTheme(Create("TextLabel", SectionFrame, {
        Font = Enum.Font.GothamBold,
        Text = SectionName,
        TextColor3 = Theme["Color Text"],
        Size = UDim2.new(1, -25, 1, 0),
        Position = UDim2.new(0, 5),
        BackgroundTransparency = 1,
        TextTruncate = "AtEnd",
        TextSize = 14,
        TextXAlignment = "Left"
      }), "Text")
      
      local Section = {}
      table.insert(redzlib.Options, {type = "Section", Name = SectionName, func = Section})
      function Section:Visible(Bool)
        if Bool == nil then SectionFrame.Visible = not SectionFrame.Visible return end
        SectionFrame.Visible = Bool
      end
      function Section:Destroy()
        SectionFrame:Destroy()
      end
      function Section:Set(New)
        if New then
          SectionLabel.Text = GetStr(New)
        end
      end
      return Section
    end
    function Tab:AddParagraph(Configs)
      local PName = Configs.Title or "Paragraph"
      local PDesc = Configs.Text or ""
      
      local Frame, LabelFunc = ButtonFrame(Container, PName, PDesc, UDim2.new(1, -20))
      
      local Paragraph = {}
      function Paragraph:Visible(...) Funcs:ToggleVisible(Frame, ...) end
      function Paragraph:Destroy() Frame:Destroy() end
      function Paragraph:SetTitle(Val)
        LabelFunc:SetTitle(GetStr(Val))
      end
      function Paragraph:SetDesc(Val)
        LabelFunc:SetDesc(GetStr(Val))
      end
      function Paragraph:Set(Val1, Val2)
        if Val1 and Val2 then
          LabelFunc:SetTitle(GetStr(Val1))
          LabelFunc:SetDesc(GetStr(Val2))
        elseif Val1 then
          LabelFunc:SetDesc(GetStr(Val1))
        end
      end
      return Paragraph
    end
    function Tab:AddButton(Configs)
      local BName = Configs.Name or Configs.Title or "Button"
      local BDesc = Configs.Desc or Configs.Description or ""
      local Flag = Configs.Flag or false
      local Callback = Funcs:GetCallback(Configs, 2)
  
      local Button, LabelFunc = ButtonFrame(Container, BName, BDesc, UDim2.new(1, -100))
  
      local MainButton = InsertTheme(Create("TextButton", Button, {
          Size = UDim2.new(0, 30, 0, 14),
          Position = UDim2.new(1, -35, 0.5),
          AnchorPoint = Vector2.new(1, 0.5),
          BackgroundColor3 = Theme["Color Theme"],
          Text = "Press",
          TextColor3 = Theme["Color Text"],
          Font = Enum.Font.GothamBold,
          TextSize = 12
      }), "Theme")
      Make("Corner", MainButton, UDim.new(0, 4))
  
      local KeybindButton = InsertTheme(Create("TextButton", Button, {
        Size = UDim2.new(0, 60, 0, 20),
        Position = UDim2.new(1, -100, 0.5),
        AnchorPoint = Vector2.new(1, 0.5),
        BackgroundColor3 = Theme["Color Theme"],
        Text = "...",
        TextColor3 = Theme["Color Text"],
        Font = Enum.Font.GothamBold,
        TextSize = 12
      }), "Theme")
      Make("Corner", KeybindButton, UDim.new(0, 4))
  
      local FlagData = GetFlag(Flag) or {nil}
      if type(FlagData) == "boolean" then
        FlagData = {FlagData,nil}
      end
      local Keybind = FlagData[1] and Enum.KeyCode[FlagData[1]] or nil
  
      local function UpdateFlag()
          SetFlag(Flag, {Keybind and Keybind.Name or nil})
      end
  
      local function FireButton()
          Funcs:FireCallback(Callback)
      end
  
      MainButton.Activated:Connect(FireButton)
  
      local function SetKeybind(key)
          Keybind = key
          KeybindButton.Text = key and key.Name or "..."
          UpdateFlag()
      end
  
      KeybindButton.Activated:Connect(function()
          KeybindButton.Text = "..."
          local input
          input = UserInputService.InputBegan:Connect(function(key)
              if key.UserInputType == Enum.UserInputType.Keyboard then
                  SetKeybind(key.KeyCode)
                  UpdateFlag()
                  input:Disconnect()
              elseif key.UserInputType == Enum.UserInputType.MouseButton1 or 
                     key.UserInputType == Enum.UserInputType.MouseButton2 then
                  SetKeybind(nil)  -- Set to nil to remove the keybind
                  UpdateFlag()
                  input:Disconnect()
              end
          end)
      end)
  
      UserInputService.InputBegan:Connect(function(input, gameProcessed)
          if not gameProcessed and Keybind and input.KeyCode == Keybind then
              FireButton()
          end
      end)
  
      local ButtonObj = {}
      function ButtonObj:Set(NewVal)
          if type(NewVal) == "string" then
              LabelFunc:SetTitle(NewVal)
          elseif type(NewVal) == "function" then
              Callback = NewVal
          end
      end
      function ButtonObj:SetDesc(NewDesc)
          LabelFunc:SetDesc(NewDesc)
      end
      function ButtonObj:SetKeybind(NewKey)
          if type(NewKey) == "string" then
              SetKeybind(Enum.KeyCode[NewKey])
          elseif typeof(NewKey) == "EnumItem" and NewKey.EnumType == Enum.KeyCode then
              SetKeybind(NewKey)
          end
      end
      function ButtonObj:Visible(...) Funcs:ToggleVisible(Button, ...) end
      function ButtonObj:Destroy() Button:Destroy() end
  
      if Keybind then
          ButtonObj:SetKeybind(Keybind)
      elseif Configs.Keybind then
          ButtonObj:SetKeybind(Configs.Keybind)
      end
  
      return ButtonObj
  end
    function Tab:AddToggle(Configs)
      local TName =Configs.Name or Configs.Title or "Toggle"
      local TDesc = Configs.Desc or Configs.Description or ""
      local Default = Configs.Default or false
      local Flag = Configs.Flag or false
      local Callback = Funcs:GetCallback(Configs, 4)
    
      local Button, LabelFunc = ButtonFrame(Container, TName, TDesc, UDim2.new(1, -100))
    
      local ToggleFrame = InsertTheme(Create("Frame", Button, {
        Size = UDim2.new(0, 30, 0, 14),
        Position = UDim2.new(1, -35, 0.5),
        AnchorPoint = Vector2.new(1, 0.5),
        BackgroundColor3 = Theme["Color Stroke"]
      }), "Stroke")
      Make("Corner", ToggleFrame, UDim.new(1, 0))
    
      local ToggleCircle = InsertTheme(Create("Frame", ToggleFrame, {
        Size = UDim2.new(0, 20, 0, 20),
        Position = UDim2.new(0, -3, 0.5),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundColor3 = Theme["Color Theme"]
      }), "Theme")
      Make("Corner", ToggleCircle, UDim.new(1, 0))
    
      local KeybindButton = InsertTheme(Create("TextButton", Button, {
        Size = UDim2.new(0, 60, 0, 20),
        Position = UDim2.new(1, -100, 0.5),
        AnchorPoint = Vector2.new(1, 0.5),
        BackgroundColor3 = Theme["Color Theme"],
        Text = "...",
        TextColor3 = Theme["Color Text"],
        Font = Enum.Font.GothamBold,
        TextSize = 12
      }), "Theme")
      Make("Corner", KeybindButton, UDim.new(0, 4))
    
      local FlagData = GetFlag(Flag) or {Default, nil}
      if type(FlagData) == "boolean" then
        FlagData = {FlagData,nil}
      end
      local Toggled = FlagData[1]
      local Keybind = FlagData[2] and Enum.KeyCode[FlagData[2]] or nil
    
      local function UpdateFlag()
        SetFlag(Flag, {Toggled, Keybind and Keybind.Name or nil})
      end
    
      local function UpdateToggle()
        CreateTween({ToggleCircle, "Position", Toggled and UDim2.new(1, -14, 0.5) or UDim2.new(0, -3, 0.5), 0.2})
        CreateTween({ToggleCircle, "BackgroundColor3", Toggled and Theme["Color Theme"] or Theme["Color Stroke"], 0.2})
        UpdateFlag()
        Funcs:FireCallback(Callback, Toggled)
      end
    
      Button.Activated:Connect(function()
        Toggled = not Toggled
        UpdateToggle()
      end)
    
      local function SetKeybind(key)
        Keybind = key
        KeybindButton.Text = key and key.Name or "..."
        UpdateFlag()
      end
    
      KeybindButton.Activated:Connect(function()
        KeybindButton.Text = "..."
        local input
        input = UserInputService.InputBegan:Connect(function(key)
            if key.UserInputType == Enum.UserInputType.Keyboard then
                SetKeybind(key.KeyCode)
                UpdateFlag()
                input:Disconnect()
            elseif key.UserInputType == Enum.UserInputType.MouseButton1 or 
                   key.UserInputType == Enum.UserInputType.MouseButton2 then
                SetKeybind(nil)  -- Set to nil to remove the keybind
                UpdateFlag()
                input:Disconnect()
            end
        end)
      end)
    
      UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if not gameProcessed and Keybind and input.KeyCode == Keybind then
          Toggled = not Toggled
          UpdateToggle()
        end
      end)
    
      local Toggle = {}
      function Toggle:Set(NewVal)
        if type(NewVal) == "boolean" then
          Toggled = NewVal
          UpdateToggle()
        elseif type(NewVal) == "string" then
          LabelFunc:SetTitle(NewVal)
        elseif type(NewVal) == "function" then
          Callback = NewVal
        end
      end
      function Toggle:SetDesc(NewDesc)
        LabelFunc:SetDesc(NewDesc)
      end
      function Toggle:SetKeybind(NewKey)
        if type(NewKey) == "string" then
          SetKeybind(Enum.KeyCode[NewKey])
        elseif typeof(NewKey) == "EnumItem" and NewKey.EnumType == Enum.KeyCode then
          SetKeybind(NewKey)
        end
      end
      function Toggle:Visible(...) Funcs:ToggleVisible(Button, ...) end
      function Toggle:Destroy() Button:Destroy() end
    
      UpdateToggle()
      if Keybind then
        Toggle:SetKeybind(Keybind)
      elseif Configs.Keybind then
        Toggle:SetKeybind(Configs.Keybind)
      end
    
      return Toggle
    end
    function Tab:AddDropdown(Configs)
      local DName = Configs.Name or Configs.Title or "Dropdown"
      local DDesc = Configs.Desc or Configs.Description or ""
      local DOptions = Configs.Options or {}
      local OpDefault =  Configs.Default or {}
      local Flag = Configs.Flag or false
      local DMultiSelect = Configs.MultiSelect or false
      local Callback = Funcs:GetCallback(Configs, 4)
      
      local Button, LabelFunc = ButtonFrame(Container, DName, DDesc, UDim2.new(1, -180))
      
      local SelectedFrame = InsertTheme(Create("Frame", Button, {
        Size = UDim2.new(0, 150, 0, 18),
        Position = UDim2.new(1, -10, 0.5),
        AnchorPoint = Vector2.new(1, 0.5),
        BackgroundColor3 = Theme["Color Stroke"]
      }), "Stroke")Make("Corner", SelectedFrame, UDim.new(0, 4))
      
      local ActiveLabel = InsertTheme(Create("TextLabel", SelectedFrame, {
        Size = UDim2.new(0.85, 0, 0.85, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        BackgroundTransparency = 1,
        Font = Enum.Font.GothamBold,
        TextScaled = true,
        TextColor3 = Theme["Color Text"],
        Text = "..."
      }), "Text")
      
      local Arrow = Create("ImageLabel", SelectedFrame, {
        Size = UDim2.new(0, 15, 0, 15),
        Position = UDim2.new(0, -5, 0.5),
        AnchorPoint = Vector2.new(1, 0.5),
        Image = "rbxassetid://10709791523",
        BackgroundTransparency = 1
      })
      
      local NoClickFrame = Create("TextButton", DropdownHolder, {
        Name = "AntiClick",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Visible = false,
        Text = ""
      })
      
      local DropFrame = Create("Frame", NoClickFrame, {
        Size = UDim2.new(SelectedFrame.Size.X, 0, 0),
        BackgroundTransparency = 0.1,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        AnchorPoint = Vector2.new(0, 1),
        Name = "DropdownFrame",
        ClipsDescendants = true,
        Active = true
      })Make("Corner", DropFrame)Make("Stroke", DropFrame)Make("Gradient", DropFrame, {Rotation = 60})
      
      local ScrollFrame = InsertTheme(Create("ScrollingFrame", DropFrame, {
        ScrollBarImageColor3 = Theme["Color Theme"],
        Size = UDim2.new(1, 0, 1, 0),
        ScrollBarThickness = 1.5,
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        CanvasSize = UDim2.new(),
        ScrollingDirection = "Y",
        AutomaticCanvasSize = "Y",
        Active = true
      }, {
        Create("UIPadding", {
          PaddingLeft = UDim.new(0, 8),
          PaddingRight = UDim.new(0, 8),
          PaddingTop = UDim.new(0, 5),
          PaddingBottom = UDim.new(0, 5)
        }), Create("UIListLayout", {
          Padding = UDim.new(0, 4)
        })
      }), "ScrollBar")
      
      local ScrollSize, WaitClick = 5
      local function Disable()
        WaitClick = true
        CreateTween({Arrow, "Rotation", 0, 0.2})
        CreateTween({DropFrame, "Size", UDim2.new(0, 152, 0, 0), 0.2, true})
        CreateTween({Arrow, "ImageColor3", Color3.fromRGB(255, 255, 255), 0.2})
        Arrow.Image = "rbxassetid://10709791523"
        NoClickFrame.Visible = false
        WaitClick = false
      end
      
      local function GetFrameSize()
        return UDim2.fromOffset(152, ScrollSize)
      end
      
      local function CalculateSize()
        local Count = 0
        for _,Frame in pairs(ScrollFrame:GetChildren()) do
          if Frame:IsA("Frame") or Frame.Name == "Option" then
            Count = Count + 1
          end
        end
        ScrollSize = (math.clamp(Count, 0, 10) * 25) + 10
        if NoClickFrame.Visible then
          NoClickFrame.Visible = true
          CreateTween({DropFrame, "Size", GetFrameSize(), 0.2, true})
        end
      end
      
      local function Minimize()
        if WaitClick then return end
        WaitClick = true
        if NoClickFrame.Visible then
          Arrow.Image = "rbxassetid://10709791523" 
          CreateTween({Arrow, "ImageColor3", Color3.fromRGB(255, 255, 255), 0.2})
          CreateTween({DropFrame, "Size", UDim2.new(0, 152, 0, 0), 0.2, true})
          NoClickFrame.Visible = false
        else
          NoClickFrame.Visible = true
          Arrow.Image = "rbxassetid://10709790948"
          CreateTween({Arrow, "ImageColor3", Theme["Color Theme"], 0.2})
          CreateTween({DropFrame, "Size", GetFrameSize(), 0.2, true})
        end
        WaitClick = false
      end
      
      local function CalculatePos()
        local FramePos = SelectedFrame.AbsolutePosition
        local ScreenSize = ScreenGui.AbsoluteSize
        local ClampX = math.clamp((FramePos.X / UIScale), 0, ScreenSize.X / UIScale - DropFrame.Size.X.Offset)
        local ClampY = math.clamp((FramePos.Y / UIScale) , 0, ScreenSize.Y / UIScale)
        
        local NewPos = UDim2.fromOffset(ClampX, ClampY)
        local AnchorPoint = FramePos.Y > ScreenSize.Y / 1.4 and 1 or ScrollSize > 80 and 0.5 or 0
        DropFrame.AnchorPoint = Vector2.new(0, AnchorPoint)
        CreateTween({DropFrame, "Position", NewPos, 0.1})
      end
      local AddNewOptions, GetOptions, AddOption, RemoveOption, Selected do
        local Default = type(OpDefault) ~= "table" and {OpDefault} or OpDefault
        local MultiSelect = DMultiSelect
        local Options = {}
        Selected = MultiSelect and {} or CheckFlag(Flag) and GetFlag(Flag) or Default[1]
        
        if MultiSelect then
          for index, Value in pairs(CheckFlag(Flag) and GetFlag(Flag) or Default) do
            if type(index) == "string" and (DOptions[index] or table.find(DOptions, index)) then
              Selected[index] = Value
            elseif DOptions[Value] then
              Selected[Value] = true
            end
          end
        end
        
        local function CallbackSelected()
          SetFlag(Flag, MultiSelect and Selected or tostring(Selected))
          Funcs:FireCallback(Callback, Selected)
        end
        
        local function UpdateLabel()
          if MultiSelect then
            local list = {}
            for index, Value in pairs(Selected) do
              if Value then
                table.insert(list, index)
              end
            end
            ActiveLabel.Text = #list > 0 and table.concat(list, ", ") or "..."
          else
            ActiveLabel.Text = tostring(Selected or "...")
          end
        end
        
        local function UpdateSelected()
          if MultiSelect then
            for _,v in pairs(Options) do
              local nodes, Stats = v.nodes, v.Stats
              CreateTween({nodes[2], "BackgroundTransparency", Stats and 0 or 0.8, 0.35})
              CreateTween({nodes[2], "Size", Stats and UDim2.fromOffset(4, 12) or UDim2.fromOffset(4, 4), 0.35})
              CreateTween({nodes[3], "TextTransparency", Stats and 0 or 0.4, 0.35})
            end
          else
            for _,v in pairs(Options) do
              local Slt = v.Value == Selected
              local nodes = v.nodes
              CreateTween({nodes[2], "BackgroundTransparency", Slt and 0 or 1, 0.35})
              CreateTween({nodes[2], "Size", Slt and UDim2.fromOffset(4, 14) or UDim2.fromOffset(4, 4), 0.35})
              CreateTween({nodes[3], "TextTransparency", Slt and 0 or 0.4, 0.35})
            end
          end
          UpdateLabel()
        end
        
        local function Select(Option)
          if MultiSelect then
            Option.Stats = not Option.Stats
            Option.LastCB = tick()
            
            Selected[Option.Name] = Option.Stats
            CallbackSelected()
          else
            Option.LastCB = tick()
            
            Selected = Option.Value
            CallbackSelected()
          end
          UpdateSelected()
        end
        
        AddOption = function(index, Value)
          local Name = tostring(type(index) == "string" and index or Value)
          
          if Options[Name] then return end
          Options[Name] = {
            index = index,
            Value = Value,
            Name = Name,
            Stats = false,
            LastCB = 0
          }
          
          if MultiSelect then
            local Stats = Selected[Name]
            Selected[Name] = Stats or false
            Options[Name].Stats = Stats
          end
          
          local Button = Make("Button", ScrollFrame, {
            Name = "Option",
            Size = UDim2.new(1, 0, 0, 21),
            Position = UDim2.new(0, 0, 0.5),
            AnchorPoint = Vector2.new(0, 0.5)
          })Make("Corner", Button, UDim.new(0, 4))
          
          local IsSelected = InsertTheme(Create("Frame", Button, {
            Position = UDim2.new(0, 1, 0.5),
            Size = UDim2.new(0, 4, 0, 4),
            BackgroundColor3 = Theme["Color Theme"],
            BackgroundTransparency = 1,
            AnchorPoint = Vector2.new(0, 0.5)
          }), "Theme")Make("Corner", IsSelected, UDim.new(0.5, 0))
          
          local OptioneName = InsertTheme(Create("TextLabel", Button, {
            Size = UDim2.new(1, 0, 1),
            Position = UDim2.new(0, 10),
            Text = Name,
            TextColor3 = Theme["Color Text"],
            Font = Enum.Font.GothamBold,
            TextXAlignment = "Left",
            BackgroundTransparency = 1,
            TextTransparency = 0.4
          }), "Text")
          
          Button.Activated:Connect(function()
            Select(Options[Name])
          end)
          
          Options[Name].nodes = {Button, IsSelected, OptioneName}
        end
        
        RemoveOption = function(index, Value)
          local Name = tostring(type(index) == "string" and index or Value)
          if Options[Name] then
            if MultiSelect then Selected[Name] = nil else Selected = nil end
            Options[Name].nodes[1]:Destroy()
            table.clear(Options[Name])
            Options[Name] = nil
          end
        end
        
        GetOptions = function()
          return Options
        end
        
        AddNewOptions = function(List, Clear)
          if Clear then
            table.foreach(Options, RemoveOption)
          end
          table.foreach(List, AddOption)
          CallbackSelected()
          UpdateSelected()
        end
        
        table.foreach(DOptions, AddOption)
        CallbackSelected()
        UpdateSelected()
      end
      
      Button.Activated:Connect(Minimize)
      NoClickFrame.MouseButton1Down:Connect(Disable)
      NoClickFrame.MouseButton1Click:Connect(Disable)
      MainFrame:GetPropertyChangedSignal("Visible"):Connect(Disable)
      SelectedFrame:GetPropertyChangedSignal("AbsolutePosition"):Connect(CalculatePos)
      
      Button.Activated:Connect(CalculateSize)
      ScrollFrame.ChildAdded:Connect(CalculateSize)
      ScrollFrame.ChildRemoved:Connect(CalculateSize)
      CalculatePos()
      CalculateSize()
      
      local Dropdown = {}
      function Dropdown:Visible(...) Funcs:ToggleVisible(Button, ...) end
      function Dropdown:Destroy() Button:Destroy() end
      function Dropdown:Callback(...) Funcs:InsertCallback(Callback, ...)(Selected) end
      
      function Dropdown:Add(...)
        local NewOptions = {...}
        if type(NewOptions[1]) == "table" then
          table.foreach(Option, function(_,Name)
            AddOption(Name)
          end)
        else
          table.foreach(NewOptions, function(_,Name)
            AddOption(Name)
          end)
        end
      end
      function Dropdown:Remove(Option)
        for index, Value in pairs(GetOptions()) do
          if type(Option) == "number" and index == Option or Value.Name == "Option" then
            RemoveOption(index, Value.Value)
          end
        end
      end
      function Dropdown:Select(Option)
        if type(Option) == "string" then
          for _,Val in pairs(Options) do
            if Val.Name == Option then
              Val.Active()
            end
          end
        elseif type(Option) == "number" then
          for ind,Val in pairs(Options) do
            if ind == Option then
              Val.Active()
            end
          end
        end
      end
      function Dropdown:Set(Val1, Clear)
        if type(Val1) == "table" then
          AddNewOptions(Val1, not Clear)
        elseif type(Val1) == "function" then
          Callback = Val1
        end
      end
      return Dropdown
    end
    function Tab:AddColorPicker(Configs)
      local SName = Configs[1] or Configs.Name or Configs.Title or "Color Picker!"
      local SDesc = Configs.Desc or Configs.Description or ""
      local Callback = Funcs:GetCallback(Configs, 6)
      local Flag = Configs[3] or Configs.Flag or false
      local Default = Configs.Default or Color3.new(1, 0, 0.298039)
      if CheckFlag(Flag) then 
          local flagValue = GetFlag(Flag)
          if type(flagValue) == "table" and flagValue.R and flagValue.G and flagValue.B then
              Default = Color3.fromRGB(flagValue.R, flagValue.G, flagValue.B)
          end
      end
      
      local Button, LabelFunc = ColorPickerFrame(Container, SName, SDesc, UDim2.new(1, -180))
      
      local ColorPicker = game:GetObjects("rbxassetid://121292591248099")[1]
      ColorPicker.Position = UDim2.new(0.829999983, 0, 0.140000001, 0)
      ColorPicker.Parent = Button
  
      local UserInputService = game:GetService("UserInputService")
      local RunService = game:GetService("RunService")
  
      local hue = ColorPicker.Hue
      local picker = ColorPicker
      local testFrame = ColorPicker.Frame
  
      testFrame.BackgroundColor3 = Default
      picker.BackgroundColor3 = Default
  
      local white, black = Color3.new(1, 1, 1), Color3.new(0, 0, 0)
      local colors = {Color3.new(1, 0, 0), Color3.new(1, 1, 0), Color3.new(0, 1, 0), 
          Color3.new(0, 1, 1), Color3.new(0, 0, 1), Color3.new(1, 0, 1), Color3.new(1, 0, 0)}
  
      local isDraggingHue = false
      local isDraggingPicker = false
  
      local platform = UserInputService:GetPlatform()
      local isMobile = platform == Enum.Platform.IOS or platform == Enum.Platform.Android
  
      local function updateHue(input)
          local position = isMobile and input.Position or UserInputService:GetMouseLocation()
          local y = position.Y
          local percent = math.clamp((y - hue.AbsolutePosition.Y) / hue.AbsoluteSize.Y, 0, 1)
          local num = 1 + percent * 6
          local startC = colors[math.floor(num)]
          local endC = colors[math.ceil(num)]
          picker.BackgroundColor3 = startC:lerp(endC, num - math.floor(num)) or Color3.new(0, 0, 0)
      end
  
      local function updatePicker(input)
          local color
          if not input then
              color = Default
          else
              local position = isMobile and input.Position or UserInputService:GetMouseLocation()
              local x, y = position.X, position.Y
              local xPercent = math.clamp((x - picker.AbsolutePosition.X) / picker.AbsoluteSize.X, 0, 1)
              local yPercent = math.clamp((y - picker.AbsolutePosition.Y) / picker.AbsoluteSize.Y, 0, 1)
              color = white:lerp(picker.BackgroundColor3, xPercent):lerp(black, yPercent)
          end
          
          if color then
              testFrame.BackgroundColor3 = color
              Funcs:FireCallback(Callback, color)
      
              if Flag then
                  SetFlag(Flag, {
                      R = math.floor(color.R * 255),
                      G = math.floor(color.G * 255),
                      B = math.floor(color.B * 255)
                  })
              end
          end
      end
  
      updatePicker()
  
      local function handleInput(input)
          if isDraggingHue then
              updateHue(input)
          elseif isDraggingPicker then
              updatePicker(input)
          end
      end
  
      if isMobile then
          UserInputService.InputChanged:Connect(function(input)
              if input.UserInputType == Enum.UserInputType.Touch then
                  handleInput(input)
              end
          end)
      else
          RunService.RenderStepped:Connect(function()
              if isDraggingHue or isDraggingPicker then
                  handleInput({})
              end
          end)
      end
  
      local function beginDragging(obj, updateFunc)
          return function(input)
              if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
                  if obj == hue then
                      isDraggingHue = true
                  elseif obj == picker then
                      isDraggingPicker = true
                  end
                  updateFunc(input)
              end
          end
      end
  
      local function endDragging(obj)
          return function(input)
              if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
                  if obj == hue then
                      isDraggingHue = false
                  elseif obj == picker then
                      isDraggingPicker = false
                  end
              end
          end
      end
  
      hue.InputBegan:Connect(beginDragging(hue, updateHue))
      hue.InputEnded:Connect(endDragging(hue))
  
      picker.InputBegan:Connect(beginDragging(picker, updatePicker))
      picker.InputEnded:Connect(endDragging(picker))
  
      UserInputService.InputEnded:Connect(function(input)
          if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
              isDraggingHue = false
              isDraggingPicker = false
          end
      end)
  
      local ColorPicker = {}
      function ColorPicker:Set(newColor)
          if typeof(newColor) == "Color3" then
              Default = newColor
              updatePicker()
          end
      end
      function ColorPicker:Visible(...) Funcs:ToggleVisible(Button, ...) end
      function ColorPicker:Destroy() Button:Destroy() end
      return ColorPicker
    end
    function Tab:AddSlider(Configs)
      local SName = Configs.Name or Configs.Title or "Slider!"
      local SDesc = Configs.Desc or Configs.Description or ""
      local Min = Configs.MinValue or Configs.Min or 10
      local Max = Configs.MaxValue or Configs.Max or 100
      local Increase = Configs.Increase or 1
      local Callback = Funcs:GetCallback(Configs, 6)
      local Flag = Configs.Flag or false
      local Default = Configs.Default or 25
      if CheckFlag(Flag) then Default = GetFlag(Flag) end
      Min, Max = Min / Increase, Max / Increase
      
      local Button, LabelFunc = ButtonFrame(Container, SName, SDesc, UDim2.new(1, -180))
      
      local SliderHolder = Create("TextButton", Button, {
        Size = UDim2.new(0.45, 0, 1),
        Position = UDim2.new(1),
        AnchorPoint = Vector2.new(1, 0),
        AutoButtonColor = false,
        Text = "",
        BackgroundTransparency = 1
      })
      
      local SliderBar = InsertTheme(Create("Frame", SliderHolder, {
        BackgroundColor3 = Theme["Color Stroke"],
        Size = UDim2.new(1, -20, 0, 6),
        Position = UDim2.new(0.5, 0, 0.5),
        AnchorPoint = Vector2.new(0.5, 0.5)
      }), "Stroke")Make("Corner", SliderBar)
      
      local Indicator = InsertTheme(Create("Frame", SliderBar, {
        BackgroundColor3 = Theme["Color Theme"],
        Size = UDim2.fromScale(0.3, 1),
        BorderSizePixel = 0
      }), "Theme")Make("Corner", Indicator)
      
      local SliderIcon = Create("Frame", SliderBar, {
        Size = UDim2.new(0, 6, 0, 12),
        BackgroundColor3 = Color3.fromRGB(220, 220, 220),
        Position = UDim2.fromScale(0.3, 0.5),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundTransparency = 0.2
      })Make("Corner", SliderIcon)
      
      local LabelVal = InsertTheme(Create("TextLabel", SliderHolder, {
        Size = UDim2.new(0, 14, 0, 14),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(0, 0, 0.5),
        BackgroundTransparency = 1,
        TextColor3 = Theme["Color Text"],
        Font = Enum.Font.FredokaOne,
        TextSize = 12
      }), "Text")
      
      local UIScale = Create("UIScale", LabelVal)
      
      local BaseMousePos = Create("Frame", SliderBar, {
        Position = UDim2.new(0, 0, 0.5, 0),
        Visible = false
      })
      
      local function UpdateLabel(NewValue)
        local Number = tonumber(NewValue * Increase)
        Number = math.floor(Number * 100) / 100
        
        Default, LabelVal.Text = Number, tostring(Number)
        Funcs:FireCallback(Callback, Default)
      end
      
      local function ControlPos()
        local MousePos = Player:GetMouse()
        local APos = MousePos.X - BaseMousePos.AbsolutePosition.X
        local ConfigureDpiPos = APos / SliderBar.AbsoluteSize.X
        
        SliderIcon.Position = UDim2.new(math.clamp(ConfigureDpiPos, 0, 1), 0, 0.5, 0)
      end
      
      local function UpdateValues()
        Indicator.Size = UDim2.new(SliderIcon.Position.X.Scale, 0, 1, 0)
        local SliderPos = SliderIcon.Position.X.Scale
        local NewValue = math.floor(((SliderPos * Max) / Max) * (Max - Min) + Min)
        UpdateLabel(NewValue)
      end
      
      SliderHolder.MouseButton1Down:Connect(function()
        CreateTween({SliderIcon, "Transparency", 0, 0.3})
        Container.ScrollingEnabled = false
        while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do task.wait()
          ControlPos()
        end
        CreateTween({SliderIcon, "Transparency", 0.2, 0.3})
        Container.ScrollingEnabled = true
        SetFlag(Flag, Default)
      end)
      
      LabelVal:GetPropertyChangedSignal("Text"):Connect(function()
        UIScale.Scale = 0.3
        CreateTween({UIScale, "Scale", 1.2, 0.1})
        CreateTween({LabelVal, "Rotation", math.random(-1, 1) * 5, 0.15, true})
        CreateTween({UIScale, "Scale", 1, 0.2})
        CreateTween({LabelVal, "Rotation", 0, 0.1})
      end)
      
			function SetSlider(NewValue)
			  if type(NewValue) ~= "number" then return end
			  
        local Min, Max = Min * Increase, Max * Increase
        
        local SliderPos = (NewValue - Min) / (Max - Min)
        
        SetFlag(Flag, NewValue)
        CreateTween({ SliderIcon, "Position", UDim2.fromScale(math.clamp(SliderPos, 0, 1), 0.5), 0.3, true })
			end;SetSlider(Default)
			
			SliderIcon:GetPropertyChangedSignal("Position"):Connect(UpdateValues)UpdateValues()
			
			local Slider = {}
      function Slider:Set(NewVal1, NewVal2)
        if NewVal1 and NewVal2 then
          LabelFunc:SetTitle(NewVal1)
          LabelFunc:SetDesc(NewVal2)
        elseif type(NewVal1) == "string" then
          LabelFunc:SetTitle(NewVal1)
        elseif type(NewVal1) == "function" then
          Callback = NewVal1
        elseif type(NewVal1) == "number" then
          SetSlider(NewVal1)
        end
      end
      function Slider:Callback(...) Funcs:InsertCallback(Callback, ...)(tonumber(Default)) end
      function Slider:Visible(...) Funcs:ToggleVisible(Button, ...) end
      function Slider:Destroy() Button:Destroy() end
			return Slider
    end
    function Tab:AddTextBox(Configs)
      local TName = Configs.Name or Configs.Title or "Text Box"
      local TDesc = Configs.Desc or Configs.Description or ""
      local TDefault = Configs.Default or ""
      local TPlaceholderText = Configs.PlaceholderText or "Input"
      local TClearText = Configs.ClearText or false
      local Callback = Funcs:GetCallback(Configs, 4)
      
      if type(TDefault) ~= "string" or TDefault:gsub(" ", ""):len() < 1 then
        TDefault = false
      end
      
      local Button, LabelFunc = ButtonFrame(Container, TName, TDesc, UDim2.new(1, -38))
      
      local SelectedFrame = InsertTheme(Create("Frame", Button, {
        Size = UDim2.new(0, 150, 0, 18),
        Position = UDim2.new(1, -10, 0.5),
        AnchorPoint = Vector2.new(1, 0.5),
        BackgroundColor3 = Theme["Color Stroke"]
      }), "Stroke")Make("Corner", SelectedFrame, UDim.new(0, 4))
      
      local TextBoxInput = InsertTheme(Create("TextBox", SelectedFrame, {
        Size = UDim2.new(0.85, 0, 0.85, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        BackgroundTransparency = 1,
        Font = Enum.Font.GothamBold,
        TextScaled = true,
        TextColor3 = Theme["Color Text"],
        ClearTextOnFocus = TClearText,
        PlaceholderText = TPlaceholderText,
        Text = ""
      }), "Text")
      
      local Pencil = Create("ImageLabel", SelectedFrame, {
        Size = UDim2.new(0, 12, 0, 12),
        Position = UDim2.new(0, -5, 0.5),
        AnchorPoint = Vector2.new(1, 0.5),
        Image = "rbxassetid://15637081879",
        BackgroundTransparency = 1
      })
      
      local TextBox = {}
      local function Input()
        local Text = TextBoxInput.Text
        if Text:gsub(" ", ""):len() > 0 then
          if type(TextBox.OnChanging) then Text = TextBox.OnChanging(Text) or Text end
          Funcs:FireCallback(Callback, Text)
          TextBoxInput.Text = Text
        end
      end
      
      TextBoxInput.FocusLost:Connect(Input)Input()
      
      TextBoxInput.FocusLost:Connect(function()
        CreateTween({Pencil, "ImageColor3", Color3.fromRGB(255, 255, 255), 0.2})
      end)
      TextBoxInput.Focused:Connect(function()
        CreateTween({Pencil, "ImageColor3", Theme["Color Theme"], 0.2})
      end)
      
      TextBox.OnChanging = false
      function TextBox:Visible(...) Funcs:ToggleVisible(Button, ...) end
      function TextBox:Destroy() Button:Destroy() end
      return TextBox
    end
    function Tab:AddDiscordInvite(Configs)
      local Title = Configs.Name or Configs.Title or "Discord"
      local Desc = Configs.Description or ""
      local Logo = Configs.Logo or ""
      local Invite = Configs.Invite or ""
      
      local InviteHolder = Create("Frame", Container, {
        Size = UDim2.new(1, 0, 0, 80),
        Name = "Option",
        BackgroundTransparency = 1
      })
      
      local InviteLabel = Create("TextLabel", InviteHolder, {
        Size = UDim2.new(1, 0, 0, 15),
        Position = UDim2.new(0, 5),
        TextColor3 = Color3.fromRGB(40, 150, 255),
        Font = Enum.Font.GothamBold,
        TextXAlignment = "Left",
        BackgroundTransparency = 1,
        TextSize = 10,
        Text = Invite
      })
      
      local FrameHolder = InsertTheme(Create("Frame", InviteHolder, {
        Size = UDim2.new(1, 0, 0, 65),
        AnchorPoint = Vector2.new(0, 1),
        Position = UDim2.new(0, 0, 1),
        BackgroundColor3 = Theme["Color Hub 2"]
      }), "Frame")Make("Corner", FrameHolder)
      
      local ImageLabel = Create("ImageLabel", FrameHolder, {
        Size = UDim2.new(0, 30, 0, 30),
        Position = UDim2.new(0, 7, 0, 7),
        Image = Logo,
        BackgroundTransparency = 1
      })Make("Corner", ImageLabel, UDim.new(0, 4))Make("Stroke", ImageLabel)
      
      local LTitle = InsertTheme(Create("TextLabel", FrameHolder, {
        Size = UDim2.new(1, -52, 0, 15),
        Position = UDim2.new(0, 44, 0, 7),
        Font = Enum.Font.GothamBold,
        TextColor3 = Theme["Color Text"],
        TextXAlignment = "Left",
        BackgroundTransparency = 1,
        TextSize = 10,
        Text = Title
      }), "Text")
      
      local LDesc = InsertTheme(Create("TextLabel", FrameHolder, {
        Size = UDim2.new(1, -52, 0, 0),
        Position = UDim2.new(0, 44, 0, 22),
        TextWrapped = "Y",
        AutomaticSize = "Y",
        Font = Enum.Font.Gotham,
        TextColor3 = Theme["Color Dark Text"],
        TextXAlignment = "Left",
        BackgroundTransparency = 1,
        TextSize = 8,
        Text = Desc
      }), "DarkText")
      
      local JoinButton = Create("TextButton", FrameHolder, {
        Size = UDim2.new(1, -14, 0, 16),
        AnchorPoint = Vector2.new(0.5, 1),
        Position = UDim2.new(0.5, 0, 1, -7),
        Text = "Join",
        Font = Enum.Font.GothamBold,
        TextSize = 12,
        TextColor3 = Color3.fromRGB(220, 220, 220),
        BackgroundColor3 = Color3.fromRGB(50, 150, 50)
      })Make("Corner", JoinButton, UDim.new(0, 5))
      
      local ClickDelay
      JoinButton.Activated:Connect(function()
        setclipboard(Invite)
        if ClickDelay then return end
        
        ClickDelay = true
        SetProps(JoinButton, {
          Text = "Copied to Clipboard",
          BackgroundColor3 = Color3.fromRGB(100, 100, 100),
          TextColor3 = Color3.fromRGB(150, 150, 150)
        })task.wait(5)
        SetProps(JoinButton, {
          Text = "Join",
          BackgroundColor3 = Color3.fromRGB(50, 150, 50),
          TextColor3 = Color3.fromRGB(220, 220, 220)
        })ClickDelay = false
      end)
      
      local DiscordInvite = {}
      function DiscordInvite:Destroy() InviteHolder:Destroy() end
      function DiscordInvite:Visible(...) Funcs:ToggleVisible(InviteHolder, ...) end
      return DiscordInvite
    end
    return Tab
  end
  
  CloseButton.Activated:Connect(Window.CloseBtn)
  MinimizeButton.Activated:Connect(Window.MinimizeBtn)
  return Window
end
closevalue.Value = true
AtlasLoading:Destroy()
if KeyGui2 then KeyGui2:Destroy() end
if KeyGradient then KeyGradient:Disconnect() end
if LoadingConnection then LoadingConnection:Disconnect() end
if AtlasLoadingConnection then AtlasLoadingConnection:Disconnect() end

local Window = redzlib:MakeWindow({
  Title = "Atlas",
  SubTitle = "Auto 3s",
  SaveFolder = "AtlashubSaveConfigs.lua"
})
QBAimbotGravity = 31
wrtab = Window:MakeTab({"WR", "rbxassetid://91148684014462"})
qbtab = Window:MakeTab({"QB", "rbxassetid://130089606329240"})
defensetab = Window:MakeTab({"Defense", "rbxassetid://97052018610732"})
physicstab = Window:MakeTab({"Physics", 'rbxassetid://106738018294992'})
settingstab = Window:MakeTab({"Settings", 'rbxassetid://130604079483277'})
effectstab = Window:MakeTab({"Effects", 'rbxassetid://100500296638402'})
Section = settingstab:AddSection({"Join Us"})
settingstab:AddDiscordInvite({
  Name = "Atlas",
  Logo = "rbxassetid://140195185056728",
  Invite = "https://discord.gg/BngS4PFTDK"
})

antiwobbleD = qbtab:AddToggle({Name="Anti Wobble",Default=false,Callback=function(antiwobblestate)
  AntiWobble = antiwobblestate
end})

qbtab:AddSlider({Name="Anti Wobble Force",Description="Recommended: 0.5-1",Min=0,Max=2,Increase=0.1,Default=0.6,Callback=function(awforce)
  AntiWobbleForce = awforce
end})	


return redzlib, UIParent
