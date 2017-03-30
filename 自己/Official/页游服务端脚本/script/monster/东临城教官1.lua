local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local str =
	{
		"筑起防线，绝不能让魔族踏入东临城半步！",
		"为了天藏大陆的人民，我们要战斗到最后一刻！",
		"一定要守住东临城！援军就快到了！"
	}

local timerID     = 1
local elapse      = 55000
local monsterName = ""

function on_create(monster)
	lualib:AddTimer(monster, timerID, elapse, -1, "say")
	lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
end

function on_trigger_post_die(actor, killer)
	lualib:DisableTimer(actor, timerID)
    lualib:ClearTrigger(actor)
end

function say(monster, timer_id)
	local rnd = lualib:GenRandom(1, #str)
    lualib:SysMsg_SendRoleTalk(monster, monsterName .. str[rnd])
end
