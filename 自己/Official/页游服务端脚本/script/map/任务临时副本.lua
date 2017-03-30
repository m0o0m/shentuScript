local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_map_create(map)
	lualib:AddTrigger(map, lua_trigger_enter_map, "on_trigger_enter_map")
	lualib:AddTrigger(map, lua_trigger_leave_map, "on_trigger_leave_map")
	return
end 

function on_trigger_enter_map(player)
	
	local map = lualib:MapGuid(player)
	lualib:AddTimerEx(map, 1, 5000, 1, "monster_create", "")
	lualib:SysMsg_SendBottomColor(player, "5秒后出现怪物，请做好准备！", 1, 12)

	return
end

function monster_create(map)

	local monster = lualib:Map_GenSingleMonster(map, 25, 33, 3, 3, "摆脱禁锢的黑面牛魔", false)
	lualib:AddTrigger(monster, lua_trigger_post_die, "destroy")
	
	return
end


function on_trigger_leave_map(player)
	local map = lualib:MapGuid(player)
	lualib:Map_DestroyDgn(map)
	return true
end


function destroy(monster, player)
	local map = lualib:MapGuid(monster)
	lualib:Map_DestroyDgn(map)
	return true
end
