local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("form/MarsWnd_s")

--[[
	local award = 
	{
	[1] = {200,900};
	[2] = {1000,99};
	[3] = {2000,1};
	}
	local award_num = 0
	local randomNum = math.random(0, 1000)
	if randomNum <= 1 then
		award_num = 200
	elseif randomNum <= 100 then 
		award_num = 1000
	elseif randomNum <= 1000 then
		award_num = 2000
	end
	--]]
	
--[[
	local award_table = 
	{--[1]物品keyname，		[2]权重，[3]活动给的总数量，[4]单次给的物品数量，[5]物品类型1是道具，2是变量，3是元宝，4绑定元宝，5绑定金币，6经验
		{"元宝50",          200, 		999999, 			50, 			    	3},
		{"绑定元宝200",		200, 		9999999,			200,					4},
		{"元宝100",       	100, 		9999999, 			100, 					3},
		{"绑定元宝500", 	200, 		9999999, 			500,					4},
		{"绑定金币1万",		6000, 		9999999, 			10000, 					5},
		{"boss_points", 	1500,		999999, 			2000, 					2},--BOSS积分
		{"ach_score", 		1500, 		999999, 			2000, 					2},--功勋
		{"Ach_jifen", 		1500, 		999999, 			2000, 					2},--成就
		{"经验",			 6000, 		999999, 			60000, 					6},
	} 


	local int_to_name = 
	{
		["boss_points"] = "BOSS积分",
		["ach_score"] = "功勋",
		["Ach_jifen"] = "成就",
	}

	local map = lualib:MapGuid(player)
	local rate_t = {}
	for i = 1, #award_table do 
		rate_t[i] = award_table[i][2]
	end
	local key = get_table_key(rate_t)
	local item = award_table[key][1]
	local str = ''
	--1是道具，2是变量，3是元宝，4绑定元宝，5绑定金币，6经验
	if award_table[key][5] == 1 then
		if lualib:AddItem(player, item, award_table[key][4], false, "", "") then

		end
	elseif award_table[key][5] == 2 then
		lualib:SetInt(player, item, lualib:GetInt(player, item) + award_table[key][4])
		if int_to_name[item] ~= nil then
			str = "\"".."获得"..int_to_name[item]..award_table[key][4].."点！" .."\""
			lualib:ShowFormWithContent(player, "脚本表单", "bottom_msg_tip("..str..");")
		end
	elseif award_table[key][5] == 3 then
		if lualib:Player_AddIngot(player, award_table[key][4], false, "", player) then
			str = "\"".."获得元宝"..award_table[key][4].."\""
			lualib:ShowFormWithContent(player, "脚本表单", "bottom_msg_tip("..str..");")
		end
	elseif award_table[key][5] == 4 then
		if lualib:Player_AddIngot(player, award_table[key][4], true, "被封印的宝箱", player) then
			str = "\"".."获得绑定元宝"..award_table[key][4].."\""
			lualib:ShowFormWithContent(player, "脚本表单", "bottom_msg_tip("..str..");")
		end
	elseif award_table[key][5] == 5 then
		if lualib:Player_AddGold(player, award_table[key][4], true, "被封印的宝箱", player) then
			str = "\"".."获得绑定金币"..award_table[key][4].."\""
			lualib:ShowFormWithContent(player, "脚本表单", "bottom_msg_tip("..str..");")
		end
	elseif award_table[key][5] == 6 then
		if lualib:Player_AddExp(player, award_table[key][4], "被封印的宝箱", player) then
			str = "\"".."获得经验"..award_table[key][4].."\""
			lualib:ShowFormWithContent(player, "脚本表单", "bottom_msg_tip("..str..");")
		end
	end
	--]]
local require_item = "被封印的宝箱"
local require_monster = {"夺宝魔龙", 43, 50}




--获取权重选项
function get_table_key(t_rate)
	local maxs = 0
	local rate_t = {}
	for i = 1, #t_rate do
		maxs = maxs + t_rate[i]
		rate_t[i] = maxs
	end
	
	local key = 1
	local rand = math.random(1, maxs)
	for i = 1, #rate_t do
		if rand < rate_t[i] then
			key = i
			break
		end
	end
	
	return key
