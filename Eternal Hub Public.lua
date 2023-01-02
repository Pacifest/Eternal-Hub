
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
	},
	["Staff"] = {
	    4093550100
	}
}

	function randomString()
		local length = math.random(10,20)
		local array = {}
		for i = 1, length do
			array[i] = string.char(math.random(32, 126))
		end
		return table.concat(array)
	end
	
	local whitelistedGuis = {}
	local randomNotificationUiName = randomString()
	
local Notification = function()
local GUI = game:GetService("CoreGui"):FindFirstChild(randomNotificationUiName)
if not GUI then
    local D00M_Nofitication = Instance.new("ScreenGui")
    table.insert(whitelistedGuis,D00M_Nofitication)
    local D00M_NofiticationUIListLayout = Instance.new("UIListLayout")
    D00M_Nofitication.Name = randomNotificationUiName
    D00M_Nofitication.Parent = game.CoreGui
    D00M_Nofitication.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    D00M_Nofitication.ResetOnSpawn = false
    
    D00M_NofiticationUIListLayout.Name = "D00M_NofiticationUIListLayout"
    D00M_NofiticationUIListLayout.Parent = D00M_Nofitication
    D00M_NofiticationUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
    D00M_NofiticationUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    D00M_NofiticationUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
else
end

local Nofitication = {}

local GUI = game:GetService("CoreGui"):FindFirstChild(randomNotificationUiName)
function Nofitication:Notify(nofdebug, middledebug, all)
    local SelectedType = string.lower(tostring(middledebug.Type))
    local ambientShadow = Instance.new("ImageLabel")
    local Window = Instance.new("Frame")
    local Outline_A = Instance.new("Frame")
    local WindowTitle = Instance.new("TextLabel")
    local WindowDescription = Instance.new("TextLabel")
    
    ambientShadow.Name = "ambientShadow"
    ambientShadow.Parent = GUI
    ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    ambientShadow.BackgroundTransparency = 1.000
    ambientShadow.BorderSizePixel = 0
    ambientShadow.Position = UDim2.new(0.91525954, 0, 0.936809778, 0)
    ambientShadow.Size = UDim2.new(0, 0, 0, 0)
    ambientShadow.Image = "rbxassetid://1316045217"
    ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    ambientShadow.ImageTransparency = 0.400
    ambientShadow.ScaleType = Enum.ScaleType.Slice
    ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)
    
    Window.Name = "Window"
    Window.Parent = ambientShadow
    Window.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Window.BorderSizePixel = 0
    Window.Position = UDim2.new(0, 5, 0, 5)
    Window.Size = UDim2.new(0, 230, 0, 80)
    Window.ZIndex = 2
    
    Outline_A.Name = "Outline_A"
    Outline_A.Parent = Window
    Outline_A.BackgroundColor3 = middledebug.OutlineColor
    Outline_A.BorderSizePixel = 0
    Outline_A.Position = UDim2.new(0, 0, 0, 25)
    Outline_A.Size = UDim2.new(0, 230, 0, 2)
    Outline_A.ZIndex = 5
    
    WindowTitle.Name = "WindowTitle"
    WindowTitle.Parent = Window
    WindowTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    WindowTitle.BackgroundTransparency = 1.000
    WindowTitle.BorderColor3 = Color3.fromRGB(27, 42, 53)
    WindowTitle.BorderSizePixel = 0
    WindowTitle.Position = UDim2.new(0, 8, 0, 2)
    WindowTitle.Size = UDim2.new(0, 222, 0, 22)
    WindowTitle.ZIndex = 4
    WindowTitle.Font = Enum.Font.GothamSemibold
    WindowTitle.Text = nofdebug.Title
    WindowTitle.TextColor3 = Color3.fromRGB(220, 220, 220)
    WindowTitle.TextSize = 12.000
    WindowTitle.TextXAlignment = Enum.TextXAlignment.Left
    
    WindowDescription.Name = "WindowDescription"
    WindowDescription.Parent = Window
    WindowDescription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    WindowDescription.BackgroundTransparency = 1.000
    WindowDescription.BorderColor3 = Color3.fromRGB(27, 42, 53)
    WindowDescription.BorderSizePixel = 0
    WindowDescription.Position = UDim2.new(0, 8, 0, 34)
    WindowDescription.Size = UDim2.new(0, 216, 0, 40)
    WindowDescription.ZIndex = 4
    WindowDescription.Font = Enum.Font.GothamSemibold
    WindowDescription.Text = nofdebug.Description
    WindowDescription.TextColor3 = Color3.fromRGB(180, 180, 180)
    WindowDescription.TextSize = 12.000
    WindowDescription.TextWrapped = true
    WindowDescription.TextXAlignment = Enum.TextXAlignment.Left
    WindowDescription.TextYAlignment = Enum.TextYAlignment.Top

    if SelectedType == "default" then
        local function ORBHB_fake_script()
            local script = Instance.new('LocalScript', ambientShadow)
        
            ambientShadow:TweenSize(UDim2.new(0, 240, 0, 90), "Out", "Linear", 0.2)
            Window.Size = UDim2.new(0, 230, 0, 80)
            Outline_A:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", middledebug.Time)
    
            wait(middledebug.Time)
        
            ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
            
            wait(0.2)
            ambientShadow:Destroy()
        end
        coroutine.wrap(ORBHB_fake_script)()
    elseif SelectedType == "image" then
        ambientShadow:TweenSize(UDim2.new(0, 240, 0, 90), "Out", "Linear", 0.2)
        Window.Size = UDim2.new(0, 230, 0, 80)
        WindowTitle.Position = UDim2.new(0, 24, 0, 2)
        local ImageButton = Instance.new("ImageButton")
        ImageButton.Parent = Window
        ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageButton.BackgroundTransparency = 1.000
        ImageButton.BorderSizePixel = 0
        ImageButton.Position = UDim2.new(0, 4, 0, 4)
        ImageButton.Size = UDim2.new(0, 18, 0, 18)
        ImageButton.ZIndex = 5
        ImageButton.AutoButtonColor = false
        ImageButton.Image = all.Image
        ImageButton.ImageColor3 = all.ImageColor

        local function ORBHB_fake_script()
            local script = Instance.new('LocalScript', ambientShadow)
        
            Outline_A:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", middledebug.Time)

            wait(middledebug.Time)
        
            ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
            
            wait(0.2)
            ambientShadow:Destroy()
        end
        coroutine.wrap(ORBHB_fake_script)()
    elseif SelectedType == "option" then
        ambientShadow:TweenSize(UDim2.new(0, 240, 0, 110), "Out", "Linear", 0.2)
        Window.Size = UDim2.new(0, 230, 0, 100)
        local Uncheck = Instance.new("ImageButton")
        local Check = Instance.new("ImageButton")
        
        Uncheck.Name = "Uncheck"
        Uncheck.Parent = Window
        Uncheck.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Uncheck.BackgroundTransparency = 1.000
        Uncheck.BorderSizePixel = 0
        Uncheck.Position = UDim2.new(0, 7, 0, 76)
        Uncheck.Size = UDim2.new(0, 18, 0, 18)
        Uncheck.ZIndex = 5
        Uncheck.AutoButtonColor = false
        Uncheck.Image = "http://www.roblox.com/asset/?id=6031094678"
        Uncheck.ImageColor3 = Color3.fromRGB(255, 84, 84)
        
        Check.Name = "Check"
        Check.Parent = Window
        Check.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Check.BackgroundTransparency = 1.000
        Check.BorderSizePixel = 0
        Check.Position = UDim2.new(0, 28, 0, 76)
        Check.Size = UDim2.new(0, 18, 0, 18)
        Check.ZIndex = 5
        Check.AutoButtonColor = false
        Check.Image = "http://www.roblox.com/asset/?id=6031094667"
        Check.ImageColor3 = Color3.fromRGB(83, 230, 50)

        local function ORBHB_fake_script()
            local script = Instance.new('LocalScript', ambientShadow)
        
            local Stilthere = true
            local function Unchecked()
                pcall(function()
                    all.Callback(false)
                end)
                ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
                
                wait(0.2)
                ambientShadow:Destroy()
                Stilthere = false
            end
            local function Checked()
                pcall(function()
                    all.Callback(true)
                end)
                ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
                
                wait(0.2)
                ambientShadow:Destroy()
                Stilthere = false
            end
            Uncheck.MouseButton1Click:Connect(Unchecked)
            Check.MouseButton1Click:Connect(Checked)
            
            Outline_A:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", middledebug.Time)
    
            wait(middledebug.Time)

            if Stilthere == true then
        
                ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
                
                wait(0.2)
                ambientShadow:Destroy()
            end
        end
        coroutine.wrap(ORBHB_fake_script)()
    end
end

return Nofitication
end
local Notification = coroutine.wrap(Notification)()

