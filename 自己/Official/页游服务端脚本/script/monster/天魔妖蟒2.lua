local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local str =
	{
		"���ɣ����ɣ�",
		"�������࣬���ı��죡",
		"��ŭ����������������������һ�е���������",
		"�����ʲô��"
	}

local timerID     = 1
local elapse      = 63000
local monsterName = ""

function on_create(monster)
	lualib:AddTimer(monster, timerID, elapse, -1, "say")
	lualib:AddTrigger(monster, lua_trigger_post_die, "on_trigger_post_die")
end

function on_trigger_post_die(actor, killer)
	lualib:DisableTimer(actor, timerID)
    lualib:ClearTrigger(actor)
end

function say(monster, timer_id)
	local rnd = lualib:GenRandom(1, #str)
    lualib:SysMsg_SendRoleTalk(monster, monsterName .. str[rnd])
end
