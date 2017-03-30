local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_map_create(map)
	local monster = lualib:Map_GenSingleCampMonster(map, 63, 67, 4, 1, "小恶魔1", false, 2)	
	local target = lualib:Map_GenSingleCampMonster(map, 63, 67, 1, 1, "封印阵心", false, 1) --身上还要挂个死亡激发器	
	
	--Map_GenSingleCampMonster(map, 63, 67, 4, 1, "小恶魔1", false, 2)
	--[[
	local monster = lualib:Map_GenSingleMonster(map, 63, 67, 4, 1, "小恶魔1", false)
	lualib:SetCamp(monster, 2)		
	local target = lualib:Map_GenSingleMonster(map, 63, 67, 4, 1, "封印阵心", false) --身上还要挂个死亡激发器
	lualib:SetCamp(target, 1)
	]]

	lualib:Monster_SetAttackTarget(monster, target)	
	lualib:AddTrigger(target,  lua_trigger_post_die, "on_trigger_post_die")	
	lualib:AddTimerEx(map, 1, 22000, -1, "create_monster", "target")
	
	return ""
end

function create_monster(map)

	local mon = {"小恶魔1", "小恶魔1", "黑面牛魔1", "黑面牛魔1", "黑暗刺客1", "小恶魔2"}
	local target = lualib:Map_GetRegionMonsters(map, "封印阵心", 63, 67, 10, true, true)
	
	local monster = lualib:Map_GenSingleCampMonster(map, 63, 67, 10, 1, mon[lualib:GenRandom(1, #mon)], false, 2)
	lualib:Monster_SetAttackTarget(monster, target[1])	
	
	lualib:AddTimerEx(map, 2, 300000, 1, "check", "")
	return ""
end

function check(map)
	local map_width = lualib:Map_GetWidth(map)
    local map_height = lualib:Map_GetHeight(map)
    local a = (map_width > map_height) and map_width or map_height	 --地图长宽最大值
	local players = lualib:Map_GetRegionPlayers(map, 0, 0, a, true)  --全地图内玩家GUID列表

	local b = lualib:Map_GetMonsterCount(map, "封印阵心", true, true)
	if b >0 then lualib:SetInt(players[1], "5099", 1) end
	if lualib:SysPromptMsg(players[1], "成功守护封印阵心5分钟，任务完成！") then lualib:Map_DestroyDgn(map) end
	return ""

end

function on_trigger_post_die(target)
	local map = lualib:MapGuid(target)
	lualib:Map_DestroyDgn(map)
	lualib:SysMsg_SendMapMsg(map, "封印阵心被破坏，任务失败，副本销毁！请再次进入副本尝试！")
	return "封印阵心被破坏，任务失败！"


end


function on_map_destroy(map)
	lualib:Map_DestroyDgn(map)
    
    return ""
end


