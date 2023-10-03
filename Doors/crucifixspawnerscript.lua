local usecrucifix1time = false
    local function IsVisible(part)
        local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
        local onscreen = found and vec.Z > 0
        local cfg = RaycastParams.new()
        cfg.FilterType = Enum.RaycastFilterType.Blacklist
        cfg.FilterDescendantsInstances = {part}
    
        local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg)
        if onscreen then
            if cast and (cast and cast.Instance).Parent==game.Players.LocalPlayer.Character then
                return true
            end
        end
    end
    
    local Equipped = false
    
    -- Edit this --
    getgenv().spawnKey = Enum.KeyCode.F4
    ---------------
    
    -- Services
    
    local Players = game:GetService("Players")
    local UIS = game:GetService("UserInputService")
    
    -- Variables
    
    local Plr = Players.LocalPlayer
    local Char = Plr.Character or Plr.CharacterAdded:Wait()
    local Hum = Char:WaitForChild("Humanoid")
    local Root = Char:WaitForChild("HumanoidRootPart")
    local RightArm = Char:WaitForChild("RightUpperArm")
    local LeftArm = Char:WaitForChild("LeftUpperArm")
    
    local RightC1 = RightArm.RightShoulder.C1
    local LeftC1 = LeftArm.LeftShoulder.C1
    
    local SelfModules = {
        Functions = loadstring(
            game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua")
        )(),
        CustomShop = loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"
            )
        )(),
    }
    
    local ModuleScripts = {
        MainGame = require(Plr.PlayerGui.MainUI.Initiator.Main_Game),
        SeekIntro = require(Plr.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Cutscenes.SeekIntro),
    }
    
    -- Functions
    
    local function setupCrucifix(tool)
        tool.Equipped:Connect(function()
            Equipped = true
            Char:SetAttribute("Hiding", true)
    
        end)
    
        tool.Unequipped:Connect(function()
            Equipped = false
            Char:SetAttribute("Hiding", nil)
        end)
    end
    
    -- Scripts
    
    local CrucifixTool = game:GetObjects("rbxassetid://12441313237")[1]
    CrucifixTool.Name = "Crucifix"
    CrucifixTool.Parent = game.Players.LocalPlayer.Backpack
    
    -- game.UserInputService.InputBegan:Connect(function(input, proc)
    --     if proc then return end
    
    --     if input.KeyCode == input.KeyCode[getgenv().spawnKey] then
    --         local CrucifixTool = game:GetObjects("rbxassetid://11590476113")[1]
    --         CrucifixTool.Name = "Crucifix"
    --         CrucifixTool.Parent = game.Players.LocalPlayer.Backpack
    --     end
    -- end)
    -- Input handler
    
    setupCrucifix(CrucifixTool)
    
    local Players = game:GetService("Players")
    local UIS = game:GetService("UserInputService")
    
    -- Variables
    start = false
    durability = 100
    max = 100
    local Plr = Players.LocalPlayer
    local Char = Plr.Character or Plr.CharacterAdded:Wait()
    local Hum = Char:WaitForChild("Humanoid")
    local Root = Char:WaitForChild("HumanoidRootPart")
    local tool = CrucifixTool
    local handle = CrucifixTool.Handle
    local dupeCrucifix = Instance.new("BindableEvent")
    local start = true
    
    
    local function func(ins)
        wait(.01) -- Wait for the attribute
        if ins:GetAttribute("IsCustomEntity")==true and ins:GetAttribute("ClonedByCrucifix")~=true then
            local Chains = game:GetObjects("rbxassetid://12537077765")[1]
            Chains.Parent = workspace
            local chained = true
            local posTime = false
            local rotTime = false
            local tweenTime = false
            local intFound = true
            game:GetService("RunService").RenderStepped:Connect(function()
                if Equipped then
                    if ins.Parent~=nil and ins.PrimaryPart and IsVisible(ins.PrimaryPart) and (Root.Position-ins.PrimaryPart.Position).magnitude <= 25 then
    
            local start = false
            local handle2 = handle:Clone()
            handle2.CFrame = CFrame.lookAt(handle2.Position, ins:FindFirstChild("RushNew").Position)
            local Transparency = 1
    
            game["Run Service"].Heartbeat:Connect(function()
                local Transparency = 1
    if not handle2 then
        return
    elseif not handle2:FindFirstChild("Glow") then
        return
    elseif not tool then
        return
    end
        if start == true then
            acceleration += 0.007
    
            handle2.Glow.Orientation += Vector3.new(0,acceleration,0)
            if acceleration >= 3 then
    
                acceleration = 0
    local Transparency = 1
                            game.TweenService
    :Create(
        handle2.Glow,
        TweenInfo.new(0.4),
        { Size = handle2.Glow.Size * Vector3.new(2.178, 1.885, 0.407) }
    )
    :Play()
    game.TweenService
    :Create(
        handle2.Glow,
        TweenInfo.new(0.4),
        { Transparency = Transparency}
    )
    :Play()
    
    
            end
        else
            acceleration = 0
            handle.Glow.Transparency = 1
        end
    end)
            handle2.Anchored = true
            handle2.Parent = workspace
            handle2.Transparency = 1
            handle2.Glow.Transparency = 0
    
                        local c=ins:Clone()
                        c:SetAttribute("ClonedByCrucifix", true)
                        c.RushNew.Anchored=true
                        c.Parent=ins.Parent
                        ins:Destroy()
                        dupeCrucifix:Fire(10,c.RushNew)
    
    
    
                        -- Chains.PrimaryPart.Orientation = Chains.PrimaryPart.Orientation + Vector3.new(0, 3, 0)
    
                        local EntityRoot = c:FindFirstChild("RushNew")
                                --Made by Nljoram3
    game.RunService.RenderStepped:Connect(function()
    Chains.Entity.CFrame = EntityRoot.CFrame
    end)
    
            game.RunService.RenderStepped:Connect(function()
                start = true
        if start == true then
            acceleration += 0.0003
            handle2.Glow.Orientation += Vector3.new(0,acceleration,0)
            handle2.Anchored = true
            if acceleration >= 40.6 then
    local Transparency = 1
                            game.TweenService
    :Create(
        handle2.Glow,
        TweenInfo.new(0.4),
        { Size = handle2.Glow.Size * Vector3.new(2.178, 1.885, 0.407) }
    )
    :Play()
    game.TweenService
    :Create(
        handle2.Glow,
        TweenInfo.new(0.4),
        { Transparency = Transparency}
    )
    :Play()
            end
        else
    
        end
    end)
    
                            if usecrucifix1time == true then
                                handle.Parent:Destroy()
                            end
    
                        if EntityRoot then
        Chains:PivotTo(EntityRoot.CFrame - Vector3.new(0,3,0))
        handle2.Sound:Play()
    
            ModuleScripts.MainGame.camShaker:ShakeOnce(9, 25, 0.7, 0.7)
                                        game.TweenService
                                    :Create(
                                        handle2,
                                        TweenInfo.new(1),
                                        { CFrame = handle2.CFrame * CFrame.new(0, 3, -3) }
                                    )
                                    :Play()
    
                            task.wait(0.9)
    
    
                                game.TweenService
                                    :Create(
                                        EntityRoot,
                                        TweenInfo.new(2),
                                        { CFrame = EntityRoot.CFrame * CFrame.new(0, -1.7, 0) }
                                    )
                                    :Play()
    
    task.wait(0.1)
    ModuleScripts.MainGame.camShaker:ShakeOnce(7, 25, 3, 2)
    task.wait(0.1)
    
    
                                game.TweenService
                                    :Create(
                                        EntityRoot,
                                        TweenInfo.new(1),
                                        { CFrame = EntityRoot.CFrame * CFrame.new(0, 2.5, 0) }
                                    )
                                    :Play()
    
    task.wait(0.1)
                                game.TweenService
                                    :Create(
                                        EntityRoot,
                                        TweenInfo.new(.134),
                                        { CFrame = EntityRoot.CFrame * CFrame.new(0, 2.3, 0) }
                                    )
                                    :Play()
    
                                    task.wait(0.1)
                                game.TweenService
                                    :Create(
                                        EntityRoot,
                                        TweenInfo.new(.9),
                                        { CFrame = EntityRoot.CFrame * CFrame.new(0, 2.5, 0) }
                                    )
                                    :Play()
    
    
    task.wait(1.0)
                                    ModuleScripts.MainGame.camShaker:ShakeOnce(5, 25, 1.8, 2)
                                game.TweenService
                                    :Create(
                                        EntityRoot,
                                        TweenInfo.new(16.7),
                                        { CFrame = EntityRoot.CFrame * CFrame.new(0, -150, 0) }
                                    )
                                    :Play()
    task.wait(0.1)
                                                                game.TweenService
                                    :Create(
                                        EntityRoot.Footsteps,
                                        TweenInfo.new(2),
                                        { Volume = 0 }
                                    )
                                    :Play()
                                                                                                game.TweenService
                                    :Create(
                                        EntityRoot.PlaySound,
                                        TweenInfo.new(2),
                                        { Volume = 0 }
                                    )
                                    :Play()
    
    
                                tweenTime = true
                                task.wait(1.0)
                                intFound = false
                                game:GetService("Debris"):AddItem(c, 0)
                                task.wait(1)
                                Chains.BeamFlat1:Destroy()
                                task.wait(0.2)
                                Chains.BeamFlat2:Destroy()
                                task.wait(1.2)
                                wait(0.1)
                                Chains.BeamFlat3:Destroy()
                                wait(0.2)
                                Chains.BeamFlatCircle:Destroy()
                                Chains:Destroy()
    wait(1)
                                handle2:Destroy()
                        end
                    end
                end
            end)
        elseif ins.Name=="Eyes" then
    
            local CrucifixTool = game.Players.LocalPlayer.Character:FindFirstChild("Crucifix")
            local tool = CrucifixTool
            local handle = CrucifixTool.Handle
            local handle2 = handle:Clone()
            handle2.Anchored = true
            local start = false
            local c=ins
            task.spawn(function()
                repeat task.wait() until IsVisible(c.Core) and Equipped and c.Core.Attachment.Eyes.Enabled==true
                local pos=c.Core.Position
                dupeCrucifix:Fire(18.364, c.Core)
                task.spawn(function()
                    local Chains = game:GetObjects("rbxassetid://11555754461")[1]
                    Chains.Parent = workspace
                    game.RunService.RenderStepped:Connect(function()
    wait(0.1)
    Chains.Base.CFrame = Chains.Base.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0.006)
    end)
    
            handle2.Anchored = true
            handle2.Parent = workspace
            handle2.Transparency = 1
            handle2.Glow.Transparency = 0
                                                game.TweenService
                                    :Create(
                                        handle2,
                                        TweenInfo.new(1),
                                        { CFrame = handle2.CFrame * CFrame.new(0, 3, -3) }
                                    )
                                    :Play()
        Chains:PivotTo(c.Core.CFrame - Vector3.new(0,6.9,0))
        Chains.Chain1.Attachment:FindFirstChildOfClass("Beam").Attachment1 = c.Core.Attachment
        Chains.Chain2.Attachment:FindFirstChildOfClass("Beam").Attachment1 = c.Core.Attachment
        Chains.Chain3.Attachment:FindFirstChildOfClass("Beam").Attachment1 = c.Core.Attachment
        Chains.Chain4.Attachment:FindFirstChildOfClass("Beam").Attachment1 = c.Core.Attachment
    
    
                    c:SetAttribute("Killing", true)
                    ModuleScripts.MainGame.camShaker:ShakeOnce(10, 10, 5, 0.15)
                    handle2.Charge:Play()
                    wait(1)
                    c.Core.Initiate:Stop()
                    for i=1,3 do
                        c.Core.Repent:Play()  
                        c.Core.Attachment.Angry.Enabled=true
                        ModuleScripts.MainGame.camShaker:ShakeOnce(8, 8, 1.3, 0.15)
                        delay(c.Core.Repent.TimeLength, function() c.Core.Attachment.Angry.Enabled=false end)
                        wait(1.0)
                    end
                    c.Core.Scream:Play();
                    ModuleScripts.MainGame.camShaker:ShakeOnce(8, 8, c.Core.Scream.TimeLength, 0.15);
                    (c.Core:FindFirstChild"whisper" or c.Core:FindFirstChild"Ambience"):Stop()
                    for _, l in pairs(c:GetDescendants()) do
                        if l:IsA("PointLight") then
                            l.Enabled=false
                        end
                    end
                    game:GetService("TweenService"):Create(c.Core, TweenInfo.new(3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                        CFrame=CFrame.new(c.Core.CFrame.X, c.Core.CFrame.Y-12, c.Core.CFrame.Z)
                    }):Play()
    
                end)
    
                local col=game.Players.LocalPlayer.Character.Collision
    
                local function CFrameToOrientation(cf)
                    local x, y, z = cf:ToOrientation()
                    return Vector3.new(math.deg(x), math.deg(y), math.deg(z))
                end
    
                while c.Parent~=nil and c.Core.Attachment.Eyes.Enabled==true do
                    -- who's the boss now huh?
                    col.Orientation = CFrameToOrientation(CFrame.lookAt(col.Position, pos)*CFrame.Angles(0, math.pi, 0))
                    task.wait()
                end
            end)
        elseif ins.Name=="Shade" and ins.Parent==workspace.CurrentCamera and ins:GetAttribute("ClonedByCrucifix")==nil then
            task.spawn(function()
                repeat task.wait() until IsVisible(ins) and (Root.Position-ins.Position).Magnitude <= 12.5 and Equipped
    
                local clone = ins:Clone()
    
                clone.CFrame = ins.CFrame
                clone.Parent = ins.Parent
                clone.Anchored = true
    
                ins:Remove()
    
                dupeCrucifix:Fire(20, ins)
                ModuleScripts.MainGame.camShaker:ShakeOnce(40, 10, 5, 0.15)
    
    
    
                for _, thing in pairs(clone:GetDescendants()) do
                    if thing:IsA("SpotLight") then
                        game:GetService("TweenService"):Create(thing, TweenInfo.new(5), {
                            Brightness=thing.Brightness*5
                        }):Play()
                    elseif thing:IsA("Sound") and thing.Name~="Burst" then
                        game:GetService("TweenService"):Create(thing, TweenInfo.new(5), {
                            Volume=0
                        }):Play()
                    elseif thing:IsA("TouchTransmitter") then thing:Destroy() end
                end
    
                for _, pc in pairs(clone:GetDescendants()) do
                    if pc:IsA("ParticleEmitter") then
                            pc.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.48, Color3.fromRGB(182, 0, 3)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))}
                    end
                end
    
                local Original_color = {}
    
                local light
                light = game.Lighting["Ambience_Shade"]
                game:GetService("TweenService"):Create(light, TweenInfo.new(1), {
    
    
                }):Play()
    
                wait(0.6)
    
                clone.Burst.PlaybackSpeed=0.01
                clone.Burst:Stop()
                clone.Burst:Play()
                light.TintColor = Color3.fromRGB(215,253,255)
                game:GetService("TweenService"):Create(clone, TweenInfo.new(6), {
                    CFrame=CFrame.new(clone.CFrame.X, clone.CFrame.Y-12, clone.CFrame.Z)
                }):Play()
                wait(0.4)
    
                game:GetService("Debris"):AddItem(clone, 0)
                game.ReplicatedStorage.Bricks.ShadeResult:FireServer()
            end)
        end
    end
    
    workspace.ChildAdded:Connect(func)
    workspace.CurrentCamera.ChildAdded:Connect(func)
    for _, thing in pairs(workspace:GetChildren()) do
        func(thing)
    end
    dupeCrucifix.Event:Connect(function(time, entityRoot)
        local Cross = game:GetObjects("rbxassetid://12421557552")[1]
        Cross.Parent = workspace
    
        local fakeCross = Cross.Handle
    
        -- fakeCross:FindFirstChild("EffectLight").Enabled = true
    
        ModuleScripts.MainGame.camShaker:ShakeOnce(35, 25, 0.15, 0.15)
        -- you tell me i didnt make?
        fakeCross.CFrame = CFrame.lookAt(CrucifixTool.Handle.Position, entityRoot.Position)
    
        -- hl.Parent = model
        -- hl.FillTransparency = 1
        -- hl.OutlineColor = Color3.fromRGB(75, 177, 255)
        fakeCross.Anchored = true
    
        CrucifixTool:Destroy()
    
        -- for i, v in pairs(fakeCross:GetChildren()) do
        --     if v.Name == "E" and v:IsA("BasePart") then
        --         v.Transparency = 0
        --         v.CanCollide = false
        --     end
        --     if v:IsA("Motor6D") then
        --         v.Name = "Motor6D"
        --     end
        -- end
    
        task.wait(time)
        fakeCross.Anchored = false
        fakeCross.CanCollide = true
        task.wait(1.0)
        Cross:Remove()
    end) -- closing statement for the function block
