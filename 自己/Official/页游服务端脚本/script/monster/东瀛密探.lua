local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local str =
	{
		"你看不见我……你看不见我……",
		"你问我是怎么进到城里的？我是密探啊，我就是干这活的啊！",
		"怎么？看我在这里很不爽？打我呀，你打我呀！",
		"城里的情报打听得差不多了，哪个饭馆用地沟油，哪家客栈用黑心棉，我都清清楚楚。"
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
