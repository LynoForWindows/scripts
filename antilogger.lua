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
