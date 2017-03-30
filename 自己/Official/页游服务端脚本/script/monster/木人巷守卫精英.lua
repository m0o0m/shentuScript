local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local str =
	{
		"哥可是超高经验的，没点实力的人，休想从我这里过去！",
		"哥可是超高经验的，没点实力的人，休想从我这里过去！",
		"哥可是超高经验的，没点实力的人，休想从我这里过去！",
		"哥可是超高经验的，没点实力的人，休想从我这里过去！"
	}

local timerID     = 1
local elapse      = 55000
local monsterName = ""

local expnum = 3000

function on_create(monster)
	--lualib:AddTimer(monster, timerID, elapse, -1, "say")
--[[	lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")--]]
end

function on_trigger_post_die(actor, killer)
--[[	local level = lualib:Level(killer)
	lualib:Player_AddExp(killer, expnum * level, "杀死木人巷精英怪", "木人巷精英怪")


	
	lualib:DisableTimer(actor, timerID)
    lualib:ClearTrigger(actor)--]]
end

function say(monster, timer_id)
--[[	lualib:DisableTimer(monster, timer_id)
	local rnd = lualib:GenRandom(1, #str)
    lualib:SysMsg_SendRoleTalk(monster, monsterName .. str[rnd])--]]
end
