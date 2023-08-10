-- CREDIT RayField 
-- By falsecommits
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local isEnabled = false
local isToggled = false
local WorldBoostOn = false
local EventOn = false
local PotionOn = false
local LuckOn = false

function Luck()
	LuckOn = not LuckOn
	if LuckOn then
	_G.enable = true;
			while _G.enable == true do
game:GetService("ReplicatedStorage").Functions.PurchaseLuckUpgrader:InvokeServer()
		task.wait(1)
end
		else
_G.enable = false;
	while _G.enable == true do
game:GetService("ReplicatedStorage").Functions.PurchaseLuckUpgrader:InvokeServer()
						task.wait(1)
					end
				end
			end

function Potions()
    PotionOn = not PotionOn
    if PotionOn then
		_G.enable = true;
while _G.enable == true do
local ohString1 = "Click"

game:GetService("ReplicatedStorage").Events.UsePotion:FireServer(ohString1)

local ohString1 = "Gem"

game:GetService("ReplicatedStorage").Events.UsePotion:FireServer(ohString1)

local ohString1 = "Luck"

game:GetService("ReplicatedStorage").Events.UsePotion:FireServer(ohString1)

local ohString1 = "Rebirth"

game:GetService("ReplicatedStorage").Events.UsePotion:FireServer(ohString1)
 task.wait(1800)
end
			else
_G.enable = false;
while _G.enable == true do
local ohString1 = "Click"
				
game:GetService("ReplicatedStorage").Events.UsePotion:FireServer(ohString1)
				
local ohString1 = "Gem"
				
game:GetService("ReplicatedStorage").Events.UsePotion:FireServer(ohString1)
				
local ohString1 = "Luck"
				
game:GetService("ReplicatedStorage").Events.UsePotion:FireServer(ohString1)
				
local ohString1 = "Rebirth"
				
game:GetService("ReplicatedStorage").Events.UsePotion:FireServer(ohString1)
task.wait(1800)
				end
			end
		end

function Event2M()
    EventOn = not EventOn
    if EventOn then
		_G.enable = true;
		while _G.enable == true do
		local ohString1 = "2M"

game:GetService("ReplicatedStorage").Events.SetWorldBoost:FireServer(ohString1)
			task.wait(1)
		end
			else
		_G.enable = false;
				while _G.enable == true do
				local ohString1 = "2M"
		
		game:GetService("ReplicatedStorage").Events.SetWorldBoost:FireServer(ohString1)
					task.wait(1)
				end
			end
		end

function Galactic()
    WorldBoostOn = not WorldBoostOn
    if WorldBoostOn then
		_G.enable = true;
		while _G.enable == true do
		local ohString1 = "Galactic Paradise"

game:GetService("ReplicatedStorage").Events.SetWorldBoost:FireServer(ohString1)
			task.wait(1)
		end
			else
		_G.enable = false;
		while _G.enable == true do
		local ohString1 = "Galactic Paradise"
		
game:GetService("ReplicatedStorage").Events.SetWorldBoost:FireServer(ohString1)
			task.wait(1)
				end
			end
		end

function Mastery()
    isEnabled = not isEnabled
    if isEnabled then
		_G.enable = true;
		while _G.enable == true do
		game:GetService("ReplicatedStorage").Functions.IncreaseMastery:InvokeServer()
		 task.wait()
		end
			else
		_G.enable = false;
		while _G.enable == true do
		game:GetService("ReplicatedStorage").Functions.IncreaseMastery:InvokeServer()
		task.wait()
				end
			end
		end

function toggle()
    isToggled = not isToggled
    if isToggled then
	local ohBoolean1 = true

	game:GetService("ReplicatedStorage").Events.ActivateAutoRebirth:FireServer(ohBoolean1)
			else
	local ohBoolean1 = false

	game:GetService("ReplicatedStorage").Events.ActivateAutoRebirth:FireServer(ohBoolean1)
			end
		end


