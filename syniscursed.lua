-- CREDIT RayField 
-- By SynLovesValorant
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()


local Window = Rayfield:CreateWindow({
	Name = "[PART 2!] Tapping Legends",
	LoadingTitle = "Tapping Legends",
	LoadingSubtitle = "by SynLovesValorant",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil, 
		FileName = "Big Hub"	
},
})
	
local MainTab = Window:CreateTab("🏠 Auto Farm", nil) 
local MainSection = MainTab:CreateSection("Main")

local Button = MainTab:CreateButton({
	Name = "🖱️Fast Clicks🖱️",
	Callback = function()
		_G.enable = true;
		while _G.enable == true do
			game:GetService("ReplicatedStorage").Events.Click:FireServer()
			task.wait()
		end
	end,
})

local Button = MainTab:CreateButton({
	Name = "🌴Max World Boost🌴",
	Callback = function()
		_G.enable = true;
		while _G.enable == true do
			local ohString1 = "Summer"

			game:GetService("ReplicatedStorage").Events.SetWorldBoost:FireServer(ohString1)
			task.wait(1)
		end
	end,
})

local MiscTab = Window:CreateTab("🌎 Worlds", nil) 
local MiscSection = MiscTab:CreateSection("Misc")

local Button = MiscTab:CreateButton({
	Name = "‼️Secret World‼️",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Secret World")
	end,
})

local Button = MiscTab:CreateButton({
	Name = "🧍Starter World🧍",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Spawn")
	end,
})

local Button = MiscTab:CreateButton({
	Name = "🌀Magic World🌀",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Magic")
	end,
})

local Button = MiscTab:CreateButton({
	Name = "🦕Jurassic World🦕",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Jurassic")
	end,
})
