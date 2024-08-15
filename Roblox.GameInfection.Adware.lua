-- https://github.com/realbxnnie
-- Put in StarterPlayer > StarterPlayerScripts
-- LocalScript

local passes = {
	0, 1, 2, 3
}

script.Parent = nil

function WaitForChildOfClass(Parent, Class)
	local Child = Parent:FindFirstChildOfClass(Class)
	repeat wait() until Child ~= nil
	return Child
end

local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
local hum = WaitForChildOfClass(char, "Humanoid")

hum.Died:Connect(function()
     game:GetService("MarketplaceService"):PromptGamePassPurchase(game.Players.LocalPlayer, passes[math.random(1, #passes)])
end)
