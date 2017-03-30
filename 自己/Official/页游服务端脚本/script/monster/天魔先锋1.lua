local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local str =
	{
		"历次战争都是我们打的头阵，但现在却让那群厨子奴仆站到了第一层，这有点让我接受不了！",
		"不要问我从哪里来……只要告诉我去什么对方，杀什么人即可！",
		"我的斧子，只砍有姓名的人，报上你的姓名，三围，兴趣，爱好，有无婚史！",
		"你活着，不过是为了不想死而已！来来，让我的斧子告诉你人生哲理……"
	}

local timerID     = 1
local elapse      = 51000
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
