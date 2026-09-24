Library = {}
SaveTheme = {}

local themes = {
	index = {'Default', 'Dark', 'VectorBlue'},
	Default = {
		['Shadow'] = Color3.fromRGB(30, 100, 220),
		['Background'] = Color3.fromRGB(15, 15, 18),
		['Page'] = Color3.fromRGB(19, 19, 24),
		['Card'] = Color3.fromRGB(22, 22, 28),
		['CardBorder'] = Color3.fromRGB(38, 38, 48),
		['Main'] = Color3.fromRGB(42, 110, 230),
		['Text & Icon'] = Color3.fromRGB(255, 255, 255),
		['SubText'] = Color3.fromRGB(150, 150, 160),
		['Function'] = {
			['Toggle'] = {
				['Background'] = Color3.fromRGB(22, 22, 28),
				['True'] = {
					['Toggle Background'] = Color3.fromRGB(42, 110, 230),
					['Toggle Value'] = Color3.fromRGB(255, 255, 255),
				},
				['False'] = {
					['Toggle Background'] = Color3.fromRGB(38, 38, 46),
					['Toggle Value'] = Color3.fromRGB(130, 130, 140),
				}
			},
			['Label'] = {
				['Background'] = Color3.fromRGB(22, 22, 28),
			},
			['Dropdown'] = {
				['Background'] = Color3.fromRGB(22, 22, 28),
				['Value Background'] = Color3.fromRGB(17, 17, 22),
				['Value Stroke'] = Color3.fromRGB(50, 50, 62),
				['Dropdown Select'] = {
					['Background'] = Color3.fromRGB(17, 17, 22),
					['Search'] = Color3.fromRGB(26, 26, 34),
					['Item Background'] = Color3.fromRGB(26, 26, 34),
				}
			},
			['Slider'] = {
				['Background'] = Color3.fromRGB(22, 22, 28),
				['Value Background'] = Color3.fromRGB(17, 17, 22),
				['Value Stroke'] = Color3.fromRGB(50, 50, 62),
				['Slider Bar'] = Color3.fromRGB(40, 40, 50),
				['Slider Bar Value'] = Color3.fromRGB(42, 110, 230),
				['Circle Value'] = Color3.fromRGB(255, 255, 255)
			},
			['Code'] = {
				['Background'] = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(22, 22, 28)), ColorSequenceKeypoint.new(1, Color3.fromRGB(22, 22, 28))},
				['Background Code'] = Color3.fromRGB(26, 26, 34),
				['Background Code Value'] = Color3.fromRGB(17, 17, 22),
				['ScrollingFrame Code'] = Color3.fromRGB(60, 140, 255)
			},
			['Button'] = {
				['Background'] = Color3.fromRGB(22, 22, 28),
				['Border'] = Color3.fromRGB(42, 110, 230),
				['Click'] = Color3.fromRGB(255, 255, 255)
			},
			['Textbox'] = {
				['Background'] = Color3.fromRGB(22, 22, 28),
				['Value Background'] = Color3.fromRGB(17, 17, 22),
				['Value Stroke'] = Color3.fromRGB(50, 50, 62),
			},
			['Keybind'] = {
				['Background'] = Color3.fromRGB(22, 22, 28),
				['Value Background'] = Color3.fromRGB(17, 17, 22),
				['Value Stroke'] = Color3.fromRGB(50, 50, 62),
				['True'] = {
					['Toggle Background'] = Color3.fromRGB(42, 110, 230),
					['Toggle Value'] = Color3.fromRGB(255, 255, 255),
				},
				['False'] = {
					['Toggle Background'] = Color3.fromRGB(38, 38, 46),
					['Toggle Value'] = Color3.fromRGB(130, 130, 140),
				}
			},
			['Color Picker'] = {
				['Background'] = Color3.fromRGB(22, 22, 28),
				['Color Select'] = {
					['Background'] = Color3.fromRGB(17, 17, 22),
					['UIStroke'] = Color3.fromRGB(50, 50, 62),
				}
			}
		}
	},
	VectorBlue = {
		['Shadow'] = Color3.fromRGB(30, 100, 220),
		['Background'] = Color3.fromRGB(15, 15, 18),
		['Page'] = Color3.fromRGB(19, 19, 24),
		['Card'] = Color3.fromRGB(22, 22, 28),
		['CardBorder'] = Color3.fromRGB(38, 38, 48),
		['Main'] = Color3.fromRGB(42, 110, 230),
		['Text & Icon'] = Color3.fromRGB(255, 255, 255),
		['SubText'] = Color3.fromRGB(150, 150, 160),
		['Function'] = {
			['Toggle'] = {
				['Background'] = Color3.fromRGB(22, 22, 28),
				['True'] = {
					['Toggle Background'] = Color3.fromRGB(42, 110, 230),
					['Toggle Value'] = Color3.fromRGB(255, 255, 255),
				},
				['False'] = {
					['Toggle Background'] = Color3.fromRGB(38, 38, 46),
					['Toggle Value'] = Color3.fromRGB(130, 130, 140),
				}
			},
			['Label'] = {
				['Background'] = Color3.fromRGB(22, 22, 28),
			},
			['Dropdown'] = {
				['Background'] = Color3.fromRGB(22, 22, 28),
				['Value Background'] = Color3.fromRGB(17, 17, 22),
				['Value Stroke'] = Color3.fromRGB(50, 50, 62),
				['Dropdown Select'] = {
					['Background'] = Color3.fromRGB(17, 17, 22),
					['Search'] = Color3.fromRGB(26, 26, 34),
					['Item Background'] = Color3.fromRGB(26, 26, 34),
				}
			},
			['Slider'] = {
				['Background'] = Color3.fromRGB(22, 22, 28),
				['Value Background'] = Color3.fromRGB(17, 17, 22),
				['Value Stroke'] = Color3.fromRGB(50, 50, 62),
				['Slider Bar'] = Color3.fromRGB(40, 40, 50),
				['Slider Bar Value'] = Color3.fromRGB(42, 110, 230),
				['Circle Value'] = Color3.fromRGB(255, 255, 255)
			},
			['Code'] = {
				['Background'] = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(22, 22, 28)), ColorSequenceKeypoint.new(1, Color3.fromRGB(22, 22, 28))},
				['Background Code'] = Color3.fromRGB(26, 26, 34),
				['Background Code Value'] = Color3.fromRGB(17, 17, 22),
				['ScrollingFrame Code'] = Color3.fromRGB(60, 140, 255)
			},
			['Button'] = {
				['Background'] = Color3.fromRGB(22, 22, 28),
				['Border'] = Color3.fromRGB(42, 110, 230),
				['Click'] = Color3.fromRGB(255, 255, 255)
			},
			['Textbox'] = {
				['Background'] = Color3.fromRGB(22, 22, 28),
				['Value Background'] = Color3.fromRGB(17, 17, 22),
				['Value Stroke'] = Color3.fromRGB(50, 50, 62),
			},
			['Keybind'] = {
				['Background'] = Color3.fromRGB(22, 22, 28),
				['Value Background'] = Color3.fromRGB(17, 17, 22),
				['Value Stroke'] = Color3.fromRGB(50, 50, 62),
				['True'] = {
					['Toggle Background'] = Color3.fromRGB(42, 110, 230),
					['Toggle Value'] = Color3.fromRGB(255, 255, 255),
				},
				['False'] = {
					['Toggle Background'] = Color3.fromRGB(38, 38, 46),
					['Toggle Value'] = Color3.fromRGB(130, 130, 140),
				}
			},
			['Color Picker'] = {
				['Background'] = Color3.fromRGB(22, 22, 28),
				['Color Select'] = {
					['Background'] = Color3.fromRGB(17, 17, 22),
					['UIStroke'] = Color3.fromRGB(50, 50, 62),
				}
			}
		}
	},
	Dark = {
		['Shadow'] = Color3.fromRGB(10, 10, 12),
		['Background'] = Color3.fromRGB(12, 12, 14),
		['Page'] = Color3.fromRGB(16, 16, 18),
		['Card'] = Color3.fromRGB(20, 20, 24),
		['CardBorder'] = Color3.fromRGB(32, 32, 38),
		['Main'] = Color3.fromRGB(60, 60, 70),
		['Text & Icon'] = Color3.fromRGB(220, 220, 225),
		['SubText'] = Color3.fromRGB(120, 120, 130),
		['Function'] = {
			['Toggle'] = {
				['Background'] = Color3.fromRGB(20, 20, 24),
				['True'] = {
					['Toggle Background'] = Color3.fromRGB(80, 80, 95),
					['Toggle Value'] = Color3.fromRGB(240, 240, 245),
				},
				['False'] = {
					['Toggle Background'] = Color3.fromRGB(30, 30, 35),
					['Toggle Value'] = Color3.fromRGB(70, 70, 80),
				}
			},
			['Label'] = {
				['Background'] = Color3.fromRGB(20, 20, 24),
			},
			['Dropdown'] = {
				['Background'] = Color3.fromRGB(20, 20, 24),
				['Value Background'] = Color3.fromRGB(14, 14, 16),
				['Value Stroke'] = Color3.fromRGB(40, 40, 48),
				['Dropdown Select'] = {
					['Background'] = Color3.fromRGB(14, 14, 16),
					['Search'] = Color3.fromRGB(24, 24, 28),
					['Item Background'] = Color3.fromRGB(24, 24, 28),
				}
			},
			['Slider'] = {
				['Background'] = Color3.fromRGB(20, 20, 24),
				['Value Background'] = Color3.fromRGB(14, 14, 16),
				['Value Stroke'] = Color3.fromRGB(40, 40, 48),
				['Slider Bar'] = Color3.fromRGB(32, 32, 38),
				['Slider Bar Value'] = Color3.fromRGB(90, 90, 110),
				['Circle Value'] = Color3.fromRGB(255, 255, 255)
			},
			['Code'] = {
				['Background'] = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 24)), ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 24))},
				['Background Code'] = Color3.fromRGB(25, 25, 30),
				['Background Code Value'] = Color3.fromRGB(16, 16, 20),
				['ScrollingFrame Code'] = Color3.fromRGB(140, 140, 150)
			},
			['Button'] = {
				['Background'] = Color3.fromRGB(20, 20, 24),
				['Border'] = Color3.fromRGB(50, 50, 60),
				['Click'] = Color3.fromRGB(220, 220, 225)
			},
			['Textbox'] = {
				['Background'] = Color3.fromRGB(20, 20, 24),
				['Value Background'] = Color3.fromRGB(14, 14, 16),
				['Value Stroke'] = Color3.fromRGB(40, 40, 48),
			},
			['Keybind'] = {
				['Background'] = Color3.fromRGB(20, 20, 24),
				['Value Background'] = Color3.fromRGB(14, 14, 16),
				['Value Stroke'] = Color3.fromRGB(40, 40, 48),
				['True'] = {
					['Toggle Background'] = Color3.fromRGB(80, 80, 95),
					['Toggle Value'] = Color3.fromRGB(240, 240, 245),
				},
				['False'] = {
					['Toggle Background'] = Color3.fromRGB(30, 30, 35),
					['Toggle Value'] = Color3.fromRGB(70, 70, 80),
				}
			},
			['Color Picker'] = {
				['Background'] = Color3.fromRGB(20, 20, 24),
				['Color Select'] = {
					['Background'] = Color3.fromRGB(14, 14, 16),
					['UIStroke'] = Color3.fromRGB(40, 40, 48),
				}
			}
		}
	},
}

local existingUI = game:GetService("CoreGui"):FindFirstChild("Vector")
if existingUI then
	existingUI:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Vector"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 999
ScreenGui.Parent = game:GetService("CoreGui")

local U, Tw = game:GetService("UserInputService"), game:GetService("TweenService")

local currentWindowTheme = {
	isLightMode = false,
	cards = {},
	sections = {},
	controls = {},
	tabs = {},
}

