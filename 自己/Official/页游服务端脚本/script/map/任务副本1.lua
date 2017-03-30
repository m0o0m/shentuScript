local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")



function on_map_create(map)
	lualib:AddTimerEx(map, 1, 3000, 1, "quest", "")	
	lualib:AddTrigger(map, lua_trigger_enter_map, "on_trigger_enter_map")
	lualib:AddTrigger(map, lua_trigger_leave_map, "on_trigger_leave_map")
	return
end 

function on_trigger_enter_map(player)
	if (lualib:HasQuest(player, 5133) == true or lualib:HasQuest(player, 5135) == true) then
		lualib:SetCamp(player, 2)
	end
	return
end

function on_trigger_leave_map(player)
	lualib:SetCamp(player, 0)
	return
end

	local b = lualib:GenRandom(1, 8) --随机朝向			
	local keyn = {"天原猛士1", "天原勇士1", "天原死士1"}
	local keyn_target = {"村民1", "村民2"}
	local path = {29, 42, 33, 47, 37, 49, 41, 45, 41, 39, 44, 33, 47, 27}
	local path_target = {32, 63, 37, 64, 42, 65, 43, 58, 42, 49, 42, 41, 46, 33, 47, 26}
	local x1 = 27; local y1 = 40  --怪物攻击方刷新坐标
	local x2 = 27; local y2 = 59  --被攻击方刷新坐标
	

