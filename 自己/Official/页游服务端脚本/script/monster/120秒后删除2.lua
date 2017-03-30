local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local shenshou = ""

function on_create(monster)
	lualib:AddBuff(monster, "武斗场光明道袍女", 0)
	local map = lualib:MapGuid(monster)
	local X = lualib:X(monster)
	local Y = lualib:Y(monster)
	shenshou = lualib:Map_GenSingleMonster(map, X, Y, 2, 5, "神兽", false)
	lualib:AddTimerEx(monster, 1, 120000, 1, "delete", shenshou)	
	lualib:AddTrigger(monster, lua_trigger_post_die, "on_trigger_monster_die")

end

function delete(monster, id, shenshou)
	lualib:Monster_Remove(monster)
	lualib:Monster_Remove(shenshou)	
	lualib:DisableTimer(monster, 1)
end

function on_trigger_monster_die(monster, killer)
	if shenshou ~= "" then
		lualib:Monster_Remove(shenshou)	
	end
	return true
end