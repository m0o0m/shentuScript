local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(npc,player)
	local msg = ""
	msg = msg .."     战技是一个战士强大的根源！但是，只有经过无数次坚韧的血战，才能将战技的威力提升到最大！\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@func_2 *01*释放下一波精英怪！>\n\n"	
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@likai *01*离开副本！>\n\n"
	msg = msg.."#COLORCOLOR_SKYBLUE#提醒：离开即会销毁副本，若任务未完成，就从指导员处再次进入。#COLOREND#\n"
	return msg
end


function func_2(npc,player)
	
	local mon_1 = {"精英尸奴11", "精英妖面监工11", "精英鬼面监工11", "精英掘铲尸奴11", "精英铁镐尸奴11", "精英尸奴工头11"}
	local X = lualib:X(npc)
    local Y = lualib:Y(npc)
	local map = lualib:MapGuid(npc)
	local b = lualib:GenRandom(1, 8)	
	local z = lualib:GetInt(map, "释放怪物")
	
	if z == 1 then   --第1次点击释放怪物，即是第2波刷怪，数量为3只
		for i=1,3 do
		lualib:Map_GenSingleMonster(map, X, Y, 4, b, mon_1[math.random(#mon_1)], false)
		end
		
		lualib:SysMsg_SendTriggerMsg(player, "注意：点击场内#COLORCOLOR_GOLD#战技指导员#COLOREND#释放下一波精英怪物，数量为上一波的数量+1.")
		lualib:SetInt(map, "释放怪物", 2)
	return ""
	
	
	elseif z == 2 then  --第2次点击释放怪物，即是第3波刷怪，数量为4只
		for i=1,4 do
		lualib:Map_GenSingleMonster(map, X, Y, 4, b, mon_1[math.random(#mon_1)], false)
		end
		
		lualib:SysMsg_SendTriggerMsg(player, "注意：点击场内#COLORCOLOR_GOLD#战技指导员#COLOREND#释放下一波精英怪物，数量为上一波的数量+1.")
		lualib:SetInt(map, "释放怪物", 3)
	return ""
	
	
	elseif z == 3 then   --第3次点击释放怪物，即是第4波刷怪，数量为5只
		for i=1,5 do
		lualib:Map_GenSingleMonster(map, X, Y, 4, b, mon_1[math.random(#mon_1)], false)
		end
		
		lualib:SysMsg_SendTriggerMsg(player, "注意：点击场内#COLORCOLOR_GOLD#战技指导员#COLOREND#释放下一波精英怪物，数量为上一波的数量+1.")
		lualib:SetInt(map, "释放怪物", 4)
	return ""
	
		
	elseif z == 4 then   --第4次点击释放怪物，即是第5波刷怪，数量为6只.消灭此波即完成任务！
		for i=1,6 do
			local monster = lualib:Map_GenSingleMonster(map, X, Y, 4, b, mon_1[math.random(#mon_1)], false)
			lualib:AddTimerEx(map, 2, 8000, -1, "on_die", "map")
			--lualib:AddTrigger(monster, lua_trigger_post_die, "on_die")
		end
		
		lualib:SysMsg_SendTriggerMsg(player, "注意：怪物释放完毕，消灭所有怪物，即可完成挑战！")
		lualib:SetInt(map, "释放怪物", 5)		
	return ""	
	
	else return "怪物释放完毕！\n \n \n"	
	end	
	
end

function on_die(map)  

	local live_monster = lualib:Map_GetRegionMonsters(map, "", 0, 0, 100, true, true)  --存活怪物列表
	if live_monster[1] == nil then
		lualib:AddTimerEx(map, 3, 1000, 1, "destroy", "map")
	
	end

end

function likai(npc,player)
	lualib:Player_MapMoveXY(player, "新手村", 245, 209, 5)
	local map = lualib:MapGuid(npc)
	lualib:Map_DestroyDgn(map)	
	
	return ""
end

function destroy(map)
	lualib:Map_DestroyDgn(map)
	return ""
end