do

	function addToTheme(name, obj)
		if not SaveTheme[name] then
			SaveTheme[name] = {}
		end
		table.insert(SaveTheme[name], obj)
	end

	function getColorFromPath(tbl, path)
		local result = tbl
		for _, part in ipairs(string.split(path, ".")) do
			result = result and result[part]
		end
		return result
	end

	function Library:setTheme(st)
		for name, objs in pairs(SaveTheme) do
			if objs and #objs > 0 then
				local color = getColorFromPath(st, name)
				if color then
					for _, obj in pairs(objs) do
						if obj and obj.Parent then
							if obj:IsA("Frame") or obj:IsA("CanvasGroup") then
								obj.BackgroundColor3 = color
							elseif obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
								obj.TextColor3 = color
							elseif obj:IsA("ImageLabel") or obj:IsA("ImageButton") then
								obj.ImageColor3 = color
							elseif obj:IsA("ScrollingFrame") then
								obj.ScrollBarImageColor3 = color
							elseif obj:IsA("UIStroke") then
								obj.Color = color
							elseif obj:IsA("UIGradient") then
								obj.Color = color
							end
						end
					end
				end
			end
		end
	end

	local IconList = nil
	pcall(function()
		IconList = loadstring(game:HttpGet('https://raw.githubusercontent.com/VectorDevTeam1/vector-hub/refs/heads/main/Sources/Icons.lua'))()
	end)

	local IconAliases = {
		["home"] = "house",
		["profile"] = "user",
		["gear"] = "settings",
		["fire"] = "flame",
		["pulse"] = "activity",
		["timer"] = "clock",
		["cart"] = "shopping-cart",
		["box"] = "package",
		["lightning"] = "zap",
		["bolt"] = "zap",
		["tuning"] = "sliders",
	}

	function gl(i)
		if type(i) == "string" then
			local key = string.lower(i)
			if IconAliases[key] then
				key = IconAliases[key]
			end
			if key == "discord" then
				return {
					Image = "rbxassetid://119690296342461",
					ImageRectSize = Vector2.new(0, 0),
					ImageRectPosition = Vector2.new(0, 0),
				}
			end
			if IconList and IconList.Icons and IconList.Icons[key] then
				local iconData = IconList.Icons[key]
				local spriteSheet = IconList.Spritesheets and IconList.Spritesheets[tostring(iconData.Image)]
				if spriteSheet then
					return {
						Image = spriteSheet,
						ImageRectSize = iconData.ImageRectSize,
						ImageRectPosition = iconData.ImageRectPosition,
					}
				end
			end
		end
		if type(i) == 'string' and not i:find('rbxassetid://') and tonumber(i) then
			return {
				Image = "rbxassetid://".. i,
				ImageRectSize = Vector2.new(0, 0),
				ImageRectPosition = Vector2.new(0, 0),
			}
		elseif type(i) == 'number' then
			return {
				Image = "rbxassetid://".. i,
				ImageRectSize = Vector2.new(0, 0),
				ImageRectPosition = Vector2.new(0, 0),
			}
		else
			return {
				Image = (type(i) == 'string' and i ~= '') and i or "rbxassetid://119690296342461",
				ImageRectSize = Vector2.new(0, 0),
				ImageRectPosition = Vector2.new(0, 0),
			}
		end
	end

	function tw(info)
		return Tw:Create(info.v, TweenInfo.new(info.t, info.s or Enum.EasingStyle.Quad, Enum.EasingDirection[info.d or "Out"]), info.g)
	end

	function changecanvas(ScrollingFrame, UIListLayout, Plus)
		UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + (Plus or 10))
		end)
	end

	function lak(t, o)
		local a, b, c, d
		local function u(i)
			local dt = i.Position - c
			tw({v = o, t = 0.04, s = Enum.EasingStyle.Linear, d = "InOut", g = {Position = UDim2.new(d.X.Scale, d.X.Offset + dt.X, d.Y.Scale, d.Y.Offset + dt.Y)}}):Play()
		end
		t.InputBegan:Connect(function(i)
			if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
				a = true
				c = i.Position
				d = o.Position
				i.Changed:Connect(function()
					if i.UserInputState == Enum.UserInputState.End then
						a = false
					end
				end)
			end
		end)
		t.InputChanged:Connect(function(i)
			if i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch then
				b = i
			end
		end)
		U.InputChanged:Connect(function(i)
			if i == b and a then
				u(i)
			end
		end)
	end

	function click(p)
		local Click = Instance.new("TextButton")
		Click.Name = "Click"
		Click.Parent = p
		Click.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Click.BackgroundTransparency = 1
		Click.BorderSizePixel = 0
		Click.Size = UDim2.new(1, 0, 1, 0)
		Click.Font = Enum.Font.SourceSans
		Click.Text = ""
		Click.ZIndex = 5
		return Click
	end

	function jc(c, p)
		local Mouse = game.Players.LocalPlayer:GetMouse()
		local relativeX = Mouse.X - c.AbsolutePosition.X
		local relativeY = Mouse.Y - c.AbsolutePosition.Y

		if relativeX < 0 or relativeY < 0 or relativeX > c.AbsoluteSize.X or relativeY > c.AbsoluteSize.Y then
			return
		end

		local Ripple = Instance.new("Frame")
		Ripple.Parent = p
		Ripple.BackgroundColor3 = Color3.fromRGB(42, 110, 230)
		Ripple.BackgroundTransparency = 0.65
		Ripple.BorderSizePixel = 0
		Ripple.AnchorPoint = Vector2.new(0.5, 0.5)
		Ripple.Position = UDim2.new(0, relativeX, 0, relativeY)
		Ripple.Size = UDim2.new(0, 0, 0, 0)
		Ripple.ZIndex = 8

		local UICorner = Instance.new("UICorner")
		UICorner.CornerRadius = UDim.new(1, 0)
		UICorner.Parent = Ripple

		local tweenInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local goal = {
			Size = UDim2.new(0, c.AbsoluteSize.X * 1.5, 0, c.AbsoluteSize.X * 1.5),
			BackgroundTransparency = 1
		}

		local expandTween = Tw:Create(Ripple, tweenInfo, goal)
		expandTween.Completed:Connect(function()
			Ripple:Destroy()
		end)
		expandTween:Play()
	end

	function background(pl, t, d, i, ty)
		local RealBackground = Instance.new("Frame")
		local Background = Instance.new("Frame")
		local UICorner_1 = Instance.new("UICorner")
		local UIStroke_1 = Instance.new("UIStroke")
		local T_1 = Instance.new("Frame")
		local UIListLayout_2 = Instance.new("UIListLayout")
		local UIPadding_3 = Instance.new("UIPadding")
		local TextLabel_1 = Instance.new("TextLabel")
		local TextLabel_2 = Instance.new("TextLabel")

		RealBackground.Name = "Real Background"
		RealBackground.Parent = pl
		RealBackground.BackgroundTransparency = 1
		RealBackground.BorderSizePixel = 0
		RealBackground.Size = UDim2.new(1, 0, 0, 36)
		RealBackground.ClipsDescendants = false

		local isLight = currentWindowTheme.isLightMode
		Background.Name = "Background"
		Background.Parent = RealBackground
		Background.BackgroundColor3 = isLight and Color3.fromRGB(246, 248, 252) or Color3.fromRGB(22, 22, 28)
		Background.BorderSizePixel = 0
		Background.Size = UDim2.new(1, 0, 1, 0)
		Background.ClipsDescendants = true

		addToTheme('Function.'..ty..'.Background', Background)

		UICorner_1.CornerRadius = UDim.new(0, 5)
		UICorner_1.Parent = Background

		UIStroke_1.Color = isLight and Color3.fromRGB(228, 232, 242) or Color3.fromRGB(36, 36, 44)
		UIStroke_1.Thickness = 1
		UIStroke_1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		UIStroke_1.Parent = Background

		T_1.Name = "T"
		T_1.Parent = Background
		T_1.AnchorPoint = Vector2.new(0, 0.5)
		T_1.BackgroundTransparency = 1
		T_1.BorderSizePixel = 0
		T_1.Position = UDim2.new(0, 0, 0.5, 0)
		T_1.Size = UDim2.new(1, 0, 1, 0)

		UIListLayout_2.Parent = T_1
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
		UIListLayout_2.Padding = UDim.new(0, 1)

		UIPadding_3.Parent = T_1
		UIPadding_3.PaddingLeft = UDim.new(0, 12)
		UIPadding_3.PaddingRight = UDim.new(0, 80)

		TextLabel_2.Name = 'Title'
		TextLabel_2.Parent = T_1
		TextLabel_2.BackgroundTransparency = 1
		TextLabel_2.BorderSizePixel = 0
		TextLabel_2.Size = UDim2.new(1, 0, 0, 16)
		TextLabel_2.Font = Enum.Font.GothamBold
		TextLabel_2.RichText = true
		TextLabel_2.Text = tostring(t)
		TextLabel_2.TextColor3 = isLight and Color3.fromRGB(20, 24, 33) or Color3.fromRGB(255, 255, 255)
		TextLabel_2.TextSize = 12
		TextLabel_2.TextWrapped = true
		TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel_2.AutomaticSize = Enum.AutomaticSize.Y

		addToTheme('Text & Icon', TextLabel_2)

		TextLabel_1.Name = 'Desc'
		TextLabel_1.Parent = T_1
		TextLabel_1.BackgroundTransparency = 1
		TextLabel_1.BorderSizePixel = 0
		TextLabel_1.LayoutOrder = 1
		TextLabel_1.Size = UDim2.new(1, 0, 0, 14)
		TextLabel_1.Font = Enum.Font.GothamMedium
		TextLabel_1.RichText = true
		TextLabel_1.Text = tostring(d)
		TextLabel_1.TextColor3 = isLight and Color3.fromRGB(115, 120, 135) or Color3.fromRGB(165, 165, 180)
		TextLabel_1.TextSize = 10.5
		TextLabel_1.TextWrapped = true
		TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel_1.Visible = false
		TextLabel_1.AutomaticSize = Enum.AutomaticSize.Y

		if d and d ~= "" then
			TextLabel_1.Visible = true
		end

		table.insert(currentWindowTheme.cards, {
			Background = Background,
			UIStroke = UIStroke_1,
			Title = TextLabel_2,
			Desc = TextLabel_1,
		})

		if i and i ~= "" then
			UIPadding_3.PaddingLeft = UDim.new(0, 38)
			local Icon_1 = Instance.new("ImageLabel")
			Icon_1.Name = "Icon"
			Icon_1.Parent = Background
			Icon_1.AnchorPoint = Vector2.new(0, 0.5)
			Icon_1.BackgroundTransparency = 1
			Icon_1.BorderSizePixel = 0
			Icon_1.Position = UDim2.new(0, 12, 0.5, 0)
			Icon_1.Size = UDim2.new(0, 16, 0, 16)
			local iconData = gl(i)
			Icon_1.Image = iconData.Image
			Icon_1.ImageRectSize = iconData.ImageRectSize
			Icon_1.ImageRectOffset = iconData.ImageRectPosition
			Icon_1.ImageColor3 = Color3.fromRGB(42, 110, 230)
			addToTheme('Text & Icon', Icon_1)
		end

		local function updateSize()
			task.defer(function()
				local newSize = math.max(36, UIListLayout_2.AbsoluteContentSize.Y + 14)
				if RealBackground.Size.Y.Offset ~= newSize then
					RealBackground.Size = UDim2.new(1, 0, 0, newSize)
				end
			end)
		end

		task.delay(0.05, updateSize)
		UIListLayout_2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateSize)

		Background.MouseEnter:Connect(function()
			if currentWindowTheme.isLightMode then
				tw({v = Background, t = 0.15, g = {BackgroundColor3 = Color3.fromRGB(236, 240, 248)}}):Play()
				tw({v = UIStroke_1, t = 0.15, g = {Color = Color3.fromRGB(205, 212, 228)}}):Play()
			else
				tw({v = Background, t = 0.15, g = {BackgroundColor3 = Color3.fromRGB(26, 26, 34)}}):Play()
				tw({v = UIStroke_1, t = 0.15, g = {Color = Color3.fromRGB(52, 52, 64)}}):Play()
			end
		end)
		Background.MouseLeave:Connect(function()
			if currentWindowTheme.isLightMode then
				tw({v = Background, t = 0.2, g = {BackgroundColor3 = Color3.fromRGB(246, 248, 252)}}):Play()
				tw({v = UIStroke_1, t = 0.2, g = {Color = Color3.fromRGB(228, 232, 242)}}):Play()
			else
				tw({v = Background, t = 0.2, g = {BackgroundColor3 = Color3.fromRGB(22, 22, 28)}}):Play()
				tw({v = UIStroke_1, t = 0.2, g = {Color = Color3.fromRGB(36, 36, 44)}}):Play()
			end
		end)

		local f = {}

		function f:SetTextTransparencyTitle(vs)
			tw({v = TextLabel_2, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = {TextTransparency = vs}}):Play()
			local icon = Background:FindFirstChild("Icon")
			if icon then
				tw({v = icon, t = 0.15, s = Enum.EasingStyle.Linear, d = "Out", g = {ImageTransparency = vs}}):Play()
			end
		end

		function f:SetSizeT(vs)
			UIPadding_3.PaddingRight = UDim.new(0, vs)
		end

		function f:SetTitle(vs)
			TextLabel_2.Text = tostring(vs)
		end

		function f:SetDesc(vs)
			TextLabel_1.Text = tostring(vs)
			TextLabel_1.Visible = (vs and vs ~= "")
			updateSize()
		end

		function f:SetVisibleDesc(vs)
			TextLabel_1.Visible = vs
			updateSize()
		end

		return Background, f
	end

	function addDropdownSelect(p, p2, Multi, Callback, Value, List)
		local F = Instance.new("Frame")
		local UIListLayout_1 = Instance.new("UIListLayout")
		local UIPadding_1 = Instance.new("UIPadding")
		local DropdownValue = Instance.new("Frame")
		local UICorner_1 = Instance.new("UICorner")
		local UIStroke_1 = Instance.new("UIStroke")
		local TextLabelValue_1 = Instance.new("TextLabel")
		local UIPadding_2 = Instance.new("UIPadding")
		local ImageLabel_1 = Instance.new("ImageLabel")

		F.Name = "F"
		F.Parent = p
		F.AnchorPoint = Vector2.new(1, 0.5)
		F.BackgroundTransparency = 1
		F.BorderSizePixel = 0
		F.Position = UDim2.new(1, 0, 0.5, 0)
		F.Size = UDim2.new(0, 130, 0.85, 0)

		UIListLayout_1.Parent = F
		UIListLayout_1.HorizontalAlignment = Enum.HorizontalAlignment.Right
		UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_1.VerticalAlignment = Enum.VerticalAlignment.Center

		UIPadding_1.Parent = F
		UIPadding_1.PaddingRight = UDim.new(0, 10)

		local isLight = currentWindowTheme.isLightMode
		DropdownValue.Parent = F
		DropdownValue.BackgroundColor3 = isLight and Color3.fromRGB(235, 238, 246) or Color3.fromRGB(17, 17, 22)
		DropdownValue.BorderSizePixel = 0
		DropdownValue.Size = UDim2.new(0, 115, 0, 22)

		addToTheme('Function.Dropdown.Value Background', DropdownValue)

		UICorner_1.CornerRadius = UDim.new(0, 4)
		UICorner_1.Parent = DropdownValue

		UIStroke_1.Color = isLight and Color3.fromRGB(205, 210, 222) or Color3.fromRGB(45, 45, 55)
		UIStroke_1.Thickness = 1
		UIStroke_1.Parent = DropdownValue

		addToTheme('Function.Dropdown.Value Stroke', UIStroke_1)

		TextLabelValue_1.Parent = DropdownValue
		TextLabelValue_1.BackgroundTransparency = 1
		TextLabelValue_1.BorderSizePixel = 0
		TextLabelValue_1.Size = UDim2.new(0.8, 0, 1, 0)
		TextLabelValue_1.Font = Enum.Font.GothamMedium
		TextLabelValue_1.RichText = true
		TextLabelValue_1.Text = "--"
		TextLabelValue_1.TextColor3 = isLight and Color3.fromRGB(25, 25, 35) or Color3.fromRGB(220, 220, 230)
		TextLabelValue_1.TextSize = 11
		TextLabelValue_1.TextXAlignment = Enum.TextXAlignment.Left
		TextLabelValue_1.TextTruncate = Enum.TextTruncate.AtEnd

		addToTheme('Text & Icon', TextLabelValue_1)

		UIPadding_2.Parent = DropdownValue
		UIPadding_2.PaddingLeft = UDim.new(0, 8)
		UIPadding_2.PaddingRight = UDim.new(0, 5)

		ImageLabel_1.Parent = DropdownValue
		ImageLabel_1.AnchorPoint = Vector2.new(1, 0.5)
		ImageLabel_1.BackgroundTransparency = 1
		ImageLabel_1.BorderSizePixel = 0
		ImageLabel_1.Position = UDim2.new(1, 0, 0.5, 0)
		ImageLabel_1.Size = UDim2.new(0, 16, 0, 16)
		ImageLabel_1.Image = "rbxassetid://14937709869"
		ImageLabel_1.ImageColor3 = isLight and Color3.fromRGB(100, 105, 120) or Color3.fromRGB(160, 160, 170)

		addToTheme('Text & Icon', ImageLabel_1)

		local DropdownSelect = Instance.new("Frame")
		local UICorner_2 = Instance.new("UICorner")
		local UIStrokeDropdown_1 = Instance.new("UIStroke")
		local UIPadding_3 = Instance.new("UIPadding")
		local Search_1 = Instance.new("Frame")
		local UICorner_3 = Instance.new("UICorner")
		local UIStrokeSearch = Instance.new("UIStroke")
		local TextBox_1 = Instance.new("TextBox")
		local ScrollingFrame_1 = Instance.new("ScrollingFrame")
		local UIListLayout_SF = Instance.new("UIListLayout")
		local UIPadding_SF = Instance.new("UIPadding")

		DropdownSelect.Parent = ScreenGui
		DropdownSelect.BackgroundColor3 = isLight and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(17, 17, 22)
		DropdownSelect.BorderSizePixel = 0
		DropdownSelect.Size = UDim2.new(0, 150, 0, 0)
		DropdownSelect.ClipsDescendants = true
		DropdownSelect.Visible = false
		DropdownSelect.ZIndex = 50

		addToTheme('Function.Dropdown.Dropdown Select.Background', DropdownSelect)

		UICorner_2.CornerRadius = UDim.new(0, 5)
		UICorner_2.Parent = DropdownSelect

		UIStrokeDropdown_1.Color = Color3.fromRGB(42, 110, 230)
		UIStrokeDropdown_1.Thickness = 1
		UIStrokeDropdown_1.Transparency = 0.5
		UIStrokeDropdown_1.Parent = DropdownSelect

		UIPadding_3.Parent = DropdownSelect
		UIPadding_3.PaddingBottom = UDim.new(0, 6)
		UIPadding_3.PaddingLeft = UDim.new(0, 6)
		UIPadding_3.PaddingRight = UDim.new(0, 6)
		UIPadding_3.PaddingTop = UDim.new(0, 6)

		Search_1.Name = "Search"
		Search_1.Parent = DropdownSelect
		Search_1.BackgroundColor3 = isLight and Color3.fromRGB(240, 242, 248) or Color3.fromRGB(24, 24, 30)
		Search_1.BorderSizePixel = 0
		Search_1.Size = UDim2.new(1, 0, 0, 22)

		addToTheme('Function.Dropdown.Dropdown Select.Search', Search_1)

		UICorner_3.CornerRadius = UDim.new(0, 4)
		UICorner_3.Parent = Search_1

		UIStrokeSearch.Color = isLight and Color3.fromRGB(215, 220, 230) or Color3.fromRGB(42, 42, 52)
		UIStrokeSearch.Thickness = 1
		UIStrokeSearch.Parent = Search_1

		TextBox_1.Parent = Search_1
		TextBox_1.Active = true
		TextBox_1.BackgroundTransparency = 1
		TextBox_1.BorderSizePixel = 0
		TextBox_1.Size = UDim2.new(1, -8, 1, 0)
		TextBox_1.Position = UDim2.new(0, 6, 0, 0)
		TextBox_1.Font = Enum.Font.Gotham
		TextBox_1.PlaceholderColor3 = isLight and Color3.fromRGB(140, 145, 155) or Color3.fromRGB(120, 120, 130)
		TextBox_1.PlaceholderText = "Search..."
		TextBox_1.Text = ""
		TextBox_1.TextColor3 = isLight and Color3.fromRGB(25, 25, 35) or Color3.fromRGB(255, 255, 255)
		TextBox_1.TextSize = 11
		TextBox_1.TextXAlignment = Enum.TextXAlignment.Left

		table.insert(currentWindowTheme.controls, {
			type = "dropdown",
			ValueBox = DropdownValue,
			Stroke = UIStroke_1,
			Text = TextLabelValue_1,
			Arrow = ImageLabel_1,
			Popup = DropdownSelect,
			Search = Search_1,
			SearchStroke = UIStrokeSearch,
			SearchInput = TextBox_1,
		})

		ScrollingFrame_1.Name = "ScrollingFrame"
		ScrollingFrame_1.Parent = DropdownSelect
		ScrollingFrame_1.Active = true
		ScrollingFrame_1.BackgroundTransparency = 1
		ScrollingFrame_1.BorderSizePixel = 0
		ScrollingFrame_1.Position = UDim2.new(0, 0, 0, 28)
		ScrollingFrame_1.Size = UDim2.new(1, 0, 1, -28)
		ScrollingFrame_1.ClipsDescendants = true
		ScrollingFrame_1.ScrollBarThickness = 2
		ScrollingFrame_1.ScrollBarImageColor3 = Color3.fromRGB(42, 110, 230)

		UIListLayout_SF.Parent = ScrollingFrame_1
		UIListLayout_SF.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_SF.Padding = UDim.new(0, 3)

		UIPadding_SF.Parent = ScrollingFrame_1
		UIPadding_SF.PaddingRight = UDim.new(0, 4)

		local Click = click(p2)
		local isopen = false

		local function updateDropdownSize()
			if not isopen then return end
			local contentHeight = UIListLayout_SF.AbsoluteContentSize.Y + 40
			contentHeight = math.clamp(contentHeight, 50, 180)
			tw({v = DropdownSelect, t = 0.15, s = Enum.EasingStyle.Quad, d = "Out", g = {Size = UDim2.new(0, 150, 0, contentHeight)}}):Play()
		end

		TextBox_1.Changed:Connect(function()
			local search = string.lower(TextBox_1.Text)
			local hasSearch = (search ~= "")
			for _, v in ipairs(ScrollingFrame_1:GetChildren()) do
				if v:IsA("Frame") then
					local tl = v:FindFirstChild("TextLabel")
					if tl then
						v.Visible = not hasSearch or (string.find(string.lower(tl.Text), search, 1, true) ~= nil)
					end
				end
			end
			updateDropdownSize()
		end)

		local function open()
			if isopen then return end
			DropdownSelect.Visible = true
			local targetX = DropdownValue.AbsolutePosition.X - DropdownSelect.Parent.AbsolutePosition.X + DropdownValue.Size.X.Offset - 150
			local targetY = DropdownValue.AbsolutePosition.Y - DropdownSelect.Parent.AbsolutePosition.Y + DropdownValue.Size.Y.Offset + 4
			DropdownSelect.Position = UDim2.new(0, targetX, 0, targetY)

			local contentHeight = math.clamp(UIListLayout_SF.AbsoluteContentSize.Y + 40, 50, 180)
			tw({v = DropdownSelect, t = 0.15, s = Enum.EasingStyle.Quad, d = "Out", g = {Size = UDim2.new(0, 150, 0, contentHeight)}}):Play()
			tw({v = ImageLabel_1, t = 0.15, s = Enum.EasingStyle.Quad, d = "Out", g = {Rotation = 180}}):Play()
			isopen = true
		end

		local function close()
			if not isopen then return end
			tw({v = ImageLabel_1, t = 0.15, s = Enum.EasingStyle.Quad, d = "Out", g = {Rotation = 0}}):Play()
			local gf = tw({v = DropdownSelect, t = 0.15, s = Enum.EasingStyle.Quad, d = "Out", g = {Size = UDim2.new(0, 150, 0, 0)}})
			gf:Play()
			gf.Completed:Connect(function()
				DropdownSelect.Visible = false
				isopen = false
			end)
		end

		U.InputBegan:Connect(function(A)
			if (A.UserInputType == Enum.UserInputType.MouseButton1 or A.UserInputType == Enum.UserInputType.Touch) and isopen then
				local B, C = DropdownSelect.AbsolutePosition, DropdownSelect.AbsoluteSize
				local MousePos = game:GetService("Players").LocalPlayer:GetMouse()
				if MousePos.X < B.X or MousePos.X > B.X + C.X or MousePos.Y < (DropdownValue.AbsolutePosition.Y) or MousePos.Y > B.Y + C.Y then
					close()
				end
			end
		end)

		Click.MouseButton1Click:Connect(function()
			if not isopen then
				open()
			else
				close()
			end
		end)

		local itemslist = {}
		local selectedValues = {}
		local selectedItem

		function itemslist:Clear(a)
			local function shouldClear(v)
				if a == nil then
					return true
				elseif type(a) == "string" then
					return v:FindFirstChild("TextLabel") and v.TextLabel.Text == a
				elseif type(a) == "table" then
					for _, name in ipairs(a) do
						if v:FindFirstChild("TextLabel") and v.TextLabel.Text == name then
							return true
						end
					end
				end
				return false
			end

			if Multi then
				selectedValues = {}
				TextLabelValue_1.Text = "--"
				pcall(Callback, selectedValues)
			end

			for _, v in ipairs(ScrollingFrame_1:GetChildren()) do
				if v:IsA("Frame") and shouldClear(v) then
					if selectedItem then
						local textLabel = v:FindFirstChild("TextLabel")
						if textLabel and textLabel.Text == selectedItem then
							selectedItem = nil
							TextLabelValue_1.Text = "--"
							pcall(Callback, TextLabelValue_1.Text)
						end
					end
					v:Destroy()
				end
			end

			if selectedItem == a or TextLabelValue_1.Text == a or a == nil then
				selectedItem = nil
				TextLabelValue_1.Text = "--"
			end
			Value = nil
		end

		function itemslist:Add(text)
			local Item_1 = Instance.new("Frame")
			local TextLabel_1 = Instance.new("TextLabel")
			local ItemCorner = Instance.new("UICorner")

			Item_1.Name = "Item"
			Item_1.Parent = ScrollingFrame_1
			Item_1.BackgroundColor3 = Color3.fromRGB(24, 24, 30)
			Item_1.BorderSizePixel = 0
			Item_1.Size = UDim2.new(1, 0, 0, 22)

			ItemCorner.CornerRadius = UDim.new(0, 4)
			ItemCorner.Parent = Item_1

			TextLabel_1.Parent = Item_1
			TextLabel_1.BackgroundTransparency = 1
			TextLabel_1.BorderSizePixel = 0
			TextLabel_1.Size = UDim2.new(1, -8, 1, 0)
			TextLabel_1.Position = UDim2.new(0, 6, 0, 0)
			TextLabel_1.Font = Enum.Font.GothamMedium
			TextLabel_1.Text = tostring(text)
			TextLabel_1.TextColor3 = Color3.fromRGB(160, 160, 170)
			TextLabel_1.TextSize = 11
			TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left

			addToTheme('Function.Dropdown.Dropdown Select.Item Background', Item_1)

			local ClickItem = click(Item_1)

			local function unselect()
				tw({v = TextLabel_1, t = 0.12, s = Enum.EasingStyle.Quad, d = "Out", g = {TextColor3 = Color3.fromRGB(160, 160, 170)}}):Play()
				tw({v = Item_1, t = 0.12, s = Enum.EasingStyle.Quad, d = "Out", g = {BackgroundColor3 = Color3.fromRGB(24, 24, 30)}}):Play()
			end

			local function hasselect()
				tw({v = TextLabel_1, t = 0.12, s = Enum.EasingStyle.Quad, d = "Out", g = {TextColor3 = Color3.fromRGB(255, 255, 255)}}):Play()
				tw({v = Item_1, t = 0.12, s = Enum.EasingStyle.Quad, d = "Out", g = {BackgroundColor3 = Color3.fromRGB(42, 110, 230)}}):Play()
			end

			ClickItem.MouseEnter:Connect(function()
				if (Multi and not selectedValues[text]) or (not Multi and Value ~= text) then
					tw({v = Item_1, t = 0.12, g = {BackgroundColor3 = Color3.fromRGB(34, 34, 44)}}):Play()
					tw({v = TextLabel_1, t = 0.12, g = {TextColor3 = Color3.fromRGB(230, 230, 240)}}):Play()
				end
			end)

			ClickItem.MouseLeave:Connect(function()
				if (Multi and not selectedValues[text]) or (not Multi and Value ~= text) then
					tw({v = Item_1, t = 0.15, g = {BackgroundColor3 = Color3.fromRGB(24, 24, 30)}}):Play()
					tw({v = TextLabel_1, t = 0.15, g = {TextColor3 = Color3.fromRGB(160, 160, 170)}}):Play()
				end
			end)

			ClickItem.MouseButton1Click:Connect(function()
				if Multi then
					if selectedValues[text] then
						selectedValues[text] = nil
						unselect()
					else
						selectedValues[text] = true
						hasselect()
					end
					local selectedList = {}
					for i, _ in pairs(selectedValues) do
						table.insert(selectedList, i)
					end
					if #selectedList > 0 then
						TextLabelValue_1.Text = table.concat(selectedList, ", ")
					else
						TextLabelValue_1.Text = "--"
					end
					pcall(Callback, selectedList)
				else
					for _, v in pairs(ScrollingFrame_1:GetChildren()) do
						if v:IsA("Frame") then
							local tl = v:FindFirstChild("TextLabel")
							if tl then
								tw({v = tl, t = 0.12, s = Enum.EasingStyle.Quad, d = "Out", g = {TextColor3 = Color3.fromRGB(160, 160, 170)}}):Play()
								tw({v = v, t = 0.12, s = Enum.EasingStyle.Quad, d = "Out", g = {BackgroundColor3 = Color3.fromRGB(24, 24, 30)}}):Play()
							end
						end
					end
					hasselect()
					Value = text
					TextLabelValue_1.Text = text
					pcall(Callback, TextLabelValue_1.Text)
				end
			end)

			local function isValueInTable(val, tbl)
				if type(tbl) ~= "table" then return false end
				for _, v in pairs(tbl) do
					if v == val then return true end
				end
				return false
			end

			task.delay(0, function()
				if Multi then
					if isValueInTable(text, Value) then
						hasselect()
						selectedValues[text] = true
						local selectedList = {}
						for k, _ in pairs(selectedValues) do
							table.insert(selectedList, k)
						end
						TextLabelValue_1.Text = (#selectedList > 0) and table.concat(selectedList, ", ") or "--"
						pcall(Callback, selectedList)
					end
				else
					if text == Value then
						hasselect()
						Value = text
						TextLabelValue_1.Text = text
						pcall(Callback, TextLabelValue_1.Text)
					end
				end
			end)
		end

		function itemslist:SetValue(value)
			if Multi then
				selectedValues = {}
				if type(value) == "table" then
					for _, val in ipairs(value) do selectedValues[val] = true end
				else
					selectedValues[value] = true
				end
				local selectedList = {}
				for k, _ in pairs(selectedValues) do table.insert(selectedList, k) end
				TextLabelValue_1.Text = (#selectedList > 0) and table.concat(selectedList, ", ") or "--"

				for _, v in ipairs(ScrollingFrame_1:GetChildren()) do
					if v:IsA("Frame") and v:FindFirstChild("TextLabel") then
						if selectedValues[v.TextLabel.Text] then
							tw({v = v.TextLabel, t = 0.1, g = {TextColor3 = Color3.fromRGB(255, 255, 255)}}):Play()
							tw({v = v, t = 0.1, g = {BackgroundColor3 = Color3.fromRGB(42, 110, 230)}}):Play()
						else
							tw({v = v.TextLabel, t = 0.1, g = {TextColor3 = Color3.fromRGB(160, 160, 170)}}):Play()
							tw({v = v, t = 0.1, g = {BackgroundColor3 = Color3.fromRGB(24, 24, 30)}}):Play()
						end
					end
				end
				pcall(Callback, selectedList)
			else
				Value = value
				TextLabelValue_1.Text = value
				for _, v in ipairs(ScrollingFrame_1:GetChildren()) do
					if v:IsA("Frame") and v:FindFirstChild("TextLabel") then
						if v.TextLabel.Text == value then
							tw({v = v.TextLabel, t = 0.1, g = {TextColor3 = Color3.fromRGB(255, 255, 255)}}):Play()
							tw({v = v, t = 0.1, g = {BackgroundColor3 = Color3.fromRGB(42, 110, 230)}}):Play()
						else
							tw({v = v.TextLabel, t = 0.1, g = {TextColor3 = Color3.fromRGB(160, 160, 170)}}):Play()
							tw({v = v, t = 0.1, g = {BackgroundColor3 = Color3.fromRGB(24, 24, 30)}}):Play()
						end
					end
				end
				pcall(Callback, value)
			end
		end

		for _, v in ipairs(List) do
			itemslist:Add(v)
		end

		changecanvas(ScrollingFrame_1, UIListLayout_SF, 5)
		return itemslist
	end
end

function Library:Window(p)
	local Title = p.Title or 'VECTOR'
	local Desc = p.Desc or 'IN-GAME MENU'
	local Icon = p.Icon or 'door-open'
	local Theme = p.Theme or 'Default'
	local Keybind = (p.Config and p.Config.Keybind) or Enum.KeyCode.LeftControl
	local Size = (p.Config and p.Config.Size) or UDim2.new(0, 680, 0, 420)
	local DiscordLink = p.DiscordLink or nil
	local Version = p.Version or nil

	local keybindConnection = nil
	local R, HAA = false, false
	local IsTheme = Theme

	currentWindowTheme.isLightMode = false
	currentWindowTheme.cards = {}
	currentWindowTheme.sections = {}
	currentWindowTheme.controls = {}
	currentWindowTheme.tabs = {}

	local Shadow_1 = Instance.new("ImageLabel")
	local Background_1 = Instance.new("CanvasGroup")
	local UICorner_1 = Instance.new("UICorner")
	local UIStroke_Win = Instance.new("UIStroke")

	Shadow_1.Name = "Shadow"
	Shadow_1.Image = "rbxassetid://1316045217"
	Shadow_1.ImageColor3 = Color3.fromRGB(30, 100, 220)
	Shadow_1.ScaleType = Enum.ScaleType.Slice
	Shadow_1.SliceCenter = Rect.new(10, 10, 118, 118)
	Shadow_1.ImageTransparency = 0.65
	Shadow_1.Parent = ScreenGui
	Shadow_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Shadow_1.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
	Shadow_1.BackgroundTransparency = 1
	Shadow_1.Position = UDim2.new(0.5, 0, 0.5, 0)
	Shadow_1.Size = Size
	Shadow_1.Visible = true

	local UIPadding_Shadow = Instance.new("UIPadding")
	UIPadding_Shadow.Parent = Shadow_1
	UIPadding_Shadow.PaddingBottom = UDim.new(0, 8)
	UIPadding_Shadow.PaddingLeft = UDim.new(0, 8)
	UIPadding_Shadow.PaddingRight = UDim.new(0, 8)
	UIPadding_Shadow.PaddingTop = UDim.new(0, 8)

	Background_1.Name = "Background"
	Background_1.Parent = Shadow_1
	Background_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Background_1.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
	Background_1.BorderSizePixel = 0
	Background_1.Position = UDim2.new(0.5, 0, 0.5, 0)
	Background_1.Size = UDim2.new(1, 0, 1, 0)
	Background_1.ClipsDescendants = true
	Background_1.GroupTransparency = 1

	UICorner_1.CornerRadius = UDim.new(0, 8)
	UICorner_1.Parent = Background_1

	UIStroke_Win.Color = Color3.fromRGB(48, 48, 60)
	UIStroke_Win.Thickness = 1.2
	UIStroke_Win.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_Win.Parent = Background_1

	local TopGlowLine = Instance.new("Frame")
	TopGlowLine.Name = "TopGlowLine"
	TopGlowLine.Parent = Background_1
	TopGlowLine.BackgroundColor3 = Color3.fromRGB(42, 110, 230)
	TopGlowLine.BorderSizePixel = 0
	TopGlowLine.Size = UDim2.new(1, 0, 0, 1.5)
	TopGlowLine.ZIndex = 20

	local TopGlowGrad = Instance.new("UIGradient")
	TopGlowGrad.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0, Color3.fromRGB(42, 110, 230)),
		ColorSequenceKeypoint.new(0.5, Color3.fromRGB(80, 160, 255)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(42, 110, 230))
	}
	TopGlowGrad.Transparency = NumberSequence.new{
		NumberSequenceKeypoint.new(0, 0.7),
		NumberSequenceKeypoint.new(0.25, 0.1),
		NumberSequenceKeypoint.new(0.75, 0.1),
		NumberSequenceKeypoint.new(1, 0.7)
	}
	TopGlowGrad.Parent = TopGlowLine

	local ReopenBtn = Instance.new("CanvasGroup")
	local ReopenCorner = Instance.new("UICorner")
	local ReopenStroke = Instance.new("UIStroke")
	local ReopenTopGlow = Instance.new("Frame")
	local ReopenGlowGrad = Instance.new("UIGradient")
	local ReopenIcon = Instance.new("ImageLabel")
	local ReopenTitle = Instance.new("TextLabel")
	local ReopenKeybind = Instance.new("TextLabel")
	local ReopenClick = Instance.new("TextButton")

	ReopenBtn.Name = "ReopenButton"
	ReopenBtn.Parent = ScreenGui
	ReopenBtn.AnchorPoint = Vector2.new(0.5, 0)
	ReopenBtn.Position = UDim2.new(0.5, 0, 0, -45)
	ReopenBtn.Size = UDim2.new(0, 175, 0, 32)
	ReopenBtn.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
	ReopenBtn.BorderSizePixel = 0
	ReopenBtn.GroupTransparency = 1
	ReopenBtn.Visible = false
	ReopenBtn.ZIndex = 100

	ReopenCorner.CornerRadius = UDim.new(0, 8)
	ReopenCorner.Parent = ReopenBtn

	ReopenStroke.Color = Color3.fromRGB(48, 48, 60)
	ReopenStroke.Thickness = 1.2
	ReopenStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	ReopenStroke.Parent = ReopenBtn

	ReopenTopGlow.Name = "TopGlowLine"
	ReopenTopGlow.Parent = ReopenBtn
	ReopenTopGlow.BackgroundColor3 = Color3.fromRGB(42, 110, 230)
	ReopenTopGlow.BorderSizePixel = 0
	ReopenTopGlow.Size = UDim2.new(1, 0, 0, 1.5)
	ReopenTopGlow.ZIndex = 5

	ReopenGlowGrad.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0, Color3.fromRGB(42, 110, 230)),
		ColorSequenceKeypoint.new(0.5, Color3.fromRGB(80, 160, 255)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(42, 110, 230))
	}
	ReopenGlowGrad.Transparency = NumberSequence.new{
		NumberSequenceKeypoint.new(0, 0.7),
		NumberSequenceKeypoint.new(0.25, 0.1),
		NumberSequenceKeypoint.new(0.75, 0.1),
		NumberSequenceKeypoint.new(1, 0.7)
	}
	ReopenGlowGrad.Parent = ReopenTopGlow

	ReopenIcon.Name = "Icon"
	ReopenIcon.Parent = ReopenBtn
	ReopenIcon.AnchorPoint = Vector2.new(0, 0.5)
	ReopenIcon.BackgroundTransparency = 1
	ReopenIcon.Position = UDim2.new(0, 10, 0.5, 0)
	ReopenIcon.Size = UDim2.new(0, 16, 0, 16)
	local rIconData = gl(Icon)
	ReopenIcon.Image = rIconData.Image
	ReopenIcon.ImageRectSize = rIconData.ImageRectSize
	ReopenIcon.ImageRectOffset = rIconData.ImageRectPosition
	ReopenIcon.ImageColor3 = Color3.fromRGB(42, 110, 230)
	ReopenIcon.ZIndex = 2

	ReopenTitle.Name = "Title"
	ReopenTitle.Parent = ReopenBtn
	ReopenTitle.AnchorPoint = Vector2.new(0, 0.5)
	ReopenTitle.BackgroundTransparency = 1
	ReopenTitle.Position = UDim2.new(0, 23, 0.5, 0)
	ReopenTitle.Size = UDim2.new(0, 75, 0, 16)
	ReopenTitle.Font = Enum.Font.GothamBold
	ReopenTitle.Text = "VECTOR"
	ReopenTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	ReopenTitle.TextSize = 12
	ReopenTitle.TextXAlignment = Enum.TextXAlignment.Left
	ReopenTitle.TextTruncate = Enum.TextTruncate.AtEnd
	ReopenTitle.ZIndex = 2

	local initKeyName = (Keybind and Keybind.Name) or "LeftCtrl"
	if initKeyName == "LeftControl" then initKeyName = "LeftCtrl" end
	if initKeyName == "RightControl" then initKeyName = "RightCtrl" end

	ReopenKeybind.Name = "KeyHint"
	ReopenKeybind.Parent = ReopenBtn
	ReopenKeybind.AnchorPoint = Vector2.new(1, 0.5)
	ReopenKeybind.BackgroundTransparency = 1
	ReopenKeybind.Position = UDim2.new(1, -10, 0.5, 0)
	ReopenKeybind.Size = UDim2.new(0, 60, 0, 16)
	ReopenKeybind.Font = Enum.Font.GothamMedium
	ReopenKeybind.Text = "[" .. initKeyName .. "]"
	ReopenKeybind.TextColor3 = Color3.fromRGB(150, 150, 165)
	ReopenKeybind.TextSize = 10.5
	ReopenKeybind.TextXAlignment = Enum.TextXAlignment.Right
	ReopenKeybind.ZIndex = 2

	ReopenClick.Name = "Click"
	ReopenClick.Parent = ReopenBtn
	ReopenClick.BackgroundTransparency = 1
	ReopenClick.Size = UDim2.new(1, 0, 1, 0)
	ReopenClick.Text = ""
	ReopenClick.ZIndex = 15

	ReopenClick.MouseEnter:Connect(function()
		tw({v = ReopenStroke, t = 0.15, g = {Color = Color3.fromRGB(42, 110, 230)}}):Play()
		tw({v = ReopenKeybind, t = 0.15, g = {TextColor3 = Color3.fromRGB(255, 255, 255)}}):Play()
		tw({v = ReopenBtn, t = 0.15, g = {BackgroundColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(230, 235, 245) or Color3.fromRGB(24, 24, 32)}}):Play()
	end)
	ReopenClick.MouseLeave:Connect(function()
		tw({v = ReopenStroke, t = 0.15, g = {Color = currentWindowTheme.isLightMode and Color3.fromRGB(218, 222, 232) or Color3.fromRGB(48, 48, 60)}}):Play()
		tw({v = ReopenKeybind, t = 0.15, g = {TextColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(110, 115, 130) or Color3.fromRGB(150, 150, 165)}}):Play()
		tw({v = ReopenBtn, t = 0.15, g = {BackgroundColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(242, 244, 248) or Color3.fromRGB(15, 15, 18)}}):Play()
	end)

	addToTheme('Shadow', Shadow_1)
	addToTheme('Background', Background_1)
	addToTheme('Background', ReopenBtn)
	addToTheme('Text & Icon', ReopenTitle)

	local savedCloseSize = Background_1.Size
	local org = Background_1.Size
	Background_1.Size = org - UDim2.fromOffset(6, 6)
	tw({
		v = Background_1,
		t = 0.2,
		s = Enum.EasingStyle.Quad,
		d = "Out",
		g = {
			GroupTransparency = 0,
			Size = org
		}
	}):Play()

	local Sidebar = Instance.new("Frame")
	local SidebarCorner = Instance.new("UICorner")
	local SidebarBorder = Instance.new("Frame")

	Sidebar.Name = "Sidebar"
	Sidebar.Parent = Background_1
	Sidebar.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
	Sidebar.BorderSizePixel = 0
	Sidebar.Size = UDim2.new(0, 160, 1, 0)
	Sidebar.ZIndex = 3

	SidebarCorner.CornerRadius = UDim.new(0, 8)
	SidebarCorner.Parent = Sidebar

	SidebarBorder.Name = "SidebarBorder"
	SidebarBorder.Parent = Background_1
	SidebarBorder.BackgroundColor3 = Color3.fromRGB(30, 30, 38)
	SidebarBorder.BorderSizePixel = 0
	SidebarBorder.Position = UDim2.new(0, 160, 0, 0)
	SidebarBorder.Size = UDim2.new(0, 1, 1, 0)
	SidebarBorder.ZIndex = 4

	local LogoFrame = Instance.new("Frame")
	local LogoIcon = Instance.new("ImageLabel")
	local LogoText = Instance.new("TextLabel")

	LogoFrame.Name = "LogoFrame"
	LogoFrame.Parent = Sidebar
	LogoFrame.BackgroundTransparency = 1
	LogoFrame.Size = UDim2.new(1, 0, 0, 52)

	LogoIcon.Name = "LogoIcon"
	LogoIcon.Parent = LogoFrame
	LogoIcon.AnchorPoint = Vector2.new(0, 0.5)
	LogoIcon.BackgroundTransparency = 1
	LogoIcon.Position = UDim2.new(0, 16, 0.5, 0)
	LogoIcon.Size = UDim2.new(0, 22, 0, 22)
	local logoData = gl(Icon)
	LogoIcon.Image = logoData.Image
	LogoIcon.ImageRectSize = logoData.ImageRectSize
	LogoIcon.ImageRectOffset = logoData.ImageRectPosition
	LogoIcon.ImageColor3 = Color3.fromRGB(42, 110, 230)

	LogoText.Name = "LogoText"
	LogoText.Parent = LogoFrame
	LogoText.AnchorPoint = Vector2.new(0, 0.5)
	LogoText.BackgroundTransparency = 1
	LogoText.Position = UDim2.new(0, 35, 0.5, 0)
	LogoText.Size = UDim2.new(1, -50, 0, 22)
	LogoText.Font = Enum.Font.GothamBold
	LogoText.Text = "VECTOR - v1.0"
	LogoText.TextColor3 = Color3.fromRGB(255, 255, 255)
	LogoText.TextSize = 16
	LogoText.TextXAlignment = Enum.TextXAlignment.Left
	LogoText.TextYAlignment = Enum.TextYAlignment.Center

	local TabListFrame = Instance.new("ScrollingFrame")
	local TabListLayout = Instance.new("UIListLayout")
	local TabListPadding = Instance.new("UIPadding")

	TabListFrame.Name = "TabList"
	TabListFrame.Parent = Sidebar
	TabListFrame.BackgroundTransparency = 1
	TabListFrame.BorderSizePixel = 0
	TabListFrame.Position = UDim2.new(0, 0, 0, 56)
	TabListFrame.Size = UDim2.new(1, 0, 1, -118)
	TabListFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
	TabListFrame.ScrollBarThickness = 0
	TabListFrame.ClipsDescendants = true

	TabListLayout.Parent = TabListFrame
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	TabListLayout.Padding = UDim.new(0, 3)

	TabListPadding.Parent = TabListFrame
	TabListPadding.PaddingLeft = UDim.new(0, 6)
	TabListPadding.PaddingRight = UDim.new(0, 6)

	changecanvas(TabListFrame, TabListLayout, 5)

	local AccountInfo = Instance.new("Frame")
	local AvatarFrame = Instance.new("Frame")
	local AvatarImage = Instance.new("ImageLabel")
	local InfoFrame = Instance.new("Frame")
	local UsernameLabel = Instance.new("TextLabel")
	local TypeBadge = Instance.new("Frame")
	local TypeBadgeCorner = Instance.new("UICorner")
	local TypeBadgeStroke = Instance.new("UIStroke")
	local TypeLabel = Instance.new("TextLabel")

	local isLight = currentWindowTheme.isLightMode
	AccountInfo.Name = "AccountInfo"
	AccountInfo.Parent = Sidebar
	AccountInfo.BackgroundColor3 = isLight and Color3.fromRGB(238, 240, 247) or Color3.fromRGB(20, 20, 26)
	AccountInfo.BorderSizePixel = 0
	AccountInfo.AnchorPoint = Vector2.new(0.5, 1)
	AccountInfo.Position = UDim2.new(0.5, 0, 1, -8)
	AccountInfo.Size = UDim2.new(1, -12, 0, 50)

	local AccountCorner = Instance.new("UICorner")
	AccountCorner.CornerRadius = UDim.new(0, 8)
	AccountCorner.Parent = AccountInfo

	local AccountStroke = Instance.new("UIStroke")
	AccountStroke.Color = isLight and Color3.fromRGB(215, 219, 232) or Color3.fromRGB(38, 38, 50)
	AccountStroke.Thickness = 1
	AccountStroke.Parent = AccountInfo

	AvatarFrame.Name = "AvatarFrame"
	AvatarFrame.Parent = AccountInfo
	AvatarFrame.BackgroundColor3 = isLight and Color3.fromRGB(220, 224, 235) or Color3.fromRGB(26, 26, 34)
	AvatarFrame.BorderSizePixel = 0
	AvatarFrame.AnchorPoint = Vector2.new(0, 0.5)
	AvatarFrame.Position = UDim2.new(0, 7, 0.5, 0)
	AvatarFrame.Size = UDim2.new(0, 36, 0, 36)
	AvatarFrame.ClipsDescendants = true

	local AvatarCorner = Instance.new("UICorner")
	AvatarCorner.CornerRadius = UDim.new(1, 0)
	AvatarCorner.Parent = AvatarFrame

	local AvatarStroke = Instance.new("UIStroke")
	AvatarStroke.Color = Color3.fromRGB(42, 110, 230)
	AvatarStroke.Thickness = 1.2
	AvatarStroke.Parent = AvatarFrame

	AvatarImage.Name = "AvatarImage"
	AvatarImage.Parent = AvatarFrame
	AvatarImage.BackgroundTransparency = 1
	AvatarImage.Size = UDim2.new(1, 0, 1, 0)
	AvatarImage.ZIndex = 2

	local AvatarImgCorner = Instance.new("UICorner")
	AvatarImgCorner.CornerRadius = UDim.new(1, 0)
	AvatarImgCorner.Parent = AvatarImage

	local pl = game.Players.LocalPlayer
	if pl then
		AvatarImage.Image = "rbxthumb://type=AvatarHeadShot&id="..pl.UserId.."&w=150&h=150"
		task.spawn(function()
			pcall(function()
				local thumb, isReady = game.Players:GetUserThumbnailAsync(pl.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
				if isReady and thumb and thumb ~= "" then
					AvatarImage.Image = thumb
				end
			end)
		end)
	end

	InfoFrame.Name = "Info"
	InfoFrame.Parent = AccountInfo
	InfoFrame.BackgroundTransparency = 1
	InfoFrame.AnchorPoint = Vector2.new(0, 0.5)
	InfoFrame.Position = UDim2.new(0, 49, 0.5, 0)
	InfoFrame.Size = UDim2.new(1, -54, 0, 34)

	local InfoLayout = Instance.new("UIListLayout")
	InfoLayout.Parent = InfoFrame
	InfoLayout.SortOrder = Enum.SortOrder.LayoutOrder
	InfoLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	InfoLayout.Padding = UDim.new(0, 3)

	UsernameLabel.Name = "Username"
	UsernameLabel.Parent = InfoFrame
	UsernameLabel.BackgroundTransparency = 1
	UsernameLabel.Size = UDim2.new(1, 0, 0, 15)
	UsernameLabel.Font = Enum.Font.GothamBold
	UsernameLabel.TextSize = 11.5
	UsernameLabel.Text = (pl and pl.Name) or "Player"
	UsernameLabel.TextColor3 = isLight and Color3.fromRGB(20, 24, 33) or Color3.fromRGB(255, 255, 255)
	UsernameLabel.TextXAlignment = Enum.TextXAlignment.Left
	UsernameLabel.TextTruncate = Enum.TextTruncate.AtEnd
	UsernameLabel.LayoutOrder = 1

	local isPremium = (type(getgenv().IsPremium) ~= 'nil' and getgenv().IsPremium)

	TypeBadge.Name = "TypeBadge"
	TypeBadge.Parent = InfoFrame
	TypeBadge.BackgroundColor3 = isLight and (isPremium and Color3.fromRGB(220, 235, 255) or Color3.fromRGB(226, 230, 240)) or (isPremium and Color3.fromRGB(18, 30, 55) or Color3.fromRGB(26, 26, 36))
	TypeBadge.BorderSizePixel = 0
	TypeBadge.Size = UDim2.new(0, isPremium and 56 or 42, 0, 14)
	TypeBadge.LayoutOrder = 2

	TypeBadgeCorner.CornerRadius = UDim.new(0, 3)
	TypeBadgeCorner.Parent = TypeBadge

	TypeBadgeStroke.Color = isLight and (isPremium and Color3.fromRGB(90, 160, 255) or Color3.fromRGB(195, 200, 215)) or (isPremium and Color3.fromRGB(42, 110, 230) or Color3.fromRGB(55, 55, 75))
	TypeBadgeStroke.Thickness = 1
	TypeBadgeStroke.Parent = TypeBadge

	TypeLabel.Name = "Type"
	TypeLabel.Parent = TypeBadge
	TypeLabel.BackgroundTransparency = 1
	TypeLabel.Size = UDim2.new(1, 0, 1, 0)
	TypeLabel.Font = Enum.Font.GothamBold
	TypeLabel.TextSize = 9
	TypeLabel.Text = isPremium and "PREMIUM" or "FREE"
	TypeLabel.TextColor3 = isLight and (isPremium and Color3.fromRGB(30, 90, 200) or Color3.fromRGB(75, 80, 95)) or (isPremium and Color3.fromRGB(90, 160, 255) or Color3.fromRGB(170, 170, 190))
	TypeLabel.TextXAlignment = Enum.TextXAlignment.Center
	TypeLabel.TextYAlignment = Enum.TextYAlignment.Center

	local Topbar = Instance.new("Frame")
	local BreadcrumbHeader = Instance.new("TextLabel")
	local SessionHeader = Instance.new("TextLabel")
	local WindowControls = Instance.new("Frame")
	local WinLayout = Instance.new("UIListLayout")
	local Minisize_1 = Instance.new("ImageButton")
	local Close_1 = Instance.new("ImageButton")
	local ChSize_1 = Instance.new("ImageButton")

	Topbar.Name = "Topbar"
	Topbar.Parent = Background_1
	Topbar.BackgroundTransparency = 1
	Topbar.Position = UDim2.new(0, 160, 0, 0)
	Topbar.Size = UDim2.new(1, -160, 0, 52)
	Topbar.ZIndex = 5

	lak(Topbar, Shadow_1)

	BreadcrumbHeader.Name = "Breadcrumb"
	BreadcrumbHeader.Parent = Topbar
	BreadcrumbHeader.BackgroundTransparency = 1
	BreadcrumbHeader.Position = UDim2.new(0, 16, 0, 10)
	BreadcrumbHeader.Size = UDim2.new(1, -170, 0, 16)
	BreadcrumbHeader.Font = Enum.Font.GothamBold
	BreadcrumbHeader.Text = string.format("%s // %s", Title:upper(), "START")
	BreadcrumbHeader.TextColor3 = Color3.fromRGB(250, 250, 255)
	BreadcrumbHeader.TextSize = 13
	BreadcrumbHeader.TextXAlignment = Enum.TextXAlignment.Left
	BreadcrumbHeader.TextYAlignment = Enum.TextYAlignment.Center

	local placeName = "Unknown Game"
	pcall(function()
		local MarketplaceService = game:GetService("MarketplaceService")
		local info = MarketplaceService:GetProductInfo(game.PlaceId)
		if info and info.Name then placeName = info.Name end
	end)

	SessionHeader.Name = "Session"
	SessionHeader.Parent = Topbar
	SessionHeader.BackgroundTransparency = 1
	SessionHeader.Position = UDim2.new(0, 16, 0, 28)
	SessionHeader.Size = UDim2.new(1, -170, 0, 14)
	SessionHeader.Font = Enum.Font.GothamMedium
	SessionHeader.Text = string.format("GAME: [%s]", placeName:upper())
	SessionHeader.TextColor3 = Color3.fromRGB(155, 155, 170)
	SessionHeader.TextSize = 10.5
	SessionHeader.TextXAlignment = Enum.TextXAlignment.Left
	SessionHeader.TextYAlignment = Enum.TextYAlignment.Center

	WindowControls.Name = "WindowControls"
	WindowControls.Parent = Topbar
	WindowControls.AnchorPoint = Vector2.new(1, 0.5)
	WindowControls.BackgroundTransparency = 1
	WindowControls.Position = UDim2.new(1, -14, 0.5, 0)
	WindowControls.Size = UDim2.new(0, 115, 0, 24)

	WinLayout.Parent = WindowControls
	WinLayout.FillDirection = Enum.FillDirection.Horizontal
	WinLayout.SortOrder = Enum.SortOrder.LayoutOrder
	WinLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	WinLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	WinLayout.Padding = UDim.new(0, 10)

	local DiscordBtn = Instance.new("ImageButton")
	DiscordBtn.Name = "DiscordBtn"
	DiscordBtn.Parent = WindowControls
	DiscordBtn.BackgroundTransparency = 1
	DiscordBtn.Size = UDim2.new(0, 16, 0, 16)
	DiscordBtn.Image = "rbxassetid://119690296342461"
	DiscordBtn.ImageColor3 = Color3.fromRGB(150, 150, 160)
	DiscordBtn.LayoutOrder = 2

	Minisize_1.Name = "Minimize"
	Minisize_1.Parent = WindowControls
	Minisize_1.BackgroundTransparency = 1
	Minisize_1.Size = UDim2.new(0, 14, 0, 14)
	Minisize_1.Image = "rbxassetid://10734896206"
	Minisize_1.ImageColor3 = Color3.fromRGB(150, 150, 160)
	Minisize_1.LayoutOrder = 3

	Close_1.Name = "Close"
	Close_1.Parent = WindowControls
	Close_1.BackgroundTransparency = 1
	Close_1.Size = UDim2.new(0, 14, 0, 14)
	Close_1.Image = "rbxassetid://15082305656"
	Close_1.ImageColor3 = Color3.fromRGB(150, 150, 160)
	Close_1.LayoutOrder = 4

	DiscordBtn.MouseEnter:Connect(function()
		tw({v = DiscordBtn, t = 0.15, g = {ImageColor3 = Color3.fromRGB(88, 101, 242)}}):Play()
	end)
	DiscordBtn.MouseLeave:Connect(function()
		tw({v = DiscordBtn, t = 0.15, g = {ImageColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(80, 85, 95) or Color3.fromRGB(150, 150, 160)}}):Play()
	end)

	Minisize_1.MouseEnter:Connect(function()
		tw({v = Minisize_1, t = 0.15, g = {ImageColor3 = Color3.fromRGB(255, 255, 255)}}):Play()
	end)
	Minisize_1.MouseLeave:Connect(function()
		tw({v = Minisize_1, t = 0.15, g = {ImageColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(80, 85, 95) or Color3.fromRGB(150, 150, 160)}}):Play()
	end)

	Close_1.MouseEnter:Connect(function()
		tw({v = Close_1, t = 0.15, g = {ImageColor3 = Color3.fromRGB(70, 130, 255)}}):Play()
	end)
	Close_1.MouseLeave:Connect(function()
		tw({v = Close_1, t = 0.15, g = {ImageColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(80, 85, 95) or Color3.fromRGB(150, 150, 160)}}):Play()
	end)

	local ThemeToggleBtn = Instance.new("ImageButton")
	ThemeToggleBtn.Name = "ThemeToggleBtn"
	ThemeToggleBtn.Parent = WindowControls
	ThemeToggleBtn.BackgroundTransparency = 1
	ThemeToggleBtn.Size = UDim2.new(0, 16, 0, 16)
	ThemeToggleBtn.LayoutOrder = 1

	local function updateThemeButtonIcon(isLight)
		local iconName = isLight and "sun" or "moon"
		local ic = gl(iconName)
		ThemeToggleBtn.Image = ic.Image
		ThemeToggleBtn.ImageRectSize = ic.ImageRectSize
		ThemeToggleBtn.ImageRectOffset = ic.ImageRectPosition
		ThemeToggleBtn.ImageColor3 = isLight and Color3.fromRGB(245, 166, 35) or Color3.fromRGB(150, 150, 160)
	end
	updateThemeButtonIcon(currentWindowTheme.isLightMode)

	ThemeToggleBtn.MouseEnter:Connect(function()
		tw({v = ThemeToggleBtn, t = 0.15, g = {ImageColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(255, 190, 60) or Color3.fromRGB(255, 255, 255)}}):Play()
	end)
	ThemeToggleBtn.MouseLeave:Connect(function()
		tw({v = ThemeToggleBtn, t = 0.15, g = {ImageColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(245, 166, 35) or Color3.fromRGB(150, 150, 160)}}):Play()
	end)

	local function applyTheme(isLight)
		tw({v = Background_1, t = 0.25, g = {BackgroundColor3 = isLight and Color3.fromRGB(242, 244, 248) or Color3.fromRGB(15, 15, 18)}}):Play()
		tw({v = UIStroke_Win, t = 0.25, g = {Color = isLight and Color3.fromRGB(218, 222, 232) or Color3.fromRGB(48, 48, 60)}}):Play()
		tw({v = Sidebar, t = 0.25, g = {BackgroundColor3 = isLight and Color3.fromRGB(250, 251, 253) or Color3.fromRGB(15, 15, 18)}}):Play()
		tw({v = SidebarBorder, t = 0.25, g = {BackgroundColor3 = isLight and Color3.fromRGB(222, 226, 236) or Color3.fromRGB(30, 30, 38)}}):Play()
		tw({v = LogoText, t = 0.25, g = {TextColor3 = isLight and Color3.fromRGB(20, 24, 33) or Color3.fromRGB(255, 255, 255)}}):Play()
		tw({v = BreadcrumbHeader, t = 0.25, g = {TextColor3 = isLight and Color3.fromRGB(20, 24, 33) or Color3.fromRGB(250, 250, 255)}}):Play()
		tw({v = SessionHeader, t = 0.25, g = {TextColor3 = isLight and Color3.fromRGB(110, 115, 130) or Color3.fromRGB(155, 155, 170)}}):Play()
		tw({v = Minisize_1, t = 0.25, g = {ImageColor3 = isLight and Color3.fromRGB(80, 85, 95) or Color3.fromRGB(150, 150, 160)}}):Play()
		tw({v = Close_1, t = 0.25, g = {ImageColor3 = isLight and Color3.fromRGB(80, 85, 95) or Color3.fromRGB(150, 150, 160)}}):Play()
		tw({v = DiscordBtn, t = 0.25, g = {ImageColor3 = isLight and Color3.fromRGB(80, 85, 95) or Color3.fromRGB(150, 150, 160)}}):Play()
		tw({v = ReopenBtn, t = 0.25, g = {BackgroundColor3 = isLight and Color3.fromRGB(242, 244, 248) or Color3.fromRGB(15, 15, 18)}}):Play()
		tw({v = ReopenStroke, t = 0.25, g = {Color = isLight and Color3.fromRGB(218, 222, 232) or Color3.fromRGB(48, 48, 60)}}):Play()
		tw({v = ReopenTitle, t = 0.25, g = {TextColor3 = isLight and Color3.fromRGB(20, 24, 33) or Color3.fromRGB(255, 255, 255)}}):Play()
		tw({v = ReopenKeybind, t = 0.25, g = {TextColor3 = isLight and Color3.fromRGB(110, 115, 130) or Color3.fromRGB(150, 150, 165)}}):Play()

		tw({v = AccountInfo, t = 0.25, g = {BackgroundColor3 = isLight and Color3.fromRGB(238, 240, 247) or Color3.fromRGB(20, 20, 26)}}):Play()
		tw({v = AccountStroke, t = 0.25, g = {Color = isLight and Color3.fromRGB(215, 219, 232) or Color3.fromRGB(38, 38, 50)}}):Play()
		tw({v = UsernameLabel, t = 0.25, g = {TextColor3 = isLight and Color3.fromRGB(20, 24, 33) or Color3.fromRGB(255, 255, 255)}}):Play()
		tw({v = AvatarFrame, t = 0.25, g = {BackgroundColor3 = isLight and Color3.fromRGB(220, 224, 235) or Color3.fromRGB(26, 26, 34)}}):Play()
		tw({v = TypeBadge, t = 0.25, g = {BackgroundColor3 = isLight and (isPremium and Color3.fromRGB(220, 235, 255) or Color3.fromRGB(226, 230, 240)) or (isPremium and Color3.fromRGB(18, 30, 55) or Color3.fromRGB(26, 26, 36))}}):Play()
		tw({v = TypeBadgeStroke, t = 0.25, g = {Color = isLight and (isPremium and Color3.fromRGB(90, 160, 255) or Color3.fromRGB(195, 200, 215)) or (isPremium and Color3.fromRGB(42, 110, 230) or Color3.fromRGB(55, 55, 75))}}):Play()
		tw({v = TypeLabel, t = 0.25, g = {TextColor3 = isLight and (isPremium and Color3.fromRGB(30, 90, 200) or Color3.fromRGB(75, 80, 95)) or (isPremium and Color3.fromRGB(90, 160, 255) or Color3.fromRGB(170, 170, 190))}}):Play()

		if Tabs and Tabs.List then
			for _, item in ipairs(Tabs.List) do
				if item.Page and item.Page.Visible then
					tw({v = item.TitleLabel, t = 0.25, g = {TextColor3 = isLight and Color3.fromRGB(20, 24, 33) or Color3.fromRGB(255, 255, 255)}}):Play()
				else
					tw({v = item.TitleLabel, t = 0.25, g = {TextColor3 = isLight and Color3.fromRGB(100, 105, 120) or Color3.fromRGB(160, 160, 170)}}):Play()
					tw({v = item.Icon, t = 0.25, g = {ImageColor3 = isLight and Color3.fromRGB(100, 105, 120) or Color3.fromRGB(150, 150, 160)}}):Play()
					tw({v = item.SubLabel, t = 0.25, g = {TextColor3 = isLight and Color3.fromRGB(140, 145, 160) or Color3.fromRGB(120, 120, 135)}}):Play()
				end
			end
		end

		for _, sec in ipairs(currentWindowTheme.sections) do
			if sec.Frame and sec.Frame.Parent then
				tw({v = sec.Frame, t = 0.25, g = {BackgroundColor3 = isLight and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(20, 20, 26)}}):Play()
				tw({v = sec.Stroke, t = 0.25, g = {Color = isLight and Color3.fromRGB(226, 230, 240) or Color3.fromRGB(36, 36, 46)}}):Play()
				tw({v = sec.Title, t = 0.25, g = {TextColor3 = isLight and Color3.fromRGB(30, 35, 50) or Color3.fromRGB(240, 240, 248)}}):Play()
			end
		end

		for _, card in ipairs(currentWindowTheme.cards) do
			if card.Background and card.Background.Parent then
				tw({v = card.Background, t = 0.25, g = {BackgroundColor3 = isLight and Color3.fromRGB(246, 248, 252) or Color3.fromRGB(22, 22, 28)}}):Play()
				tw({v = card.UIStroke, t = 0.25, g = {Color = isLight and Color3.fromRGB(228, 232, 242) or Color3.fromRGB(36, 36, 44)}}):Play()
				tw({v = card.Title, t = 0.25, g = {TextColor3 = isLight and Color3.fromRGB(20, 24, 33) or Color3.fromRGB(255, 255, 255)}}):Play()
				tw({v = card.Desc, t = 0.25, g = {TextColor3 = isLight and Color3.fromRGB(115, 120, 135) or Color3.fromRGB(165, 165, 180)}}):Play()
			end
		end

		for _, ctrl in ipairs(currentWindowTheme.controls) do
			if ctrl.type == "slider" and ctrl.Track and ctrl.Track.Parent then
				tw({v = ctrl.Track, t = 0.25, g = {BackgroundColor3 = isLight and Color3.fromRGB(215, 220, 230) or Color3.fromRGB(36, 36, 46)}}):Play()
				tw({v = ctrl.ValueBox, t = 0.25, g = {BackgroundColor3 = isLight and Color3.fromRGB(235, 238, 246) or Color3.fromRGB(17, 17, 22), TextColor3 = isLight and Color3.fromRGB(25, 25, 35) or Color3.fromRGB(255, 255, 255)}}):Play()
				tw({v = ctrl.Stroke, t = 0.25, g = {Color = isLight and Color3.fromRGB(205, 210, 222) or Color3.fromRGB(45, 45, 55)}}):Play()
			elseif ctrl.type == "dropdown" and ctrl.ValueBox and ctrl.ValueBox.Parent then
				tw({v = ctrl.ValueBox, t = 0.25, g = {BackgroundColor3 = isLight and Color3.fromRGB(235, 238, 246) or Color3.fromRGB(17, 17, 22)}}):Play()
				tw({v = ctrl.Stroke, t = 0.25, g = {Color = isLight and Color3.fromRGB(205, 210, 222) or Color3.fromRGB(45, 45, 55)}}):Play()
				tw({v = ctrl.Text, t = 0.25, g = {TextColor3 = isLight and Color3.fromRGB(25, 25, 35) or Color3.fromRGB(220, 220, 230)}}):Play()
				tw({v = ctrl.Arrow, t = 0.25, g = {ImageColor3 = isLight and Color3.fromRGB(100, 105, 120) or Color3.fromRGB(160, 160, 170)}}):Play()
				if ctrl.Popup and ctrl.Popup.Parent then
					tw({v = ctrl.Popup, t = 0.25, g = {BackgroundColor3 = isLight and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(17, 17, 22)}}):Play()
					tw({v = ctrl.Search, t = 0.25, g = {BackgroundColor3 = isLight and Color3.fromRGB(240, 242, 248) or Color3.fromRGB(24, 24, 30)}}):Play()
					tw({v = ctrl.SearchStroke, t = 0.25, g = {Color = isLight and Color3.fromRGB(215, 220, 230) or Color3.fromRGB(42, 42, 52)}}):Play()
					ctrl.SearchInput.TextColor3 = isLight and Color3.fromRGB(25, 25, 35) or Color3.fromRGB(240, 240, 245)
					ctrl.SearchInput.PlaceholderColor3 = isLight and Color3.fromRGB(140, 145, 155) or Color3.fromRGB(120, 120, 130)
				end
			elseif ctrl.type == "textbox" and ctrl.Input and ctrl.Input.Parent then
				tw({v = ctrl.Input, t = 0.25, g = {BackgroundColor3 = isLight and Color3.fromRGB(235, 238, 246) or Color3.fromRGB(17, 17, 22), TextColor3 = isLight and Color3.fromRGB(25, 25, 35) or Color3.fromRGB(240, 240, 245)}}):Play()
				ctrl.Input.PlaceholderColor3 = isLight and Color3.fromRGB(140, 145, 155) or Color3.fromRGB(120, 120, 130)
				tw({v = ctrl.Stroke, t = 0.25, g = {Color = isLight and Color3.fromRGB(205, 210, 222) or Color3.fromRGB(45, 45, 55)}}):Play()
			elseif ctrl.type == "keybind" and ctrl.Button and ctrl.Button.Parent then
				tw({v = ctrl.Button, t = 0.25, g = {BackgroundColor3 = isLight and Color3.fromRGB(235, 238, 246) or Color3.fromRGB(17, 17, 22), TextColor3 = isLight and Color3.fromRGB(25, 25, 35) or Color3.fromRGB(240, 240, 245)}}):Play()
				tw({v = ctrl.Stroke, t = 0.25, g = {Color = isLight and Color3.fromRGB(205, 210, 222) or Color3.fromRGB(45, 45, 55)}}):Play()
			elseif ctrl.type == "toggle" and ctrl.Pill and ctrl.Pill.Parent then
				if not ctrl.getValue() then
					tw({v = ctrl.Pill, t = 0.25, g = {BackgroundColor3 = isLight and Color3.fromRGB(205, 210, 222) or Color3.fromRGB(38, 38, 48)}}):Play()
				end
			elseif ctrl.type == "button" and ctrl.Arrow and ctrl.Arrow.Parent then
				tw({v = ctrl.Arrow, t = 0.25, g = {ImageColor3 = isLight and Color3.fromRGB(110, 115, 130) or Color3.fromRGB(150, 150, 160)}}):Play()
			elseif ctrl.type == "logger" and ctrl.Background and ctrl.Background.Parent then
				tw({v = ctrl.Background, t = 0.25, g = {BackgroundColor3 = isLight and Color3.fromRGB(242, 245, 250) or Color3.fromRGB(17, 17, 22)}}):Play()
				tw({v = ctrl.TopBar, t = 0.25, g = {BackgroundColor3 = isLight and Color3.fromRGB(230, 234, 244) or Color3.fromRGB(22, 22, 28)}}):Play()
				tw({v = ctrl.Stroke, t = 0.25, g = {Color = isLight and Color3.fromRGB(215, 220, 232) or Color3.fromRGB(36, 36, 46)}}):Play()
				tw({v = ctrl.Title, t = 0.25, g = {TextColor3 = isLight and Color3.fromRGB(30, 35, 50) or Color3.fromRGB(240, 240, 245)}}):Play()
			elseif ctrl.type == "custom" and type(ctrl.update) == "function" then
				pcall(ctrl.update, isLight)
			end
		end
	end

	ThemeToggleBtn.MouseButton1Click:Connect(function()
		currentWindowTheme.isLightMode = not currentWindowTheme.isLightMode
		local isLight = currentWindowTheme.isLightMode

		tw({v = ThemeToggleBtn, t = 0.12, s = Enum.EasingStyle.Quad, d = "Out", g = {Rotation = 90, Size = UDim2.new(0, 11, 0, 11), ImageTransparency = 0.5}}):Play()
		task.delay(0.12, function()
			updateThemeButtonIcon(isLight)
			tw({v = ThemeToggleBtn, t = 0.18, s = Enum.EasingStyle.Back, d = "Out", g = {Rotation = 0, Size = UDim2.new(0, 16, 0, 16), ImageTransparency = 0}}):Play()
		end)

		applyTheme(isLight)
	end)

	local Page_1 = Instance.new("Frame")
	Page_1.Name = "Page"
	Page_1.Parent = Background_1
	Page_1.BackgroundColor3 = Color3.fromRGB(19, 19, 24)
	Page_1.BackgroundTransparency = 1
	Page_1.BorderSizePixel = 0
	Page_1.Position = UDim2.new(0, 160, 0, 52)
	Page_1.Size = UDim2.new(1, -160, 1, -52)

	local PagePadding = Instance.new("UIPadding")
	PagePadding.Parent = Page_1
	PagePadding.PaddingBottom = UDim.new(0, 10)
	PagePadding.PaddingLeft = UDim.new(0, 14)
	PagePadding.PaddingRight = UDim.new(0, 14)
	PagePadding.PaddingTop = UDim.new(0, 4)

	local Tabs = {
		Value = false,
		List = {},
		DefaultIndex = 1,
		UIToggleKeybind = Keybind
	}

	function Tabs:SelectTab(p)
		Tabs.DefaultIndex = p or 1
	end

	function Tabs:Line()
		local Line = Instance.new("Frame")
		Line.Parent = TabListFrame
		Line.BackgroundColor3 = Color3.fromRGB(30, 30, 38)
		Line.BorderSizePixel = 0
		Line.Size = UDim2.new(1, 0, 0, 1)
	end

	function Tabs:Tab(p)
		local TabTitle = p.Title or 'null'
		local Subtitle = p.Subtitle or p.Desc or 'Currently Active'
		local Icon = p.Icon or 'house'

		local TabBtn = Instance.new("Frame")
		local TabCorner = Instance.new("UICorner")
		local TabIndicator = Instance.new("Frame")
		local TabIndicatorCorner = Instance.new("UICorner")
		local TabIcon = Instance.new("ImageLabel")
		local TabTextFrame = Instance.new("Frame")
		local TabTitleLabel = Instance.new("TextLabel")
		local TabSubLabel = Instance.new("TextLabel")

		TabBtn.Name = "Tab_" .. TabTitle
		TabBtn.Parent = TabListFrame
		TabBtn.BackgroundColor3 = Color3.fromRGB(22, 22, 28)
		TabBtn.BackgroundTransparency = 1
		TabBtn.BorderSizePixel = 0
		TabBtn.Size = UDim2.new(1, 0, 0, 38)

		TabCorner.CornerRadius = UDim.new(0, 6)
		TabCorner.Parent = TabBtn

		TabIndicator.Name = "ActiveIndicator"
		TabIndicator.Parent = TabBtn
		TabIndicator.AnchorPoint = Vector2.new(0, 0.5)
		TabIndicator.BackgroundColor3 = Color3.fromRGB(42, 110, 230)
		TabIndicator.BorderSizePixel = 0
		TabIndicator.Position = UDim2.new(0, 0, 0.5, 0)
		TabIndicator.Size = UDim2.new(0, 3, 0, 20)
		TabIndicator.BackgroundTransparency = 1

		TabIndicatorCorner.CornerRadius = UDim.new(0, 2)
		TabIndicatorCorner.Parent = TabIndicator

		TabIcon.Name = "TabIcon"
		TabIcon.Parent = TabBtn
		TabIcon.AnchorPoint = Vector2.new(0, 0.5)
		TabIcon.BackgroundTransparency = 1
		TabIcon.Position = UDim2.new(0, 14, 0.5, 0)
		TabIcon.Size = UDim2.new(0, 18, 0, 18)
		local ic = gl(Icon)
		TabIcon.Image = ic.Image
		TabIcon.ImageRectSize = ic.ImageRectSize
		TabIcon.ImageRectOffset = ic.ImageRectPosition
		TabIcon.ImageColor3 = Color3.fromRGB(160, 160, 175)

		TabTextFrame.Name = "TextFrame"
		TabTextFrame.Parent = TabBtn
		TabTextFrame.AnchorPoint = Vector2.new(0, 0.5)
		TabTextFrame.BackgroundTransparency = 1
		TabTextFrame.Position = UDim2.new(0, 42, 0.5, 0)
		TabTextFrame.Size = UDim2.new(1, -48, 0, 30)

		local TabTextLayout = Instance.new("UIListLayout")
		TabTextLayout.Parent = TabTextFrame
		TabTextLayout.SortOrder = Enum.SortOrder.LayoutOrder
		TabTextLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		TabTextLayout.Padding = UDim.new(0, 1)

		TabTitleLabel.Name = "Title"
		TabTitleLabel.Parent = TabTextFrame
		TabTitleLabel.BackgroundTransparency = 1
		TabTitleLabel.Size = UDim2.new(1, 0, 0, 15)
		TabTitleLabel.Font = Enum.Font.GothamBold
		TabTitleLabel.Text = TabTitle:upper()
		TabTitleLabel.TextColor3 = Color3.fromRGB(180, 180, 195)
		TabTitleLabel.TextSize = 12
		TabTitleLabel.TextXAlignment = Enum.TextXAlignment.Left
		TabTitleLabel.LayoutOrder = 1

		TabSubLabel.Name = "Subtitle"
		TabSubLabel.Parent = TabTextFrame
		TabSubLabel.BackgroundTransparency = 1
		TabSubLabel.Size = UDim2.new(1, 0, 0, 12)
		TabSubLabel.Font = Enum.Font.GothamMedium
		TabSubLabel.Text = Subtitle
		TabSubLabel.TextColor3 = Color3.fromRGB(120, 120, 135)
		TabSubLabel.TextSize = 9
		TabSubLabel.TextXAlignment = Enum.TextXAlignment.Left
		TabSubLabel.LayoutOrder = 2

		local InPage_1 = Instance.new("Frame")
		local PageScroll = Instance.new("ScrollingFrame")
		local PageLayout = Instance.new("UIListLayout")
		local PagePadding_1 = Instance.new("UIPadding")

		InPage_1.Name = "InPage_" .. TabTitle
		InPage_1.Parent = Page_1
		InPage_1.BackgroundTransparency = 1
		InPage_1.Size = UDim2.new(1, 0, 1, 0)
		InPage_1.Visible = false

		PageScroll.Name = "ScrollingFrame"
		PageScroll.Parent = InPage_1
		PageScroll.Active = true
		PageScroll.BackgroundTransparency = 1
		PageScroll.BorderSizePixel = 0
		PageScroll.Size = UDim2.new(1, 0, 1, 0)
		PageScroll.ScrollBarThickness = 3
		PageScroll.ScrollBarImageColor3 = Color3.fromRGB(42, 110, 230)
		PageScroll.ClipsDescendants = true

		PageLayout.Parent = PageScroll
		PageLayout.Padding = UDim.new(0, 8)
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder

		PagePadding_1.Parent = PageScroll
		PagePadding_1.PaddingBottom = UDim.new(0, 10)
		PagePadding_1.PaddingRight = UDim.new(0, 6)

		changecanvas(PageScroll, PageLayout, 10)

		local ClickTab = click(TabBtn)

		table.insert(self.List, {
			Page = InPage_1,
			Button = TabBtn,
			Title = TabTitle,
			Indicator = TabIndicator,
			Icon = TabIcon,
			TitleLabel = TabTitleLabel,
			SubLabel = TabSubLabel
		})
		local MyIndex = #self.List

		local function selectThisTab()
			local isLight = currentWindowTheme.isLightMode
			for _, item in ipairs(self.List) do
				if item.Page then item.Page.Visible = false end
				tw({v = item.Button, t = 0.18, g = {BackgroundTransparency = 1}}):Play()
				tw({v = item.Indicator, t = 0.18, g = {BackgroundTransparency = 1, Size = UDim2.new(0, 3, 0, 6)}}):Play()
				tw({v = item.Icon, t = 0.18, g = {ImageColor3 = isLight and Color3.fromRGB(100, 105, 120) or Color3.fromRGB(150, 150, 160)}}):Play()
				tw({v = item.TitleLabel, t = 0.18, g = {TextColor3 = isLight and Color3.fromRGB(100, 105, 120) or Color3.fromRGB(160, 160, 170)}}):Play()
				tw({v = item.SubLabel, t = 0.18, g = {TextColor3 = isLight and Color3.fromRGB(140, 145, 160) or Color3.fromRGB(120, 120, 135)}}):Play()
			end

			InPage_1.Position = UDim2.new(0, 8, 0, 0)
			InPage_1.Visible = true
			tw({v = InPage_1, t = 0.22, s = Enum.EasingStyle.Cubic, d = "Out", g = {Position = UDim2.new(0, 0, 0, 0)}}):Play()

			tw({v = TabBtn, t = 0.18, g = {BackgroundTransparency = isLight and 0.9 or 0.85, BackgroundColor3 = Color3.fromRGB(42, 110, 230)}}):Play()
			tw({v = TabIndicator, t = 0.22, s = Enum.EasingStyle.Back, d = "Out", g = {BackgroundTransparency = 0, Size = UDim2.new(0, 3, 0, 20)}}):Play()
			tw({v = TabIcon, t = 0.1, s = Enum.EasingStyle.Quad, d = "Out", g = {ImageColor3 = Color3.fromRGB(42, 110, 230), Size = UDim2.new(0, 21, 0, 21)}}):Play()
			task.delay(0.1, function()
				tw({v = TabIcon, t = 0.14, s = Enum.EasingStyle.Quad, d = "Out", g = {Size = UDim2.new(0, 18, 0, 18)}}):Play()
			end)
			tw({v = TabTitleLabel, t = 0.18, g = {TextColor3 = isLight and Color3.fromRGB(20, 24, 33) or Color3.fromRGB(255, 255, 255)}}):Play()

			BreadcrumbHeader.Text = string.format("%s // %s", Title:upper(), TabTitle:upper())
		end

		ClickTab.MouseButton1Click:Connect(selectThisTab)

		TabBtn.MouseEnter:Connect(function()
			if not InPage_1.Visible then
				local isLight = currentWindowTheme.isLightMode
				tw({v = TabBtn, t = 0.15, g = {BackgroundTransparency = isLight and 0.92 or 0.94, BackgroundColor3 = isLight and Color3.fromRGB(30, 35, 50) or Color3.fromRGB(255, 255, 255)}}):Play()
				tw({v = TabIcon, t = 0.15, g = {ImageColor3 = isLight and Color3.fromRGB(50, 55, 70) or Color3.fromRGB(220, 220, 235)}}):Play()
				tw({v = TabTitleLabel, t = 0.15, g = {TextColor3 = isLight and Color3.fromRGB(30, 35, 50) or Color3.fromRGB(235, 235, 245)}}):Play()
			end
		end)

		TabBtn.MouseLeave:Connect(function()
			if not InPage_1.Visible then
				local isLight = currentWindowTheme.isLightMode
				tw({v = TabBtn, t = 0.15, g = {BackgroundTransparency = 1}}):Play()
				tw({v = TabIcon, t = 0.15, g = {ImageColor3 = isLight and Color3.fromRGB(100, 105, 120) or Color3.fromRGB(160, 160, 175)}}):Play()
				tw({v = TabTitleLabel, t = 0.15, g = {TextColor3 = isLight and Color3.fromRGB(100, 105, 120) or Color3.fromRGB(180, 180, 195)}}):Play()
			end
		end)

		if MyIndex == 1 then
			task.spawn(function()
				task.wait(0.05)
				selectThisTab()
				self.Value = true
			end)
		end

		local Func = {}
		local currentSection = nil

		function Func:Section(p)
			local SectionTitle = p.Title or 'SECTION'
			local SectionFrame = Instance.new("Frame")
			local SectionCorner = Instance.new("UICorner")
			local SectionStroke = Instance.new("UIStroke")
			local SectionHeader = Instance.new("Frame")
			local SectionTitleLabel = Instance.new("TextLabel")
			local SectionContent = Instance.new("Frame")
			local ContentList = Instance.new("UIListLayout")
			local ContentPadding = Instance.new("UIPadding")

			local isLight = currentWindowTheme.isLightMode
			SectionFrame.Name = "Section_" .. SectionTitle
			SectionFrame.Parent = PageScroll
			SectionFrame.BackgroundColor3 = isLight and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(20, 20, 26)
			SectionFrame.BorderSizePixel = 0
			SectionFrame.Size = UDim2.new(1, 0, 0, 40)
			SectionFrame.ClipsDescendants = true

			SectionCorner.CornerRadius = UDim.new(0, 6)
			SectionCorner.Parent = SectionFrame

			SectionStroke.Color = isLight and Color3.fromRGB(226, 230, 240) or Color3.fromRGB(36, 36, 46)
			SectionStroke.Thickness = 1
			SectionStroke.Parent = SectionFrame

			SectionHeader.Name = "Header"
			SectionHeader.Parent = SectionFrame
			SectionHeader.BackgroundTransparency = 1
			SectionHeader.Size = UDim2.new(1, 0, 0, 28)

			SectionTitleLabel.Name = "Title"
			SectionTitleLabel.Parent = SectionHeader
			SectionTitleLabel.BackgroundTransparency = 1
			SectionTitleLabel.Position = UDim2.new(0, 12, 0, 0)
			SectionTitleLabel.Size = UDim2.new(1, -24, 1, 0)
			SectionTitleLabel.Font = Enum.Font.GothamBold
			SectionTitleLabel.Text = SectionTitle:upper()
			SectionTitleLabel.TextColor3 = isLight and Color3.fromRGB(30, 35, 50) or Color3.fromRGB(240, 240, 248)
			SectionTitleLabel.TextSize = 11
			SectionTitleLabel.TextXAlignment = Enum.TextXAlignment.Left
			SectionTitleLabel.TextYAlignment = Enum.TextYAlignment.Center

			table.insert(currentWindowTheme.sections, {
				Frame = SectionFrame,
				Stroke = SectionStroke,
				Title = SectionTitleLabel,
			})

			SectionContent.Name = "Content"
			SectionContent.Parent = SectionFrame
			SectionContent.BackgroundTransparency = 1
			SectionContent.Position = UDim2.new(0, 0, 0, 28)
			SectionContent.Size = UDim2.new(1, 0, 0, 0)

			ContentList.Parent = SectionContent
			ContentList.SortOrder = Enum.SortOrder.LayoutOrder
			ContentList.Padding = UDim.new(0, 5)

			ContentPadding.Parent = SectionContent
			ContentPadding.PaddingBottom = UDim.new(0, 8)
			ContentPadding.PaddingLeft = UDim.new(0, 8)
			ContentPadding.PaddingRight = UDim.new(0, 8)
			ContentPadding.PaddingTop = UDim.new(0, 2)

			local function updateSectionHeight()
				task.defer(function()
					local contentHeight = ContentList.AbsoluteContentSize.Y + 14
					SectionContent.Size = UDim2.new(1, 0, 0, contentHeight)
					SectionFrame.Size = UDim2.new(1, 0, 0, 28 + contentHeight)
				end)
			end

			ContentList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateSectionHeight)
			task.delay(0.1, updateSectionHeight)

			currentSection = SectionContent

			local SecObj = setmetatable({}, {
				__index = function(_, k)
					if Func[k] then
						return function(self, ...)
							return Func[k](Func, ...)
						end
					end
				end
			})
			function SecObj:SetTitle(t)
				SectionTitleLabel.Text = tostring(t):upper()
			end
			function SecObj:GetContainer()
				return SectionContent
			end
			return SecObj
		end

		function Func:Toggle(p)
			local Value = p.Value or false
			local Image = p.Image or ''
			local Callback = p.Callback or function() end
			local ToggleTitle = p.Title or 'null'
			local Desc = p.Desc or ''

			local parent = currentSection or PageScroll
			local Toggle, Config = background(parent, ToggleTitle, Desc, Image, 'Toggle')

			local F_1 = Instance.new("Frame")
			local Frame_1 = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")
			local Frame_2 = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			local GlowEffect = Instance.new("ImageLabel")

			F_1.Name = "F"
			F_1.Parent = Toggle
			F_1.AnchorPoint = Vector2.new(1, 0.5)
			F_1.BackgroundTransparency = 1
			F_1.Position = UDim2.new(1, -12, 0.5, 0)
			F_1.Size = UDim2.new(0, 36, 0, 20)

			Frame_1.Name = "SwitchPill"
			Frame_1.Parent = F_1
			Frame_1.AnchorPoint = Vector2.new(0.5, 0.5)
			Frame_1.Position = UDim2.new(0.5, 0, 0.5, 0)
			Frame_1.BackgroundColor3 = Value and Color3.fromRGB(42, 110, 230) or (currentWindowTheme.isLightMode and Color3.fromRGB(205, 210, 222) or Color3.fromRGB(38, 38, 48))
			Frame_1.BorderSizePixel = 0
			Frame_1.Size = UDim2.new(1, 0, 0, 18)

			UICorner_2.CornerRadius = UDim.new(1, 0)
			UICorner_2.Parent = Frame_1

			Frame_2.Name = "Knob"
			Frame_2.Parent = Frame_1
			Frame_2.AnchorPoint = Vector2.new(0, 0.5)
			Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Frame_2.BorderSizePixel = 0
			Frame_2.Position = Value and UDim2.new(1, -16, 0.5, 0) or UDim2.new(0, 2, 0.5, 0)
			Frame_2.Size = UDim2.new(0, 14, 0, 14)
			Frame_2.ZIndex = 3

			UICorner_3.CornerRadius = UDim.new(1, 0)
			UICorner_3.Parent = Frame_2

			table.insert(currentWindowTheme.controls, {
				type = "toggle",
				Pill = Frame_1,
				getValue = function() return Value end,
			})

			local Click = click(Toggle)

			local function setToggleState(state)
				Value = state
				if Value then
					Config:SetTextTransparencyTitle(0)
					tw({v = Frame_1, t = 0.2, s = Enum.EasingStyle.Quad, d = "Out", g = {BackgroundColor3 = Color3.fromRGB(42, 110, 230)}}):Play()
					tw({v = Frame_2, t = 0.09, s = Enum.EasingStyle.Quad, d = "Out", g = {Size = UDim2.new(0, 17, 0, 14)}}):Play()
					local knobTw = tw({v = Frame_2, t = 0.22, s = Enum.EasingStyle.Back, d = "Out", g = {Position = UDim2.new(1, -16, 0.5, 0)}})
					knobTw:Play()
					task.delay(0.1, function()
						tw({v = Frame_2, t = 0.12, s = Enum.EasingStyle.Quad, d = "Out", g = {Size = UDim2.new(0, 14, 0, 14)}}):Play()
					end)
				else
					Config:SetTextTransparencyTitle(0.3)
					tw({v = Frame_1, t = 0.2, s = Enum.EasingStyle.Quad, d = "Out", g = {BackgroundColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(205, 210, 222) or Color3.fromRGB(38, 38, 48)}}):Play()
					tw({v = Frame_2, t = 0.09, s = Enum.EasingStyle.Quad, d = "Out", g = {Size = UDim2.new(0, 17, 0, 14)}}):Play()
					local knobTw = tw({v = Frame_2, t = 0.22, s = Enum.EasingStyle.Back, d = "Out", g = {Position = UDim2.new(0, 2, 0.5, 0)}})
					knobTw:Play()
					task.delay(0.1, function()
						tw({v = Frame_2, t = 0.12, s = Enum.EasingStyle.Quad, d = "Out", g = {Size = UDim2.new(0, 14, 0, 14)}}):Play()
					end)
				end
				pcall(Callback, Value)
			end

			Click.MouseButton1Click:Connect(function()
				setToggleState(not Value)
			end)

			task.delay(0.05, function()
				setToggleState(Value)
			end)

			local New = {}
			function New:SetTitle(t) Config:SetTitle(t) end
			function New:SetDesc(t) Config:SetDesc(t) end
			function New:SetVisible(t) Toggle.Visible = t end
			function New:SetValue(t) setToggleState(t) end
			return New
		end

		function Func:Label(p)
			local LabelTitle = p.Title or 'null'
			local Desc = p.Desc or ''
			local Image = p.Image or ''

			local parent = currentSection or PageScroll
			local Label, Config = background(parent, LabelTitle, Desc, Image, 'Label')
			Config:SetTextTransparencyTitle(0)
			Config:SetSizeT(0)

			local New = {}
			function New:SetTitle(t) Config:SetTitle(t) end
			function New:SetDesc(t) Config:SetDesc(t) end
			function New:SetVisible(t) Label.Visible = t end
			return New
		end

		function Func:Button(p)
			local BtnTitle = p.Title or 'null'
			local Desc = p.Desc or ''
			local Image = p.Image or ''
			local Callback = p.Callback or function() end

			local parent = currentSection or PageScroll
			local Button, Config = background(parent, BtnTitle, Desc, Image, 'Button')
			Config:SetTextTransparencyTitle(0)
			Config:SetSizeT(40)

			local ArrowIcon = Instance.new("ImageLabel")
			ArrowIcon.Name = "Arrow"
			ArrowIcon.Parent = Button
			ArrowIcon.AnchorPoint = Vector2.new(1, 0.5)
			ArrowIcon.BackgroundTransparency = 1
			ArrowIcon.Position = UDim2.new(1, -12, 0.5, 0)
			ArrowIcon.Size = UDim2.new(0, 14, 0, 14)
			ArrowIcon.Image = "rbxassetid://10709791437"
			ArrowIcon.ImageColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(110, 115, 130) or Color3.fromRGB(150, 150, 160)

			table.insert(currentWindowTheme.controls, {
				type = "button",
				Arrow = ArrowIcon,
			})

			local Click = click(Button)
			Click.MouseEnter:Connect(function()
				tw({v = ArrowIcon, t = 0.18, s = Enum.EasingStyle.Quad, d = "Out", g = {Position = UDim2.new(1, -8, 0.5, 0), ImageColor3 = Color3.fromRGB(42, 110, 230)}}):Play()
				tw({v = Button, t = 0.18, g = {BackgroundColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(238, 242, 250) or Color3.fromRGB(28, 28, 36)}}):Play()
			end)
			Click.MouseLeave:Connect(function()
				tw({v = ArrowIcon, t = 0.18, s = Enum.EasingStyle.Quad, d = "Out", g = {Position = UDim2.new(1, -12, 0.5, 0), ImageColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(110, 115, 130) or Color3.fromRGB(150, 150, 160)}}):Play()
				tw({v = Button, t = 0.2, g = {BackgroundColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(246, 248, 252) or Color3.fromRGB(22, 22, 28)}}):Play()
			end)
			Click.MouseButton1Click:Connect(function()
				jc(Click, Button)
				tw({v = Button, t = 0.08, g = {BackgroundColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(225, 230, 242) or Color3.fromRGB(38, 38, 50)}}):Play()
				tw({v = ArrowIcon, t = 0.08, g = {Position = UDim2.new(1, -6, 0.5, 0), ImageColor3 = Color3.fromRGB(255, 255, 255)}}):Play()
				task.delay(0.08, function()
					tw({v = Button, t = 0.18, g = {BackgroundColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(238, 242, 250) or Color3.fromRGB(28, 28, 36)}}):Play()
					tw({v = ArrowIcon, t = 0.18, g = {Position = UDim2.new(1, -8, 0.5, 0), ImageColor3 = Color3.fromRGB(42, 110, 230)}}):Play()
				end)
				pcall(Callback)
			end)

			local New = {}
			function New:SetTitle(t) Config:SetTitle(t) end
			function New:SetDesc(t) Config:SetDesc(t) end
			function New:SetVisible(t) Button.Visible = t end
			return New
		end

		function Func:Slider(p)
			local SliderTitle = p.Title or 'null'
			local Desc = p.Desc or ''
			local Image = p.Image or ''
			local Min = p.Min or 0
			local Max = p.Max or 100
			local Value = p.Value or Min
			local Rounding = p.Rounding or 0
			local Callback = p.Callback or function() end

			local parent = currentSection or PageScroll
			local Slider, Config = background(parent, SliderTitle, Desc, Image, 'Slider')
			Config:SetTextTransparencyTitle(0)
			Config:SetSizeT(160)

			local isLight = currentWindowTheme.isLightMode
			local F = Instance.new("Frame")
			local SliderTrack = Instance.new("Frame")
			local TrackCorner = Instance.new("UICorner")
			local SliderFill = Instance.new("Frame")
			local FillCorner = Instance.new("UICorner")
			local Knob = Instance.new("Frame")
			local KnobCorner = Instance.new("UICorner")
			local ValueBox = Instance.new("TextBox")
			local ValueBoxCorner = Instance.new("UICorner")
			local ValueBoxStroke = Instance.new("UIStroke")

			F.Name = "SliderControls"
			F.Parent = Slider
			F.AnchorPoint = Vector2.new(1, 0.5)
			F.BackgroundTransparency = 1
			F.Position = UDim2.new(1, -10, 0.5, 0)
			F.Size = UDim2.new(0, 150, 0.8, 0)

			SliderTrack.Name = "Track"
			SliderTrack.Parent = F
			SliderTrack.AnchorPoint = Vector2.new(0, 0.5)
			SliderTrack.BackgroundColor3 = isLight and Color3.fromRGB(215, 220, 230) or Color3.fromRGB(36, 36, 46)
			SliderTrack.BorderSizePixel = 0
			SliderTrack.Position = UDim2.new(0, 0, 0.5, 0)
			SliderTrack.Size = UDim2.new(0, 105, 0, 5)

			TrackCorner.CornerRadius = UDim.new(1, 0)
			TrackCorner.Parent = SliderTrack

			SliderFill.Name = "Fill"
			SliderFill.Parent = SliderTrack
			SliderFill.BackgroundColor3 = Color3.fromRGB(42, 110, 230)
			SliderFill.BorderSizePixel = 0
			SliderFill.Size = UDim2.new(0, 0, 1, 0)

			FillCorner.CornerRadius = UDim.new(1, 0)
			FillCorner.Parent = SliderFill

			Knob.Name = "Knob"
			Knob.Parent = SliderFill
			Knob.AnchorPoint = Vector2.new(0.5, 0.5)
			Knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Knob.BorderSizePixel = 0
			Knob.Position = UDim2.new(1, 0, 0.5, 0)
			Knob.Size = UDim2.new(0, 12, 0, 12)
			Knob.ZIndex = 4

			KnobCorner.CornerRadius = UDim.new(1, 0)
			KnobCorner.Parent = Knob

			ValueBox.Name = "ValueBox"
			ValueBox.Parent = F
			ValueBox.AnchorPoint = Vector2.new(1, 0.5)
			ValueBox.BackgroundColor3 = isLight and Color3.fromRGB(235, 238, 246) or Color3.fromRGB(17, 17, 22)
			ValueBox.BorderSizePixel = 0
			ValueBox.Position = UDim2.new(1, 0, 0.5, 0)
			ValueBox.Size = UDim2.new(0, 42, 0, 22)
			ValueBox.Font = Enum.Font.GothamBold
			ValueBox.Text = tostring(Value)
			ValueBox.TextColor3 = isLight and Color3.fromRGB(25, 25, 35) or Color3.fromRGB(255, 255, 255)
			ValueBox.TextSize = 11

			ValueBoxCorner.CornerRadius = UDim.new(0, 4)
			ValueBoxCorner.Parent = ValueBox

			ValueBoxStroke.Color = isLight and Color3.fromRGB(205, 210, 222) or Color3.fromRGB(45, 45, 55)
			ValueBoxStroke.Thickness = 1
			ValueBoxStroke.Parent = ValueBox

			table.insert(currentWindowTheme.controls, {
				type = "slider",
				Track = SliderTrack,
				ValueBox = ValueBox,
				Stroke = ValueBoxStroke,
			})

			local function roundVal(v, r)
				local factor = 10 ^ r
				return math.floor(v * factor + 0.5) / factor
			end

			local function updateSlider(v)
				v = math.clamp(v, Min, Max)
				v = roundVal(v, Rounding)
				Value = v
				local progress = (Max > Min) and ((v - Min) / (Max - Min)) or 0
				tw({v = SliderFill, t = 0.08, g = {Size = UDim2.new(math.clamp(progress, 0, 1), 0, 1, 0)}}):Play()
				ValueBox.Text = tostring(v)
				pcall(Callback, v)
			end

			updateSlider(Value)

			ValueBox.FocusLost:Connect(function()
				local n = tonumber(ValueBox.Text) or Min
				updateSlider(n)
			end)

			local dragging = false
			local ClickTrack = click(SliderTrack)

			local function move(input)
				local rel = math.clamp((input.Position.X - SliderTrack.AbsolutePosition.X) / SliderTrack.AbsoluteSize.X, 0, 1)
				local n = rel * (Max - Min) + Min
				updateSlider(n)
			end

			local function startDragging(input)
				dragging = true
				tw({v = Knob, t = 0.15, s = Enum.EasingStyle.Back, d = "Out", g = {Size = UDim2.new(0, 16, 0, 16)}}):Play()
				move(input)
			end

			local function stopDragging()
				if dragging then
					dragging = false
					tw({v = Knob, t = 0.15, s = Enum.EasingStyle.Quad, d = "Out", g = {Size = UDim2.new(0, 12, 0, 12)}}):Play()
				end
			end

			ClickTrack.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					startDragging(input)
				end
			end)

			ClickTrack.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					stopDragging()
				end
			end)

			U.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					stopDragging()
				end
			end)

			U.InputChanged:Connect(function(input)
				if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
					move(input)
				end
			end)

			local New = {}
			function New:SetTitle(t) Config:SetTitle(t) end
			function New:SetDesc(t) Config:SetDesc(t) end
			function New:SetVisible(t) Slider.Visible = t end
			function New:SetValue(t) updateSlider(t) end
			function New:SetMin(t) Min = t if Value < t then updateSlider(t) end end
			function New:SetMax(t) Max = t if Value > t then updateSlider(t) end end
			return New
		end

		function Func:Dropdown(p)
			local DropdownTitle = p.Title or 'null'
			local Desc = p.Desc or ''
			local Image = p.Image or ''
			local List = p.List or {}
			local Value = p.Value or List[1]
			local Multi = p.Multi or false
			local Callback = p.Callback or function() end

			local parent = currentSection or PageScroll
			local Dropdown, Config = background(parent, DropdownTitle, Desc, Image, 'Dropdown')
			Config:SetTextTransparencyTitle(0)
			Config:SetSizeT(140)

			local DropdownSelect = addDropdownSelect(Dropdown, Dropdown, Multi, Callback, Value, List)

			local New = {}
			function New:SetTitle(t) Config:SetTitle(t) end
			function New:SetDesc(t) Config:SetDesc(t) end
			function New:SetVisible(t) Dropdown.Visible = t end
			function New:SetValue(t) DropdownSelect:SetValue(t) end
			function New:Add(t) DropdownSelect:Add(t) end
			function New:Clear(t) DropdownSelect:Clear(t) end
			return New
		end

		function Func:Textbox(p)
			local TextboxTitle = p.Title or 'null'
			local Desc = p.Desc or ''
			local Image = p.Image or ''
			local Value = p.Value or ''
			local Placeholder = p.Placeholder or 'Input text...'
			local ClearText = p.ClearText or p.ClearTextOnFocus or false
			local Callback = p.Callback or function() end

			local parent = currentSection or PageScroll
			local Textbox, Config = background(parent, TextboxTitle, Desc, Image, 'Textbox')
			Config:SetTextTransparencyTitle(0)
			Config:SetSizeT(145)

			local isLight = currentWindowTheme.isLightMode
			local F = Instance.new("Frame")
			local InputBox = Instance.new("TextBox")
			local BoxCorner = Instance.new("UICorner")
			local BoxStroke = Instance.new("UIStroke")

			F.Name = "F"
			F.Parent = Textbox
			F.AnchorPoint = Vector2.new(1, 0.5)
			F.BackgroundTransparency = 1
			F.Position = UDim2.new(1, -10, 0.5, 0)
			F.Size = UDim2.new(0, 140, 0.75, 0)
			F.ClipsDescendants = true

			InputBox.Name = "Input"
			InputBox.Parent = F
			InputBox.BackgroundColor3 = isLight and Color3.fromRGB(235, 238, 246) or Color3.fromRGB(17, 17, 22)
			InputBox.BorderSizePixel = 0
			InputBox.Size = UDim2.new(1, 0, 1, 0)
			InputBox.Font = Enum.Font.GothamMedium
			InputBox.PlaceholderColor3 = isLight and Color3.fromRGB(140, 145, 155) or Color3.fromRGB(120, 120, 130)
			InputBox.PlaceholderText = Placeholder
			InputBox.Text = Value
			InputBox.TextColor3 = isLight and Color3.fromRGB(25, 25, 35) or Color3.fromRGB(240, 240, 245)
			InputBox.TextSize = 11
			InputBox.ClearTextOnFocus = ClearText
			InputBox.ClipsDescendants = true
			InputBox.TextXAlignment = Enum.TextXAlignment.Left

			local BoxPadding = Instance.new("UIPadding")
			BoxPadding.Name = "Padding"
			BoxPadding.Parent = InputBox
			BoxPadding.PaddingLeft = UDim.new(0, 8)
			BoxPadding.PaddingRight = UDim.new(0, 8)
			BoxPadding.PaddingTop = UDim.new(0, 0)
			BoxPadding.PaddingBottom = UDim.new(0, 0)

			BoxCorner.CornerRadius = UDim.new(0, 4)
			BoxCorner.Parent = InputBox

			BoxStroke.Color = isLight and Color3.fromRGB(205, 210, 222) or Color3.fromRGB(45, 45, 55)
			BoxStroke.Thickness = 1
			BoxStroke.Parent = InputBox

			table.insert(currentWindowTheme.controls, {
				type = "textbox",
				Input = InputBox,
				Stroke = BoxStroke,
			})

			local function fire()
				pcall(Callback, InputBox.Text)
			end

			InputBox.Focused:Connect(function()
				local focusStroke = currentWindowTheme.isLightMode and Color3.fromRGB(168, 168, 168) or Color3.fromRGB(168, 168, 168)
				local focusBg = currentWindowTheme.isLightMode and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(24, 24, 32)
				tw({v = BoxStroke, t = 0.15, g = {Color = focusStroke}}):Play()
				tw({v = InputBox, t = 0.15, g = {BackgroundColor3 = focusBg}}):Play()
			end)

			InputBox.FocusLost:Connect(function(...)
				local normalStroke = currentWindowTheme.isLightMode and Color3.fromRGB(205, 210, 222) or Color3.fromRGB(45, 45, 55)
				local normalBg = currentWindowTheme.isLightMode and Color3.fromRGB(235, 238, 246) or Color3.fromRGB(17, 17, 22)
				tw({v = BoxStroke, t = 0.15, g = {Color = normalStroke}}):Play()
				tw({v = InputBox, t = 0.15, g = {BackgroundColor3 = normalBg}}):Play()
				fire()
			end)

			local New = {}
			function New:SetTitle(t) Config:SetTitle(t) end
			function New:SetDesc(t) Config:SetDesc(t) end
			function New:SetVisible(t) Textbox.Visible = t end
			function New:SetValue(t) InputBox.Text = t end
			function New:SetClearTextOnFocus(t) InputBox.ClearTextOnFocus = not t end
			function New:SetPlaceholderText(t) InputBox.PlaceholderText = t end
			return New
		end

		function Func:Keybind(p)
			local KeyTitle = p.Title or 'null'
			local Desc = p.Desc or ''
			local Image = p.Image or ''
			local Key = p.Key or Enum.KeyCode.E
			local Callback = p.Callback or function() end

			local parent = currentSection or PageScroll
			local Keybind, Config = background(parent, KeyTitle, Desc, Image, 'Keybind')
			Config:SetSizeT(100)

			local isLight = currentWindowTheme.isLightMode
			local KeyButton = Instance.new("TextButton")
			local KeyCorner = Instance.new("UICorner")
			local KeyStroke = Instance.new("UIStroke")

			KeyButton.Name = "KeyBtn"
			KeyButton.Parent = Keybind
			KeyButton.AnchorPoint = Vector2.new(1, 0.5)
			KeyButton.BackgroundColor3 = isLight and Color3.fromRGB(235, 238, 246) or Color3.fromRGB(17, 17, 22)
			KeyButton.BorderSizePixel = 0
			KeyButton.Position = UDim2.new(1, -12, 0.5, 0)
			KeyButton.Size = UDim2.new(0, 45, 0, 20)
			KeyButton.Font = Enum.Font.GothamBold
			KeyButton.Text = tostring(Key):gsub("Enum.KeyCode.", "")
			KeyButton.TextColor3 = isLight and Color3.fromRGB(25, 25, 35) or Color3.fromRGB(240, 240, 245)
			KeyButton.TextSize = 10

			KeyCorner.CornerRadius = UDim.new(0, 4)
			KeyCorner.Parent = KeyButton

			KeyStroke.Color = isLight and Color3.fromRGB(205, 210, 222) or Color3.fromRGB(45, 45, 55)
			KeyStroke.Thickness = 1
			KeyStroke.Parent = KeyButton

			table.insert(currentWindowTheme.controls, {
				type = "keybind",
				Button = KeyButton,
				Stroke = KeyStroke,
			})

			local listening = false

			KeyButton.MouseEnter:Connect(function()
				if not listening then
					tw({v = KeyButton, t = 0.15, g = {BackgroundColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(225, 229, 239) or Color3.fromRGB(24, 24, 30)}}):Play()
					tw({v = KeyStroke, t = 0.15, g = {Color = currentWindowTheme.isLightMode and Color3.fromRGB(180, 186, 200) or Color3.fromRGB(65, 65, 80)}}):Play()
				end
			end)
			KeyButton.MouseLeave:Connect(function()
				if not listening then
					tw({v = KeyButton, t = 0.15, g = {BackgroundColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(235, 238, 246) or Color3.fromRGB(17, 17, 22)}}):Play()
					tw({v = KeyStroke, t = 0.15, g = {Color = currentWindowTheme.isLightMode and Color3.fromRGB(205, 210, 222) or Color3.fromRGB(45, 45, 55)}}):Play()
				end
			end)

			KeyButton.MouseButton1Click:Connect(function()
				listening = true
				KeyButton.Text = "..."
				tw({v = KeyStroke, t = 0.15, g = {Color = Color3.fromRGB(42, 110, 230)}}):Play()
				tw({v = KeyButton, t = 0.15, g = {TextColor3 = Color3.fromRGB(42, 110, 230), BackgroundColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(220, 235, 255) or Color3.fromRGB(22, 28, 40)}}):Play()
				local conn
				conn = U.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.Keyboard then
						Key = input.KeyCode
						KeyButton.Text = tostring(Key):gsub("Enum.KeyCode.", "")
						tw({v = KeyStroke, t = 0.15, g = {Color = currentWindowTheme.isLightMode and Color3.fromRGB(205, 210, 222) or Color3.fromRGB(45, 45, 55)}}):Play()
						tw({v = KeyButton, t = 0.15, g = {TextColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(25, 25, 35) or Color3.fromRGB(240, 240, 245), BackgroundColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(235, 238, 246) or Color3.fromRGB(17, 17, 22)}}):Play()
						conn:Disconnect()
						listening = false
						pcall(Callback, Key)
					end
				end)
			end)

			local New = {}
			function New:SetTitle(t) Config:SetTitle(t) end
			function New:SetDesc(t) Config:SetDesc(t) end
			function New:SetVisible(t) Keybind.Visible = t end
			function New:SetKey(t)
				Key = t
				KeyButton.Text = tostring(Key):gsub("Enum.KeyCode.", "")
				pcall(Callback, Key)
			end
			return New
		end

		function Func:ColorPicker(p)
			local CPTitle = p.Title or 'Color'
			local Desc = p.Desc or ''
			local Image = p.Image or ''
			local Value = p.Value or Color3.fromRGB(42, 110, 230)
			local Callback = p.Callback or function() end

			local parent = currentSection or PageScroll
			local ColorPicker, Config = background(parent, CPTitle, Desc, Image, 'Color Picker')
			Config:SetTextTransparencyTitle(0)
			Config:SetSizeT(50)

			local Preview = Instance.new("Frame")
			local PrevCorner = Instance.new("UICorner")
			local PrevStroke = Instance.new("UIStroke")

			Preview.Name = "ColorPreview"
			Preview.Parent = ColorPicker
			Preview.AnchorPoint = Vector2.new(1, 0.5)
			Preview.BackgroundColor3 = Value
			Preview.BorderSizePixel = 0
			Preview.Position = UDim2.new(1, -12, 0.5, 0)
			Preview.Size = UDim2.new(0, 24, 0, 20)

			PrevCorner.CornerRadius = UDim.new(0, 4)
			PrevCorner.Parent = Preview

			PrevStroke.Color = Color3.fromRGB(50, 50, 60)
			PrevStroke.Thickness = 1
			PrevStroke.Parent = Preview

			local ColorpickBar = Instance.new("Frame")
			local CPBarCorner = Instance.new("UICorner")
			local CPBarStroke = Instance.new("UIStroke")
			local Color_1 = Instance.new("ImageLabel")
			local ColorSelection_1 = Instance.new("ImageLabel")
			local Hue_1 = Instance.new("ImageLabel")
			local HueSelection_1 = Instance.new("ImageLabel")
			local ColorInputsFrame = Instance.new("Frame")
			local HexBox = Instance.new("TextBox")
			local HexCorner = Instance.new("UICorner")
			local HexStroke = Instance.new("UIStroke")

			ColorpickBar.Name = "ColorpickBar"
			ColorpickBar.Parent = ScreenGui
			ColorpickBar.BackgroundColor3 = Color3.fromRGB(17, 17, 22)
			ColorpickBar.BorderSizePixel = 0
			ColorpickBar.Size = UDim2.new(0, 185, 0, 130)
			ColorpickBar.ClipsDescendants = false
			ColorpickBar.Visible = false
			ColorpickBar.ZIndex = 90

			CPBarCorner.CornerRadius = UDim.new(0, 6)
			CPBarCorner.Parent = ColorpickBar

			CPBarStroke.Color = Color3.fromRGB(42, 110, 230)
			CPBarStroke.Thickness = 1
			CPBarStroke.Parent = ColorpickBar

			Color_1.Name = "Color"
			Color_1.Parent = ColorpickBar
			Color_1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			Color_1.BorderSizePixel = 0
			Color_1.Position = UDim2.new(0, 8, 0, 8)
			Color_1.Size = UDim2.new(0, 115, 0, 86)
			Color_1.Image = "rbxassetid://4155801252"
			Color_1.ZIndex = 91

			local ColorCorner = Instance.new("UICorner")
			ColorCorner.CornerRadius = UDim.new(0, 4)
			ColorCorner.Parent = Color_1

			ColorSelection_1.Name = "ColorSelection"
			ColorSelection_1.Parent = Color_1
			ColorSelection_1.AnchorPoint = Vector2.new(0.5, 0.5)
			ColorSelection_1.BackgroundTransparency = 1
			ColorSelection_1.Size = UDim2.new(0, 10, 0, 10)
			ColorSelection_1.Image = "rbxassetid://4805639000"
			ColorSelection_1.ZIndex = 92

			Hue_1.Name = "Hue"
			Hue_1.Parent = ColorpickBar
			Hue_1.BorderSizePixel = 0
			Hue_1.Position = UDim2.new(0, 130, 0, 8)
			Hue_1.Size = UDim2.new(0, 16, 0, 86)
			Hue_1.ZIndex = 91

			local HueCorner = Instance.new("UICorner")
			HueCorner.CornerRadius = UDim.new(0, 4)
			HueCorner.Parent = Hue_1

			local HueGrad = Instance.new("UIGradient")
			HueGrad.Color = ColorSequence.new{
				ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
				ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 255, 0)),
				ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 0)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255)),
				ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 0, 255)),
				ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 0, 255)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
			}
			HueGrad.Rotation = 90
			HueGrad.Parent = Hue_1

			HueSelection_1.Name = "HueSelection"
			HueSelection_1.Parent = Hue_1
			HueSelection_1.AnchorPoint = Vector2.new(0.5, 0.5)
			HueSelection_1.BackgroundTransparency = 1
			HueSelection_1.Position = UDim2.new(0.5, 0, 0, 0)
			HueSelection_1.Size = UDim2.new(1, 4, 0, 4)
			HueSelection_1.Image = "rbxassetid://4805639000"
			HueSelection_1.ZIndex = 92

			ColorInputsFrame.Name = "Inputs"
			ColorInputsFrame.Parent = ColorpickBar
			ColorInputsFrame.BackgroundTransparency = 1
			ColorInputsFrame.Position = UDim2.new(0, 8, 0, 98)
			ColorInputsFrame.Size = UDim2.new(1, -16, 0, 24)
			ColorInputsFrame.ZIndex = 91

			HexBox.Name = "HexBox"
			HexBox.Parent = ColorInputsFrame
			HexBox.BackgroundColor3 = Color3.fromRGB(24, 24, 30)
			HexBox.BorderSizePixel = 0
			HexBox.Size = UDim2.new(1, 0, 1, 0)
			HexBox.Font = Enum.Font.RobotoMono
			HexBox.Text = "#" .. Value:ToHex()
			HexBox.TextColor3 = Color3.fromRGB(240, 240, 245)
			HexBox.TextSize = 11
			HexBox.ZIndex = 92

			HexCorner.CornerRadius = UDim.new(0, 4)
			HexCorner.Parent = HexBox

			HexStroke.Color = Color3.fromRGB(45, 45, 55)
			HexStroke.Thickness = 1
			HexStroke.Parent = HexBox

			local ColorH, ColorS, ColorV = Color3.toHSV(Value)
			Color_1.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)
			ColorSelection_1.Position = UDim2.new(ColorS, 0, 1 - ColorV, 0)
			HueSelection_1.Position = UDim2.new(0.5, 0, ColorH, 0)

			local isOpen = false
			local draggingColor = false
			local draggingHue = false

			local function updateColor(skipHex)
				local c = Color3.fromHSV(ColorH, ColorS, ColorV)
				Preview.BackgroundColor3 = c
				Color_1.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)
				if not skipHex then
					HexBox.Text = "#" .. c:ToHex():upper()
				end
				pcall(Callback, math.floor(c.R * 255), math.floor(c.G * 255), math.floor(c.B * 255))
			end

			local ClickCP = click(ColorPicker)
			ClickCP.MouseButton1Click:Connect(function()
				isOpen = not isOpen
				if isOpen then
					local targetX = Preview.AbsolutePosition.X - ColorpickBar.Parent.AbsolutePosition.X - 160
					local targetY = Preview.AbsolutePosition.Y - ColorpickBar.Parent.AbsolutePosition.Y + 26
					ColorpickBar.Position = UDim2.new(0, math.max(10, targetX), 0, math.max(10, targetY))
					ColorpickBar.Visible = true
				else
					ColorpickBar.Visible = false
				end
			end)

			local function handleColor(input)
				local relX = math.clamp((input.Position.X - Color_1.AbsolutePosition.X) / Color_1.AbsoluteSize.X, 0, 1)
				local relY = math.clamp((input.Position.Y - Color_1.AbsolutePosition.Y) / Color_1.AbsoluteSize.Y, 0, 1)
				ColorSelection_1.Position = UDim2.new(relX, 0, relY, 0)
				ColorS = relX
				ColorV = 1 - relY
				updateColor()
			end

			local function handleHue(input)
				local relY = math.clamp((input.Position.Y - Hue_1.AbsolutePosition.Y) / Hue_1.AbsoluteSize.Y, 0, 1)
				HueSelection_1.Position = UDim2.new(0.5, 0, relY, 0)
				ColorH = relY
				updateColor()
			end

			Color_1.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					draggingColor = true
					handleColor(input)
				end
			end)

			Hue_1.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					draggingHue = true
					handleHue(input)
				end
			end)

			U.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					draggingColor = false
					draggingHue = false
				end
			end)

			U.InputChanged:Connect(function(input)
				if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
					if draggingColor then
						handleColor(input)
					elseif draggingHue then
						handleHue(input)
					end
				end
			end)

			U.InputBegan:Connect(function(input)
				if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and isOpen then
					local bPos = ColorpickBar.AbsolutePosition
					local bSize = ColorpickBar.AbsoluteSize
					local mX, mY = input.Position.X, input.Position.Y
					if mX < bPos.X or mX > bPos.X + bSize.X or mY < bPos.Y - 24 or mY > bPos.Y + bSize.Y then
						ColorpickBar.Visible = false
						isOpen = false
					end
				end
			end)

			HexBox.FocusLost:Connect(function()
				local hex = HexBox.Text:gsub("#", "")
				if #hex == 6 then
					local r = tonumber(hex:sub(1, 2), 16)
					local g = tonumber(hex:sub(3, 4), 16)
					local b = tonumber(hex:sub(5, 6), 16)
					if r and g and b then
						local nc = Color3.fromRGB(r, g, b)
						ColorH, ColorS, ColorV = Color3.toHSV(nc)
						ColorSelection_1.Position = UDim2.new(ColorS, 0, 1 - ColorV, 0)
						HueSelection_1.Position = UDim2.new(0.5, 0, ColorH, 0)
						updateColor(true)
					end
				end
			end)

			local New = {}
			function New:SetTitle(t) Config:SetTitle(t) end
			function New:SetDesc(t) Config:SetDesc(t) end
			function New:SetVisible(t) ColorPicker.Visible = t end
			function New:SetValue(c)
				if type(c) == "table" then
					Value = Color3.fromRGB(c.R or 255, c.G or 255, c.B or 255)
				elseif typeof(c) == "Color3" then
					Value = c
				end
				ColorH, ColorS, ColorV = Color3.toHSV(Value)
				ColorSelection_1.Position = UDim2.new(ColorS, 0, 1 - ColorV, 0)
				HueSelection_1.Position = UDim2.new(0.5, 0, ColorH, 0)
				updateColor()
			end
			return New
		end

		function Func:CreateLogger(p)
			local TitleText = p.Title or "SYSTEM LOGS"
			local BoxSize = p.Size or UDim2.new(1, 0, 0, 180)

			local RealBackground = Instance.new("Frame")
			local Background = Instance.new("Frame")
			local LogCorner = Instance.new("UICorner")
			local LogStroke = Instance.new("UIStroke")
			local TopBar = Instance.new("Frame")
			local TitleLabel = Instance.new("TextLabel")
			local ActionButtons = Instance.new("Frame")
			local UIListLayout_Actions = Instance.new("UIListLayout")
			local ClearBtn = Instance.new("TextButton")
			local CopyBtn = Instance.new("TextButton")
			local LogContainer = Instance.new("ScrollingFrame")
			local UIListLayout_Logs = Instance.new("UIListLayout")
			local UIPadding_Logs = Instance.new("UIPadding")

			RealBackground.Name = "LoggerBox"
			RealBackground.Parent = currentSection or PageScroll
			RealBackground.BackgroundTransparency = 1
			RealBackground.Size = BoxSize

			local isLight = currentWindowTheme.isLightMode
			Background.Name = "Background"
			Background.Parent = RealBackground
			Background.BackgroundColor3 = isLight and Color3.fromRGB(242, 245, 250) or Color3.fromRGB(17, 17, 22)
			Background.Size = UDim2.new(1, 0, 1, 0)
			Background.ClipsDescendants = true

			LogCorner.CornerRadius = UDim.new(0, 6)
			LogCorner.Parent = Background

			LogStroke.Color = isLight and Color3.fromRGB(215, 220, 232) or Color3.fromRGB(36, 36, 46)
			LogStroke.Thickness = 1
			LogStroke.Parent = Background

			TopBar.Name = "TopBar"
			TopBar.Parent = Background
			TopBar.BackgroundColor3 = isLight and Color3.fromRGB(230, 234, 244) or Color3.fromRGB(22, 22, 28)
			TopBar.Size = UDim2.new(1, 0, 0, 26)

			TitleLabel.Parent = TopBar
			TitleLabel.BackgroundTransparency = 1
			TitleLabel.Position = UDim2.new(0, 8, 0, 0)
			TitleLabel.Size = UDim2.new(0.5, 0, 1, 0)
			TitleLabel.Font = Enum.Font.GothamBold
			TitleLabel.Text = TitleText:upper()
			TitleLabel.TextColor3 = isLight and Color3.fromRGB(30, 35, 50) or Color3.fromRGB(240, 240, 245)
			TitleLabel.TextSize = 10
			TitleLabel.TextXAlignment = Enum.TextXAlignment.Left

			table.insert(currentWindowTheme.controls, {
				type = "logger",
				Background = Background,
				TopBar = TopBar,
				Stroke = LogStroke,
				Title = TitleLabel,
			})

			ActionButtons.Parent = TopBar
			ActionButtons.BackgroundTransparency = 1
			ActionButtons.Size = UDim2.new(0.5, -8, 1, 0)
			ActionButtons.Position = UDim2.new(0.5, 0, 0, 0)

			UIListLayout_Actions.Parent = ActionButtons
			UIListLayout_Actions.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout_Actions.HorizontalAlignment = Enum.HorizontalAlignment.Right
			UIListLayout_Actions.VerticalAlignment = Enum.VerticalAlignment.Center
			UIListLayout_Actions.Padding = UDim.new(0, 8)

			local function makeActionBtn(btn, text)
				btn.Parent = ActionButtons
				btn.BackgroundTransparency = 1
				btn.Size = UDim2.new(0, 36, 1, 0)
				btn.Font = Enum.Font.GothamBold
				btn.Text = text
				btn.TextColor3 = Color3.fromRGB(150, 150, 160)
				btn.TextSize = 9
				return btn
			end

			makeActionBtn(ClearBtn, "CLEAR")
			makeActionBtn(CopyBtn, "COPY")

			LogContainer.Name = "LogContainer"
			LogContainer.Parent = Background
			LogContainer.BackgroundTransparency = 1
			LogContainer.Position = UDim2.new(0, 0, 0, 26)
			LogContainer.Size = UDim2.new(1, 0, 1, -26)
			LogContainer.ScrollBarThickness = 2
			LogContainer.ScrollBarImageColor3 = Color3.fromRGB(42, 110, 230)
			LogContainer.AutomaticCanvasSize = Enum.AutomaticSize.Y

			UIListLayout_Logs.Parent = LogContainer
			UIListLayout_Logs.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_Logs.Padding = UDim.new(0, 2)

			UIPadding_Logs.Parent = LogContainer
			UIPadding_Logs.PaddingLeft = UDim.new(0, 8)
			UIPadding_Logs.PaddingTop = UDim.new(0, 4)

			local Logger = {}
			function Logger:Log(message, color)
				local LogLabel = Instance.new("TextLabel")
				LogLabel.Parent = LogContainer
				LogLabel.BackgroundTransparency = 1
				LogLabel.Size = UDim2.new(1, -10, 0, 15)
				LogLabel.Font = Enum.Font.RobotoMono
				LogLabel.Text = string.format("[%s] %s", os.date("%X"), tostring(message))
				LogLabel.TextColor3 = color or Color3.fromRGB(210, 210, 220)
				LogLabel.TextSize = 11
				LogLabel.TextXAlignment = Enum.TextXAlignment.Left
				LogLabel.RichText = true
				LogContainer.CanvasPosition = Vector2.new(0, LogContainer.AbsoluteCanvasSize.Y)
			end

			function Logger:Clear()
				for _, item in pairs(LogContainer:GetChildren()) do
					if item:IsA("TextLabel") then item:Destroy() end
				end
			end

			ClearBtn.MouseButton1Click:Connect(function()
				Logger:Clear()
			end)

			CopyBtn.MouseButton1Click:Connect(function()
				local fullLog = ""
				for _, item in pairs(LogContainer:GetChildren()) do
					if item:IsA("TextLabel") then
						fullLog = fullLog .. item.Text .. "\n"
					end
				end
				if setclipboard then setclipboard(fullLog) end
				CopyBtn.Text = "DONE"
				task.wait(1)
				CopyBtn.Text = "COPY"
			end)

			return Logger
		end

		function Func:Code(p)
			local Title = p.Title or 'null'
			local CodeText = p.Code or '-- print("Hello World")'

			local parent = currentSection or PageScroll
			local RealBackground = Instance.new("Frame")
			local Code = Instance.new("Frame")
			local UICorner_1 = Instance.new("UICorner")
			local Stroke = Instance.new("UIStroke")
			local Top_1 = Instance.new("Frame")
			local Title_L = Instance.new("TextLabel")
			local CopyBtn = Instance.new("TextButton")
			local CodeScroll = Instance.new("ScrollingFrame")
			local CodeLabel = Instance.new("TextLabel")

			RealBackground.Name = "CodeBox"
			RealBackground.Parent = parent
			RealBackground.BackgroundTransparency = 1
			RealBackground.Size = UDim2.new(1, 0, 0, 110)

			local isLight = currentWindowTheme.isLightMode
			Code.Parent = RealBackground
			Code.BackgroundColor3 = isLight and Color3.fromRGB(242, 245, 250) or Color3.fromRGB(17, 17, 22)
			Code.Size = UDim2.new(1, 0, 1, 0)
			Code.ClipsDescendants = true

			UICorner_1.CornerRadius = UDim.new(0, 6)
			UICorner_1.Parent = Code

			Stroke.Color = isLight and Color3.fromRGB(215, 220, 232) or Color3.fromRGB(36, 36, 46)
			Stroke.Thickness = 1
			Stroke.Parent = Code

			Top_1.Parent = Code
			Top_1.BackgroundColor3 = isLight and Color3.fromRGB(230, 234, 244) or Color3.fromRGB(22, 22, 28)
			Top_1.Size = UDim2.new(1, 0, 0, 24)

			Title_L.Parent = Top_1
			Title_L.BackgroundTransparency = 1
			Title_L.Position = UDim2.new(0, 8, 0, 0)
			Title_L.Size = UDim2.new(0.5, 0, 1, 0)
			Title_L.Font = Enum.Font.GothamBold
			Title_L.Text = tostring(Title)
			Title_L.TextColor3 = isLight and Color3.fromRGB(30, 35, 50) or Color3.fromRGB(240, 240, 245)
			Title_L.TextSize = 10
			Title_L.TextXAlignment = Enum.TextXAlignment.Left

			table.insert(currentWindowTheme.controls, {
				type = "logger",
				Background = Code,
				TopBar = Top_1,
				Stroke = Stroke,
				Title = Title_L,
			})

			CopyBtn.Parent = Top_1
			CopyBtn.AnchorPoint = Vector2.new(1, 0.5)
			CopyBtn.BackgroundTransparency = 1
			CopyBtn.Position = UDim2.new(1, -8, 0.5, 0)
			CopyBtn.Size = UDim2.new(0, 40, 1, 0)
			CopyBtn.Font = Enum.Font.GothamBold
			CopyBtn.Text = "COPY"
			CopyBtn.TextColor3 = Color3.fromRGB(42, 110, 230)
			CopyBtn.TextSize = 9

			CodeScroll.Parent = Code
			CodeScroll.BackgroundTransparency = 1
			CodeScroll.Position = UDim2.new(0, 8, 0, 28)
			CodeScroll.Size = UDim2.new(1, -16, 1, -32)
			CodeScroll.ScrollBarThickness = 2
			CodeScroll.ScrollBarImageColor3 = Color3.fromRGB(42, 110, 230)

			CodeLabel.Parent = CodeScroll
			CodeLabel.BackgroundTransparency = 1
			CodeLabel.Font = Enum.Font.RobotoMono
			CodeLabel.Text = CodeText
			CodeLabel.TextColor3 = Color3.fromRGB(200, 200, 210)
			CodeLabel.TextSize = 11
			CodeLabel.TextXAlignment = Enum.TextXAlignment.Left
			CodeLabel.TextYAlignment = Enum.TextYAlignment.Top
			CodeLabel.AutomaticSize = Enum.AutomaticSize.XY

			CopyBtn.MouseButton1Click:Connect(function()
				if setclipboard then setclipboard(CodeText) end
				CopyBtn.Text = "COPIED"
				task.wait(1)
				CopyBtn.Text = "COPY"
			end)

			local New = {}
			function New:SetTitle(t) Title_L.Text = tostring(t) end
			function New:SetCode(t)
				CodeText = t
				CodeLabel.Text = t
			end
			return New
		end

		function Func:Image()
			local ImageLogo = Instance.new("ImageLabel")
			local UICorner_1 = Instance.new("UICorner")
			local parent = currentSection or PageScroll
			ImageLogo.Name = "Im"
			ImageLogo.Parent = parent
			ImageLogo.BackgroundTransparency = 1
			ImageLogo.Size = UDim2.new(1, 0, 0, 140)
			ImageLogo.Image = 'rbxassetid://111362591084511'
			ImageLogo.ScaleType = Enum.ScaleType.Crop
			UICorner_1.CornerRadius = UDim.new(0, 6)
			UICorner_1.Parent = ImageLogo
		end

		return Func
	end

	local Notification = Instance.new("Frame")
	local UIPaddingNotif = Instance.new("UIPadding")
	local UIListLayoutNotif = Instance.new("UIListLayout")

	Notification.Name = "Notification"
	Notification.Parent = ScreenGui
	Notification.AnchorPoint = Vector2.new(1, 1)
	Notification.BackgroundTransparency = 1
	Notification.BorderSizePixel = 0
	Notification.Position = UDim2.new(1, -10, 1, -10)
	Notification.Size = UDim2.new(0, 220, 0, 200)

	UIPaddingNotif.Parent = Notification
	UIPaddingNotif.PaddingBottom = UDim.new(0, 10)

	UIListLayoutNotif.Parent = Notification
	UIListLayoutNotif.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayoutNotif.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayoutNotif.VerticalAlignment = Enum.VerticalAlignment.Bottom
	UIListLayoutNotif.Padding = UDim.new(0, 6)

	function Tabs:Notify(p)
		local Title = p.Title or 'Notification'
		local Desc = p.Desc or ''
		local Time = p.Time or 4
		local Type = p.Type or 'normal'

		local colorMap = {
			error = Color3.fromRGB(255, 60, 60),
			warning = Color3.fromRGB(255, 200, 50),
			normal = Color3.fromRGB(42, 110, 230)
		}
		local accent = colorMap[Type] or colorMap.normal

		local NotifCard = Instance.new("Frame")
		local CardCorner = Instance.new("UICorner")
		local CardStroke = Instance.new("UIStroke")
		local Indicator = Instance.new("Frame")
		local IndicatorCorner = Instance.new("UICorner")
		local TitleLabel = Instance.new("TextLabel")
		local DescLabel = Instance.new("TextLabel")

		local isLight = currentWindowTheme.isLightMode
		NotifCard.Name = "NotifCard"
		NotifCard.Parent = Notification
		NotifCard.BackgroundColor3 = isLight and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(17, 17, 22)
		NotifCard.BorderSizePixel = 0
		NotifCard.Size = UDim2.new(1, 0, 0, (Desc ~= '' and 52 or 36))
		NotifCard.ClipsDescendants = true
		NotifCard.BackgroundTransparency = 1

		CardCorner.CornerRadius = UDim.new(0, 6)
		CardCorner.Parent = NotifCard

		CardStroke.Color = isLight and Color3.fromRGB(220, 224, 234) or Color3.fromRGB(48, 48, 60)
		CardStroke.Thickness = 1.2
		CardStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		CardStroke.Parent = NotifCard

		Indicator.Name = "Indicator"
		Indicator.Parent = NotifCard
		Indicator.BackgroundColor3 = accent
		Indicator.BorderSizePixel = 0
		Indicator.Position = UDim2.new(0, 0, 0, 0)
		Indicator.Size = UDim2.new(0, 3, 1, 0)

		IndicatorCorner.CornerRadius = UDim.new(0, 2)
		IndicatorCorner.Parent = Indicator

		TitleLabel.Parent = NotifCard
		TitleLabel.BackgroundTransparency = 1
		TitleLabel.Position = UDim2.new(0, 12, 0, 8)
		TitleLabel.Size = UDim2.new(1, -20, 0, 15)
		TitleLabel.Font = Enum.Font.GothamBold
		TitleLabel.Text = tostring(Title)
		TitleLabel.TextColor3 = isLight and Color3.fromRGB(20, 24, 33) or Color3.fromRGB(255, 255, 255)
		TitleLabel.TextSize = 12
		TitleLabel.TextXAlignment = Enum.TextXAlignment.Left

		if Desc ~= '' then
			DescLabel.Parent = NotifCard
			DescLabel.BackgroundTransparency = 1
			DescLabel.Position = UDim2.new(0, 12, 0, 25)
			DescLabel.Size = UDim2.new(1, -20, 0, 20)
			DescLabel.Font = Enum.Font.GothamMedium
			DescLabel.Text = tostring(Desc)
			DescLabel.TextColor3 = isLight and Color3.fromRGB(115, 120, 135) or Color3.fromRGB(160, 160, 175)
			DescLabel.TextSize = 10
			DescLabel.TextXAlignment = Enum.TextXAlignment.Left
			DescLabel.TextWrapped = true
		end

		local ProgressBar = Instance.new("Frame")
		ProgressBar.Name = "ProgressBar"
		ProgressBar.Parent = NotifCard
		ProgressBar.BackgroundColor3 = accent
		ProgressBar.BorderSizePixel = 0
		ProgressBar.Position = UDim2.new(0, 0, 1, -2)
		ProgressBar.Size = UDim2.new(1, 0, 0, 2)
		tw({v = ProgressBar, t = Time, s = Enum.EasingStyle.Linear, d = "Out", g = {Size = UDim2.new(0, 0, 0, 2)}}):Play()

		NotifCard.Position = UDim2.new(1, 30, 0, 0)
		tw({v = NotifCard, t = 0.25, s = Enum.EasingStyle.Cubic, d = "Out", g = {BackgroundTransparency = 0, Position = UDim2.new(0, 0, 0, 0)}}):Play()

		task.delay(Time, function()
			local close = tw({v = NotifCard, t = 0.25, s = Enum.EasingStyle.Quad, d = "In", g = {BackgroundTransparency = 1, Position = UDim2.new(1, 30, 0, 0)}})
			close:Play()
			close.Completed:Connect(function()
				NotifCard:Destroy()
			end)
		end)
	end

	function Tabs:Dialog(p)
		local Button1 = (p.Button1 and p.Button1.Callback) or function() end
		local Button2 = (p.Button2 and p.Button2.Callback) or function() end
		local DialogTitle = p.Title or 'Notice'
		local TitleButton1 = (p.Button1 and p.Button1.Title) or 'Confirm'
		local TitleButton2 = (p.Button2 and p.Button2.Title) or 'Cancel'

		local Dialog = Instance.new("Frame")
		local DialogCorner = Instance.new("UICorner")
		local DialogCard = Instance.new("Frame")
		local CardCorner = Instance.new("UICorner")
		local CardStroke = Instance.new("UIStroke")
		local TitleLabel = Instance.new("TextLabel")
		local BtnFrame = Instance.new("Frame")
		local BtnLayout = Instance.new("UIListLayout")
		local B1 = Instance.new("TextButton")
		local B1Corner = Instance.new("UICorner")
		local B2 = Instance.new("TextButton")
		local B2Corner = Instance.new("UICorner")

		local isLight = currentWindowTheme.isLightMode
		Dialog.Name = "Dialog"
		Dialog.Parent = Background_1
		Dialog.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Dialog.BackgroundTransparency = 0.5
		Dialog.BorderSizePixel = 0
		Dialog.Size = UDim2.new(1, 0, 1, 0)
		Dialog.ZIndex = 80

		DialogCorner.CornerRadius = UDim.new(0, 8)
		DialogCorner.Parent = Dialog

		DialogCard.Name = "Card"
		DialogCard.Parent = Dialog
		DialogCard.AnchorPoint = Vector2.new(0.5, 0.5)
		DialogCard.BackgroundColor3 = isLight and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(18, 18, 24)
		DialogCard.BorderSizePixel = 0
		DialogCard.Position = UDim2.new(0.5, 0, 0.5, 0)
		DialogCard.Size = UDim2.new(0, 260, 0, 110)

		CardCorner.CornerRadius = UDim.new(0, 6)
		CardCorner.Parent = DialogCard

		CardStroke.Color = isLight and Color3.fromRGB(220, 224, 234) or Color3.fromRGB(36, 36, 46)
		CardStroke.Thickness = 1
		CardStroke.Parent = DialogCard

		TitleLabel.Parent = DialogCard
		TitleLabel.BackgroundTransparency = 1
		TitleLabel.Position = UDim2.new(0, 16, 0, 14)
		TitleLabel.Size = UDim2.new(1, -32, 0, 36)
		TitleLabel.Font = Enum.Font.GothamBold
		TitleLabel.RichText = true
		TitleLabel.Text = DialogTitle
		TitleLabel.TextColor3 = isLight and Color3.fromRGB(20, 24, 33) or Color3.fromRGB(240, 240, 245)
		TitleLabel.TextSize = 13
		TitleLabel.TextWrapped = true

		BtnFrame.Parent = DialogCard
		BtnFrame.AnchorPoint = Vector2.new(0.5, 1)
		BtnFrame.BackgroundTransparency = 1
		BtnFrame.Position = UDim2.new(0.5, 0, 1, -12)
		BtnFrame.Size = UDim2.new(1, -32, 0, 30)

		BtnLayout.Parent = BtnFrame
		BtnLayout.FillDirection = Enum.FillDirection.Horizontal
		BtnLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		BtnLayout.Padding = UDim.new(0, 12)

		B1.Parent = BtnFrame
		B1.BackgroundColor3 = Color3.fromRGB(42, 110, 230)
		B1.BorderSizePixel = 0
		B1.Size = UDim2.new(0.48, 0, 1, 0)
		B1.Font = Enum.Font.GothamBold
		B1.Text = TitleButton1
		B1.TextColor3 = Color3.fromRGB(255, 255, 255)
		B1.TextSize = 11

		B1Corner.CornerRadius = UDim.new(0, 4)
		B1Corner.Parent = B1

		B2.Parent = BtnFrame
		B2.BackgroundColor3 = Color3.fromRGB(36, 36, 46)
		B2.BorderSizePixel = 0
		B2.Size = UDim2.new(0.48, 0, 1, 0)
		B2.Font = Enum.Font.GothamBold
		B2.Text = TitleButton2
		B2.TextColor3 = Color3.fromRGB(200, 200, 210)
		B2.TextSize = 11

		B2Corner.CornerRadius = UDim.new(0, 4)
		B2Corner.Parent = B2

		B1.MouseButton1Click:Connect(function()
			pcall(Button1)
			Dialog:Destroy()
		end)

		B2.MouseButton1Click:Connect(function()
			pcall(Button2)
			Dialog:Destroy()
		end)
	end

	DiscordBtn.MouseButton1Click:Connect(function()
		local dlink = DiscordLink or "https://discord.gg/vector"
		if setclipboard then setclipboard(dlink) end
		Tabs:Notify({
			Title = "Discord Link",
			Desc = "Discord invite link copied to your clipboard!",
			Time = 3,
			Type = "normal"
		})
	end)

	do
		local ResizeHandle = Instance.new("ImageButton")
		ResizeHandle.Name = "ResizeHandle"
		ResizeHandle.Parent = Background_1
		ResizeHandle.AnchorPoint = Vector2.new(1, 1)
		ResizeHandle.Position = UDim2.new(1, -2, 1, -2)
		ResizeHandle.Size = UDim2.new(0, 16, 0, 16)
		ResizeHandle.BackgroundTransparency = 1
		ResizeHandle.Image = "rbxassetid://13857987062"
		ResizeHandle.ImageColor3 = Color3.fromRGB(120, 120, 135)
		ResizeHandle.ImageTransparency = 0.3
		ResizeHandle.Rotation = 90
		ResizeHandle.ZIndex = 50

		local isResizing = false
		local startPos = Vector2.new(0, 0)
		local startSize = Vector2.new(0, 0)

		ResizeHandle.MouseEnter:Connect(function()
			tw({v = ResizeHandle, t = 0.15, g = {ImageColor3 = Color3.fromRGB(42, 110, 230), ImageTransparency = 0}}):Play()
		end)

		ResizeHandle.MouseLeave:Connect(function()
			if not isResizing then
				tw({v = ResizeHandle, t = 0.15, g = {ImageColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(150, 155, 170) or Color3.fromRGB(120, 120, 135), ImageTransparency = 0.3}}):Play()
			end
		end)

		ResizeHandle.MouseButton1Down:Connect(function()
			isResizing = true
			local mouse = game.Players.LocalPlayer:GetMouse()
			startPos = Vector2.new(mouse.X, mouse.Y)
			startSize = Vector2.new(Shadow_1.AbsoluteSize.X, Shadow_1.AbsoluteSize.Y)
			tw({v = ResizeHandle, t = 0.1, g = {ImageColor3 = Color3.fromRGB(42, 110, 230), ImageTransparency = 0}}):Play()
		end)

		U.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				if isResizing then
					isResizing = false
					tw({v = ResizeHandle, t = 0.2, g = {ImageColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(150, 155, 170) or Color3.fromRGB(120, 120, 135), ImageTransparency = 0.3}}):Play()
				end
			end
		end)

		U.InputChanged:Connect(function(input)
			if isResizing and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
				local mouse = game.Players.LocalPlayer:GetMouse()
				local deltaX = mouse.X - startPos.X
				local deltaY = mouse.Y - startPos.Y
				local newWidth = math.clamp(startSize.X + deltaX, 420, 1000)
				local newHeight = math.clamp(startSize.Y + deltaY, 260, 800)
				Shadow_1.Size = UDim2.new(0, newWidth, 0, newHeight)
			end
		end)

		Close_1.MouseButton1Click:Connect(function()
			Tabs:Dialog({
				Title = "Close interface?",
				Button1 = {
					Title = 'Close',
					Callback = function()
						ScreenGui:Destroy()
					end,
				},
				Button2 = {
					Title = 'Cancel',
				}
			})
		end)

		local isHidden = false
		local function setUIVisibility(visible)
			isHidden = not visible
			if isHidden then
				tw({v = Background_1, t = 0.15, g = {GroupTransparency = 1}}):Play()
				task.delay(0.15, function()
					if isHidden then
						Shadow_1.Visible = false
					end
				end)
				ReopenBtn.Visible = true
				tw({v = ReopenBtn, t = 0.25, s = Enum.EasingStyle.Back, d = "Out", g = {Position = UDim2.new(0.5, 0, 0, 12), GroupTransparency = 0}}):Play()
			else
				tw({v = ReopenBtn, t = 0.15, s = Enum.EasingStyle.Quad, d = "In", g = {Position = UDim2.new(0.5, 0, 0, -45), GroupTransparency = 1}}):Play()
				task.delay(0.15, function()
					if not isHidden then
						ReopenBtn.Visible = false
					end
				end)
				Shadow_1.Visible = true
				tw({v = Background_1, t = 0.15, g = {GroupTransparency = 0}}):Play()
			end
		end

		local function toggleUI()
			setUIVisibility(isHidden)
		end

		Minisize_1.MouseButton1Click:Connect(function()
			setUIVisibility(false)
		end)

		ReopenClick.MouseButton1Click:Connect(function()
			setUIVisibility(true)
		end)

		if keybindConnection then keybindConnection:Disconnect() end
		keybindConnection = U.InputBegan:Connect(function(input)
			if (input.KeyCode == Enum.KeyCode.LeftControl or (Tabs and Tabs.UIToggleKeybind and input.KeyCode == Tabs.UIToggleKeybind)) then
				if not U:GetFocusedTextBox() then
					toggleUI()
				end
			end
		end)

		function Tabs:SetUIToggleKeybind(newKey)
			Tabs.UIToggleKeybind = newKey
			if ReopenKeybind and newKey and newKey.Name then
				local keyName = newKey.Name
				if keyName == "LeftControl" then keyName = "LeftCtrl" end
				if keyName == "RightControl" then keyName = "RightCtrl" end
				ReopenKeybind.Text = "[" .. keyName .. "]"
			end
		end
		function Tabs:GetUIToggleKeybind()
			return Tabs.UIToggleKeybind
		end
		function Tabs:Toggle()
			toggleUI()
		end
		function Tabs:SetVisible(vis)
			setUIVisibility(vis)
		end
	end

	local DashTab = Tabs:Tab({
		Title = "START",
		Subtitle = "Overview & System",
		Icon = "house"
	})

	local OverviewSec = DashTab:Section({ Title = "Session Information" })

	local playerName = (game.Players.LocalPlayer and game.Players.LocalPlayer.Name) or "Player"
	local playerUserId = (game.Players.LocalPlayer and game.Players.LocalPlayer.UserId) or 0
	local keyType = (type(getgenv().IsPremium) ~= 'nil' and getgenv().IsPremium) and "Premium Key" or "Free Key"

	OverviewSec:Label({
		Title = "User: " .. playerName .. " (ID: " .. tostring(playerUserId) .. ")",
		Desc = "Account authorization active",
		Image = "user"
	})

	local KeyStatusLabel = OverviewSec:Label({
		Title = "License Tier: " .. keyType,
		Desc = "Key Status: Active",
		Image = "key"
	})

	local RuntimeLabel = OverviewSec:Label({
		Title = "Session Runtime: 0h 0m 0s",
		Desc = "Elapsed in current game server",
		Image = "clock"
	})

	local LinksSec = DashTab:Section({ Title = "Official Links" })

	LinksSec:Button({
		Title = "Website: https://discord.gg/jEh6Mns8Sa",
		Desc = "Click to copy official portal link to your clipboard",
		Image = "globe",
		Callback = function()
			local site = "https://discord.gg/jEh6Mns8Sa"
			if setclipboard then setclipboard(site) end
			Tabs:Notify({
				Title = "Website Link Copied",
				Desc = "https://discord.gg/jEh6Mns8Sa copied to clipboard!",
				Time = 3,
				Type = "normal"
			})
		end
	})

	LinksSec:Button({
		Title = "Community Discord",
		Desc = "Click to copy Discord server invite link",
		Image = "message-square",
		Callback = function()
			local dlink = DiscordLink or "https://discord.gg/jEh6Mns8Sa"
			if setclipboard then setclipboard(dlink) end
			Tabs:Notify({
				Title = "Discord Link Copied",
				Desc = "Discord invite copied to clipboard!",
				Time = 3,
				Type = "normal"
			})
		end
	})

	local TiersSec = DashTab:Section({ Title = "License Keys" })
	local tiersContainer = TiersSec:GetContainer()

	do
		local isLight = currentWindowTheme.isLightMode

		local Card = Instance.new("Frame")
		local CardCorner = Instance.new("UICorner")
		local CardStroke = Instance.new("UIStroke")
		local CardPadding = Instance.new("UIPadding")

		Card.Name = "TierComparisonCard"
		Card.Parent = tiersContainer
		Card.BackgroundColor3 = isLight and Color3.fromRGB(246, 248, 252) or Color3.fromRGB(22, 22, 28)
		Card.BorderSizePixel = 0
		Card.Size = UDim2.new(1, 0, 0, 225)
		Card.ClipsDescendants = true

		CardCorner.CornerRadius = UDim.new(0, 6)
		CardCorner.Parent = Card

		CardStroke.Color = isLight and Color3.fromRGB(228, 232, 242) or Color3.fromRGB(36, 36, 44)
		CardStroke.Thickness = 1
		CardStroke.Parent = Card

		CardPadding.Parent = Card
		CardPadding.PaddingTop = UDim.new(0, 10)
		CardPadding.PaddingBottom = UDim.new(0, 10)
		CardPadding.PaddingLeft = UDim.new(0, 12)
		CardPadding.PaddingRight = UDim.new(0, 12)

		local SwitcherBar = Instance.new("Frame")
		local SwitcherCorner = Instance.new("UICorner")
		local SwitcherStroke = Instance.new("UIStroke")
		local SwitcherLayout = Instance.new("UIListLayout")

		SwitcherBar.Name = "SwitcherBar"
		SwitcherBar.Parent = Card
		SwitcherBar.BackgroundColor3 = isLight and Color3.fromRGB(235, 238, 246) or Color3.fromRGB(16, 16, 21)
		SwitcherBar.BorderSizePixel = 0
		SwitcherBar.Position = UDim2.new(0, 0, 0, 0)
		SwitcherBar.Size = UDim2.new(1, 0, 0, 30)

		SwitcherCorner.CornerRadius = UDim.new(0, 5)
		SwitcherCorner.Parent = SwitcherBar

		SwitcherStroke.Color = isLight and Color3.fromRGB(218, 222, 234) or Color3.fromRGB(34, 34, 42)
		SwitcherStroke.Thickness = 1
		SwitcherStroke.Parent = SwitcherBar

		SwitcherLayout.Parent = SwitcherBar
		SwitcherLayout.FillDirection = Enum.FillDirection.Horizontal
		SwitcherLayout.SortOrder = Enum.SortOrder.LayoutOrder

		local tierData = {
			{
				id = "free",
				name = "Free Key",
				tabLabel = "Free ($0)",
				badge = "$0 forever",
				perks = {
					"Access to free scripts",
					"Standard community support",
					"Keysystem access"
				},
				btnText = "Current Default Tier (Keysystem)",
				action = function()
					Tabs:Notify({
						Title = "Free Tier Active",
						Desc = "Keysystem access is active for your session.",
						Time = 3,
						Type = "normal"
					})
				end
			},
			{
				id = "premium",
				name = "Premium Key",
				tabLabel = "Premium",
				badge = "one-time access",
				perks = {
					"Every current and future script",
					"No keysystem required",
					"Priority support, around the clock",
					"Premium Discord role"
				},
				btnText = "Get Premium • https://discord.gg/jEh6Mns8Sa",
				action = function()
					local url = "https://discord.gg/jEh6Mns8Sa"
					if setclipboard then setclipboard(url) end
					Tabs:Notify({
						Title = "Get Premium",
						Desc = "https://discord.gg/jEh6Mns8Sa copied to clipboard!",
						Time = 3,
						Type = "normal"
					})
				end
			},
			{
				id = "booster",
				name = "Booster Key",
				tabLabel = "Booster",
				badge = "until boost runs out",
				perks = {
					"Every current and future script",
					"No keysystem required",
					"Priority support, around the clock",
					"Special Discord role"
				},
				btnText = "Boost Server • Copy Invite Link",
				action = function()
					local dlink = DiscordLink or "https://discord.gg/jEh6Mns8Sa"
					if setclipboard then setclipboard(dlink) end
					Tabs:Notify({
						Title = "Discord Boost Invite",
						Desc = "Discord invite link copied to clipboard!",
						Time = 3,
						Type = "normal"
					})
				end
			}
		}

		local DetailsFrame = Instance.new("Frame")
		DetailsFrame.Name = "Details"
		DetailsFrame.Parent = Card
		DetailsFrame.BackgroundTransparency = 1
		DetailsFrame.Position = UDim2.new(0, 0, 0, 38)
		DetailsFrame.Size = UDim2.new(1, 0, 0, 132)

		local TierTitle = Instance.new("TextLabel")
		TierTitle.Name = "TierTitle"
		TierTitle.Parent = DetailsFrame
		TierTitle.BackgroundTransparency = 1
		TierTitle.Position = UDim2.new(0, 0, 0, 0)
		TierTitle.Size = UDim2.new(0.5, 0, 0, 20)
		TierTitle.Font = Enum.Font.GothamBold
		TierTitle.Text = "Premium Key"
		TierTitle.TextColor3 = isLight and Color3.fromRGB(20, 24, 33) or Color3.fromRGB(250, 250, 255)
		TierTitle.TextSize = 14
		TierTitle.TextXAlignment = Enum.TextXAlignment.Left

		local PriceBadge = Instance.new("Frame")
		local PriceCorner = Instance.new("UICorner")
		local PriceLabel = Instance.new("TextLabel")

		PriceBadge.Name = "PriceBadge"
		PriceBadge.Parent = DetailsFrame
		PriceBadge.AnchorPoint = Vector2.new(1, 0)
		PriceBadge.Position = UDim2.new(1, 0, 0, 0)
		PriceBadge.Size = UDim2.new(0, 130, 0, 20)
		PriceBadge.BackgroundColor3 = isLight and Color3.fromRGB(235, 240, 255) or Color3.fromRGB(18, 30, 55)
		PriceBadge.BorderSizePixel = 0

		PriceCorner.CornerRadius = UDim.new(0, 4)
		PriceCorner.Parent = PriceBadge

		PriceLabel.Name = "Label"
		PriceLabel.Parent = PriceBadge
		PriceLabel.BackgroundTransparency = 1
		PriceLabel.Size = UDim2.new(1, 0, 1, 0)
		PriceLabel.Font = Enum.Font.GothamBold
		PriceLabel.Text = "one-time access"
		PriceLabel.TextColor3 = Color3.fromRGB(42, 110, 230)
		PriceLabel.TextSize = 10

		local PerksList = Instance.new("Frame")
		local PerksLayout = Instance.new("UIListLayout")

		PerksList.Name = "PerksList"
		PerksList.Parent = DetailsFrame
		PerksList.BackgroundTransparency = 1
		PerksList.Position = UDim2.new(0, 0, 0, 26)
		PerksList.Size = UDim2.new(1, 0, 0, 100)

		PerksLayout.Parent = PerksList
		PerksLayout.SortOrder = Enum.SortOrder.LayoutOrder
		PerksLayout.Padding = UDim.new(0, 4)

		local ActionBtn = Instance.new("TextButton")
		local ActionCorner = Instance.new("UICorner")
		local ActionStroke = Instance.new("UIStroke")

		ActionBtn.Name = "ActionBtn"
		ActionBtn.Parent = Card
		ActionBtn.AnchorPoint = Vector2.new(0.5, 1)
		ActionBtn.Position = UDim2.new(0.5, 0, 1, 0)
		ActionBtn.Size = UDim2.new(1, 0, 0, 28)
		ActionBtn.BackgroundColor3 = Color3.fromRGB(42, 110, 230)
		ActionBtn.BorderSizePixel = 0
		ActionBtn.Font = Enum.Font.GothamBold
		ActionBtn.Text = "Get Premium • https://vector-hub.gg"
		ActionBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
		ActionBtn.TextSize = 11
		ActionBtn.AutoButtonColor = false

		ActionCorner.CornerRadius = UDim.new(0, 4)
		ActionCorner.Parent = ActionBtn

		ActionStroke.Color = Color3.fromRGB(75, 145, 245)
		ActionStroke.Thickness = 1
		ActionStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		ActionStroke.Parent = ActionBtn

		local perkLabels = {}
		for i = 1, 4 do
			local row = Instance.new("Frame")
			row.Name = "PerkRow_" .. i
			row.Parent = PerksList
			row.BackgroundTransparency = 1
			row.Size = UDim2.new(1, 0, 0, 18)
			row.LayoutOrder = i

			local checkIcon = Instance.new("ImageLabel")
			checkIcon.Name = "Check"
			checkIcon.Parent = row
			checkIcon.AnchorPoint = Vector2.new(0, 0.5)
			checkIcon.BackgroundTransparency = 1
			checkIcon.Position = UDim2.new(0, 0, 0.5, 0)
			checkIcon.Size = UDim2.new(0, 14, 0, 14)
			local chk = gl("check")
			checkIcon.Image = chk.Image
			checkIcon.ImageRectSize = chk.ImageRectSize
			checkIcon.ImageRectOffset = chk.ImageRectPosition
			checkIcon.ImageColor3 = Color3.fromRGB(46, 204, 113)

			local textLbl = Instance.new("TextLabel")
			textLbl.Name = "Text"
			textLbl.Parent = row
			textLbl.BackgroundTransparency = 1
			textLbl.Position = UDim2.new(0, 20, 0, 0)
			textLbl.Size = UDim2.new(1, -20, 1, 0)
			textLbl.Font = Enum.Font.GothamMedium
			textLbl.Text = ""
			textLbl.TextColor3 = isLight and Color3.fromRGB(60, 65, 80) or Color3.fromRGB(195, 195, 210)
			textLbl.TextSize = 11
			textLbl.TextXAlignment = Enum.TextXAlignment.Left

			table.insert(perkLabels, { Row = row, Icon = checkIcon, Label = textLbl })
		end

		local currentTierIdx = 2
		local tabButtons = {}

		local function renderTier(idx)
			currentTierIdx = idx
			local data = tierData[idx]
			TierTitle.Text = data.name
			PriceLabel.Text = data.badge
			PriceBadge.Size = UDim2.new(0, math.clamp(#data.badge * 6.6 + 18, 90, 230), 0, 20)
			ActionBtn.Text = data.btnText

			if idx == 1 then
				PriceLabel.TextColor3 = Color3.fromRGB(130, 140, 155)
				PriceBadge.BackgroundColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(230, 233, 240) or Color3.fromRGB(30, 30, 38)
				ActionBtn.BackgroundColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(225, 228, 238) or Color3.fromRGB(34, 34, 44)
				ActionBtn.TextColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(50, 55, 70) or Color3.fromRGB(200, 200, 215)
				ActionStroke.Color = currentWindowTheme.isLightMode and Color3.fromRGB(200, 205, 218) or Color3.fromRGB(45, 45, 56)
			elseif idx == 2 then
				PriceLabel.TextColor3 = Color3.fromRGB(42, 110, 230)
				PriceBadge.BackgroundColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(220, 235, 255) or Color3.fromRGB(18, 30, 55)
				ActionBtn.BackgroundColor3 = Color3.fromRGB(42, 110, 230)
				ActionBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
				ActionStroke.Color = Color3.fromRGB(75, 145, 245)
			else
				PriceLabel.TextColor3 = Color3.fromRGB(175, 115, 255)
				PriceBadge.BackgroundColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(245, 235, 255) or Color3.fromRGB(38, 20, 56)
				ActionBtn.BackgroundColor3 = Color3.fromRGB(140, 75, 235)
				ActionBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
				ActionStroke.Color = Color3.fromRGB(165, 105, 255)
			end

			for i, pObj in ipairs(perkLabels) do
				if data.perks[i] then
					pObj.Row.Visible = true
					pObj.Label.Text = data.perks[i]
				else
					pObj.Row.Visible = false
				end
			end

			for i, tb in ipairs(tabButtons) do
				if i == idx then
					tw({v = tb.Button, t = 0.15, g = {
						BackgroundColor3 = (idx == 1 and (currentWindowTheme.isLightMode and Color3.fromRGB(215, 220, 232) or Color3.fromRGB(42, 42, 54))) or (idx == 2 and Color3.fromRGB(42, 110, 230)) or Color3.fromRGB(140, 75, 235),
						BackgroundTransparency = 0
					}}):Play()
					tw({v = tb.Label, t = 0.15, g = {
						TextColor3 = (idx == 1 and (currentWindowTheme.isLightMode and Color3.fromRGB(20, 25, 35) or Color3.fromRGB(250, 250, 255))) or Color3.fromRGB(255, 255, 255)
					}}):Play()
				else
					tw({v = tb.Button, t = 0.15, g = {
						BackgroundColor3 = Color3.fromRGB(0, 0, 0),
						BackgroundTransparency = 1
					}}):Play()
					tw({v = tb.Label, t = 0.15, g = {
						TextColor3 = currentWindowTheme.isLightMode and Color3.fromRGB(110, 115, 130) or Color3.fromRGB(150, 150, 165)
					}}):Play()
				end
			end
		end

		for i, data in ipairs(tierData) do
			local btn = Instance.new("TextButton")
			local bCorner = Instance.new("UICorner")
			local bLabel = Instance.new("TextLabel")

			btn.Name = "Tab_" .. data.id
			btn.Parent = SwitcherBar
			btn.Size = UDim2.new(1 / #tierData, 0, 1, 0)
			btn.BackgroundTransparency = 1
			btn.BackgroundColor3 = Color3.fromRGB(42, 110, 230)
			btn.BorderSizePixel = 0
			btn.AutoButtonColor = false
			btn.LayoutOrder = i

			bCorner.CornerRadius = UDim.new(0, 4)
			bCorner.Parent = btn

			bLabel.Name = "Label"
			bLabel.Parent = btn
			bLabel.BackgroundTransparency = 1
			bLabel.Size = UDim2.new(1, 0, 1, 0)
			bLabel.Font = Enum.Font.GothamBold
			bLabel.Text = data.tabLabel
			bLabel.TextColor3 = isLight and Color3.fromRGB(110, 115, 130) or Color3.fromRGB(150, 150, 165)
			bLabel.TextSize = 11

			btn.MouseButton1Click:Connect(function()
				renderTier(i)
			end)

			table.insert(tabButtons, { Button = btn, Label = bLabel })
		end

		ActionBtn.MouseButton1Click:Connect(function()
			local data = tierData[currentTierIdx]
			if data and data.action then
				data.action()
			end
		end)

		ActionBtn.MouseEnter:Connect(function()
			tw({v = ActionBtn, t = 0.12, g = {BackgroundTransparency = 0.1}}):Play()
		end)
		ActionBtn.MouseLeave:Connect(function()
			tw({v = ActionBtn, t = 0.12, g = {BackgroundTransparency = 0}}):Play()
		end)

		renderTier(2)

		table.insert(currentWindowTheme.controls, {
			type = "custom",
			update = function(light)
				Card.BackgroundColor3 = light and Color3.fromRGB(246, 248, 252) or Color3.fromRGB(22, 22, 28)
				CardStroke.Color = light and Color3.fromRGB(228, 232, 242) or Color3.fromRGB(36, 36, 44)
				SwitcherBar.BackgroundColor3 = light and Color3.fromRGB(235, 238, 246) or Color3.fromRGB(16, 16, 21)
				SwitcherStroke.Color = light and Color3.fromRGB(218, 222, 234) or Color3.fromRGB(34, 34, 42)
				TierTitle.TextColor3 = light and Color3.fromRGB(20, 24, 33) or Color3.fromRGB(250, 250, 255)
				for _, pObj in ipairs(perkLabels) do
					pObj.Label.TextColor3 = light and Color3.fromRGB(60, 65, 80) or Color3.fromRGB(195, 195, 210)
				end
				renderTier(currentTierIdx)
			end
		})
	end

	local SystemSec = DashTab:Section({ Title = "System Information" })

	local PingLabel = SystemSec:Label({
		Title = "Network Latency (Ping): -- ms",
		Desc = "Status: Operational",
		Image = "activity"
	})

	local FpsLabel = SystemSec:Label({
		Title = "Client Performance: 60 FPS",
		Desc = "Roblox Engine Render Rate",
		Image = "zap"
	})

	task.spawn(function()
		local startTime = tick()
		local RunService = game:GetService("RunService")
		local Stats = game:GetService("Stats")
		local frameCount = 0
		local lastFpsUpdate = tick()

		RunService.RenderStepped:Connect(function()
			frameCount = frameCount + 1
			local now = tick()
			if now - lastFpsUpdate >= 1 then
				local fps = math.round(frameCount / (now - lastFpsUpdate))
				FpsLabel:SetTitle("Client Performance: " .. tostring(fps) .. " FPS")
				frameCount = 0
				lastFpsUpdate = now
			end
		end)

		while task.wait(1) do
			if not ScreenGui.Parent then break end
			local elapsed = math.floor(tick() - startTime)
			local hours = math.floor(elapsed / 3600)
			local mins = math.floor((elapsed % 3600) / 60)
			local secs = elapsed % 60
			RuntimeLabel:SetTitle(string.format("Session Runtime: %dh %dm %ds", hours, mins, secs))

			pcall(function()
				local pingStat = Stats and Stats.Network and Stats.Network.ServerStatsItem and Stats.Network.ServerStatsItem["Data Ping"]
				if pingStat then
					local pingVal = math.round(pingStat:GetValue())
					PingLabel:SetTitle(string.format("Network Latency (Ping): %d ms", pingVal))
				end
			end)
		end
	end)

	return Tabs
end

return Library