function quest(map)
	local map_width = lualib:Map_GetWidth(map)
    local map_height = lualib:Map_GetHeight(map)
    local a = (map_width > map_height) and map_width or map_height	 --地图长宽最大值
	local players = lualib:Map_GetRegionPlayers(map, 0, 0, a, true)  --全地图内玩家GUID列表	
	
	
	--任务5133：在天原战士的袭击中，守护村民撤离，持续时间5分钟
	   
	if lualib:HasQuest(players[1], 5133) == true then
		lualib:SysMsg_SendMapMsg(map, "注意：倒计时5分钟后关闭副本，成功守护村民撤离即可完成任务。村民死亡超过10位时，任务失败！\n请确保你的攻击模式，处于非和平攻击和善恶攻击之下。否则无法攻击怪物。")		
		for i = 1, #players do
			lualib:SetInt(players[i], "defense", 0)
			lualib:Player_ChangeAttackMode(players[i], 8)
		end		
		
		local monster =	lualib:Map_GenSingleCampMonster(map, x1, y1, 3, b, keyn[lualib:GenRandom(1, #keyn)], false, 1)
		lualib:Monster_SetSeeker(monster, path, 0, false)
		local target =	lualib:Map_GenSingleCampMonster(map, x2, y2, 1, b, keyn_target[lualib:GenRandom(1, #keyn_target)], false, 2)
		lualib:Monster_SetSeeker(target, path_target, 0, false)		
		lualib:Monster_SetAttackTarget(monster, target)
		
		lualib:AddTimerEx(map, 2, 11000, -1, "q_5133", "") --持续刷怪					
		lualib:AddTimerEx(map, 3, 300000, 1, "accomplish", "")--5分钟后检测任务完成情况		
		lualib:AddTrigger(target, lua_trigger_post_die, "on_trigger_post_die")--当死亡时，设置变量defense的值+1
		
				
	end
	
	--任务5134：副本组队任务，战胜天原统领
	
	if lualib:HasQuest(players[1], 5134) == true then
		lualib:SysMsg_SendMapMsg(map, "注意：副本存在时间为12分钟")
		local monster =	lualib:Map_GenSingleMonster(map, 31, 43, 3, b, "天原统领", false)
		lualib:AddTrigger(monster, lua_trigger_post_die, "destroy")
		lualib:AddTimerEx(map, 2, 10000, -1, "q_5134", "")
	end
	
	--任务5135：保护天原一族的撤离，消灭妖刀统领、黑暗刺客1
	
	if lualib:HasQuest(players[1], 5135) == true then
		lualib:SysMsg_SendMapMsg(map, "注意：副本存在时间为12分钟。\n每12秒出现一个黑暗刺客，4分钟后出现妖刀统领！\n确保天原战士死亡数量不超过10！\n请确保你的攻击模式，处于非和平攻击和善恶攻击之下。否则无法攻击怪物。")
		for i = 1, #players do
			lualib:SetInt(players[i], "defense", 0)
			lualib:Player_ChangeAttackMode(players[i], 8)
		end
		
		local monster = lualib:Map_GenSingleCampMonster(map, x1, y1, 3, b, "黑暗刺客1", false, 1)
		lualib:Monster_SetSeeker(monster, path, 0, false)
		local target =	lualib:Map_GenSingleCampMonster(map, x2, y2, 3, b, keyn[lualib:GenRandom(1, #keyn)], false, 2)
		lualib:Monster_SetSeeker(target, path_target, 0, false)
		lualib:AddTrigger(target, lua_trigger_post_die, "on_trigger_post_die")
		
		lualib:AddTimerEx(map, 2, 12000, -1, "q_5135_monster", "")
		lualib:AddTimerEx(map, 3, 10000, -1, "q_5135_target", "")
		lualib:AddTimerEx(map, 4, 240000, 1, "q_5135_yaodao", "") --4分钟后刷出妖刀统领		
	end
	
	return
end

function q_5133(map)
	local monster =	lualib:Map_GenSingleCampMonster(map, x1, y1, 3, b, keyn[lualib:GenRandom(1, #keyn)], false, 1)
	lualib:Monster_SetSeeker(monster, path, 0, false)
	local target =	lualib:Map_GenSingleCampMonster(map, x2, y2, 1, b, keyn_target[lualib:GenRandom(1, #keyn_target)], false, 2)
	lualib:Monster_SetSeeker(target, path_target, 0, false)
	lualib:Monster_SetAttackTarget(monster, target)
	lualib:AddTrigger(target, lua_trigger_post_die, "on_trigger_post_die")
	
		local target_del = lualib:Map_GetRegionMonsters(map, "", 47, 26, 2, true, true)
		if #target_del > 0 then 
			for i = 1 , #target_del do
			lualib:Monster_Remove(target_del[i])
			end
		end	
	
	return true	
end

function accomplish(map)
	local map_width = lualib:Map_GetWidth(map)
    local map_height = lualib:Map_GetHeight(map)
    local a = (map_width > map_height) and map_width or map_height	 --地图长宽最大值
	local players = lualib:Map_GetRegionPlayers(map, 0, 0, a, true)  --全地图内玩家GUID列表
	
	for i = 1, #players do
		local c = lualib:GetInt(players[i], "defense")
		if c > 10 then lualib:SysPromptMsg(players[i], "死亡超过10位村民死亡，任务失败！")
		else lualib:SetInt(players[i], "5133", 1)
			lualib:SysPromptMsg(players[i], "村民成功撤离，任务完成！")
		end		
	end	
	
	lualib:Map_DestroyDgn(map)
	return true

end

function q_5134(map)
	local count = lualib:Map_GetMonsterCount(map, "", true, true)
		if count < 15 then
		lualib:Map_GenSingleMonster(map, 31, 43, 3, b, keyn[lualib:GenRandom(1, #keyn)], false)
		end

	return true
end

function q_5135_monster(map)	
	local monster = lualib:Map_GenSingleCampMonster(map, x1, y1, 3, b, "黑暗刺客1", false, 1)
	lualib:Monster_SetSeeker(monster, path, 0, false)
	return true
end	

function q_5135_target(map)
	local target =	lualib:Map_GenSingleCampMonster(map, x2, y2, 3, b, keyn[lualib:GenRandom(1, #keyn)], false, 2)
	lualib:Monster_SetSeeker(target, path_target, 0, false)
	lualib:AddTrigger(target, lua_trigger_post_die, "on_trigger_post_die")
	local target_del = lualib:Map_GetRegionMonsters(map, "", 47, 26, 2, true, true)
		if #target_del > 0 then 
			for i = 1 , #target_del do
			lualib:Monster_Remove(target_del[i])
			end
		end	
	
	return true
end	

function q_5135_yaodao(map)	
	local monster = lualib:Map_GenSingleCampMonster(map, x1, y1, 3, b, "妖刀统领", false, 1)
	lualib:Monster_SetSeeker(monster, path, 0, false)
	lualib:AddTrigger(monster, lua_trigger_post_die, "destroy")
	return true
end	

function on_trigger_post_die(target)
	local map = lualib:MapGuid(target)
	local map_width = lualib:Map_GetWidth(map)
    local map_height = lualib:Map_GetHeight(map)
    local a = (map_width > map_height) and map_width or map_height	 --地图长宽最大值
	local players = lualib:Map_GetRegionPlayers(map, 0, 0, a, true)  --全地图内玩家GUID列表	
		
	for i = 1, #players do		
		local e = lualib:GetInt(players[i], "defense")
		local u = e + 1
		if e <= 9 then			
			lualib:SetInt(players[i], "defense", u)
			lualib:SysMsg_SendTriggerMsg(players[i], "保护对象死亡数量为："..u.."。注意：请确保死亡人数不超过10位！")
		else		
			lualib:SysMsg_SendTriggerMsg(players[i], "保护对象死亡数量超过10位，任务失败！请重新开始任务！")
			lualib:Map_DestroyDgn(map)
			lualib:SetInt(players[i], "defense", 0)				
		end	
	end
	return true
end

function destroy(monster)
	local map = lualib:MapGuid(monster)
	lualib:Map_DestroyDgn(map)
	return true
end
