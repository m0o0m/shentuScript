local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local str =
	{
		"������ɽ���Ҿ�һֱ�����⣡���ǣ����°��ˡ���",
		"�㣬�����㣡˵�ľ����㣡�������������ˣ�ǧ����������ߣ�",
		"��Ȼ�㲻����Ȱ���ͱ���Ҳ����������������㿴��",
		"��ô�ͷ���ū�ͻ�û������"
	}

local timerID     = 1
local elapse      = 49000
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
