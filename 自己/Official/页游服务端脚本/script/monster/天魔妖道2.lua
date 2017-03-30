local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local str =
	{
		"人类的道士，都是从我这里偷学的技能！真不要脸！",
		"我的宝宝，怎么召唤不出来了？难道这也被人类偷走了？",
		"如今这世道不好混，什么东西都藏不住，还敢有点隐私不？",
		"如果不能回到我们所在那个空间，那块大陆，那么我们就要侵占天藏大陆！"
	}

local timerID     = 1
local elapse      = 61000
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