local Window = Rayfield:CreateWindow({
	Name = "Tapping Legends | UPDATED 8/10/23",
	LoadingTitle = "Tapping Legends",
	LoadingSubtitle = "by falsecommits",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil, 
		FileName = "Big Hub"	
},
})
	
local MainTab = Window:CreateTab("🏠 Auto Farm", nil) 
local MainSection = MainTab:CreateSection("Main")

local Button = MainTab:CreateButton({
	Name = "🖱️| Fast Clicks",
	Callback = function()
		local RunService = game:GetService("RunService")
local Timer = 0
local TimerMax = 0

RunService.Heartbeat:Connect(function(Delta)
	Timer += Delta
	
	if Timer >= TimerMax then
		Timer = 0
		game:GetService("ReplicatedStorage").Events.Click:FireServer()
	end
end)
	end,
})

local Toggle = MainTab:CreateToggle({
	Name = "🎉| Event World Boost x50 | 100 Rebirths Req.",
	CurrentValue = nil,
	Flag = "Toggle1",
	Callback = function(EventOn)
		Event2M()
	end,
 })

local Toggle = MainTab:CreateToggle({
	Name = "🌌| Galactic World Boost x1000",
	CurrentValue = nil,
	Flag = "Toggle1",
	Callback = function(WorldBoostOn)
		Galactic()
	end,
 })

local Toggle = MainTab:CreateToggle({
	Name = "⬆️| Auto Mastery Rank Up",
	CurrentValue = nil,
	Flag = "Toggle1",
	Callback = function(isEnabled)
		Mastery()
	end,
 })

local Toggle = MainTab:CreateToggle({
	Name = "🔃| Auto Buy Rebirths",
	CurrentValue = nil,
	Flag = "Toggle1",
	Callback = function(isToggled)
		toggle()
	end,
 })

 local Toggle = MainTab:CreateToggle({
	Name = "🧪| Auto Use Potions | 30mins",
	CurrentValue = nil,
	Flag = "Toggle1",
	Callback = function(PotionOn)
		Potions()
	end,
 })

 local Toggle = MainTab:CreateToggle({
	Name = "🍀| Auto Buy Luck Upgrades",
	CurrentValue = nil,
	Flag = "Toggle1",
	Callback = function(LuckOn)
		Luck()
	end,
 })

local Button = MainTab:CreateButton({
	Name = "🔃| Buy 1 Rebirth Upgrade(s)",
	Callback = function()
	game:GetService("ReplicatedStorage").Functions.PurchaseUpgrade:InvokeServer("Spawn", "RebirthButtons")
        end,
})

local MiscTab = Window:CreateTab("🌎 Worlds", nil) 
local MiscSection = MiscTab:CreateSection("Teleports")

local Button = MiscTab:CreateButton({
	Name = "‼️| Secret World",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Secret World")
	end,
})

local Button = MiscTab:CreateButton({
	Name = "🧍| Starter World",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Spawn")
	end,
})

local Button = MiscTab:CreateButton({
	Name = "🌀| Magic World",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Magic")
	end,
})

local Button = MiscTab:CreateButton({
	Name = "🦕| Jurassic World",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Jurassic")
	end,
})

local Button = MiscTab:CreateButton({
	Name = "🎯| Summer World",
    Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Summer")
    end,
})

local Button = MiscTab:CreateButton({
	Name = "🚀| Galaxy | *NEW!*",
    Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Galaxy")
    end,
})

local Button = MiscTab:CreateButton({
	Name = "🌌| Galactic Paradise | *NEW!*",
    Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Galactic Paradise")
    end,
})

local Button = MiscTab:CreateButton({
	Name = "🎉| 2M World | *NEW!*",
    Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("2M")
    end,
})

local Button = MiscTab:CreateButton({
	Name = "👻| Spooky World | *NEW!*",
    Callback = function()
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Spooky")
    end,
})
