local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local str =
	{
		"翻过这座墙就能进东临城了，我说这位小哥，相见即是缘，能不能借你的肩膀用一下？",
		"自从和上司翻了脸，就被调到这个不毛之地。不怕官，就怕管，这话说得一点都没错啊。",
		"我说你看什么看？没见过这么文艺的刺客么？"
	}

local timerID     = 1
local elapse      = 30000
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
