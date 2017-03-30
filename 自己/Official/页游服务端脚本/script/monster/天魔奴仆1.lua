local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local str =
	{
		"我家BOSS说了,就算是草纸，也有为人服务的时候……",
		"大王让我打点和清理这里的残骸，可是每天都要煮人吃，哪里清理得干净啊！",
		"不要告诉我，你想去我们锅里洗澡？",
		"好吧，你求我，我就把你煮了！"
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