end



function on_map_create(map)
    --lualib:Debug("寻龙夺宝地图建创回调！")
	
	lualib:SetStr("0", "xldb_existing_dgn", map)
	local startTime   = lualib:GetAllTime()
	local endTime = 15 * 60 + startTime
    lualib:SetInt(map, "endTime", endTime)
    local monster = lualib:Map_GenSingleMonster(map, require_monster[2], 
    require_monster[3], 6, 6, require_monster[1], false)
    if monster == ""  then
        lualib:Error(require_monster[1].."刷新失败！")
        return
    end
	
	
	lualib:AddTrigger(map, lua_trigger_leave_map, "on_trigger_leave_map")
    lualib:AddTrigger(map, lua_trigger_item_appear, "on_trigger_item_appear")
    lualib:AddTrigger(map, lua_trigger_item_pickup, "on_trigger_item_pickup")
	lualib:AddTrigger(map, lua_trigger_enter_map, "on_trigger_enter_map")
	--lualib:AddTrigger(map, lua_trigger_pre_die, "on_trigger_pre_die")
	--lualib:AddTrigger(map, lua_trigger_pre_item_drop, "item_diu_chufa")
	--lualib:AddTrigger(map, lua_trigger_dungeon_end, "fuben_jieshu")
	--lualib:DelayCall(map, 15*60*1000, "CampaignEnd", "") 
end

function on_trigger_enter_map(player)
	
	--lualib:SysMsg_SendBroadcastColor("【"..lualib:Name(player).."】进入寻龙夺宝，寻龙夺宝可从龙城寻龙夺宝传送员处进入", "系统通知", 1, 0)
	--lualib:Player_ChangeAttackMode(player, 0) --设置玩家的攻击模式为全体攻击模式
	--local mode = lualib:Player_GetAttackMode(player)
	
	local str = 
	[[
		GameMainBar.Taskitem(5)
		local taskWnd = GetWindow(0, "TaskWindow")
		if taskWnd ~= 0 then
			GUI:WndSetVisible(taskWnd, false)
		end
		taskWnd = GetWindow(0, "xldb_NPCShow")
		if taskWnd ~= 0 then
			GUI:WndClose(taskWnd)
		end
	]]
	lualib:ShowFormWithContent(player, "脚本表单", str)
	
	local str2 = ""
	local clientType = lualib:GetClientType(player) 
	if clientType == 0 then
		str2 = [[CL:ChangeAttacMod(0)]]
	elseif clientType == 1 then 
		str2 = [[CLSetAttackMode(0)]]
	end	
	lualib:ShowFormWithContent(player, "脚本表单", str2)
	local map = lualib:MapGuid(player)
	local now   = lualib:GetAllTime()
	local endTime = lualib:GetInt(map, "endTime")
	local remainderSeconds = endTime - now
	lualib:ShowFormWithContent(player, "form文件表单", "xldb_wnd#"..remainderSeconds)
	
	local heros = lualib:GetPlayerCurrentHeroList(player)
	if #heros > 0 then 
		for i = 1, #heros do
			lualib:DestroyDummy(heros[i])
			lualib:SetInt(player, "HeroRelive", 1)
		end
	end
end


function on_trigger_item_appear(map, item, item_id, item_name, x, y)
    if item_name ~= require_item then 
		return 
	end
	--lualib:SysMsg_SendMapMsg(map, item_name.."掉落在坐标【"..x.."，"..y.."】！")
	local player = lualib:GetStr(map, "box_owner")
	if player ~= "" then 
		
		if lualib:HasBuff(player, "古墓夺宝") then
			if not lualib:DelBuff(player, "古墓夺宝") then
				lualib:Error("玩家删除BUFF古墓夺宝出错！")
				return false 
			end
		end
		
		local str = 
		[[
			local _handle = GetWindow(0, "xldb_timeUI")
			if _handle ~= 0 then
				xldb_timeUI.onclose(_handle)
			end
		]]
		lualib:ShowFormWithContent(player, "脚本表单", str)
		local award_timer_id = lualib:GetInt(player, "award_timer_id")
		if award_timer_id ~= 0 then 
			lualib:DisableTimer(player,award_timer_id)
		end
		lualib:SetStr(map, "box_owner", "")
		
	end
