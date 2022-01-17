-- https://github.com/0aoq/RobloxClassSupport

---
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Debris = game:GetService("Debris")
---

local world = require(ReplicatedStorage:WaitForChild(":class")); do
	world.class({
		name = ".default:Boilerplate",
		constructor = function()
			return
		end,
		new = function()
			task.spawn(function()
				repeat wait() until world[".default:OtherClass"];
				local OtherClass = world[".default:OtherClass"]
				
				OtherClass.new()
			end)
		end,
	})
end