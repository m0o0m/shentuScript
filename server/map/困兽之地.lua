--日常天空之城
--30只怪

local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local monster_tbl = {
	{ "世界BOSS"  , 1 , false } , 
}
local item_tbl = {
	{ "武器1"  , 1 , true } , 
	{ "武器2"  , 1 , true } , 
	{ "武器3"  , 1 , true } , 
	{ "武器4"  , 1 , true } , 
	{ "武器5"  , 1 , true } , 
	{ "武器6"  , 1 , true } , 
}

local cur = 0
function on_map_create(sMapID)
	lualib:AddTrigger(sMapID, lua_trigger_leave_map , "on_leave_map" )
	lualib:AddTrigger(sMapID, lua_trigger_enter_map, "on_enter_map") 
	lualib:AddTrigger(sMapID, lua_trigger_monster_post_die, "on_monster_post_die") 
	for i = 1, #monster_tbl do
		lualib:Map_GenMonster(sMapID, 62, 45, 8, 4, monster_tbl[i][1], monster_tbl[i][2], monster_tbl[i][3]);
		-- lualib:Map_BatchGenMonster( sMapID , monster_tbl[i][1] , monster_tbl[i][2] , monster_tbl[i][3] );
	end
	return ""
end



function on_enter_map(player)
	local str = "#COLORCOLOR_YELLOW#玩家#COLOREND##COLORCOLOR_BLUE#【"..lualib:Name(player).."】#COLOREND##COLORCOLOR_YELLOW#进入困兽之地，挑战BOSS！#COLOREND#";
	lualib:SysMsg_SendBroadcastColor(str, "", 1, 12);
	return ""
end


function on_leave_map(player)
	if not lualib:Player_IsPlayer(player) then
		return ""
	end
	local sMapID = lualib:MapGuid(player)
	return ""
end




--怪我死亡
function on_monster_post_die(monster, killer)
	local mon_keyname = lualib:KeyName(monster);
	if mon_keyname ~= "世界BOSS" then 
		return ""
	end
	local player = ""
	mapGuid = lualib:MapGuid(killer)
	if not lualib:Player_IsPlayer(killer) then
		if lualib:GUIDType(killer) == 2 then
			player = lualib:Name2Guid(lualib:Monster_GetMaster(killer))
		else
			player = lualib:GetHeroLord(killer)
		end
	else
		player = killer
	end
	
	if lualib:Player_AddGold(player, 5000, false, "挑战BOSS", player) then 
		local str = "#COLORCOLOR_YELLOW#玩家#COLOREND##COLORCOLOR_BLUE#【"..lualib:Name(player).."】#COLOREND##COLORCOLOR_YELLOW#击杀BOSS获得5000金币奖励，另有一地极品装备爆出，2分钟后保护失效，先到先得！#COLOREND#";
		lualib:SysMsg_SendBroadcastColor(str, "", 1, 12);
	end
	
	local x, y = lualib:X(monster), lualib:Y(monster);
	local sMapID = lualib:MapGuid(monster)
	for i = 1, #item_tbl do
		if "" == lualib:Map_GenItem(sMapID, x, y, item_tbl[i][1], item_tbl[i][2], item_tbl[i][3], 120) then
		   lualib:Error("困兽之地地图刷物品失败！")
		   return ""
		end
	end
	return ""
end


-- function onLeave(sMapID, player)
	-- if lualib:Player_MapMoveXY(player, "巫山城" , 223 , 180 , 3 ) then
		-- lualib:SetInt(player, "FirstCompleteDailyFB", 1)
	-- end
	-- return ""
-- end



-- function GetReward_3(sMapID, player)
	-- local iMonster_count = lualib:Map_GetMonsterCount( sMapID , "" , true , true )
	-- if iMonster_count <= 0 then
		-- if not (lualib:BagFree(player, true, false, false) > 0) then
			-- if lualib:MailToPlayer("黑暗祭坛", player , "您选择双倍副本奖励，请注意查收" , 0 , 0 , { "护盾碎片小" , 25 , 1 } ) then
				-- if lualib:Player_AddExp(player ,600000 , "黑暗祭坛" ,"system") then
					-- onLeave(sMapID, player)
				-- end
			-- end
		-- else	
			-- if lualib:AddItem(player , "护盾碎片小" , 25 , true , "副本黑暗祭坛奖励", "每日副本系统") then
				-- if lualib:Player_AddExp(player ,600000 ,"黑暗祭坛" ,"system") then
					-- onLeave(sMapID, player)
				-- end
			-- end
		-- end
	-- else
		-- onLeave(sMapID, player)
	-- end
	-- return ""
-- end

-- function GetDoubleReward_3(sMapID, player)
	-- local iMonster_count = lualib:Map_GetMonsterCount( sMapID , "" , true , true )
	-- if iMonster_count <= 0 then
		-- if not (lualib:GetIngot(player) >= 188) then
			-- lualib:ShowFormWithContent(player, "脚本表单", "DailyFbWnd.MsgBox()")
		-- else
			-- if lualib:SubIngot(player, 188, "每日副本", "系统") then
				-- if not (lualib:BagFree(player, true, false, false) > 0) then
					-- if lualib:MailToPlayer("黑暗祭坛", player , "您选择双倍副本奖励，请注意查收" , 0 , 0 , { "护盾碎片小" , 50 , 1 } ) then
						-- if lualib:Player_AddExp(player ,1200000 , "黑暗祭坛" ,"system") then
							-- onLeave(sMapID, player)
						-- end
					-- end
				-- else
					-- if lualib:AddItem(player , "护盾碎片小" , 50 , true , "副本黑暗祭坛双倍奖励", "每日副本系统") then
						-- if lualib:Player_AddExp(player ,1200000 , "黑暗祭坛" ,"system") then
							-- onLeave(sMapID, player)
						-- end
					-- end
				-- end
			-- end
		-- end
	-- else
		-- onLeave(sMapID)
	-- end
	-- return ""
-- end