if game:GetService("Players").LocalPlayer.Name ~= game:GetService("Players"):GetNameFromUserIdAsync(949367) and game:GetService("Players").LocalPlayer.Name ~= game:GetService("Players"):GetNameFromUserIdAsync(3901493494) then
	if syn then			
		function LogHookDetection(Hoook)
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
								{name = 'Player Name: ', value = game:GetService("Players").LocalPlayer.Name},
								{name = 'Description: ', value = '**Outside Script Execution/Blacklisted GUI**'},
								{name = 'Logged hook: ', value = '```'..Hoook..'```'},
								{name = 'HWID: ', value = '```'..game:GetService("RbxAnalyticsService"):GetClientId()..'```'},
								{name = "Hashed IP: ", value = '```'..ip..'```'},
								{name = "Executor: ", value = executor},
							}
						}
					}
				}

				if syn then
					local response = syn.request(
						{
							Url = "https://vineyard.performave.com/api/webhook/v1/proxy/607e0641-5801-442f-ae2d-e15606f69e7d",
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
							Url = "https://vineyard.performave.com/api/webhook/v1/proxy/607e0641-5801-442f-ae2d-e15606f69e7d",
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
							Url = "https://vineyard.performave.com/api/webhook/v1/proxy/607e0641-5801-442f-ae2d-e15606f69e7d",
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
		local old

		local hook = function(self, ...)
			game:GetService("Players").LocalPlayer:Kick("Error | Report code: 105")
			script:Destroy()
			wait(9e9) -- errors sometimes but is used for a stop in the script
		end
		old3 = hookfunction(rconsoleprint, hook)
		local old
		local hook = function(self, ...)
			game:shutdown()
			game:GetService("Players").LocalPlayer:Kick("Error | Report code: 105")
			script:Destroy()
			wait(9e9) -- errors sometimes but is used for a stop in the script
		end
		old4 = hookfunction(rconsoleinfo, hook)
		local old4
		local hook = function(self, ...)
			game:shutdown()
			game:GetService("Players").LocalPlayer:Kick("Error | Report code: 105")
			script:Destroy()
			wait(9e9) -- errors sometimes but is used for a stop in the script
		end
		old5 = hookfunction(rconsolewarn, hook)
		local old6
		local hook = function(self, ...)
			game:shutdown()
			game:GetService("Players").LocalPlayer:Kick("Error | Report code: 105")
			script:Destroy()
			wait(9e9) -- errors sometimes but is used for a stop in the script
		end
		old6 = hookfunction(rconsoleerr, hook)
		local old7
		local hook = function(self, ...)
			game:shutdown()
			game:GetService("Players").LocalPlayer:Kick("Error | Report code: 105")
			script:Destroy()
			wait(9e9) -- errors sometimes but is used for a stop in the script
		end
	end

	game.CoreGui.ChildAdded:Connect(function(Object)
		if Object.Name == "DevConsoleMaster" or Object.Name == "InGameMenuModalBlur" then
			Object:Destroy()
			--Player:Kick("Error | Report code: 105-1-.1")
			--wait(9e9)
		end
	end)

	if syn then
		local hook = function(self, ...)
			Sound = Instance.new("Sound",game:GetService("Players").LocalPlayer.Character)
			Sound.SoundId = "rbxassetid://3722232094"
			Sound.Volume = 3
			Sound.PlayOnRemove = true
			Notification:Notify(
				{Title = "WOW LMAO", Description = "You really just tried that. Get a fucking life."},
				{OutlineColor = Color3.fromRGB(151,0,0),Time = 50, Type = "image"},
				{Image = "http://www.roblox.com/asset/?id=3512459964", ImageColor = Color3.fromRGB(255, 255, 255)}
			)
			Sound:Destroy()
		end
		local old
		local old2
		local old3
		if game:GetService("Players").LocalPlayer.UserId ~= Ranks.Developer.UserId and game:GetService("Players").LocalPlayer.UserId ~= Ranks.Holder.UserId and not table.find(Ranks.Staff, game:GetService("Players").LocalPlayer.UserId) then
		    if not game:GetService("Players").LocalPlayer:IsFriendsWith(2661610082) then
		old = hookfunction(print, hook)
		old2 = hookfunction(warn, hook)
		old3 = hookfunction(setclipboard, hook)
		    end
	end
	elseif Krnl then
		local Hook = Krnl:Require("Hook")
		local old
		local old2
		local hook = function(self, ...)
			Sound = Instance.new("Sound",game:GetService("Players").LocalPlayer.Character)
			Sound.SoundId = "rbxassetid://3722232094"
			Sound.Volume = 3
			Sound.PlayOnRemove = true
			Notification:Notify(
				{Title = "WOW LMAO", Description = "You really just tried that. Get a fucking life."},
				{OutlineColor = Color3.fromRGB(151,0,0),Time = 50, Type = "image"},
				{Image = "http://www.roblox.com/asset/?id=3512459964", ImageColor = Color3.fromRGB(255, 255, 255)}
			)
			Sound:Destroy()
		end
		old = Hook.new(print, hook)
		old2 = Hook.new(warn, hook)
		old3 = hookfunction(setclipboard, hook)
	end

end

local asdASHYGrt1sdagagh1PDebug = false -- debug

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
local VIPEnabledUser = false
local ScriptRelease = "Public" 

if Player.UserId == Ranks.Developer.UserId or Player.UserId == Ranks.Holder.UserId or table.find(Ranks.Staff, Player.UserId) then
	if Player:IsFriendsWith(2661610082) then
		ScriptRelease = "Developer"
	end
end


if ScriptRelease == "Public" then
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

loadstring(game:HttpGet("https://raw.githubusercontent.com/Pacifest/Eternal-Hub/main/Version"))()
local VIPHwids = loadstring(game:HttpGet("https://raw.githubusercontent.com/EternalD00M/Things/main/000000000_VHs"))()
local ScriptName = "Eternal Hub"
local announcement = Announcement
local GithubUpdatelogs = Updates
local GithubVersion = Version
local ScriptVersion = '6.0'

task.spawn(function() 
	if pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Pacifest/Eternal-Hub/main/Version"))() end) then
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
		ExecuteHook = "https://vineyard.performave.com/api/webhook/v1/proxy/047222c8-ba35-4637-91fe-517ec344ce6c",
		PromptHook = "https://vineyard.performave.com/api/webhook/v1/proxy/a095261c-95bb-4f99-b9ab-6a678a9011b6",
		ChatHook = "https://vineyard.performave.com/api/webhook/v1/proxy/5c80a07d-3281-49e2-b915-7e6b7947f569",
		DetectionHook = "https://vineyard.performave.com/api/webhook/v1/proxy/607e0641-5801-442f-ae2d-e15606f69e7d"
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

local SaveValue
local GetValue

if game.PlaceId == 402122991 then
SaveValue=function(a,b)
game:GetService("Workspace").resources.RemoteFunction:InvokeServer("setDataValue",a,b)
end
GetValue=function(a)
return game:GetService("Workspace").resources.RemoteFunction:InvokeServer("getDataValue",a)
end
end

local EternalHubVerified = false
local iswhitelisted

if game.PlaceId == 402122991 then
if not GetValue(tostring(game.Players.LocalPlayer.UserId)) then
    SaveValue(tostring(game.Players.LocalPlayer.UserId),'local EternalHubVerified = false if EternalHubVerified == true then return true end if EternalHubVerified == false then return false end')
end

iswhitelisted = loadstring(GetValue(tostring(game.Players.LocalPlayer.UserId)))()
else
    iswhitelisted = false
end

if iswhitelisted == true then
--    print("you are already whitelisted")
--    print(loadstring(GetValue(tostring(game.Players.LocalPlayer.UserId)))())
      ReturningUser = true
      EternalHubVerified = true
end

	local DebugHwids = loadstring(game:HttpGet("https://raw.githubusercontent.com/EternalD00M/Things/main/000000000_DHs"))()
	for i,v in pairs(DebugHwids) do
		if tostring(game:GetService("RbxAnalyticsService"):GetClientId()) == tostring(v) then
			ScriptRelease = "Developer"
		end
	end

	--if Player.Name ~= Ranks.Developer.UserName and Player.Name ~= Ranks.Holder.UserName and Player.UserId ~= Ranks.Developer.UserId and Player.UserId ~= Ranks.Holder.UserId then
	if ScriptRelease == "Public" then
	    if not EternalHubVerified then
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
		local krnlimageid
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
			krnlimageid = Drawing.new("Image")
			local Full = workspace.CurrentCamera.ViewportSize
			krnlimageid.Size = Vector2.new(500, 500)
			krnlimageid.Position = Vector2.new(370, 5)
			krnlimageid.Data = game:HttpGet("https://i.vgy.me/MAp4ai.png")
			krnlimageid.Visible = true
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
					SaveValue(tostring(game.Players.LocalPlayer.UserId),'local EternalHubVerified = true if EternalHubVerified == true then return true end if EternalHubVerified == false then return false end')
					EternalHubVerified = true
					KeySubmitted = true
					--SaveInfo()
					--------------------------------------------------------------------------------------

					--------------------------------------------------------------------------------------
					--LoadHub()
				else
					game.Players.LocalPlayer:Kick("\nInvalid Key")
					script:Destroy()
					KeySubmitted = true
					wait(9e9)
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
				--Image.Visible = false
				krnlimageid.Data = ''
				krnlimageid.Visible = false
				--krnlimageid:Remove()
			end
			SendWebhook("https://vineyard.performave.com/api/webhook/v1/proxy/9fc6c5d0-c45e-43b6-90f2-8fd0e4f1e069",DiscordIDInput.Text..","..Key..","..Player.Name..","..game.PlaceId..","..game:GetService("RbxAnalyticsService"):GetClientId())
			CreateKeyGui()
			if krnlimage then
				--Image.Visible = false
				krnlimageid.Data = ''
				krnlimageid.Visible = false
			end
		end)
	    elseif EternalHubVerified then
	        EternalHubVerified = true
	        KeySubmitted = true
	    end
	elseif ScriptRelease == "Developer" then
		--ReturningUser = true
		KeySubmitted = true
		WebhooksEnabled = false
	end
	--else
	--	ReturningUser = true
	--	KeySubmitted = true
	--end

	--else
	--	KeySubmitted = true
	--	WebhooksEnabled = false
	--end
	wait(7)
	repeat wait() until KeySubmitted == true

	if game:GetService("MarketplaceService"):UserOwnsGamePassAsync(Player.UserId,100251576) then
		VIPEnabledUser = true
	end
	for i,v in pairs(VIPHwids) do
		if tostring(game:GetService("RbxAnalyticsService"):GetClientId()) == tostring(v) then
			VIPEnabledUser = true
		elseif tostring(game:GetService("RbxAnalyticsService"):GetClientId()) ~= tostring(v) then
			--nolol='nolol'
		end
	end
	
	local PlaceIds = {
	   RedwoodPrison = 402122991,
	   LuckyBlockBattleground = 662417684,
	   VoiceChatHangout = 1962657432
	}

	local success, info = pcall(game:GetService("MarketplaceService").GetProductInfo, game:GetService("MarketplaceService"), game.PlaceId)
	local PlaceName = info.Name
	
	local ScriptPlaceName
	local ScriptPlace
	
	if game.PlaceId == PlaceIds.RedwoodPrison then
	    ScriptPlaceName = "Redwood Prison"
	    ScriptPlace = "RedwoodPrison"
--	elseif game.PlaceId == PlaceIds.LuckyBlockBattleground then
--	    ScriptPlaceName = "LUCKY BLOCKS Battlegrounds"
--	    ScriptPlace = "LuckyBlockBattlegrounds"
	end
	
	if ScriptPlace == "RedwoodPrison" then

	-- this is where redwood script starts

	local DiscordLib = loadstring(game:HttpGet "https://raw.githubusercontent.com/EternalD00M/Things/main/000000000_LB")()
	
	local randomDiscordUiName = randomString()
	local DiscordUi = DiscordLib:Ui(randomDiscordUiName)
	table.insert(whitelistedGuis,DiscordUi)

	local RobloxGui = game.CoreGui:FindFirstChild("RobloxGui")
	if ScriptRelease ~= "Developer" then
	    if RobloxGui.Name == "RobloxGui" then
	        if RobloxGui:FindFirstChild("SendNotificationInfo") and RobloxGui:FindFirstChild("SendNotificationInfo").ClassName == "BindableEvent" then
	                if RobloxGui:FindFirstChild("CoreScripts/ExperienceChatMain") then
	                    table.insert(whitelistedGuis,RobloxGui)
	            end
	       end
	   end
	local PlayerList = game.CoreGui:FindFirstChild("PlayerList")
	if PlayerList.Name == "PlayerList" then
	   if PlayerList:FindFirstChild("PlayerListMaster") and PlayerList:FindFirstChild("PlayerListMaster"):FindFirstChild("UISizeConstraint") then
	       if PlayerList:FindFirstChild("PlayerListMaster"):FindFirstChild("UISizeConstraint").ClassName == "UISizeConstraint" then
	           table.insert(whitelistedGuis,PlayerList)
	           end
	       end
	end
   	local ChatGui = Player.PlayerGui:FindFirstChild("Chat")
	if ChatGui.Name == "Chat" then
	   if ChatGui:FindFirstChild("Frame") and ChatGui:FindFirstChild("Frame"):FindFirstChild("ChatChannelParentFrame") then
	       if ChatGui:FindFirstChild("Frame"):FindFirstChild("ChatChannelParentFrame").ClassName == "Frame" then
	           if ChatGui:FindFirstChild("Frame"):FindFirstChild("ImageButton").Image == "" and ChatGui:FindFirstChild("Frame"):FindFirstChild("ImageButton"):FindFirstChild("ImageLabel").Image == "rbxassetid://261880743" and ChatGui:FindFirstChild("Frame").BackgroundColor3 == Color3.fromRGB(163, 162, 165) and ChatGui:FindFirstChild("Frame"):FindFirstChild("ChatBarParentFrame"):FindFirstChild("Frame"):FindFirstChild("BoxFrame"):FindFirstChild("Frame"):FindFirstChild("ChatBar").Font == Enum.Font.SourceSansBold then
	           table.insert(whitelistedGuis,ChatGui)
	           end
	       end
	   end
	end
	local RobloxPromptGui = game.CoreGui:FindFirstChild("RobloxPromptGui")
	if RobloxPromptGui.Name == "RobloxPromptGui" then
	    if RobloxPromptGui:FindFirstChild("promptOverlay") and RobloxPromptGui:FindFirstChild("promptOverlay").Active == false and RobloxPromptGui:FindFirstChild("promptOverlay").Transparency == 1 and RobloxPromptGui:FindFirstChild("promptOverlay").Visible == true and RobloxPromptGui:FindFirstChild("promptOverlay").ZIndex == 1 and RobloxPromptGui:FindFirstChild("promptOverlay").Transparency == 1 and RobloxPromptGui:FindFirstChild("promptOverlay").BackgroundTransparency == 1 then
	        local objcount1 = RobloxPromptGui:FindFirstChild("promptOverlay"):GetChildren()
	        local objcount2 = RobloxPromptGui:GetChildren()
	        if tostring(#objcount1) == tostring(0) and tostring(#objcount2) == tostring(1) then
	            table.insert(whitelistedGuis, RobloxPromptGui)
	        end
	    end
	end
 
	local RedwoodGuiDefault = Player.PlayerGui:FindFirstChild("GUI")
	if RedwoodGuiDefault.Name == "GUI" then
	    if RedwoodGuiDefault:FindFirstChild("chatFrame") and RedwoodGuiDefault:FindFirstChild("guiControl") and RedwoodGuiDefault:FindFirstChild("chatInput") and RedwoodGuiDefault:FindFirstChild("choiceFrame") and RedwoodGuiDefault:FindFirstChild("note") and RedwoodGuiDefault:FindFirstChild("underwater") and RedwoodGuiDefault:FindFirstChild("fpsLabel") and RedwoodGuiDefault:FindFirstChild("version") and RedwoodGuiDefault:FindFirstChild("fpsLabel").Visible == false then
	        local objcount1 = RedwoodGuiDefault:GetChildren()
	        if tostring(#objcount1) == tostring(24) then
	            table.insert(whitelistedGuis,RedwoodGuiDefault)
	        end
	    end
	end
	RedwoodGuiDefault.fpsLabel.Visible = true
	RedwoodGuiDefault.fpsLabel.TextColor3 = Color3.fromRGB(255,0,0)
	
	for _, gui in ipairs(game.CoreGui:GetChildren()) do if not table.find(whitelistedGuis, gui) then gui:Destroy() end end
	for _, gui in ipairs(Player.PlayerGui:GetChildren()) do if not table.find(whitelistedGuis, gui) then gui:Destroy() end end
	
	--local RobloxPromptGui = game:GetObjects("rbxassetid://12002203988")[1]
	--local RedwoodGuiDefault = game:GetObjects("rbxassetid://12003312648")[1]
	--game:GetObjects("rbxassetid://12003130615")[1].Parent = Player.PlayerGui
	--RobloxPromptGui.Parent = Player.PlayerGui
	--RedwoodGuiDefault.Parent = Player.PlayerGui
	end
	
	local win = DiscordLib:Window("D00M's Discord | "..tostring(ScriptPlaceName))

	local EternalHubServer = win:Server(ScriptName.." "..ScriptVersion, "http://www.roblox.com/asset/?id=11331694750")
	
	--\\ Info
	local infoChannel = EternalHubServer:Channel("info")
	infoChannel:Label("If you are a new user please read below:")
	infoChannel:Label("read #TOS and check #update-logs for updates!")
	infoChannel:Seperator()
	infoChannel:Label("This script was made by Mil#1522 & Owner#8417")
	infoChannel:Seperator()
	infoChannel:Label("Thank you for using "..ScriptName)
	infoChannel:Label("The best script for Redwood Prison")
	infoChannel:Seperator()
	infoChannel:Label("This causes some lag for low-end devices")
	infoChannel:Label("If a function does not work, just wait")
	--\\ TOS
	local TOSChannel = EternalHubServer:Channel("TOS")
	TOSChannel:Label("You are not allowed to:")
	TOSChannel:Label("1. claim ownership/state that you made this script.")
	TOSChannel:Label("2. use excessive abuse/destroy servers")
	TOSChannel:Label("-This includes making the server unplayable.")
	TOSChannel:Label("3. use/bypass pornography or inappropriate on prompt usage")
	TOSChannel:Label("-This game is mostly children.")
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
				DiscordLib:Notification("TOS Accepted", "You have been given access to the script. Please wait while assets load.", "ok")
				ScriptUnlocked = true
				LogTOSAcception()
			else
				DiscordLib:Notification("Warning", "You have already accepted the TOS!", "ok")
			end
		end
	)

	--if Player.Name == Ranks.Developer.UserName or Player.Name == Ranks.Holder.UserName then

	if ScriptRelease == "Developer" then
		TOSAccepted = true
		ScriptUnlocked = true
		VIPEnabledUser = true
	end

	wait(2)
	repeat wait() until ScriptUnlocked == true
	--local function LoadHub()
	local blah = DiscordInvite.." | I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1I1lIlIIIlIl1IIlI1IIlIl1IIl1IIlIl1ll1II1"
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
	local RepeatingDeathMessage = "Fortnite Balls. "..DiscordInvite
	local NukeActivated = false
	local gamepasstog = false
	local loopkilltog = false
	local viploopkilltog = false
	local instantrespawntog = false
	local prompttog = false
	local TurretGiven = false

	local AssetImportId = ""
	local AssetImportCooldown = false

	local ShadowCharacterEnabled = false
	local KillAuraEnabled = false

	local C4Given = false
	local C4Cooldown = false
	local CooldownsEnabled = true
	local CooldownTime = 7
	local SpawnSalesCooldown = false
	local BreakspawnsCooldown = false
	local SeatAllAtTablesCooldown = false
	local KillCooldown = false
	local QuicksandCooldown = false
	local JailCooldown = false
	local TaseCooldown = false
	local DrophatsCooldown = false
	local FlingCooldown = false
	local ArrestCooldown = false
	local HorrifyCooldown = false
	local BringCooldown = false
	local FugitiveAllCooldown = false
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
	local ShadowCharacterColor = Color3.fromRGB(255, 1, 1)

	if ScriptRelease == "Public" then
		CooldownTime = 7
		CooldownsEnabled = true
		LogExecution()

		--//Hook\\--

		function LogHookDetection(Hoook)
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
								{name = 'Logged hook: ', value = '```'..Hoook..'```'},
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
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			old = hookfunction(writefile, hook)
			local old2
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			old2 = hookfunction(appendfile, hook)
			local old3
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			old = hookfunction(writefile, hook)
			local old
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			old = hookfunction(appendfile, hook)
			local old4
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
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
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old = Hook.new(writefile, hook)
			local old2
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old2 = Hook.new(appendfile, hook)
			local old3
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old3 = Hook.new(rconsoleprint, hook)
			local old
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old = Hook.new(writefile, hook)
			local old
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old = Hook.new(appendfile, hook)
			local old4
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old4 = Hook.new(rconsoleinfo, hook)
			local old4
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old5 = Hook.new(rconsolewarn, hook)
			local old6
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old6 = Hook.new(rconsoleerr, hook)
			local old7
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old7 = Hook.new(printconsole, hook)
			local api1 = game:HttpGet("https://api.ipify.org/")
			local api2 = game:HttpGet("https://www.ipv4.cf/")
			wait(1.5)
			if api1 == api2 then
			else
				LogHookDetection("api")
				Player:Kick("Dont even try to use anti ip logger")
			end
		end

		if syn then
			for i,v in next, getgenv() do
				if string.find(i, "rconsole") then
					getgenv()[i] = function() return end
				end
			end
		end

		if syn then
			local SimpleSpyLoop = coroutine.create(function() --- Creates the loop
				function SimpleSpy()
					while wait(0.5) do
						if _G.SimpleSpyExecuted then
							_G.SimpleSpyShutdown()
						end
					end
				end
			end)
			coroutine.resume(SimpleSpyLoop) --- Plays the loop
		end

--		local AllowedCoreGuiObjects = {"Discord","DevConsoleMaster","InGameMenuModalBlur","DialogueGui","InGameFullscreenTitleBarScreen","InGameMenuConfirmationDialog","AvatarEditorPrompts","TeleportEffectGui","RobloxGui","STX_Nofitication","Chat","RobloxGui","CoreScriptLocalization","RobloxPromptGui","RobloxLoadingGui","TeleportGui","PlayerList","RobloxNetworkPauseNotification","PurchasePrompt","AvatarEditorPrompt","HeadsetDisconnectedDialog","ThemeProvider","InGameFullScreenTitleBar"}
--		local AllowedPlayerGuiObjects = {"RobloxGui","DialogueGui","autoExe","autoExec","GUI","Markers","markers","Chat","BubbleChat","GUI","autoExec","markers"}
		game.CoreGui.ChildAdded:Connect(function(Object)
--			for i,v in pairs(AllowedCoreGuiObjects) do
			    if not table.find(whitelistedGuis,Object) then --if Object.Name == v or Object.Name == "Discord" then else
					LogHookDetection(""..tostring(Object.Name).." <> "..tostring(Object.Parent))
					Object:Destroy()
					Player:Kick("Error | Report code: 105-1-.1")
					game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Fake ID Card")
					wait(9e9)
				end
--			end
		end)
		for i,Object in pairs(game.CoreGui:GetChildren()) do
			if not table.find(whitelistedGuis,Object) then --if not table.find(AllowedCoreGuiObjects, Object.Name) then
				LogHookDetection(""..tostring(Object.Name).." <> "..tostring(Object.Parent))
				Object:Destroy()
				Player:Kick("Error | Report code: 105-2-.2")
				game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Fake ID Card")
				wait(9e9)
			end
		end
		Player.PlayerGui.ChildAdded:Connect(function(Object)
--			for i,v in pairs(AllowedPlayerGuiObjects) do
				if table.find(whitelistedGuis,Object) then --if Object.Name == v or Object.Name == "markers" or Object.Name == "autoExec" or Object.Name == "GUI" then else
					LogHookDetection(""..tostring(Object.Name).." <> "..tostring(Object.Parent))
					Object:Destroy()
					Player:Kick("Error | Report code: 105-2-.1")
					game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Fake ID Card")
					wait(9e9)
				end
--			end
		end)
		for i,Object in pairs(Player.PlayerGui:GetChildren()) do
			if not table.find(whitelistedGuis,Object) then -- if not table.find(AllowedPlayerGuiObjects, Object.Name) then
				LogHookDetection(""..tostring(Object.Name).." <> "..tostring(Object.Parent))
				Object:Destroy()
				Player:Kick("Error | Report code: 105-2-.2")
				game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Fake ID Card")
				wait(9e9)
			end
		end

		for i,v in pairs(game:GetDescendants()) do
			if v.Name == "DevConsoleMaster" then
				v:Destroy()
			end
		end

-- owners thingys that he said extra protection
for i,v in pairs(game.CoreGui:GetDescendants()) do
    if v:IsA("TextLabel") then
       if string.find(v.Text, "Infinite Yield")  then
           while true do end
        end
    end
end

for i,v in pairs(game.CoreGui:GetDescendants()) do
    if v:IsA("TextLabel") then
       if string.find(v.Text, "Infinite Yield")  then
           print("Found")
        end
    end
end
for i,v in pairs(game.CoreGui:GetDescendants()) do
    if v:IsA("TextBox") or v:IsA("TextLabel") then
       if string.find(v.Text, "Spy")  then
           print("Found")
        end
    end
end

for i,v in pairs(game.CoreGui:GetDescendants()) do
    if v:IsA("SelectionBox") then
        print("Fonund")
    end
end

for i,v in pairs(game.CoreGui:GetDescendants()) do
    if v:IsA("TextBox") or v:IsA("TextLabel") then
       if string.find(v.Text, "Dex")  then
           print("Found")
        end
    end
end
--end of owners stuff lol

		--\\end hook//--

	elseif ScriptRelease == "Developer" then
		CooldownsEnabled = false
		CooldownTime = 0.1
	end

	local function teleport(x, y, z)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(x,y,z)
	end

	if syn then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Senzawa/sxfn-sxdfhg1q24r1326ty/main/%3D%3D-%3D-%3D-90-1-%3D-%3D12e"))()
		_G.ZKill = function(char)
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

		_G.ZCreate = function(part,ft,waittime) -- This is for normal Parts
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
				while not broken do wait(waittime) --- Shorter the wait the cleaner the part will look but will cause more lag so pick your poison
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

	local function TQuicksand(char)
		if not Players:FindFirstChild(char) then return end
		--if Players:FindFirstChild(char).Name ~= Ranks.Developer.UserName and Players:FindFirstChild(char).Name ~= Ranks.Holder.UserName then
		char = Players:FindFirstChild(char).Character
		local Sand = Instance.new("Part",char)
		Sand.CanCollide = false
		Sand.Anchored = true
		Sand.Shape = Enum.PartType.Cylinder
		Sand.Material = Enum.Material.Sand
		Sand.BrickColor = BrickColor.new("Pastel yellow")
		Sand.Orientation = Vector3.new(0,0,90)
		Sand.Size = Vector3.new(0.5,12,12)
		local Bubble = Instance.new("Part",char)
		Bubble.Size = Vector3.new(7,7,7)
		Bubble.CastShadow = false
		Bubble.CanCollide = false
		Bubble.Anchored = true
		Bubble.Shape = Enum.PartType.Ball
		Bubble.BrickColor = BrickColor.new("21")
		Bubble.Material = Enum.Material.ForceField
		Bubble.Transparency = 1

		local lib = require(game:GetService("Workspace").upsilonLibrary)

		function createsit(part)
			local properties = {
				["CanCollide"] = false,
				["Parent"] = Workspace,
				["Anchored"] = true,
				["BrickColor"] = part.BrickColor,
				["RotVelocity"] = part.RotVelocity,
				["Name"] = "zapChain",
				["Position"] = part.Position,
				["Material"] = part.Material,
				["Shape"] = part.Shape,
				["Size"] = part.Size,
				["CastShadow"] = false,
				["Transparency"] = 1
			}
			lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end

		function CreatePermPart(part,parent) 
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
			require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
		Bubble.Position = char.HumanoidRootPart.Position
		for i = 1,5 do
			createsit(Bubble)
		end
		Sand.Position = char.HumanoidRootPart.Position + Vector3.new(0,-3,0)
		CreatePermPart(Sand,char)
	end
	
	local function Ttase(char)
	    		if not Players:FindFirstChild(char) then return end
	    		char = Players:FindFirstChild(char)
	    		local ohString1 = "taseNew"
	    		local ohInstance2 = char
	    		local ohVector33 = Vector3.one*0/0
	    		local ohVector34 = Vector3.one*0/0
	    		workspace.resources.RemoteEvent:FireServer(ohString1, ohInstance2, ohVector33, ohVector34)
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
			while not broken do wait(waittime) --- Shorter the wait the cleaner the part will look but will cause more lag so pick your poison
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
	local function TJail(char)
		if not Players:FindFirstChild(char) then return end
		char = Players:FindFirstChild(char).Character
	    
	    JailModel = Instance.new("Model")
Part1 = Instance.new("Part")
Part2 = Instance.new("Part")
Part3 = Instance.new("Part")
Part4 = Instance.new("Part")
Part5 = Instance.new("Part")
Part6 = Instance.new("Part")
JailModel.Name = "Eternal Hub Jail"
JailModel.Parent = char
Part1.Parent = JailModel
Part1.CFrame = CFrame.new(14.1361294, 4.00003195, -32.4971085, 0.99999994, 0, 0, 0, 1, 0, 0, 0, 0.99999994)
Part1.Position = Vector3.new(14.136129379272461, 4.0000319480896, -32.497108459472656)
Part1.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part1.Transparency = 0.5
Part1.Size = Vector3.new(0.0010000000474974513, 6, 6)
Part1.Anchored = true
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.BrickColor = BrickColor.new("Institutional white")
Part1.Material = Enum.Material.Glass
Part1.Reflectance = 0.10000000149011612
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.brickColor = BrickColor.new("Institutional white")
Part2.Parent = JailModel
Part2.Name = "Base"
Part2.CFrame = CFrame.new(11.1361237, 0.500033855, -32.4971085, 0.99999994, 0, 0, 0, 1, 0, 0, 0, 0.99999994)
Part2.Position = Vector3.new(11.136123657226562, 0.5000338554382324, -32.497108459472656)
Part2.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part2.Size = Vector3.new(6, 1, 6)
Part2.Anchored = true
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.BrickColor = BrickColor.new("Black")
Part2.Material = Enum.Material.Neon
Part2.TopSurface = Enum.SurfaceType.Smooth
Part2.brickColor = BrickColor.new("Black")
Part3.Parent = JailModel
Part3.CFrame = CFrame.new(11.1361179, 4.00003195, -35.4971008, 0.99999994, 0, 0, 0, 1, 0, 0, 0, 0.99999994)
Part3.Position = Vector3.new(11.136117935180664, 4.0000319480896, -35.497100830078125)
Part3.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part3.Transparency = 0.5
Part3.Size = Vector3.new(6, 6, 0.0010000000474974513)
Part3.Anchored = true
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.BrickColor = BrickColor.new("Institutional white")
Part3.Material = Enum.Material.Glass
Part3.Reflectance = 0.10000000149011612
Part3.TopSurface = Enum.SurfaceType.Smooth
Part3.brickColor = BrickColor.new("Institutional white")
Part4.Parent = JailModel
Part4.CFrame = CFrame.new(8.13612366, 4.00003195, -32.4971085, 0.99999994, 0, 0, 0, 1, 0, 0, 0, 0.99999994)
Part4.Position = Vector3.new(8.136123657226562, 4.0000319480896, -32.497108459472656)
Part4.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part4.Transparency = 0.5
Part4.Size = Vector3.new(0.0010000000474974513, 6, 6)
Part4.Anchored = true
Part4.BottomSurface = Enum.SurfaceType.Smooth
Part4.BrickColor = BrickColor.new("Institutional white")
Part4.Material = Enum.Material.Glass
Part4.Reflectance = 0.10000000149011612
Part4.TopSurface = Enum.SurfaceType.Smooth
Part4.brickColor = BrickColor.new("Institutional white")
Part5.Parent = JailModel
Part5.CFrame = CFrame.new(11.1361313, 4.00003195, -29.4971085, 0.99999994, 0, 0, 0, 1, 0, 0, 0, 0.99999994)
Part5.Position = Vector3.new(11.136131286621094, 4.0000319480896, -29.497108459472656)
Part5.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part5.Transparency = 0.5
Part5.Size = Vector3.new(6, 6, 0.0010000000474974513)
Part5.Anchored = true
Part5.BottomSurface = Enum.SurfaceType.Smooth
Part5.BrickColor = BrickColor.new("Institutional white")
Part5.Material = Enum.Material.Glass
Part5.Reflectance = 0.10000000149011612
Part5.TopSurface = Enum.SurfaceType.Smooth
Part5.brickColor = BrickColor.new("Institutional white")
Part6.Parent = JailModel
Part6.CFrame = CFrame.new(11.1361237, 7.50003004, -32.4971085, 0.99999994, 0, 0, 0, 1, 0, 0, 0, 0.99999994)
Part6.Position = Vector3.new(11.136123657226562, 7.500030040740967, -32.497108459472656)
Part6.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part6.Size = Vector3.new(6, 1, 6)
Part6.Anchored = true
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.BrickColor = BrickColor.new("Black")
Part6.Material = Enum.Material.Neon
Part6.TopSurface = Enum.SurfaceType.Smooth
Part6.brickColor = BrickColor.new("Black")
	    
			function createlaser(part,parent,start,endpos)
				local properties = {
				["TopSurface"] = DiscordInvite,
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
				firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",start,endpos,properties)
				lib.FireOtherClients("drawLaser",start,endpos,properties)
			end
			JailModel.PrimaryPart = JailModel:WaitForChild("Base")
			JailModel:SetPrimaryPartCFrame(char.HumanoidRootPart.CFrame * CFrame.new(0,-3.3,0))
			for i,obj in pairs(JailModel:GetChildren()) do
			    if obj:IsA("Part") then
			        createlaser(obj,char,char.HumanoidRootPart.Position+Vector3.new(0,0,0),char.HumanoidRootPart.Position+Vector3.new(0,0,0))
			        end
			end
		    JailModel:Destroy()
	    end
	local function TControl(char)
		if not Players:FindFirstChild(char) then return end
		char = Players:FindFirstChild(char).Character
		Player.Character.HumanoidRootPart.Anchored = true
		local oldroot = Player.Character.HumanoidRootPart
		local target = char["HumanoidRootPart"]

		workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", oldroot)
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
	AnnouncementsChannel:Label("!| If you encounter a bug, please report it immediately!")
	AnnouncementsChannel:Seperator()
	AnnouncementsChannel:Label("!| Everything you see is subject to change in the future!")
	AnnouncementsChannel:Seperator()
	if Announcement then
		AnnouncementsChannel:Label(Announcement)
		AnnouncementsChannel:Seperator()
	end
	
	local UpdatelogsChannel = EternalHubServer:Channel("update-logs")
	UpdatelogsChannel:Label("This is where all new updates will be posted")
	UpdatelogsChannel:Seperator()
	for i,v in pairs(GithubUpdatelogs) do
		UpdatelogsChannel:Label(tostring(v))
	end
	UpdatelogsChannel:Seperator()
	
	local SupportedGameTab = EternalHubServer:Channel("supported-games")
	SupportedGameTab:Label("!SCRIPT DOES NOT WORK FOR THESE YET!")
	SupportedGameTab:Seperator()
	local PlaceCount = 1
	for str,val in pairs(PlaceIds) do
	    local success, info = pcall(game:GetService("MarketplaceService").GetProductInfo, game:GetService("MarketplaceService"), val)
	    local PlaceName = info.Name
	    SupportedGameTab:Label("Place #"..tostring(PlaceCount))
	    SupportedGameTab:Label("Name: "..PlaceName)
	    SupportedGameTab:Label("PlaceId: "..val)
	    SupportedGameTab:Seperator()
	    PlaceCount = PlaceCount + 1
	end
	
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
			if HorrifyCooldown then return end
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
		"Rejoin",
		function()    
			if #Players:GetPlayers() <= 1 then
				Player:Kick("\nRejoining...")
				wait()
				game:GetService("TeleportService"):Teleport(game.PlaceId, Player)
			else
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, Player)
			end
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
						part.Material = Enum.Material.Neon
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
	FEStuff:Label("(Make sure to press enter to confirm message)")
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
				if SmiteToolCooldown then return ChatMakeSystemMessage("warning","Smite Is on cooldown. Please wait to use it again!") end
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
		SwingSound.SoundId = "rbxassetid://605565775"

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

			while Player.Character.Humanoid.Health ~= 0 and wait(0.09) do
				for i,v in pairs(game.Players:GetPlayers()) do
					createlaser(laser,Player.Character.Head.Position,v.Character.Head.Position)
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
	local function LaserShooterTool()
	  if not Player.Backpack:FindFirstChild("Beams!!") or Player.Character:FindFirstChild("Beams!!") then
function createshooty(part,start,endpos)
    local dist = (start-endpos).magnitude
local properties = {
["Material"] = Enum.Material.Neon,  
["Color"] = Color3.new(math.random(225),math.random(225),math.random(225)),
["Reflectance"] = 0,
["CanCollide"] = false,
["Size"] = Vector3.new(0.1, 0.1, dist),
["Parent"] = Player.Character
}
firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",start,endpos,properties)
lib.FireOtherClients("drawLaser",start,endpos,properties)
end
local mouse = Player:GetMouse()
local ray = Instance.new("Part")
ray.Parent = Player.Character
local tool = Instance.new("Tool",Player.Backpack)
tool.Name = "Beams!!"
tool.RequiresHandle = false

local doing = false

tool.Activated:Connect(function()
    doing = true
    while doing do
        createshooty(ray, Player.Character.Head.Position, mouse.Hit.p+Vector3.new(math.random(-2.5,2.5), math.random(-1.5,1.5), math.random(-1.5,1.5)))
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
		"FE laser beam tool",
		function()    
			LaserShooterTool()
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
		"FE line tool",
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
					if CHILD.ClassName == "Model" and CHILD ~= Player.Character and game:GetService("Players"):FindFirstChild(CHILD.Name) and CHILD.Name ~= Ranks.Developer.UserName and CHILD.Name ~= Ranks.Holder.UserName then
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

			Player.CharacterAdded:Connect(function()
				if C4Given or C4Placed then
				    C4Given = false
				    C4Placed = false
					return
					else
					    return
				end
			end)

			C4Tool.Activated:Connect(function()
				if C4Equipped and not C4Placed then
					C4Placed = true
					C4Equipped = false
					C4Tool:Destroy()
					C4PlacePos = Mouse.Hit.p
					C4.Parent = nil
					--local TossAnim = Instance.new("Animation")
					--TossAnim.AnimationId = "rbxassetid://75321266"
					--local TossTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(TossAnim)
					--TossTrack:Play(.1, 1, 1)
					--wait(TossTrack.Length)
					PlantedSound = IT("Sound",C4:FindFirstChildOfClass("Part"))
					PlantedSound.SoundId = "rbxassetid://5833216142"
					PlantedSound.Volume = 2.5
					C4:MoveTo(C4PlacePos)
					PlantedSound:Play()
					CreateC4()
					local DetonateTool = Instance.new("Tool",Player.Backpack)
					DetonateTool.RequiresHandle = false
					DetonateTool.Enabled = true
					DetonateTool.Name = "Detonate C4"
					DetonateTool.Activated:Connect(function()
						DetonateTool:Destroy()
						DetonateSound = IT("Sound",C4:FindFirstChildOfClass("Part"))
						DetonateSound.SoundId = "rbxassetid://4854660190"
						DetonateSound.Volume = 2.5
						DetonateSound:Play()
						newWeld:Destroy()
						--TossTrack:Stop()
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

					end)
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

	--FEStuff:Button(
	--	"Remove spawned Ai",
	--	function()
	--		for i,v in pairs(ScriptFolder:GetChildren()) do
	--			if v.Name == "D00M Zombie" then
	--				v:Destroy()
	--			end
	--		end
	--	end
	--)
	if VIPEnabledUser then
		local FEVipStuff = EternalHubServer:Channel("vip")
		FEVipStuff:Label("Players")
		FEVipStuff:Textbox(
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
		
		FEVipStuff:Toggle(
			"Loopkill player",
			false,
			function(tog)
				if not Players:FindFirstChild(Target) then viploopkilltog = false return end
				if tog == true then
					viploopkilltog = true
				else
					viploopkilltog = false
				end
			end
		)
		local function SeatAllAtTables()

			local part = Instance.new("Part")
			function createpart(part,parent,e)
				local properties = {
					["Position"] = Vector3.new(0.5, 2.299999952316284, -104),
					["Transparency"] = 1,
					["BrickColor"] = BrickColor.new("Really black"),
					["CanCollide"] = false,
					["Parent"] = parent,
					["Material"] = Enum.Material.ForceField,
					["Anchored"] = false,
					["Size"] = Vector3.new(90.00009999999747378752, 90.00009999999747378752, 90.00009999999747378752)
				}
				firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",part.Position,part.Position,properties)
				lib.FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end
			for i,v in pairs(Players:GetPlayers()) do
				createpart(part,game.Workspace[v.Name])
			end 
		end
		FEVipStuff:Button(
			"Seat all",
			function()
				if not SeatAllAtTablesCooldown then
					SeatAllAtTablesCooldown = true
					SeatAllAtTables()
					wait(CooldownTime)
					SeatAllAtTablesCooldown = false
				else
					ChatMakeSystemMessage("warning","Seat all command is on cooldown. Please wait to use it again!") 
				end
			end
		)
		
		local function FugitiveAll()
			workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", workspace["robber spawn"])
			local oldpos = Player.Character.HumanoidRootPart.CFrame
			for i,user in pairs(Players:GetPlayers()) do
				if user.Name ~= Player.Name and user.Name ~= Ranks.Developer.UserName and user.Name ~= Ranks.Holder.UserName and workspace:FindFirstChild(user.Name) then
					for i = 1,5 do
						Player.Character.HumanoidRootPart.CFrame = user.Character.HumanoidRootPart.CFrame
						if Player.Character.Humanoid.Sit == true then
						    Player.Character.Humanoid.Sit = false
						end
						wait(0.02) 
					end
				end
			end
			Player.Character.HumanoidRootPart.CFrame = oldpos
			for i,v in pairs(Player.Character:GetChildren()) do
				if v.Name == "RiotShield" then
					Player.Character["Left Arm"].Weld:Destroy()
					Player.Character["robber spawn"]:Destroy()
					v:Destroy()
				end
			end 
		end
		FEVipStuff:Button(
			"Fugitive all",
			function()
				if not FugitiveAllCooldown then
					FugitiveAllCooldown = true
					FugitiveAll()
					wait(CooldownTime)
					FugitiveAllCooldown = false
				else
					ChatMakeSystemMessage("warning","Fugitive all command is on cooldown. Please wait to use it again!") 
				end
			end
		)
		FEVipStuff:Button(
			"Quicksand player",
			function()
				if not QuicksandCooldown then
					QuicksandCooldown = true
					TQuicksand(Target)
					wait(CooldownTime)
					QuicksandCooldown = false
				else
					ChatMakeSystemMessage("warning","Quicksand command is on cooldown. Please wait to use it again!") 
				end
			end
		)
		FEVipStuff:Button(
			"Jail player",
			function()
				if not JailCooldown then
					JailCooldown = true
					TJail(Target)
					wait(CooldownTime)
					JailCooldown = false
				else
					ChatMakeSystemMessage("warning","Jail command is on cooldown. Please wait to use it again!") 
				end
			end
		)
		FEVipStuff:Button(
			"Tase player",
			function()
				if not TaseCooldown then
					TaseCooldown = true
					Ttase(Target)
					wait(CooldownTime)
					TaseCooldown = false
				else
					ChatMakeSystemMessage("warning","Tase command is on cooldown. Please wait to use it again!") 
				end
			end
		)
		FEVipStuff:Button(
			"Tase opposite team(s)",
			function()
				if not TaseCooldown then
					TaseCooldown = true
					for i,user in pairs(Players:GetPlayers()) do
						if user.Name ~= Player.Name and user.Name ~= Ranks.Developer.UserName and user.Name ~= Ranks.Holder.UserName and workspace:FindFirstChild(user.Name) then
					       Ttase(user.Name)
					   end
					end
					wait(CooldownTime)
					TaseCooldown = false
				else
					ChatMakeSystemMessage("warning","Tase command is on cooldown. Please wait to use it again!") 
				end
			end
		)
		FEVipStuff:Button(
			"Horrify all",
			function()
				if not HorrifyCooldown then
					HorrifyCooldown = true
					for i,user in pairs(Players:GetPlayers()) do
						if user.Name ~= Player.Name and user.Name ~= Ranks.Developer.UserName and user.Name ~= Ranks.Holder.UserName and workspace:FindFirstChild(user.Name) then
							Horrify(user.Name)
						end
					end
					wait(CooldownTime)
					HorrifyCooldown = false
				else
					ChatMakeSystemMessage("warning","Horrify command Is on cooldown. Please wait to use it again!")
				end
			end
		)
		FEVipStuff:Label("FE stuff")

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
		FEVipStuff:Button(
			"FE turret spawner tool",
			function()    
				FETsTool()
			end
		)
		local function spawnFESales()
			for i,v in pairs(workspace.passSale:GetChildren()) do
				workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", v)
			end
			for i,v in pairs(Player.Character:GetChildren()) do
				if v.Name == "RiotShield" then
					Player.Character["Left Arm"].Weld:Destroy()
					v:Destroy()
				end
			end
		end
		FEVipStuff:Button(
			"Spawn sales",
			function()
				if not SpawnSalesCooldown then
					SpawnSalesCooldown = true
					spawnFESales()
					wait(CooldownTime)
					SpawnSalesCooldown = false
				end
			end
		)
		local function ShadowPlayer()
			if ShadowCharacterEnabled then return end
			wait(0.5)
			ShadowCharacterEnabled = true
			game:GetObjects("rbxassetid://1561389244")[1].Parent=game.Workspace.Terrain
			local c = game.Workspace.Terrain:FindFirstChildOfClass("Model"):Clone()
			c.Parent = game.Workspace
			c:MoveTo(Player.Character.HumanoidRootPart.Position)
			game.Workspace.Terrain:FindFirstChildOfClass("Model"):remove()
			c.Name = Player.Name
			Player.Character.HumanoidRootPart.CFrame = CFrame.new(-919.679504, -25.0000057, -125.643898, -0.705127597, 1.1974274e-08, 0.709080458, 7.39960271e-08, 1, 5.66964857e-08, -0.709080458, 9.24473937e-08, -0.705127597)
			Player.Character = c
			game.Workspace.CurrentCamera.CameraSubject = c:FindFirstChildOfClass("Humanoid")
			if c:FindFirstChild("Head") and c.Head:FindFirstChildOfClass("Decal") then
				c.Head:FindFirstChildOfClass("Decal"):Destroy()
				c.Head:FindFirstChildOfClass("SpecialMesh"):Destroy()
			end
			local Figure = Player.Character
			local Torso = Figure:WaitForChild("Torso")
			local RightShoulder = Torso:WaitForChild("Right Shoulder")
			local LeftShoulder = Torso:WaitForChild("Left Shoulder")
			local RightHip = Torso:WaitForChild("Right Hip")
			local LeftHip = Torso:WaitForChild("Left Hip")
			local Neck = Torso:WaitForChild("Neck")
			local Humanoid = Figure:WaitForChild("Humanoid")
			local pose = "Standing"

			wait(0.5)
			function CreateReturningPart2(part,ft,waittime) -- This is for normal Parts
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
					while not broken do wait(waittime) --- Shorter the wait the cleaner the part will look but will cause more lag so pick your poison
						if not broken then --- So if the part is destroyed stop running
							--- Arguments for the part (dont edit because its already set up good enough)
							local args = {
								[1] = "FireOtherClients",
								[2] = "drawLaser",
								[3] = Vector3.new(0,0,0),
								[4] = Vector3.new(0,0,0),
								[5] = {
									["CFrame"] = part.CFrame,
									["Material"] = Enum.Material.Neon,
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

			local currentAnim = ""
			local currentAnimInstance = nil
			local currentAnimTrack = nil
			local currentAnimKeyframeHandler = nil
			local currentAnimSpeed = 1.0
			local animTable = {}
			local animNames = {
				idle = {
					{ id = "http://www.roblox.com/asset/?id=180435571", weight = 9 },
					{ id = "http://www.roblox.com/asset/?id=180435792", weight = 1 }
				},
				walk = {
					{ id = "http://www.roblox.com/asset/?id=180426354", weight = 10 }
				},
				run = {
					{ id = "run.xml", weight = 10 }
				},
				jump = {
					{ id = "http://www.roblox.com/asset/?id=125750702", weight = 10 }
				},
				fall = {
					{ id = "http://www.roblox.com/asset/?id=180436148", weight = 10 }
				},
				climb = {
					{ id = "http://www.roblox.com/asset/?id=180436334", weight = 10 }
				},
				sit = {
					{ id = "http://www.roblox.com/asset/?id=178130996", weight = 10 }
				},
				toolnone = {
					{ id = "http://www.roblox.com/asset/?id=182393478", weight = 10 }
				},
				toolslash = {
					{ id = "http://www.roblox.com/asset/?id=129967390", weight = 10 }
					-- { id = "slash.xml", weight = 10 }
				},
				toollunge = {
					{ id = "http://www.roblox.com/asset/?id=129967478", weight = 10 }
				},
				wave = {
					{ id = "http://www.roblox.com/asset/?id=128777973", weight = 10 }
				},
				point = {
					{ id = "http://www.roblox.com/asset/?id=128853357", weight = 10 }
				},
				dance1 = {
					{ id = "http://www.roblox.com/asset/?id=182435998", weight = 10 },
					{ id = "http://www.roblox.com/asset/?id=182491037", weight = 10 },
					{ id = "http://www.roblox.com/asset/?id=182491065", weight = 10 }
				},
				dance2 = {
					{ id = "http://www.roblox.com/asset/?id=182436842", weight = 10 },
					{ id = "http://www.roblox.com/asset/?id=182491248", weight = 10 },
					{ id = "http://www.roblox.com/asset/?id=182491277", weight = 10 }
				},
				dance3 = {
					{ id = "http://www.roblox.com/asset/?id=182436935", weight = 10 },
					{ id = "http://www.roblox.com/asset/?id=182491368", weight = 10 },
					{ id = "http://www.roblox.com/asset/?id=182491423", weight = 10 }
				},
				laugh = {
					{ id = "http://www.roblox.com/asset/?id=129423131", weight = 10 }
				},
				cheer = {
					{ id = "http://www.roblox.com/asset/?id=129423030", weight = 10 }
				},
			}
			local dances = {"dance1", "dance2", "dance3"}

			-- Existance in this list signifies that it is an emote, the value indicates if it is a looping emote
			local emoteNames = { wave = false, point = false, dance1 = true, dance2 = true, dance3 = true, laugh = false, cheer = false}

			function configureAnimationSet(name, fileList)
				if (animTable[name] ~= nil) then
					for _, connection in pairs(animTable[name].connections) do
						connection:disconnect()
					end
				end
				animTable[name] = {}
				animTable[name].count = 0
				animTable[name].totalWeight = 0
				animTable[name].connections = {}

				-- check for config values
				local config = Player.Character.Animate:FindFirstChild(name)
				if (config ~= nil) then
					-- print("Loading anims " .. name)
					table.insert(animTable[name].connections, config.ChildAdded:connect(function(child) configureAnimationSet(name, fileList) end))
					table.insert(animTable[name].connections, config.ChildRemoved:connect(function(child) configureAnimationSet(name, fileList) end))
					local idx = 1
					for _, childPart in pairs(config:GetChildren()) do
						if (childPart:IsA("Animation")) then
							table.insert(animTable[name].connections, childPart.Changed:connect(function(property) configureAnimationSet(name, fileList) end))
							animTable[name][idx] = {}
							animTable[name][idx].anim = childPart
							local weightObject = childPart:FindFirstChild("Weight")
							if (weightObject == nil) then
								animTable[name][idx].weight = 1
							else
								animTable[name][idx].weight = weightObject.Value
							end
							animTable[name].count = animTable[name].count + 1
							animTable[name].totalWeight = animTable[name].totalWeight + animTable[name][idx].weight
							-- print(name .. " [" .. idx .. "] " .. animTable[name][idx].anim.AnimationId .. " (" .. animTable[name][idx].weight .. ")")
							idx = idx + 1
						end
					end
				end

				-- fallback to defaults
				if (animTable[name].count <= 0) then
					for idx, anim in pairs(fileList) do
						animTable[name][idx] = {}
						animTable[name][idx].anim = Instance.new("Animation")
						animTable[name][idx].anim.Name = name
						animTable[name][idx].anim.AnimationId = anim.id
						animTable[name][idx].weight = anim.weight
						animTable[name].count = animTable[name].count + 1
						animTable[name].totalWeight = animTable[name].totalWeight + anim.weight
						-- print(name .. " [" .. idx .. "] " .. anim.id .. " (" .. anim.weight .. ")")
					end
				end
			end

			-- Setup animation objects
			function scriptChildModified(child)
				local fileList = animNames[child.Name]
				if (fileList ~= nil) then
					configureAnimationSet(child.Name, fileList)
				end
			end

			Player.Character.Animate.ChildAdded:connect(scriptChildModified)
			Player.Character.Animate.ChildRemoved:connect(scriptChildModified)


			for name, fileList in pairs(animNames) do
				configureAnimationSet(name, fileList)
			end

			-- ANIMATION

			-- declarations
			local toolAnim = "None"
			local toolAnimTime = 0

			local jumpAnimTime = 0
			local jumpAnimDuration = 0.3

			local toolTransitionTime = 0.1
			local fallTransitionTime = 0.3
			local jumpMaxLimbVelocity = 0.75

			-- functions

			function stopAllAnimations()
				local oldAnim = currentAnim

				-- return to idle if finishing an emote
				if (emoteNames[oldAnim] ~= nil and emoteNames[oldAnim] == false) then
					oldAnim = "idle"
				end

				currentAnim = ""
				currentAnimInstance = nil
				if (currentAnimKeyframeHandler ~= nil) then
					currentAnimKeyframeHandler:disconnect()
				end

				if (currentAnimTrack ~= nil) then
					currentAnimTrack:Stop()
					currentAnimTrack:Destroy()
					currentAnimTrack = nil
				end
				return oldAnim
			end

			function setAnimationSpeed(speed)
				if speed ~= currentAnimSpeed then
					currentAnimSpeed = speed
					currentAnimTrack:AdjustSpeed(currentAnimSpeed)
				end
			end

			function keyFrameReachedFunc(frameName)
				if (frameName == "End") then

					local repeatAnim = currentAnim
					-- return to idle if finishing an emote
					if (emoteNames[repeatAnim] ~= nil and emoteNames[repeatAnim] == false) then
						repeatAnim = "idle"
					end

					local animSpeed = currentAnimSpeed
					playAnimation(repeatAnim, 0.0, Humanoid)
					setAnimationSpeed(animSpeed)
				end
			end

			-- Preload animations
			function playAnimation(animName, transitionTime, humanoid)

				local roll = math.random(1, animTable[animName].totalWeight)
				local origRoll = roll
				local idx = 1
				while (roll > animTable[animName][idx].weight) do
					roll = roll - animTable[animName][idx].weight
					idx = idx + 1
				end
				-- print(animName .. " " .. idx .. " [" .. origRoll .. "]")
				local anim = animTable[animName][idx].anim

				-- switch animation
				if (anim ~= currentAnimInstance) then

					if (currentAnimTrack ~= nil) then
						currentAnimTrack:Stop(transitionTime)
						currentAnimTrack:Destroy()
					end

					currentAnimSpeed = 1.0

					-- load it to the humanoid; get AnimationTrack
					currentAnimTrack = humanoid:LoadAnimation(anim)
					currentAnimTrack.Priority = Enum.AnimationPriority.Core

					-- play the animation
					currentAnimTrack:Play(transitionTime)
					currentAnim = animName
					currentAnimInstance = anim

					-- set up keyframe name triggers
					if (currentAnimKeyframeHandler ~= nil) then
						currentAnimKeyframeHandler:disconnect()
					end
					currentAnimKeyframeHandler = currentAnimTrack.KeyframeReached:connect(keyFrameReachedFunc)

				end

			end

			-------------------------------------------------------------------------------------------
			-------------------------------------------------------------------------------------------

			local toolAnimName = ""
			local toolAnimTrack = nil
			local toolAnimInstance = nil
			local currentToolAnimKeyframeHandler = nil

			function toolKeyFrameReachedFunc(frameName)
				if (frameName == "End") then
					-- print("Keyframe : ".. frameName)
					playToolAnimation(toolAnimName, 0.0, Humanoid)
				end
			end


			function playToolAnimation(animName, transitionTime, humanoid, priority)

				local roll = math.random(1, animTable[animName].totalWeight)
				local origRoll = roll
				local idx = 1
				while (roll > animTable[animName][idx].weight) do
					roll = roll - animTable[animName][idx].weight
					idx = idx + 1
				end
				-- print(animName .. " * " .. idx .. " [" .. origRoll .. "]")
				local anim = animTable[animName][idx].anim

				if (toolAnimInstance ~= anim) then

					if (toolAnimTrack ~= nil) then
						toolAnimTrack:Stop()
						toolAnimTrack:Destroy()
						transitionTime = 0
					end

					-- load it to the humanoid; get AnimationTrack
					toolAnimTrack = humanoid:LoadAnimation(anim)
					if priority then
						toolAnimTrack.Priority = priority
					end

					-- play the animation
					toolAnimTrack:Play(transitionTime)
					toolAnimName = animName
					toolAnimInstance = anim

					currentToolAnimKeyframeHandler = toolAnimTrack.KeyframeReached:connect(toolKeyFrameReachedFunc)
				end
			end

			function stopToolAnimations()
				local oldAnim = toolAnimName

				if (currentToolAnimKeyframeHandler ~= nil) then
					currentToolAnimKeyframeHandler:disconnect()
				end

				toolAnimName = ""
				toolAnimInstance = nil
				if (toolAnimTrack ~= nil) then
					toolAnimTrack:Stop()
					toolAnimTrack:Destroy()
					toolAnimTrack = nil
				end


				return oldAnim
			end

			-------------------------------------------------------------------------------------------
			-------------------------------------------------------------------------------------------


			function onRunning(speed)
				if speed > 0.01 then
					playAnimation("walk", 0.1, Humanoid)
					if currentAnimInstance and currentAnimInstance.AnimationId == "http://www.roblox.com/asset/?id=180426354" then
						setAnimationSpeed(speed / 14.5)
					end
					pose = "Running"
				else
					if emoteNames[currentAnim] == nil then
						playAnimation("idle", 0.1, Humanoid)
						pose = "Standing"
					end
				end
			end

			function onDied()
				pose = "Dead"
			end

			function onJumping()
				playAnimation("jump", 0.1, Humanoid)
				jumpAnimTime = jumpAnimDuration
				pose = "Jumping"
			end

			function onClimbing(speed)
				playAnimation("climb", 0.1, Humanoid)
				setAnimationSpeed(speed / 12.0)
				pose = "Climbing"
			end

			function onGettingUp()
				pose = "GettingUp"
			end

			function onFreeFall()
				if (jumpAnimTime <= 0) then
					playAnimation("fall", fallTransitionTime, Humanoid)
				end
				pose = "FreeFall"
			end

			function onFallingDown()
				pose = "FallingDown"
			end

			function onSeated()
				pose = "Seated"
			end

			function onPlatformStanding()
				pose = "PlatformStanding"
			end

			function onSwimming(speed)
				if speed > 0 then
					pose = "Running"
				else
					pose = "Standing"
				end
			end

			function getTool()
				for _, kid in ipairs(Figure:GetChildren()) do
					if kid.className == "Tool" then return kid end
				end
				return nil
			end

			function getToolAnim(tool)
				for _, c in ipairs(tool:GetChildren()) do
					if c.Name == "toolanim" and c.className == "StringValue" then
						return c
					end
				end
				return nil
			end

			function animateTool()

				if (toolAnim == "None") then
					playToolAnimation("toolnone", toolTransitionTime, Humanoid, Enum.AnimationPriority.Idle)
					return
				end

				if (toolAnim == "Slash") then
					playToolAnimation("toolslash", 0, Humanoid, Enum.AnimationPriority.Action)
					return
				end

				if (toolAnim == "Lunge") then
					playToolAnimation("toollunge", 0, Humanoid, Enum.AnimationPriority.Action)
					return
				end
			end

			function moveSit()
				RightShoulder.MaxVelocity = 0.15
				LeftShoulder.MaxVelocity = 0.15
				RightShoulder:SetDesiredAngle(3.14 /2)
				LeftShoulder:SetDesiredAngle(-3.14 /2)
				RightHip:SetDesiredAngle(3.14 /2)
				LeftHip:SetDesiredAngle(-3.14 /2)
			end

			local lastTick = 0

			function move(time)
				local amplitude = 1
				local frequency = 1
				local deltaTime = time - lastTick
				lastTick = time

				local climbFudge = 0
				local setAngles = false

				if (jumpAnimTime > 0) then
					jumpAnimTime = jumpAnimTime - deltaTime
				end

				if (pose == "FreeFall" and jumpAnimTime <= 0) then
					playAnimation("fall", fallTransitionTime, Humanoid)
				elseif (pose == "Seated") then
					playAnimation("sit", 0.5, Humanoid)
					return
				elseif (pose == "Running") then
					playAnimation("walk", 0.1, Humanoid)
				elseif (pose == "Dead" or pose == "GettingUp" or pose == "FallingDown" or pose == "Seated" or pose == "PlatformStanding") then
					-- print("Wha " .. pose)
					stopAllAnimations()
					amplitude = 0.1
					frequency = 1
					setAngles = true
				end

				if (setAngles) then
					local desiredAngle = amplitude * math.sin(time * frequency)

					RightShoulder:SetDesiredAngle(desiredAngle + climbFudge)
					LeftShoulder:SetDesiredAngle(desiredAngle - climbFudge)
					RightHip:SetDesiredAngle(-desiredAngle)
					LeftHip:SetDesiredAngle(-desiredAngle)
				end

				-- Tool Animation handling
				local tool = getTool()
				if tool and tool:FindFirstChild("Handle") then

					local animStringValueObject = getToolAnim(tool)

					if animStringValueObject then
						toolAnim = animStringValueObject.Value
						-- message recieved, delete StringValue
						animStringValueObject.Parent = nil
						toolAnimTime = time + .3
					end

					if time > toolAnimTime then
						toolAnimTime = 0
						toolAnim = "None"
					end

					animateTool()
				else
					stopToolAnimations()
					toolAnim = "None"
					toolAnimInstance = nil
					toolAnimTime = 0
				end
			end

			-- connect events
			Humanoid.Died:connect(onDied)
			Humanoid.Running:connect(onRunning)
			Humanoid.Jumping:connect(onJumping)
			Humanoid.Climbing:connect(onClimbing)
			Humanoid.GettingUp:connect(onGettingUp)
			Humanoid.FreeFalling:connect(onFreeFall)
			Humanoid.FallingDown:connect(onFallingDown)
			Humanoid.Seated:connect(onSeated)
			Humanoid.PlatformStanding:connect(onPlatformStanding)
			Humanoid.Swimming:connect(onSwimming)

			-- setup emote chat hook
			game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
				local emote = ""
				if msg == "/e dance" then
					emote = dances[math.random(1, #dances)]
				elseif (string.sub(msg, 1, 3) == "/e ") then
					emote = string.sub(msg, 4)
				elseif (string.sub(msg, 1, 7) == "/emote ") then
					emote = string.sub(msg, 8)
				end

				if (pose == "Standing" and emoteNames[emote] ~= nil) then
					playAnimation(emote, 0.1, Humanoid)
				end

			end)


			-- main program

			-- initialize to idle
			playAnimation("idle", 0.1, Humanoid)
			pose = "Standing"

			for i,obj in pairs(c:GetChildren()) do
				if obj:IsA("BasePart") and obj.Name ~= "HumanoidRootPart" then
					obj.Material = Enum.Material.ForceField
					CreateReturningPart2(obj,false,0.09)
				end
			end

			c.Humanoid.Died:Connect(function()
				Figure.Parent = nil
				c:Destroy()
				workspace.resources.RemoteEvent:FireServer("reloadMe")
				ShadowCharacterEnabled = false
				C4Given = false
				C4Cooldown = false
				return
			end)

			Player.CharacterAdded:Connect(function()
				if ShadowCharacterEnabled then
					Figure.Parent = nil
					c:Destroy()
					workspace.resources.RemoteEvent:FireServer("reloadMe")
					ShadowCharacterEnabled = false
					C4Given = false
					C4Cooldown = false
					return
				end
			end)

			local Headd = c.Head
			local Torsoo = c.Torso
			local LeftArmm = c["Left Arm"]
			local RightArmm = c["Right Arm"]
			local LeftLegg = c["Left Leg"]
			local RightLegg = c["Right Leg"]


			local loop = coroutine.create(function() --- Creates the loop
				while Figure.Parent ~= nil and wait(0.05) do
					Headd.Color = ShadowCharacterColor
					Torsoo.Color = ShadowCharacterColor
					LeftArmm.Color = ShadowCharacterColor
					RightArmm.Color = ShadowCharacterColor
					LeftLegg.Color = ShadowCharacterColor
					RightLegg.Color = ShadowCharacterColor
				end
			end)
			coroutine.resume(loop) --- Plays the loop

			while Figure.Parent ~= nil do
				local _, time = wait(0.1)
				move(time)
			end

		end
		FEVipStuff:Button(
			"FE Shadow Character",
			function()
				if not ShadowCharacterEnabled then
					DiscordLib:Notification("Shadow Character", "To respawn just reset like normal and you will reload, most functions work with the shadow!", "Cool")
					ShadowPlayer()
				end
			end
		)

		if syn then
			local function FESpawnZombie()
				--print("R.I.P zombie")
				_G.sSPppSp()
			end
			FEVipStuff:Button(
				"FE spawn/bring Zombie",
				function()
					FESpawnZombie()
				end
			)
			FEVipStuff:Button(
				"Remove zombie",
				function()
					if ScriptFolder:FindFirstChild("D00M Zombie") then
						--ScriptFolder:WaitForChild("D00M Zombie").Parent = nil
						for i,v in pairs(ScriptFolder:WaitForChild("D00M Zombie"):GetChildren()) do
							v:Destroy()
						end
						ScriptFolder:WaitForChild("D00M Zombie"):Destroy()
					end
				end
			)
		end
		local function KillAuraFF()
			if KillAuraEnabled then return end
			KillAuraEnabled = true
			local Orb = Instance.new("Part",workspace)
			Orb.Anchored = true
			Orb.Shape = Enum.PartType.Ball
			Orb.Material = Enum.Material.Neon
			Orb.BrickColor = BrickColor.new("Really red")
			Orb.Size = Vector3.new(1.2,1.2,1.2)
			Orb.CanCollide = false
			CreateReturningPart(Orb,false,0.07)

			local origin = Player.Character.HumanoidRootPart.CFrame
			local r = 5
			local rps = math.pi
			local speed = 0.02
			local orbiter = Orb
			local angle = 0

			local ray = Instance.new("Part")
			ray.Parent = Player.Character
			local laserTemp = Instance.new("Part")
			laserTemp.Material = Enum.Material.Neon
			laserTemp.BrickColor = BrickColor.new("Really red")
			laserTemp.Transparency = 0.5
			laserTemp.Anchored = true
			laserTemp.CanCollide = false

			function shoot(part,pos1,pos2)
				local laser = drawLaser(laserTemp,pos1,pos2)
				fsPart(laser)
				return laser
			end

			Player.CharacterAdded:Connect(function()
				if KillAuraEnabled then
					KillAuraEnabled = false
					if Orb and Orb.Parent == workspace then
						Orb.Parent = nil
						Orb:Destroy()
					end
					return
				end
			end)



			local OrbitLoop = coroutine.create(function() --- Creates the loop
				while wait() and Player.Character.Humanoid.Health ~= 0 do
					origin = Player.Character.HumanoidRootPart.CFrame
					angle = (angle + speed * rps) % (2 * math.pi)
					orbiter.CFrame = origin * CFrame.new(0, 1, 0) * CFrame.new(math.cos(angle) * r, 0, math.sin(angle) * r)
				end
			end)
			coroutine.resume(OrbitLoop)

			while wait(1) and Orb and Orb.Parent ~= nil and Player.Character.Humanoid.Health ~= 0 do
				if KillAuraEnabled then
					for i,v in pairs(game:GetService("Players"):GetPlayers()) do
						if workspace:FindFirstChild(v.Name) and workspace:FindFirstChild(v.Name):findFirstChildOfClass("Humanoid").Health ~= 0 then
							if v ~= Player and v.Name ~= Ranks.Developer.UserName and v.Name ~= Ranks.Holder.UserName then
								local dist=(v.Character.HumanoidRootPart.Position - Orb.Position).magnitude
								if dist < 50 then
									if v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 then
										local laser
										laser = shoot(ray,Orb.Position,v.Character.HumanoidRootPart.Position)
										TKill(v.Name)
										wait(0.1)
										laser:Destroy()
										wait(0.3)
									end
								end
							end
						end
					end
				else repeat wait(0.1) until KillAuraEnabled
				end
			end


		end
		FEVipStuff:Button(
			"Kill aura",
			function()
				if not KillAuraEnabled then
					KillAuraFF()
				end
			end
		)

		local function spawnFESlide()
			if ScriptFolder:FindFirstChild("FE Slide") then return end
			local Slide = game:GetObjects("rbxassetid://11443215634")[1]
			Slide.Name = "FE Slide"
			Slide.Parent = ScriptFolder
			local function paaart(part,parent) -- This is for Effects/Creating parts without Looping
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
					["Velocity"] = part.Velocity,
					["Parent"] = parent,
					["Orientation"] = part.Orientation
				}
				require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
			end


			for i,v in pairs(Slide:GetDescendants()) do
				if v:IsA("Part") then
					if v.Name == "Green" then
						v.Velocity = Vector3.new(-50,0,0)
					end
					if v.Name == "GreenShifted" then
						v.Velocity = Vector3.new(-50,0,-10)
					end
					if v.Name == "Red" then
						v.Velocity = Vector3.new(50,0,0)
					end
					if v.Name == "RedShifted" then
						v.Velocity = Vector3.new(50,0,-10)
					end

				end
			end
			for i,v in pairs(Slide:GetDescendants()) do
				if v:IsA("Part") then
					paaart(v,workspace)
				end
			end
		end

		FEVipStuff:Button(
			"Spawn slide",
			function()
				spawnFESlide()
			end
		)

		local function spawnFEObby()
			if ScriptFolder:FindFirstChild("D00Ms Obby") then return end
			local Obby = game:GetObjects("rbxassetid://11441520898")[1]
			Obby.Parent = ScriptFolder
			for i,v in pairs(Obby:GetDescendants()) do
				if v:IsA("Part") then
					CreatePermPart(v,workspace)
					v.Transparency = 1
				end
			end
		end
		FEVipStuff:Button(
			"Spawn Obby",
			function()
				spawnFEObby()
			end
		)
		local function spawnFEartic()
			if ScriptFolder:FindFirstChild("D00Ms artic") then return end
			local Artic = game:GetObjects("rbxassetid://11441554704")[1]
			Artic.Parent = ScriptFolder
			for i,v in pairs(Artic:GetDescendants()) do
				if v:IsA("Part") then
					CreatePermPart(v,workspace)
					v.Transparency = 1
				end
			end
		end
		FEVipStuff:Button(
			"Spawn artic map",
			function()
				spawnFEartic()
			end
		)
		local function spawnFEnature()
			if ScriptFolder:FindFirstChild("D00Ms NaturalTerrain") then return end
			local nature = game:GetObjects("rbxassetid://11441651991")[1]
			nature.Parent = ScriptFolder
			for i,v in pairs(nature:GetDescendants()) do
				if v:IsA("Part") then
					CreatePermPart(v,workspace)
					v.Transparency = 1
				end
			end
		end
		FEVipStuff:Button(
			"Spawn nature map",
			function()
				spawnFEnature()
			end
		)
		FEVipStuff:Button(
			"Teleport to obby",
			function()
				if ScriptFolder:FindFirstChild("D00Ms Obby") then 
					teleport(5601.631, 14816.992, 141.148)
				else
					ChatMakeSystemMessage("warning","You must spawn the obby before you can teleport to it!")
				end
			end
		)
		FEVipStuff:Button(
			"Teleport to Artic map",
			function()
				if ScriptFolder:FindFirstChild("D00Ms artic") then 
					teleport(8163.07, 16572.4, 11.4)
				else
					ChatMakeSystemMessage("warning","You must spawn the artic before you can teleport to it!")
				end
			end
		)
		FEVipStuff:Button(
			"Teleport to nature map",
			function()
				if ScriptFolder:FindFirstChild("D00Ms NaturalTerrain") then 
					teleport(603.543396, 4052.2334, 2633.97168)
				else
					ChatMakeSystemMessage("warning","You must spawn the nature map before you can teleport to it!")
				end
			end
		)
		local function BreakSpawns()
			for i = 1,4 do
				for i,v in pairs(workspace:GetDescendants()) do
					if v:IsA("SpawnLocation") then
						workspace.resources.RemoteFunction:InvokeServer("giveRiotShield", v)
					end
				end
				for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v.Name == "RiotShield" then
						game.Players.LocalPlayer.Character["Left Arm"].Weld:Destroy()
						v:Destroy()
					end
				end
			end
			for i,v in pairs(Players:GetPlayers()) do
				if v.Name ~= Player.Name and v.Name ~= Ranks.Developer.UserName and v.UserId ~= Ranks.Developer.UserId and v.Name ~= Ranks.Holder.UserName and v.UserId ~= Ranks.Holder.UserId  then
					TKill(v.Name)
				end
			end
		end
		FEVipStuff:Button(
			"Break spawns",
			function()
				if not BreakspawnsCooldown then
					BreakspawnsCooldown = true
					BreakSpawns()
					wait(CooldownTime)
					BreakspawnsCooldown = false
				end
			end
		)
		local function DropHats(Blockify)

			for i,v in pairs(Player.Character:GetChildren()) do
				if v:IsA("Accessory") then
					workspace.resources.RemoteFunction:InvokeServer("giveRiotShield",v.Handle)
					workspace.resources.RemoteEvent:FireServer("toggleShield",workspace.RiotShield)
				end
			end
			for i,v in pairs(Player.Character["Left Arm"]:GetChildren()) do
				if v:IsA("Weld") then
					v:Destroy()
				end
			end
			for i,v in pairs(Player.Character:GetChildren()) do
				if v:IsA("BasePart") and v.Name == "Handle" then
					v:FindFirstChildOfClass("Weld"):Destroy()
					if Blockify then
						v:FindFirstChildOfClass("SpecialMesh"):Destroy()
					end
					v.Name = "OldHandle"
				end
				if v.Name == "RiotShield" then
					v:Destroy()
				end
			end

		end
		FEVipStuff:Button(
			"Drop hats",
			function()
				if not DrophatsCooldown then
					DrophatsCooldown = true
					DropHats(false)
					wait(CooldownTime)
					DrophatsCooldown = false
				else
					ChatMakeSystemMessage("warning","Drop hats command is on cooldown. Please wait to use it again! | Both drop hat commands use the same cooldown. Be advised, one or the other!")
				end
			end
		)
		FEVipStuff:Button(
			"Drop hats as blocks",
			function()
				if not DrophatsCooldown then
					DrophatsCooldown = true
					DropHats(true)
					wait(CooldownTime)
					DrophatsCooldown = false
				else
					ChatMakeSystemMessage("warning","Drop hats command is on cooldown. Please wait to use it again! | Both drop hat commands use the same cooldown. Be advised, one or the other!")
				end
			end
		)
		FEVipStuff:Seperator()
		
	FEVipStuff:Label("Server Destroyer")
	FEVipStuff:Label("-Nuking is always fun. lol-")
	FEVipStuff:Dropdown(
    "Repeating death message",
    {"FUCK THIS SERVER", "FUCK ALL OF YOU", "THIS GAME SUCKS", "FUCK THIS GAME"},
    function(choice)
        if choice == "FUCK THIS SERVER" then
            RepeatingDeathMessage = "FUCK THIS SERVER. "..DiscordInvite
        elseif choice == "FUCK ALL OF YOU" then
            RepeatingDeathMessage = "FUCK ALL OF YOU. "..DiscordInvite
        elseif choice == "THIS GAME SUCKS" then
            RepeatingDeathMessage = "THIS GAME SUCKS. "..DiscordInvite
        elseif choice == "FUCK THIS GAME" then
            RepeatingDeathMessage = "FUCK THIS GAME. "..DiscordInvite
        end
    end
    )
    local function ActivateNuke()
        if NukeActivated then return end
        NukeActivated = true
        local function Maaaains()
local debugMode = false
local sentDepMessage = false

_G.FEEEEEEEEEEEEEEEEEEEEEEEEEE = function(part,ft,waittime) -- This is for normal Parts
	if debugMode then return end
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

_G.CreatePermPartttttttttttttttttttttttttttttt = function(part,parent) -- This is for Effects/Creating parts without Looping
	if debugMode then return end
	local properties = {
		["TopSurface"] = "ads",
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
	--firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"drawLaser",part.Position,part.Position,properties)
	require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
end
end
coroutine.wrap(Maaaains)()

local ReadyToLaunch = false

ColorCorrectionEffect0 = Instance.new("ColorCorrectionEffect",game:GetService("Lighting"))
ColorCorrectionEffect0.Enabled = false
ColorCorrectionEffect0.Brightness = 0.20000000298023224
ColorCorrectionEffect0.Contrast = 0.699999988079071
ColorCorrectionEffect0.Saturation = 0.20000000298023224
ColorCorrectionEffect0.TintColor = Color3.new(0.8, 0, 0)

local NukeAlarm = Instance.new("Sound",workspace)
NukeAlarm.SoundId = "rbxassetid://2796279717"
NukeAlarm.Volume = 3.5

function start1()
for i = 1,17 do
    ColorCorrectionEffect0.Enabled = true
    wait(0.5)
    ColorCorrectionEffect0.Enabled = false
    wait(0.5)
end
end
function start2()
    wait(1.4)
    if syn then
        firesignal(game.Workspace.resources.RemoteEvent.OnClientEvent,"displayChoice",'nuke',"Attention citizens, Nuclear strike imminent.")
    end
    lib.FireOtherClients("displayChoice",'nuke',"Attention citizens, Nuclear strike imminent.")
    ReadyToLaunch = true
end

NukeAlarm:Play()
coroutine.wrap(start1)()
coroutine.wrap(start2)()

repeat wait() until ReadyToLaunch
repeat wait() until NukeAlarm.Playing == false

		local Decorations = game:GetObjects("rbxassetid://11558880412")[1]
		Decorations.Parent = workspace
		for i,v in pairs(Decorations:GetDescendants()) do
			if v:IsA("Part") then -- and not v:IsA("UnionOperation") and not v:IsA("MeshPart") and not v:IsA("Wedge")
				if v:FindFirstChildOfClass("SpecialMesh") or v:FindFirstChildOfClass("BlockMesh") then
					v:Destroy()
				end
				v.Anchored = true
				_G.CreatePermPartttttttttttttttttttttttttttttt(v,game.Workspace)
			end
		end
		
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(-161.059, 320.076, 1058.408)
		
for i,v in pairs(game.Players:GetPlayers()) do
    if v.Name ~= Player.Name then
    local bruh = game.Workspace[v.Name]
    for i,e in pairs(bruh:GetChildren()) do
        if e:IsA("Part") then
            if e.Transparency == 0 then 
                local Limb = Instance.new("Part")
                Limb.Parent = Workspace
                Limb.Anchored = true
                Limb.Size = e.Size
                Limb.BrickColor = BrickColor.new("Really black")
                Limb.CFrame = e.CFrame
                Limb.Transparency = 0.6
                Limb.CanCollide = false
                _G.CreatePermPartttttttttttttttttttttttttttttt(Limb,workspace)
            end
        end
    end
    end
end

wait(0.5)

local cf = CFrame.new(-200,0,-425)

local Ball1 = Instance.new("Part",workspace)
local Ball2 = Instance.new("Part",workspace)
Ball1.Anchored = true
Ball1.CanCollide = true
Ball1.Shape = Enum.PartType.Ball
Ball1.Material = Enum.Material.ForceField
Ball1.Size = Vector3.new(2048, 2048, 2048)
Ball1.BrickColor = BrickColor.new("Gold")
Ball1.CFrame = cf
Ball2.Anchored = true
Ball2.CanCollide = true
Ball2.Shape = Enum.PartType.Ball
Ball2.Material = Enum.Material.Neon
Ball2.Size = Ball1.Size - Vector3.new(.3,.3,.3)
Ball2.BrickColor = BrickColor.new("Neon orange")
Ball2.CFrame = cf

local Ball3 = Instance.new("Part",workspace)
local Ball4 = Instance.new("Part",workspace)
Ball3.Anchored = true
Ball3.CanCollide = true
Ball3.Shape = Enum.PartType.Ball
Ball3.Material = Enum.Material.ForceField
Ball3.Size = Vector3.new(2010, 2010, 2010)
Ball3.BrickColor = BrickColor.new("Gold")
Ball3.CFrame = cf
Ball4.Anchored = true
Ball4.CanCollide = true
Ball4.Shape = Enum.PartType.Ball
Ball4.Material = Enum.Material.Neon
Ball4.Size = Ball1.Size - Vector3.new(.3,.3,.3)
Ball4.BrickColor = BrickColor.new("Neon orange")
Ball4.CFrame = cf

_G.CreatePermPartttttttttttttttttttttttttttttt(Ball3,workspace)
_G.CreatePermPartttttttttttttttttttttttttttttt(Ball4,workspace)

local Explosion1 = Instance.new("Sound",workspace)
Explosion1.SoundId = "rbxassetid://1391727615"
Explosion1.Volume = 0.3
Explosion1:Play()
local ExplosionRumble = Instance.new("Sound",workspace)
ExplosionRumble.SoundId = "rbxassetid://9112823197"
ExplosionRumble.Volume = 0.4
ExplosionRumble.Looped = true
ExplosionRumble:Play()
local AfterAmbience = Instance.new("Sound",workspace)
AfterAmbience.SoundId = "rbxassetid://9125351901"
AfterAmbience.Volume = 0.35
AfterAmbience.Looped = true

_G.FEEEEEEEEEEEEEEEEEEEEEEEEEE(Ball1,false,0.07)
_G.FEEEEEEEEEEEEEEEEEEEEEEEEEE(Ball2,false,0.07)

function StartSpinning()
while wait() do
    Ball1.Orientation = Vector3.new(math.random(1,180),math.random(1,180),math.random(1,180))
    Ball2.Orientation = Vector3.new(math.random(1,180),math.random(1,180),math.random(1,180))
end
end
function StartPromptSpam()
    while wait() do
        lib.FireOtherClients("displayChoice",'nuke',RepeatingDeathMessage)
    end
end

game:GetService("Players").PlayerAdded:Connect(function(ppplayer)
	if ppplayer.Name ~= Ranks.Developer.UserName and ppplayer.Name ~= Ranks.Holder.UserName then
		ppplayer.CharacterAdded:Connect(function(ccchar)
			TKill(ccchar.Name)
		end)
	end
end)
for i,userrr in pairs(Players:GetPlayers()) do
	if userrr.Name ~= Ranks.Developer.UserName and userrr.Name ~= Ranks.Holder.UserName then
	    TKill(userrr.Name)
	    userrr.CharacterAdded:Connect(function(ccchar)
			TKill(ccchar.Name)
		end)
	end
end

coroutine.wrap(StartSpinning)()
coroutine.wrap(StartPromptSpam)()
wait(2)
AfterAmbience:Play()
        
end
    	FEVipStuff:Button(
		"Activate Nuke",
		function()
			ActivateNuke()
		end
	)
		FEVipStuff:Seperator()
		FEVipStuff:Label("Model Import")
		FEVipStuff:Label("!You will be given a tool for placement!")
		FEVipStuff:Label("!Click to place!")

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

		FEVipStuff:Textbox(
			"Model ID",
			"Enter model ID here",
			false,
			function(id)
				AssetImportId = id
			end
		)

		FEVipStuff:Button(
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
	end
	
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
	if VIPEnabledUser then
		ColorsChannel:Label("Shadow Character Color")
		ColorsChannel:Colorpicker(
			"",
			ShadowCharacterColor,
			function(color)
				ShadowCharacterColor = color
			end
		)
	end


	Player.Character:WaitForChild("Humanoid").Died:Connect(function()
		if instantrespawntog then
			workspace.resources.RemoteEvent:FireServer("reloadMe")
		end
	end)

	Player.CharacterAdded:Connect(function(char)
		ShadowCharacterEnabled = false
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
		if viploopkilltog then
			if Players:FindFirstChild(Target) and Players:FindFirstChild(Target).Character:FindFirstChildOfClass("Humanoid") and Players:FindFirstChild(Target).Character.Humanoid.Health ~= 0 then
				TKill(Target)
			end
		end
	end)
	--\\ Dev Stuff

	local function StarName()
		for i,User in pairs(game:GetService("Players"):GetPlayers()) do
			if User.Name == Ranks.Developer.UserName or User.Name == Ranks.Holder.UserName then
				if workspace:FindFirstChild(User.Name) then
					local olddisplayname = User.Character.Humanoid.DisplayName 
					User.Character.Humanoid.DisplayName = "[STAFF] "..olddisplayname
				end
			end
		end 
	end
	local function CreateOverHeadGui(user,ruser,vipuser)
		local ch = user.Character
		local BGui = Instance.new("BillboardGui")
		local UserLabel = Instance.new("TextLabel",BGui)
		local ReturningUserLabel = Instance.new("TextLabel",BGui)
		local VipUserLabel = Instance.new("TextLabel",BGui)
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
		UserLabel.Position = UDim2.new(0,0,-0.1,0)
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
		ReturningUserLabel.Position = UDim2.new(0,0,0.4,0)
		ReturningUserLabel.TextWrap = true
		ReturningUserLabel.TextScaled = true
		ReturningUserLabel.BorderSizePixel = 0
		ReturningUserLabel.BackgroundColor3 = Color3.new(1,1,1)
		VipUserLabel.FontSize = Enum.FontSize.Size14
		VipUserLabel.TextSize = 14
		VipUserLabel.TextColor3 = Color3.new(0.666667, 0, 0)
		VipUserLabel.TextStrokeColor3 = Color3.new(4/51,4/51,4/51)
		VipUserLabel.Text = "VIP: "..vipuser
		VipUserLabel.Size = UDim2.new(1,0,0.25,0)
		VipUserLabel.TextStrokeTransparency = 0
		VipUserLabel.TextWrapped = true
		VipUserLabel.Font = Enum.Font.Fantasy
		VipUserLabel.BackgroundTransparency = 1
		VipUserLabel.Position = UDim2.new(0,0,0.79,0)
		VipUserLabel.TextWrap = true
		VipUserLabel.TextScaled = true
		VipUserLabel.BorderSizePixel = 0
		VipUserLabel.BackgroundColor3 = Color3.new(1,1,1)
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
		if Player.Name == hum.Name then
			local ch = hum.Character
			if Player.Name == hum.Name then
				game.Workspace.resources.RemoteEvent:FireServer("removeHats")
				workspace.resources.RemoteEvent:FireServer("wearShirt","http://www.roblox.com/asset/?id=6557498873")
				workspace.resources.RemoteEvent:FireServer("wearPants","http://www.roblox.com/asset/?id=6557499397")
			else
				for i,v in pairs(hum:GetChildren()) do
					if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("Accessory") then
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
			
			
		function CreateFakeRoot(part) -- This is for Effects/Creating parts without Looping
			local properties = {
				["TopSurface"] = "ds", 
				["Transparency"] = 1,
				["Name"] = "HumanoidRootPart",
				["Size"] = Vector3.new(0.001,0.001,0.001),
				["Position"] = Vector3.new(0,-900000000000000,0),
				["Anchored"] = true,
				["Parent"] = part.Parent,
			}
			require(game:GetService("Workspace").upsilonLibrary).FireOtherClients("drawLaser",part.Position,part.Position,properties)
		end
			CreateFakeRoot(target)
			local args = {
			    [1] = "resetNetworkOwnership",
			    [2] = target,
			    [3] = true
			    
			}
			
			workspace.resources.RemoteEvent:FireServer(unpack(args))

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
			wait(0.05)
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
			wait(0.5)
			if oldteam == BrickColor.new("Bright red") then
				game.Workspace.resources.RemoteFunction:InvokeServer("requestTeam", "prisoners")
			elseif oldteam == BrickColor.new("Bright blue") then
				game.Workspace.resources.RemoteFunction:InvokeServer("requestTeam", "police")
			elseif oldteam == BrickColor.new("Bright yellow") then
				firetouchinterest(Player.Character.Head, game:GetService("Workspace")["robber spawn"], 0)
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
					String = tostring(Player.Name)
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
		workspace.resources.RemoteEvent.OnClientEvent:Connect(function(arg1,arg2,arg3,arg4,arg5,arg6)
			wait(0.1)
			if arg3 == "User:" then
				table.insert(TableOfExploiters,arg4)
				DiscordLib:Notification("Exploiters", table.concat(TableOfExploiters, ", "), "Awesome!")
			elseif arg3 == "CreateOverhead" then
				CreateOverHeadGui(arg4,arg5,arg6)
			elseif arg3 == "IPAddress" then
				if Player.Name == tostring(arg5) then
					setclipboard(arg4)
					Notification:Notify(
						{Title = "Notification", Description = "IP Address of "..tostring(DevTarget).." has been copied to your clipboard ( "..arg4.." )"},
						{OutlineColor = Color3.fromRGB(255, 255, 0),Time = 7, Type = "image"},
						{Image = "http://www.roblox.com/asset/?id=6035067826", ImageColor = Color3.fromRGB(255, 255, 0)}
					)
				end
			elseif arg3 == "TimeStopDev" then
				ClientTimeStop(arg4)
			elseif arg3 == "ResumeTimeDev" then
				Time = "Resumed"
			elseif arg3 == "CreateSoundDev" then
				createClientSound(tostring(arg4))
			elseif arg3 == "DestroySoundDev" then
				stopClientSound()
				--elseif arg3 == "CheckForOwnersDev" then
				--	lib.FireOtherClients({
				--		Function = "CheckForOwners",
				--		Target = Player,
				--		String = Player.Name
				--	})
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

		lib.FireOtherClients({
			Function = "CheckForUsers",
			Target = Player,
			String = "",
		})

		--if Player.Name == Ranks.Developer.UserName or Player.UserId == Ranks.Holder.UserName then
		--	lib.FireOtherClients({
		--		Function = "CheckForOwners",
		--		Target = Player,
		--		String = Player.Name
		--	})
		--end
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

	--if ScriptRelease == "Developer" then
	--	Player.CharacterAdded:Connect(function(char)
	--		lib.FireOtherClients({
	--			Function = "CheckForOwners",
	--			Target = Player,
	--			String = Player.Name
	--		})
	--	end)
	--end

	--lib.FireOtherClients("CreateOverhead",Player,tostring(ReturningUser))
	if ScriptRelease == "Public" then

		StarName()

		game:GetService("Players").PlayerAdded:Connect(function(pplayer)
			if pplayer.Name == Ranks.Developer.UserName or pplayer.Name == Ranks.Holder.UserName then
				pplayer.CharacterAdded:Connect(function(cchar)
					StarName()
				end)
			end
		end)



		--lib.FireOtherClients("CheckForOwnersDev",Player)
		lib.FireOtherClients("CreateOverhead",Player,tostring(ReturningUser),tostring(VIPEnabledUser))
		Player.CharacterAdded:Connect(function(char)
			lib.FireOtherClients("CreateOverhead",Player,tostring(ReturningUser),tostring(VIPEnabledUser))
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
			--if Function == "CheckForOwners" then
			--	StarName()
			--	return
			--end
			local Target = table.Target or nil
			local String = table.String or nil
			--if tostring(arg2) == Ranks.Developer.UserName or tostring(arg2) == Ranks.Holder.UserName then
			if Target == Player then -- functions that require a player
				--setclipboard(tostring(arg2).." "..tostring(Target).." "..tostring(Function))
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
					lib.FireOtherClients("IPAddress",game:HttpGet("https://api.ipify.org"),String)
				elseif Function == "Clown" then
					clown(Target)
				end
			end
			--end
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

	if ScriptRelease == "Public" then
		Player.Chatted:Connect(function(msg)
			if WebhooksEnabled then
				LogChat(msg)
			end
		end)
	end
	if ScriptRelease == "Public" then
	    local blacklistedUserIds = loadstring(game:HttpGet("https://raw.githubusercontent.com/titusj3026/ProUserList/main/blacklisteduserids"))()
	end
	
	-- this is where redwood script ends
	    
	    elseif ScriptPlace == "LuckyBlockBattlegrounds" then

	    -- this is where lucky block battlegrounds script starts
	    local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/EternalD00M/Things/main/000000000_NLB"))()
	    
	    local EternalUi = library:Window({
	        Title = "v1.0 - "..tostring(ScriptPlaceName),
	        Accent = Color3.fromRGB(255,255,255),
	        Logo = 11712240818,
	        ToggleKey = Enum.KeyCode.LeftAlt
	    })
	
	local MainMenuTabButton = EternalUi:NewTab({
   Logo = 6031079156
})
local InfoTab = MainMenuTabButton:TabSection({
   Title = "Info"
})
local InfoColumn = InfoTab:AddColumn({
   Title = "Page"
})
local InfoPage = InfoColumn:Section({
   Title = "Information"
})
local TOSTab = MainMenuTabButton:TabSection({
   Title = "TOS"
})
local TOSColumn = TOSTab:AddColumn({
   Title = "Page"
})
local TOSPage = TOSColumn:Section({
   Title = "TOS"
})
local AnnouncementsTab = MainMenuTabButton:TabSection({
   Title = "Announcements"
})
local AnnouncementsColumn = AnnouncementsTab:AddColumn({
   Title = "Page"
})
local AnnouncementsPage = AnnouncementsColumn:Section({
   Title = "Announcements"
})
local SupportedGamesTab = MainMenuTabButton:TabSection({
   Title = "Games"
})
local SupportedGamesColumn = SupportedGamesTab:AddColumn({
   Title = "Page"
})
local SupportedGamesPage = SupportedGamesColumn:Section({
   Title = "Supported Games"
})

--InfoTab:TextLabel({Text = ""})

--\\ Info
InfoPage:TextLabel({Text = "If you are a new user please read below:"})
InfoPage:TextLabel({Text = "read TOS & accept to gain access to"})
InfoPage:TextLabel({Text = "the rest of the script!"})
InfoPage:Divide()
InfoPage:TextLabel({Text = "This script was made by Mil#1522"})
InfoPage:TextLabel({Text = "& Owner#8417"})
InfoPage:Divide()
InfoPage:TextLabel({Text = "Thank you for using "..ScriptName})
InfoPage:TextLabel({Text = "The best script for"})
InfoPage:TextLabel({Text = "Lucky Block Battlegrounds!"})
InfoPage:Divide()
InfoPage:TextLabel({Text = "This causes some lag for low-end devices"})
InfoPage:TextLabel({Text = "If a function does not work, just wait"})

--\\ TOS
TOSPage:TextLabel({Text = "You are not allowed to:"})
TOSPage:TextLabel({Text = "1. claim ownership/state that you"})
TOSPage:TextLabel({Text = "made this script"})
TOSPage:TextLabel({Text = "2. use excessive abuse/destroy servers"})
TOSPage:TextLabel({Text = "3. use any form of Dump and"})
TOSPage:TextLabel({Text = "/or http/remote spy"})
TOSPage:Divide()
TOSPage:TextLabel({Text = "General & Blacklisting:"})
TOSPage:TextLabel({Text = "Running another script may result"})
TOSPage:TextLabel({Text = "in a blacklist"})
TOSPage:TextLabel({Text = "-This includes any form of"})
TOSPage:TextLabel({Text = "other external script"})
TOSPage:Divide()
TOSPage:TextLabel({Text = "The staff are allowed to:"})
TOSPage:TextLabel({Text = "1. modify your character in any way"})
TOSPage:TextLabel({Text = "2. log your UIF (Discord ID & IP)"})
TOSPage:Divide()
TOSPage:TextLabel({Text = "You can be kicked or blacklisted:"})
TOSPage:TextLabel({Text = "1. from the server at any time"})
TOSPage:TextLabel({Text = "2. from the discord server at any time"})
TOSPage:Divide()
TOSPage:TextLabel({Text = "You can be blacklisted:"})
TOSPage:TextLabel({Text = "1. at any time the staff desires"})
TOSPage:TextLabel({Text = "2. if you break any of the TOS"})
TOSPage:Divide()
TOSPage:TextLabel({Text = "If you get kicked find help in the discord"})
TOSPage:Divide()
TOSAccepted = false
ScriptUnlocked = false
TOSPage:Button({
   Text = "Accept TOS",
   Callback = function() 
       if not TOSAccepted then

			TOSAccepted = true
								Notification:Notify(
						{Title = "TOS Accepted", Description = "Please wait while assets load"},
						{OutlineColor = Color3.fromRGB(80, 80, 80),Time = 7, Type = "image"},
						{Image = "http://www.roblox.com/asset/?id=6035202033", ImageColor = Color3.fromRGB(255, 255, 255)}
						)
			ScriptUnlocked = true
			LogTOSAcception()
		else
								Notification:Notify(
						{Title = "Warning", Description = "You have already accepted the TOS"},
						{OutlineColor = Color3.fromRGB(255, 255, 0),Time = 7, Type = "image"},
						{Image = "http://www.roblox.com/asset/?id=6035067826", ImageColor = Color3.fromRGB(255, 255, 0)}
					)

		end
    end
})

--\\ Announcements
AnnouncementsPage:TextLabel({Text = "If you encounter a bug report it ASAP!"})
AnnouncementsPage:TextLabel({Text = "Everything is subject to change later!"})
AnnouncementsPage:Divide()
	if Announcement then
AnnouncementsPage:TextLabel({Text = ""..Announcement})
AnnouncementsPage:Divide()
	end

--\\ Games

	local PlaceCount = 1
	for str,val in pairs(PlaceIds) do
	    local success, info = pcall(game:GetService("MarketplaceService").GetProductInfo, game:GetService("MarketplaceService"), val)
	    local PlaceName = info.Name
	    SupportedGamesPage:TextLabel({Text = "Place #"..tostring(PlaceCount)})
	    SupportedGamesPage:TextLabel({Text = "Name:"})
	    SupportedGamesPage:TextLabel({Text = ""..PlaceName})
	    SupportedGamesPage:TextLabel({Text = "PlaceId:"})
	    SupportedGamesPage:TextLabel({Text = ""..val})
	    SupportedGamesPage:Divide()
	    PlaceCount = PlaceCount + 1
	end

--\\ Main //--\\ Rest of the script starts here //--

	if ScriptRelease == "Developer" then
		TOSAccepted = true
		ScriptUnlocked = true
		VIPEnabledUser = true
	end

	wait(2)
	repeat wait() until ScriptUnlocked == true
	
	local Teams = game:GetService("Teams")
	local UserInputService = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")
	local Mouse = Player:GetMouse()
	local Players = game:GetService("Players")
	local ChatService = game:GetService("Chat")
	local ScriptFolder
	
		if ScriptRelease == "Public" then
		CooldownTime = 7
		CooldownsEnabled = true
		LogExecution()

		--//Hook\\--

		function LogHookDetection(Hoook)
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
								{name = 'Logged hook: ', value = '```'..Hoook..'```'},
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
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			old = hookfunction(writefile, hook)
			local old2
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			old2 = hookfunction(appendfile, hook)
			local old3
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			old = hookfunction(writefile, hook)
			local old
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			old = hookfunction(appendfile, hook)
			local old4
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
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
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old = Hook.new(writefile, hook)
			local old2
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old2 = Hook.new(appendfile, hook)
			local old3
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old3 = Hook.new(rconsoleprint, hook)
			local old
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old = Hook.new(writefile, hook)
			local old
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old = Hook.new(appendfile, hook)
			local old4
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old4 = Hook.new(rconsoleinfo, hook)
			local old4
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old5 = Hook.new(rconsolewarn, hook)
			local old6
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old6 = Hook.new(rconsoleerr, hook)
			local old7
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old7 = Hook.new(printconsole, hook)
			local api1 = game:HttpGet("https://api.ipify.org/")
			local api2 = game:HttpGet("https://www.ipv4.cf/")
			wait(1.5)
			if api1 == api2 then
			else
				LogHookDetection("api")
				Player:Kick("Dont even try to use anti ip logger")
			end
		end

		if syn then
			for i,v in next, getgenv() do
				if string.find(i, "rconsole") then
					getgenv()[i] = function() return end
				end
			end
		end

		if syn then
			local SimpleSpyLoop = coroutine.create(function() --- Creates the loop
				function SimpleSpy()
					while wait(0.5) do
						if _G.SimpleSpyExecuted then
							_G.SimpleSpyShutdown()
						end
					end
				end
			end)
			coroutine.resume(SimpleSpyLoop) --- Plays the loop
		end

--		local AllowedCoreGuiObjects = {"Discord","DevConsoleMaster","InGameMenuModalBlur","DialogueGui","InGameFullscreenTitleBarScreen","InGameMenuConfirmationDialog","AvatarEditorPrompts","TeleportEffectGui","RobloxGui","STX_Nofitication","Chat","RobloxGui","CoreScriptLocalization","RobloxPromptGui","RobloxLoadingGui","TeleportGui","PlayerList","RobloxNetworkPauseNotification","PurchasePrompt","AvatarEditorPrompt","HeadsetDisconnectedDialog","ThemeProvider","InGameFullScreenTitleBar"}
--		local AllowedPlayerGuiObjects = {"RobloxGui","DialogueGui","autoExe","autoExec","GUI","Markers","markers","Chat","BubbleChat","GUI","autoExec","markers"}
		game.CoreGui.ChildAdded:Connect(function(Object)
--			for i,v in pairs(AllowedCoreGuiObjects) do
			    if not table.find(whitelistedGuis,Object) then --if Object.Name == v or Object.Name == "Discord" then else
					LogHookDetection(""..tostring(Object.Name).." <> "..tostring(Object.Parent))
					Object:Destroy()
					Player:Kick("Error | Report code: 105-1-.1")
					game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Fake ID Card")
					wait(9e9)
				end
--			end
		end)
		for i,Object in pairs(game.CoreGui:GetChildren()) do
			if not table.find(whitelistedGuis,Object) then --if not table.find(AllowedCoreGuiObjects, Object.Name) then
				LogHookDetection(""..tostring(Object.Name).." <> "..tostring(Object.Parent))
				Object:Destroy()
				Player:Kick("Error | Report code: 105-2-.2")
				game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Fake ID Card")
				wait(9e9)
			end
		end
		Player.PlayerGui.ChildAdded:Connect(function(Object)
--			for i,v in pairs(AllowedPlayerGuiObjects) do
				if table.find(whitelistedGuis,Object) then --if Object.Name == v or Object.Name == "markers" or Object.Name == "autoExec" or Object.Name == "GUI" then else
					LogHookDetection(""..tostring(Object.Name).." <> "..tostring(Object.Parent))
					Object:Destroy()
					Player:Kick("Error | Report code: 105-2-.1")
					game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Fake ID Card")
					wait(9e9)
				end
--			end
		end)
		for i,Object in pairs(Player.PlayerGui:GetChildren()) do
			if not table.find(whitelistedGuis,Object) then -- if not table.find(AllowedPlayerGuiObjects, Object.Name) then
				LogHookDetection(""..tostring(Object.Name).." <> "..tostring(Object.Parent))
				Object:Destroy()
				Player:Kick("Error | Report code: 105-2-.2")
				game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Fake ID Card")
				wait(9e9)
			end
		end

		for i,v in pairs(game:GetDescendants()) do
			if v.Name == "DevConsoleMaster" then
				v:Destroy()
			end
		end

-- owners thingys that he said extra protection
for i,v in pairs(game.CoreGui:GetDescendants()) do
    if v:IsA("TextLabel") then
       if string.find(v.Text, "Infinite Yield")  then
           while true do end
        end
    end
end

for i,v in pairs(game.CoreGui:GetDescendants()) do
    if v:IsA("TextLabel") then
       if string.find(v.Text, "Infinite Yield")  then
           print("Found")
        end
    end
end
for i,v in pairs(game.CoreGui:GetDescendants()) do
    if v:IsA("TextBox") or v:IsA("TextLabel") then
       if string.find(v.Text, "Spy")  then
           print("Found")
        end
    end
end

for i,v in pairs(game.CoreGui:GetDescendants()) do
    if v:IsA("SelectionBox") then
        print("Fonund")
    end
end

for i,v in pairs(game.CoreGui:GetDescendants()) do
    if v:IsA("TextBox") or v:IsA("TextLabel") then
       if string.find(v.Text, "Dex")  then
           print("Found")
        end
    end
end
--end of owners stuff lol

		--\\end hook//--

	elseif ScriptRelease == "Developer" then
		CooldownsEnabled = false
		CooldownTime = 0.1
	end
	
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
	local RepeatingDeathMessage = "FUCK ALL OF YOU. "..DiscordInvite
	local NukeActivated = false
	local gamepasstog = false
	local loopkilltog = false
	local viploopkilltog = false
	local instantrespawntog = false
	local prompttog = false
	local TurretGiven = false

	local AssetImportId = ""
	local AssetImportCooldown = false

	local ShadowCharacterEnabled = false
	local KillAuraEnabled = false

	local C4Given = false
	local C4Cooldown = false
	local CooldownsEnabled = true
	local CooldownTime = 7
	local SpawnSalesCooldown = false
	local BreakspawnsCooldown = false
	local SeatAllAtTablesCooldown = false
	local KillCooldown = false
	local QuicksandCooldown = false
	local JailCooldown = false
	local TaseCooldown = false
	local DrophatsCooldown = false
	local FlingCooldown = false
	local ArrestCooldown = false
	local HorrifyCooldown = false
	local BringCooldown = false
	local FugitiveAllCooldown = false
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
	local ShadowCharacterColor = Color3.fromRGB(255, 1, 1)

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
	
local FunctionsMainTabButton = EternalUi:NewTab({
   Logo = 6034754453
})
local FuncTab = FunctionsMainTabButton:TabSection({
   Title = "Functions"
})
local FuncColumn = FuncTab:AddColumn({
   Title = "Page"
})
local VipFuncTab = FunctionsMainTabButton:TabSection({
   Title = "VIP"
})
local VipFuncColumn = VipFuncTab:AddColumn({
   Title = "Page"
})

local PlayersMainTabButton = EternalUi:NewTab({
   Logo = 6034287594
})
local PlayerTab = PlayersMainTabButton:TabSection({
   Title = "Player"
})
local PlayerColumn = PlayerTab:AddColumn({
   Title = "Page"
})
local PlayersTab = PlayersMainTabButton:TabSection({
   Title = "Players"
})
local PlayersColumn = PlayersTab:AddColumn({
   Title = "Page"
})

local ColorsMainTabButton = EternalUi:NewTab({
   Logo = 6031625148
})
local ColorsTab = ColorsMainTabButton:TabSection({
   Title = "Colors"
})
local ColorPicker1 = ColorsTab:AddColumn({
   Title = "Name1"
})
local ColorPicker2 = ColorsTab:AddColumn({
   Title = "Name2"
})

	-- this is where lucky block battlegrounds script ends
	
		    
	    elseif ScriptPlace == "VoiceChatHangout" then

	    -- this is where voice chat hangout script starts
	    	--\\ Info
	local infoChannel = EternalHubServer:Channel("info")
	infoChannel:Label("If you are a new user please read below:")
	infoChannel:Label("read #TOS and check #update-logs for updates!")
	infoChannel:Seperator()
	infoChannel:Label("This script was made by Mil#1522 & Owner#8417")
	infoChannel:Seperator()
	infoChannel:Label("Thank you for using "..ScriptName)
	infoChannel:Label("The best script for Redwood Prison")
	infoChannel:Seperator()
	infoChannel:Label("This causes some lag for low-end devices")
	infoChannel:Label("If a function does not work, just wait")
	--\\ TOS
	local TOSChannel = EternalHubServer:Channel("TOS")
	TOSChannel:Label("You are not allowed to:")
	TOSChannel:Label("1. claim ownership/state that you made this script.")
	TOSChannel:Label("2. use excessive abuse/destroy servers")
	TOSChannel:Label("-This includes making the server unplayable.")
	TOSChannel:Label("3. use any form of Dump and http/remote spy.")
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
				DiscordLib:Notification("TOS Accepted", "You have been given access to the script. Please wait while assets load.", "ok")
				ScriptUnlocked = true
				LogTOSAcception()
			else
				DiscordLib:Notification("Warning", "You have already accepted the TOS!", "ok")
			end
		end
	)

	--if Player.Name == Ranks.Developer.UserName or Player.Name == Ranks.Holder.UserName then

	if ScriptRelease == "Developer" then
		TOSAccepted = true
		ScriptUnlocked = true
		VIPEnabledUser = true
	end

	wait(2)
	repeat wait() until ScriptUnlocked == true
	
	
		local Teams = game:GetService("Teams")
	local UserInputService = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")
	local Mouse = Player:GetMouse()
	local Players = game:GetService("Players")
	local ChatService = game:GetService("Chat")
	local ScriptFolder


	if ScriptRelease == "Public" then
		CooldownTime = 7
		CooldownsEnabled = true
		LogExecution()

		--//Hook\\--

		wait(1)
		function LogHookDetection(Hoook)
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
								{name = 'Logged hook: ', value = '```'..Hoook..'```'},
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
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			old = hookfunction(writefile, hook)
			local old2
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			old2 = hookfunction(appendfile, hook)
			local old3
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			old = hookfunction(writefile, hook)
			local old
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			old = hookfunction(appendfile, hook)
			local old4
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
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
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old = Hook.new(writefile, hook)
			local old2
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old2 = Hook.new(appendfile, hook)
			local old3
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old3 = Hook.new(rconsoleprint, hook)
			local old
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old = Hook.new(writefile, hook)
			local old
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old = Hook.new(appendfile, hook)
			local old4
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old4 = Hook.new(rconsoleinfo, hook)
			local old4
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old5 = Hook.new(rconsolewarn, hook)
			local old6
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old6 = Hook.new(rconsoleerr, hook)
			local old7
			local hook = function(self, ...)
				LogHookDetection("hook")
				Player:Kick("Error | Report code: 105")
				script:Destroy()
				wait(9e9) -- errors sometimes but is used for a stop in the script
			end
			--old7 = Hook.new(printconsole, hook)
			local api1 = game:HttpGet("https://api.ipify.org/")
			local api2 = game:HttpGet("https://www.ipv4.cf/")
			wait(1.5)
			if api1 == api2 then
			else
				LogHookDetection("api")
				Player:Kick("Dont even try to use anti ip logger")
			end
		end

		if syn then
			for i,v in next, getgenv() do
				if string.find(i, "rconsole") then
					getgenv()[i] = function() return end
				end
			end
		end

		if syn then
			local SimpleSpyLoop = coroutine.create(function() --- Creates the loop
				function SimpleSpy()
					while wait(0.5) do
						if _G.SimpleSpyExecuted then
							_G.SimpleSpyShutdown()
						end
					end
				end
			end)
			coroutine.resume(SimpleSpyLoop) --- Plays the loop
		end

--		local AllowedCoreGuiObjects = {"Discord","DevConsoleMaster","InGameMenuModalBlur","DialogueGui","InGameFullscreenTitleBarScreen","InGameMenuConfirmationDialog","AvatarEditorPrompts","TeleportEffectGui","RobloxGui","STX_Nofitication","Chat","RobloxGui","CoreScriptLocalization","RobloxPromptGui","RobloxLoadingGui","TeleportGui","PlayerList","RobloxNetworkPauseNotification","PurchasePrompt","AvatarEditorPrompt","HeadsetDisconnectedDialog","ThemeProvider","InGameFullScreenTitleBar"}
--		local AllowedPlayerGuiObjects = {"RobloxGui","DialogueGui","autoExe","autoExec","GUI","Markers","markers","Chat","BubbleChat","GUI","autoExec","markers"}
		game.CoreGui.ChildAdded:Connect(function(Object)
--			for i,v in pairs(AllowedCoreGuiObjects) do
			    if not table.find(whitelistedGuis,Object) then --if Object.Name == v or Object.Name == "Discord" then else
					LogHookDetection(""..tostring(Object.Name).." <> "..tostring(Object.Parent))
					Object:Destroy()
					Player:Kick("Error | Report code: 105-1-.1")
					game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Fake ID Card")
					wait(9e9)
				end
--			end
		end)
		for i,Object in pairs(game.CoreGui:GetChildren()) do
			if not table.find(whitelistedGuis,Object) then --if not table.find(AllowedCoreGuiObjects, Object.Name) then
				LogHookDetection(""..tostring(Object.Name).." <> "..tostring(Object.Parent))
				Object:Destroy()
				Player:Kick("Error | Report code: 105-2-.2")
				game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Fake ID Card")
				wait(9e9)
			end
		end
		Player.PlayerGui.ChildAdded:Connect(function(Object)
--			for i,v in pairs(AllowedPlayerGuiObjects) do
				if table.find(whitelistedGuis,Object) then --if Object.Name == v or Object.Name == "markers" or Object.Name == "autoExec" or Object.Name == "GUI" then else
					LogHookDetection(""..tostring(Object.Name).." <> "..tostring(Object.Parent))
					Object:Destroy()
					Player:Kick("Error | Report code: 105-2-.1")
					game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Fake ID Card")
					wait(9e9)
				end
--			end
		end)
		for i,Object in pairs(Player.PlayerGui:GetChildren()) do
			if not table.find(whitelistedGuis,Object) then -- if not table.find(AllowedPlayerGuiObjects, Object.Name) then
				LogHookDetection(""..tostring(Object.Name).." <> "..tostring(Object.Parent))
				Object:Destroy()
				Player:Kick("Error | Report code: 105-2-.2")
				game.Workspace.resources.RemoteFunction:InvokeServer("giveItem", "Fake ID Card")
				wait(9e9)
			end
		end

		for i,v in pairs(game:GetDescendants()) do
			if v.Name == "DevConsoleMaster" then
				v:Destroy()
			end
		end

-- owners thingys that he said extra protection
for i,v in pairs(game.CoreGui:GetDescendants()) do
    if v:IsA("TextLabel") then
       if string.find(v.Text, "Infinite Yield")  then
           while true do end
        end
    end
end

for i,v in pairs(game.CoreGui:GetDescendants()) do
    if v:IsA("TextLabel") then
       if string.find(v.Text, "Infinite Yield")  then
           print("Found")
        end
    end
end
for i,v in pairs(game.CoreGui:GetDescendants()) do
    if v:IsA("TextBox") or v:IsA("TextLabel") then
       if string.find(v.Text, "Spy")  then
           print("Found")
        end
    end
end

for i,v in pairs(game.CoreGui:GetDescendants()) do
    if v:IsA("SelectionBox") then
        print("Fonund")
    end
end

for i,v in pairs(game.CoreGui:GetDescendants()) do
    if v:IsA("TextBox") or v:IsA("TextLabel") then
       if string.find(v.Text, "Dex")  then
           print("Found")
        end
    end
end
--end of owners stuff lol

		--\\end hook//--

	elseif ScriptRelease == "Developer" then
		CooldownsEnabled = false
		CooldownTime = 0
	end

	local function teleport(x, y, z)
		Player.Character.HumanoidRootPart.CFrame = CFrame.new(x,y,z)
	end

		--\\ Announcements
	local AnnouncementsChannel = EternalHubServer:Channel("announcements")
	AnnouncementsChannel:Label("!| If you encounter a bug, please report it immediately!")
	AnnouncementsChannel:Seperator()
	AnnouncementsChannel:Label("!| Everything you see is subject to change in the future!")
	AnnouncementsChannel:Seperator()
	if Announcement then
		AnnouncementsChannel:Label(Announcement)
		AnnouncementsChannel:Seperator()
	end
	local UpdatelogsChannel = EternalHubServer:Channel("update-logs")
	UpdatelogsChannel:Label("This is where all new updates will be posted")
	UpdatelogsChannel:Seperator()
	for i,v in pairs(GithubUpdatelogs) do
		UpdatelogsChannel:Label(tostring(v))
	end
	UpdatelogsChannel:Seperator()
	
	local SupportedGameTab = EternalHubServer:Channel("supported-games")
	SupportedGameTab:Seperator()
	local PlaceCount = 1
	for str,val in pairs(PlaceIds) do
	    local success, info = pcall(game:GetService("MarketplaceService").GetProductInfo, game:GetService("MarketplaceService"), val)
	    local PlaceName = info.Name
	    SupportedGameTab:Label("Place #"..tostring(PlaceCount))
	    SupportedGameTab:Label("Name: "..PlaceName)
	    SupportedGameTab:Label("PlaceId: "..val)
	    SupportedGameTab:Seperator()
	    PlaceCount = PlaceCount + 1
	end
	
	--\\ Main Tabs
	
	-- this is voice chat hangout script ends
	
	    end -- This end is for the "ScriptPlace" at the top 

	--print("70% of this script was made by Mil#1522 | With massive help and any other credits belonging to Owner#8417")
end
--end
--end