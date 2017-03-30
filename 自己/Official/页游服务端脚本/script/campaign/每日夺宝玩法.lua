--------------------------------------------------------------------------------
--计划任务的定时回调（玩法逻辑部分）
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		lualib:SetDBStr("nowActivityName", "寻龙夺宝   19:00 - 19:15")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 1)
        --lualib:SysMsg_SendTopMsg(1, "[寻龙夺宝]")
        --lualib:SysMsg_SendBroadcastMsg("[寻龙夺宝]", "系统通知")
		
		lualib:SysMsg_SendBoardMsg("0", "[寻龙夺宝]", "[寻龙夺宝]已开放！", 15000)
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[寻龙夺宝]已开启, 请从龙城寻龙夺宝NPC处进入。#COLOREND#", 11, 2)
		
        local dgn = lualib:Map_CreateDgn("寻龙夺宝", true, 20*60)
        if dgn == "" then
            lualib:Error("副本：寻龙夺宝创建失败！")
            return
        end
		lualib:GSRunScript("IsActivityUnderWay:AddAtivityMagic", "")
		lualib:GSRunScript("玩家活动传送:playerMoveMagic5", "")
        --lualib:Debug("副本：寻龙夺宝创建成功！")
        --lualib:SetStr(map, "xldb_existing_dgn", dgn)
    else
		lualib:SysMsg_SendBoardMsg("0", "[寻龙夺宝]", "[寻龙夺宝]还有"..math.floor(times / 60000).."分钟开启。英雄们请速从龙城寻龙夺宝NPC处进入！", 15000)
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[寻龙夺宝]还有"..math.floor(times / 60000).."分钟开启。英雄们请速从龙城寻龙夺宝NPC处进入！#COLOREND#", 11, 2)
    end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		lualib:GSRunScript("IsActivityUnderWay:DelAtivityMagic", "")
		lualib:SetDBStr("nowActivityName", "")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway",0)
		--lualib:SysMsg_SendBoardMsg("0", "[寻龙夺宝]", "[寻龙夺宝]已关闭！", 15000)
		local dgn_id = ""
		local player = ""
		dgn_id = lualib:GetStr("0", "xldb_existing_dgn")
		if dgn_id ~= 0 then 
			player = lualib:GetStr(dgn_id, "box_owner")
		end
		if player == "" then
			lualib:SysMsg_SendBroadcastColor("【寻龙夺宝】本期活动时间结束，本期胜利玩家【空缺】", "系统通知", 1, 0)
		else
			lualib:SysMsg_SendBroadcastColor("【寻龙夺宝】本期活动时间结束，神秘宝盒最终由玩家【"..lualib:Name(player).."】获得！", "系统通知", 1, 0)
			lualib:DelItemEx(player, "被封印的宝箱", 1, 2, false, true, false, false, "寻龙夺宝活动奖励", "寻龙夺宝活动奖励")
			lualib:AddItem(player, '寻龙宝箱', 1, true, "寻龙夺宝活动奖励", player)
			if lualib:HasBuff(player, "古墓夺宝") then
				if not lualib:DelBuff(player, "古墓夺宝") then
					lualib:Error("玩家删除BUFF古墓夺宝出错！")
					return false 
				end
			end
			
			local award_timer_id = lualib:GetInt(player, "award_timer_id")
			if award_timer_id ~= 0 then 
				lualib:DisableTimer(player, award_timer_id)
			end
			
			local str = 
			[[
				local _handle = GetWindow(nil, "xldb_timeUI")
				if _handle ~= 0 then
					xldb_timeUI.onclose(_handle)
				end
			]]
			lualib:ShowFormWithContent(player, "脚本表单", str)
			
		end 
		local counts = lualib:GetInt(dgn_id, "playerCounts")
		if counts ~= 0 then 
			for i = 1, counts do 
				local player = lualib:GetStr(dgn_id, "player"..i)
				if player ~= 0 then 
					--奖励通过邮件发送
					lualib:MailToPlayer("寻龙夺宝参与奖励", player, "感谢您参与本次寻龙夺宝活动,下次活动将于明天晚上7点开始", 0, 0, 
					{
						"金砖小",1,1,
						"金砖小",1,1,
					})
				end
			end
		end
		lualib:Map_DestroyDgn(dgn_id);
		lualib:SetStr("0", "xldb_existing_dgn", "")  --关闭副本入口
    else
		lualib:SysMsg_SendBoardMsg("0", "[寻龙夺宝]", "[寻龙夺宝]将在"..math.floor(times / 60000).."分钟后关闭！", 15000)
    end
end



function Goto(id,player,map)
	if lualib:HasBuff(player,"摆摊") then
		lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
		return false
	end
	
	local level = lualib:Level(player)
	if level >= 50 then
		lualib:Player_NpcMove(player, "土城夺宝奇兵", 3)
		local str = 
		[[ 
			local handle = GetWindow(nil, "Campaign")
			if handle ~= 0 then
				GUI:WndClose(handle)
			end
		]]
		lualib:ShowFormWithContent(player,"脚本表单",str)
		lualib:ShowFormWithContent(player, "form文件表单", "xldb_NPCShow")
	else 
		lualib:ShowFormWithContent(player,"脚本表单","Campaign.msg('等级不足')" )
	end
	
	--[[
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100001670#"..x.."#"..y.."#0#0")
	--]]
	return ""
end