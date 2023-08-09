-- CREDIT RayField 
-- By lmmortalz on discord
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()


local Window = Rayfield:CreateWindow({
	Name = "Tapping Legends | UPDATED 8/09/23",
	LoadingTitle = "Tapping Legends",
	LoadingSubtitle = "by lmmortalz on discord",
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
		_G.enable = true;
		while _G.enable == true do
			game:GetService("ReplicatedStorage").Events.Click:FireServer()
			task.wait()
		end
	end,
})

local Button = MainTab:CreateButton({
	Name = "🎉| Max World Boost | 100 Rebirths Req.",
	Callback = function()
		_G.enable = true;
		while _G.enable == true do
		local ohString1 = "2M"

game:GetService("ReplicatedStorage").Events.SetWorldBoost:FireServer(ohString1)
			task.wait(1)
		end
	end,
})

local Button = MainTab:CreateButton({
	Name = "⬆️| Mastery Rank Up",
	Callback = function()
		game:GetService("ReplicatedStorage").Functions.IncreaseMastery:InvokeServer()
	end,
})

local Button = MainTab:CreateButton({
	Name = "🔃| Rebirth Upgrades",
	Callback = function()
	game:GetService("ReplicatedStorage").Functions.PurchaseUpgrade:InvokeServer("Spawn", "RebirthButtons")
        end,
})

local MiscTab = Window:CreateTab("🌎 Worlds", nil) 
local MiscSection = MiscTab:CreateSection("Misc")

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
	Name = "🌌| Galactic World",
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

local MixTab = Window:CreateTab("❔What The...", nil) 
local MixSection = MixTab:CreateSection("Mix")

local Button = MixTab:CreateButton({
	Name = "📢🔴VALORANT ACCCEEE🔴📢",
    Callback = function()
        local ID = 7968074794


local CoreGui = game:GetService'CoreGui'

local Song = CoreGui:FindFirstChild'Song' or Instance.new("Sound", CoreGui)
Song.Name = "VALORANTT"
Song.SoundId = "rbxassetid://" .. ID
Song.Looped = false
Song:Play()
    end,
})

local Button = MixTab:CreateButton({
	Name = "me when rainbow secret😩",
    Callback = function()
        local ID = 11809075543


local CoreGui = game:GetService'CoreGui'

local Song = CoreGui:FindFirstChild'Song' or Instance.new("Sound", CoreGui)
Song.Name = "Motivation"
Song.SoundId = "rbxassetid://" .. ID
Song.Looped = false
Song:Play()
    end,
})

local Button = MixTab:CreateButton({
	Name = "im max(real)",
    Callback = function()
        local ID = 7307468961


local CoreGui = game:GetService'CoreGui'

local Song = CoreGui:FindFirstChild'Song' or Instance.new("Sound", CoreGui)
Song.Name = "Motivation"
Song.SoundId = "rbxassetid://" .. ID
Song.Looped = false
Song:Play()
    end,
})
