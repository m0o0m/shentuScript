local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


local path = {19, 64, 25, 68, 36, 69, 42, 65, 44, 55, 42, 49, 42, 41, 46, 33, 47, 26}

function on_create(monster)	
	lualib:Monster_SetSeeker(monster, path, 0, false)
	local map = lualib:MapGuid(monster)
	lualib:AddTimerEx(map, 27, 8000, -1, "del_monster", "")
	lualib:AddTrigger(monster, lua_trigger_post_die, "on_trigger_post_die")
	
	
	return true
end

function del_monster(map)
	
	kn = {"村民1", "村民2"}
	for k = 1, #kn do 	
		local m = lualib:Map_GetRegionMonsters(map, kn[k], 47, 26, 2, true, true)		
		if #m > 0 then 
			for i = 1 , #m do
			lualib:Monster_Remove(m[i])
			end
		end
	end

end

function on_trigger_post_die(monster, killer)

	local map = lualib:MapGuid(monster)
	local map_width = lualib:Map_GetWidth(map)
    local map_height = lualib:Map_GetHeight(map)
    local a = (map_width > map_height) and map_width or map_height	 --地图长宽最大值
	local players = lualib:Map_GetRegionPlayers(map, 0, 0, a, true)  --全地图内玩家GUID列表	

	for i = 1, #players do	
		local e = lualib:GetInt(players[i], "defense")
		local u = e + 1
		lualib:SetInt(players[i], "defense", u)
		
	end	

	return true
end