local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local str =
	{
		"嘿嘿，这下看你往哪儿跑！",
		"二王爷可是说了，只要杀了你，等我成为海魔后，我就是海魔护卫统领！",
		"孩儿们，给我上，这个弱小的人类也给我杀了！",
	}

local timerID     = {1,2,3,4}
local elapse      = 3000
local NpcName = ""	
	
function on_create(npc)
	for i=2,#timerID do
		lualib:AddTimer(npc, i, elapse*i, 1, "say")
	end
	lualib:SysMsg_SendRoleTalk(npc,str[1])
return ""
end

function say(npc, timer_id)
	if timer_id ~= 4 then
		lualib:SysMsg_SendRoleTalk(npc,str[timer_id])
	else 
		lualib:Npc_Remove(npc)
	end
return ""
end
