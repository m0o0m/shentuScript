local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_map_create(map)
	local npc = lualib:Map_GenNpc(map, "战斗指导员", 63, 67, 0, 3) --创建场内NPC
	if npc == "" then
		lualib:Error("任务挑战副本刷新场内NPC失败！")   --场内NPC创建失败回调
		return
	end
	
	lualib:AddTrigger(map, lua_trigger_enter_map, "on_trigger_enter_map")	
	lualib:AddTrigger(map, lua_trigger_leave_map, "on_trigger_leave_map")	
	
end

function on_trigger_enter_map(player)
	local map = lualib:MapGuid(player)
	local X = 63
	local Y = 67
	local b = lualib:GenRandom(1, 8) --随机朝向
	
--任务5096_q
	if lualib:HasQuest(player, 5096) == true then
		lualib:AddBuff(player, "战属性百分比降低", 1200)	
		lualib:SysMsg_SendTriggerMsg(player, "注意：副本存在时间为20分钟。\n你的属性被临时封印了一部分！")
		local buff = {"武斗场轻便铠甲男", "武斗场轻便铠甲女"} 
		local gender = lualib:Gender(player)
		lualib:AddBuff(player, buff[gender], 1200)			
		
		lualib:Map_GenMonster(map, X, Y, 4, b, "训练僵尸", 5, false)
			
	end

	--任务5098_q
	if lualib:HasQuest(player, 5098) == true then 
		lualib:AddBuff(player, "战属性百分比降低2", 1200)
		lualib:SysMsg_SendTriggerMsg(player, "注意：副本存在时间为20分钟。\n你的属性被临时封印了一部分！\n消灭2只精英怪物后，请玩家点击场内#COLORCOLOR_GOLD#战技指导员#COLOREND#释放下一波精英怪物。怪物的数量为上一波的数量+1！")
		
		local buff = {"武斗场元灵铠甲男", "武斗场元灵铠甲女"}
		local gender = lualib:Gender(player)
		lualib:AddBuff(player, buff[gender], 1200)
		
		--刷怪
		lualib:SetInt(map, "释放怪物", 1)	
		local mon_1 = {"精英尸奴11", "精英妖面监工11", "精英鬼面监工11", "精英掘铲尸奴11", "精英铁镐尸奴11", "精英尸奴工头11"}				
			for i = 1, 2 do
			lualib:Map_GenSingleMonster(map, X, Y, 4, b, mon_1[math.random(#mon_1)], false)
			end
		return ""	
	end
	

	--任务5109
	if lualib:HasQuest(player, 5109) == true then	
	lualib:AddBuff(player, "法属性百分比降低", 1200)
	lualib:SysMsg_SendTriggerMsg(player, "注意：副本存在时间为20分钟。\n你的属性被临时封印了一部分！")
	
	local buff = {"武斗场紫绸长袍男", "武斗场紫绸长袍女"}
	local gender = lualib:Gender(player)	
	lualib:AddBuff(player, buff[gender], 0)	
	
	--刷怪
	local monster = lualib:Map_GenSingleMonster(map, X, Y, 3, b, "受伤的牛魔", false)
	lualib:AddTrigger(monster,  lua_trigger_post_die, "map_destroy")	
	end
	

	--任务5111
	if lualib:HasQuest(player, 5111) == true then			
	lualib:AddBuff(player, "法属性百分比降低", 1200)
	lualib:SysMsg_SendTriggerMsg(player, "注意：副本存在时间为20分钟！\n你的属性被临时封印了一部分。")
	local buff = {"武斗场紫绸长袍男", "武斗场紫绸长袍女"}
	local gender = lualib:Gender(player)
	lualib:AddBuff(player, buff[gender], 1200000)			
	
	lualib:Map_GenMonster(map, X, Y, 4, b, "恶魔尖兵", 2, false)
			
	end	
	
	
	--任务5112
	if lualib:HasQuest(player, 5112) == true then
	lualib:SysMsg_SendTriggerMsg(player, "注意：副本存在时间为20分钟！")	
	lualib:Map_GenSingleMonster(map, X, Y, 4, b, "黑面牛魔1", false)
	local monster = lualib:Map_GenSingleMonster(map, X, Y, 4, b, "大天魔", false)
	lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
	lualib:AddTimerEx(map, 4, 18000, -1, "create_monster", "map")				
	end

	--任务5113
			if lualib:HasQuest(player, 5113) == true then
			lualib:AddBuff(player, "法属性百分比降低2", 1200)			
			lualib:SysMsg_SendTriggerMsg(player, "注意：副本存在时间为20分钟。\n你的属性被临时封印了一部分！\n消灭2只精英怪物后，请点击场内#COLORCOLOR_GOLD#战技指导员#COLOREND#释放下一波精英怪物。怪物的数量为上一波的数量+1！")
		
			local buff = {"武斗场魔力法袍男", "武斗场魔力法袍女"}
			local gender = lualib:Gender(player)
			lualib:AddBuff(player, buff[gender], 1200000)
			
			--刷怪
				lualib:SetInt(map, "释放怪物", 1)	
				local mon_1 = {"精英尸奴11", "精英妖面监工11", "精英鬼面监工11", "精英掘铲尸奴11", "精英铁镐尸奴11", "精英尸奴工头11"}				
						for i=1,2 do
						lualib:Map_GenSingleMonster(map, X, Y, 4, b, mon_1[math.random(#mon_1)], false)
						end
				return ""	
			end	

	--任务5121
			if lualib:HasQuest(player, 5121) == true then
			lualib:AddBuff(player, "道属性百分比降低", 1200)
			lualib:SysMsg_SendTriggerMsg(player, "注意：副本存在时间为20分钟。\n你的属性被临时封印了一部分！")

			local buff = {"武斗场乾坤道衣男", "武斗场乾坤道衣女"}
			local gender = lualib:Gender(player)
			lualib:AddBuff(player, buff[gender], 1200000)	
			
			lualib:Map_GenSingleMonster(map, X, Y, 2, b, "心灵之剑(伪)", false)			
			lualib:Map_GenSingleMonster(map, X, Y, 2, b, "小恶魔1", false)			
			lualib:AddTimerEx(map, 5, 28000, -1, "create_monster", "map")				
			end			

	--任务5124
			if lualib:HasQuest(player, 5124) == true then
			lualib:SysMsg_SendTriggerMsg(player, "注意：副本存在时间为20分钟！")	
			lualib:Map_GenSingleMonster(map, X, Y, 2, b, "神兽之王", false)			
			lualib:AddTimerEx(map, 6, 20000, -1, "create_monster1", "map")				
			end		
			
	return
end



function on_trigger_post_die(monster)
	local map = lualib:MapGuid(monster)
	lualib:Map_GenSingleMonster(map, X, Y, 4, b, "大天魔", false)
	lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
	return 

end

function create_monster(map)
	local X = 63
	local Y = 67
	local b = lualib:GenRandom(1, 8) --随机朝向		
	local mon = {"黑面牛魔1", "黑面牛魔1", "黑面牛魔1", "黑暗刺客1"}
	local m_table = lualib:Map_GetRegionMonsters(map, "", X, Y, 100, true, true)
	
	if #m_table < 15 then lualib:Map_GenSingleMonster(map, X, Y, 6, b, mon[lualib:GenRandom(1, #mon)], false) end	
	return	
end

function create_monster1(map)
	local X = 63
	local Y = 67
	local b = lualib:GenRandom(1, 8) --随机朝向
	local m_table = lualib:Map_GetRegionMonsters(map, "", X, Y, 100, true, true)
	
	if #m_table < 15 then lualib:Map_GenSingleMonster(map, X, Y, 4, b, "神兽", false) end
	return
	
end


function map_destroy(monster)
	local map = lualib:MapGuid(monster)
	lualib:Map_DestroyDgn(map)
	return ""
end

function on_trigger_leave_map(player)
	local map = lualib:MapGuid(player)
	lualib:Map_DestroyDgn(map)
	return
end

