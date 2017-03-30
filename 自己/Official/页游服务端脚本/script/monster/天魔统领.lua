local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("monster/征服系统怪物")

local str =
	{
		"作战计划已定！",
		"大战即将来临，兄弟们，跟我干了这杯血酒！",
		"杀他个昏天黑地，杀他个跪地求饶！",
		"统领百万魔族大军有何难？攻破人类城池指日可待！"
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
	zhengfusiwang(actor, killer) --调用征服系统中的怪物死亡触发判断
end

function say(monster, timer_id)
	local rnd = lualib:GenRandom(1, #str)
    lualib:SysMsg_SendRoleTalk(monster, monsterName .. str[rnd])
end