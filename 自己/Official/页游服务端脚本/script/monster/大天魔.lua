local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local str =
	{
		"自从那一天我诞生与尸体堆中，便被烙印下了永恒的诅咒……",
		"我要让你们都尝尝我的痛苦！",
		"我不甘心，这不应该是我的命！",
		"不要束缚我！可恶，为什么我每次传送都被禁锢在一个小范围内！是你对我下了诅咒吗？"
	}

local timerID     = 1
local elapse      = 15000
local monsterName = ""

function on_create(monster)
	lualib:AddTimer(monster, timerID, elapse, -1, "say")
	lualib:AddTimer(monster, 2, 1000, -1, "fanwei")
	lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")

end

function on_trigger_post_die(actor, killer)
	lualib:DisableTimer(actor, timerID)
    lualib:ClearTrigger(actor)
end

function say(monster)
	local rnd = lualib:GenRandom(1, #str)
    lualib:SysMsg_SendRoleTalk(monster, monsterName .. str[rnd])
end

function fanwei(monster)

	local master = lualib:Monster_GetMaster(monster)
	local player_guid = lualib:Name2Guid(master)
	if  master ~= nil then
	lualib:SetInt(player_guid, "5112_q", 1)

	end
 return ""
end
