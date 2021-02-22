local L1UI, E, L, V, P, G = unpack(select(2, ...))

local _G = _G
local LoadAddOn = LoadAddOn

function L1UI:WeeklyReward()

	local List = _G.SlashCmdList

	-- v1
	if not List.WEEKLY then
		_G.SLASH_WEEKLY1 = '/weekly'
		List.WEEKLY = function()
			LoadAddOn("Blizzard_WeeklyRewards")
			_G.WeeklyRewardsFrame:Show()
		end
	end

	-- v2
	if not List.VAULT then
		_G.SLASH_VAULT1 = '/vault'
		List.VAULT = function()
			LoadAddOn("Blizzard_WeeklyRewards")
			_G.WeeklyRewardsFrame:Show()
		end
	end
end

-- Register on init
function L1UI:LoadCommands()

	L1UI:WeeklyReward()
end