end

function on_trigger_item_pickup(player, item, item_id, item_name)
    if not lualib:Player_IsPlayer(player) then 
		return 
	end
    if item_name ~= require_item then 
		return 
	end

    local map = lualib:MapGuid(player)
    if lualib:Name(map) ~= "寻龙夺宝" then 
		return 
	end
	
	--记录盒子拥有者
	lualib:SetStr(map, "box_owner", player)
	
	lualib:AddBuff(player, "古墓夺宝", 20*60*1000)
	--lualib:NotifyVar(
	lualib:ShowFormWithContent(player, "form文件表单", "xldb_timeUI")
	local award_timer_id = lualib:GenTimerId(player)
	lualib:SetInt(player, "award_timer_id", award_timer_id)
	lualib:AddTimer(player, award_timer_id, 3*60*1000, 5, "on_timer_award")
	
	
	--lualib:SysMsg_SendBroadcastMsg("【神秘宝盒】已经被玩家【"..lualib:Name(player).."】获得，成功保护10分钟将获得开启宝盒的资格。", "系统通知")
	--lualib:SysMsg_SendBroadcastMsg("【神秘宝盒】已经被玩家【"..lualib:Name(player).."】获得，成功保护10分钟将获得开启宝盒的资格。", "系统通知")
	--lualib:SysMsg_SendBroadcastMsg("【神秘宝盒】已经被玩家【"..lualib:Name(player).."】获得，成功保护10分钟将获得开启宝盒的资格。", "系统通知")
end

function on_timer_award(player, timer_id)
	local AWARD = 
	{
		{"Ach_jifen", 15000, "成就"},
		{"ach_score", 15000, "功勋"},
	}
	local index = math.random(1,2)
	lualib:SetInt(player, AWARD[index][1], lualib:GetInt(player, AWARD[index][1]) + AWARD[index][2])
	local award_str = "\"".."获得"..AWARD[index][3]..AWARD[index][2].."点！" .."\""
	lualib:ShowFormWithContent(player, "脚本表单", "xldb_wnd.bottom_msg_tip("..award_str..");")
	local map = lualib:MapGuid(player)
	--lualib:SysMapMsg(map, lualib:Name(player).."持有宝箱3分钟，获得了"..AWARD[index][3]..AWARD[index][2].."点！")
	--lualib:SysMsg_SendMapMsg(map, lualib:Name(player).."持有宝箱3分钟，获得了"..str)
	--lualib:Player_AddIngot(player, award_num, false, "加元宝：被封印的宝箱", "被封印的宝箱")
	--lualib:SysTipsMsg(player,"获得"..yuanbao_num.."元宝")
	local str = 
	[[
		local _handle = GetWindow(0, "xldb_timeUI")
		if _handle ~= 0 then
			xldb_timeUI.onclose(_handle)
		end
		UI:Lua_OpenWindow(0, "xldb_timeUI.lua")
	]]
	lualib:ShowFormWithContent(player, "脚本表单", str)
    
end


function on_trigger_leave_map(player)
	if not lualib:Player_IsPlayer(player) then
		return ""
	end
	if lualib:GetInt(player, "HeroRelive") ~= 0 then       
		lualib:DelayCall(player, 300, "DelayFunc", "")  --离开地图触发  人居然还在地图内 orz..
	end
	lualib:SetInt(player, "HeroRelive", 0)

	
	local str = 
	[[
		xldb_wnd.RecoverTaskWindow();
		_handle = GetWindow(0, "xldb_wnd")
		if _handle ~= 0 then
			GUI:WndClose(_handle)
		end
	]]
	lualib:ShowFormWithContent(player, "脚本表单", str)
	
	return true
end

function CampaignEnd(map)
	--lualib:SetInt(map, "isCampaignEnd", 1)
	local player = lualib:GetStr(map, "box_owner")
    if player ~= "" then
		
		if lualib:HasBuff(player, "古墓夺宝") then
			if not lualib:DelBuff(player, "古墓夺宝") then
				lualib:Error("玩家删除BUFF古墓夺宝出错！")
				return false 
			end
		end
		
		local str = 
		[[
			local _handle = GetWindow(0, "xldb_timeUI")
			if _handle ~= 0 then
				xldb_timeUI.onclose(_handle)
			end
		]]
		lualib:ShowFormWithContent(player, "脚本表单", str)
		local award_timer_id = lualib:GetInt(player, "award_timer_id")
		if award_timer_id ~= 0 then 
			lualib:DisableTimer(player, award_timer_id)
		end
	end
	--[[
	lualib:SetStr("0", "xldb_existing_dgn", "")
	local player = lualib:GetStr(map, "box_owner")
    if player == "" then
		lualib:SysMsg_SendBroadcastColor("【寻龙夺宝】本期活动时间结束，本期胜利玩家【空缺】", "系统通知", 1, 0)
	else
		lualib:SysMsg_SendBroadcastColor("【寻龙夺宝】本期活动时间结束，神秘宝盒最终由玩家【"..lualib:Name(player).."】获得！", "系统通知", 1, 0)
		lualib:DelItemEx(player, require_item, 1, 2, false, true, false, false, "寻龙夺宝活动奖励", "寻龙夺宝活动奖励")
		lualib:AddItem(player, '寻龙宝箱', 1, true, "寻龙夺宝活动奖励", player)
	end
	--]]
	
	local playerList = lualib:Map_GetMapPlayers(map, true)
    if #playerList == 0 then 
		return  
	end
    for i = 1, #playerList do 
		--奖励通过邮件发送
		lualib:MailToPlayer("夺宝奇兵参与奖励", playerList[i], "感谢您参与本次夺宝奇兵活动，这是您的参与奖励，请查收！", 0, 0, 
		{
			"金砖小",1,1,
			"金砖小",1,1,
		})
	end
	lualib:Map_DestroyDgn(map);
end

function on_map_destroy(map)
	lualib:Error("on_map_destroy");
	--lualib:SetInt(map, "gumu_jieshu", 1)
	lualib:SetStr("0", "xldb_existing_dgn", "")
	local playerList = lualib:Map_GetMapPlayers(map, true)
    if #playerList == 0 then 
		return  
	end
    for i = 1, #playerList do 
		lualib:Player_MapMoveXY(playerList[i], "土城", 118, 146, 6);
	end
	
end


function on_trigger_pre_die(actor, killer)
	
    if not lualib:Player_IsPlayer(actor) then 
		return true 
	end
	lualib:Player_MapMoveXY(actor, "土城", 118, 146, 6)
	lualib:SetHp(actor, 1000, false)
	return false

   
end

	
function DelayFunc(player)
	HeroRelive(player)
end

--[[
function item_diu_chufa(player, item, item_id, item_name)
    if not lualib:Player_IsPlayer(player) then 
		return true 
	end
    if item_name ~= require_item then 
		return true
	end

	local map = lualib:MapGuid(player)
	if map == "" then 
		return true 
	end
	
	if lualib:Name(map) == "寻龙夺宝" then
		
		if lualib:HasBuff(player, "古墓夺宝") == true then
			if not lualib:DelBuff(player, "古墓夺宝") then
				lualib:Error("玩家删除BUFF古墓夺宝出错！")
				return false 
			end
		end
		
		if lualib:HasBuff(player, "精英光环") == true then
			if not lualib:DelBuff(player, "精英光环") then
				lualib:Error("玩家删除BUFF精英光环出错！")
				return false 
			end
		end
		
	end

    return true
end
--]]