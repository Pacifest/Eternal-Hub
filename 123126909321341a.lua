local debugMode = false
local sentDepMessage = false

local SendNotif = function(text)
	local NotificationBindable = Instance.new("BindableFunction")
	game.StarterGui:SetCore("SendNotification",  {
		Title = "Redwood Script";
		Text = text;
		Icon = "";
		Duration = 5;
		Callback = NotificationBindable;
	})
end

_G.Debug = function(state)
	if state == true then
		debugMode = true
	elseif state == false then
		debugMode = false
	end
end

_G.Kill = function(playerchar)
	if debugMode == true then return end
	local args = {
		[1] = "FireOtherClients",
		[2] = "drawLaser",
		[3] = Vector3.new(0, 0, 0),
		[4] = Vector3.new(0, 0, 0), --[[Vector3]]
		[5] = {
			["Name"] = "Head",
			["CFrame"] = playerchar.Head.CFrame,
			["Material"] = Enum.Material.ForceField,
			["Parent"] = playerchar,
			["Size"] = Vector3.new(0.001, 0.001, 0.001),
			["Transparency"] = 1
		}
	}

	workspace.resources.RemoteEvent:FireServer(unpack(args))
end

_G.FE = function(part,ft,waittime) -- This is for normal Parts
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


_G.FED = function(part,BreakOnDeath,waittime) -- This is for breaking on death
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
			if BreakOnDeath == true then
				if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
					part:Destroy()
					break
				end
			end
		end
	end)
	coroutine.resume(loop) --- Plays the loop
end

_G.FEMP = function(part,BreakOnDeath,waittime) -- This is for MeshParts
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
			if BreakOnDeath == true then
				if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
					part:Destroy()
					break
				end
			end
		end
	end)
	coroutine.resume(loop) --- Plays the loop
end


_G.CreatePart = function(part) -- This is for Effects/Creating parts without Looping
	if debugMode then return end
	local part = part

	local Players = game:GetService("Players")

	local parent = part.Parent --- Gets the parent of the Instance you called

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
end


_G.CreatePermPart = function(part,parent) -- This is for Effects/Creating parts without Looping
	if debugMode then return end
	local properties = {
		["TopSurface"] = "this is bs",
		["Material"] = part.Material,
		["Reflectance"] = part.Reflectance,
		["BrickColor"] = part.BrickColor,
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