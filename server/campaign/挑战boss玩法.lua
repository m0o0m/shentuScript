--------------------------------------------------------------------------------
--计划任务的定时回调（玩法逻辑部分）
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
lualib:Error(lualib:KeyName(map));
    times = tonumber(times)
    if times == 0 then
		lualib:SetDBNum("Guild_yb", 0)
		local str = "[挑战BOSS]已开始，请英雄们速速进入困兽之地！"
        lualib:SysMsg_SendBroadcastMsg(str, "[挑战BOSS]")
		lualib:SysMsg_SendBoardMsg("0", "[挑战BOSS]", str, 15000)
		lualib:SysMsg_SendTopColor(2, str, 11, 13) --竟然是红色

    else 
		if times == 300000 then 
			local dgn = lualib:Map_CreateDgn("困兽之地", true, 40*60)
			if dgn == "" then
				lualib:Error("副本：困兽之地战创建失败！")
				return
			end
			lualib:Debug("副本：挑战BOSS战创建成功！")
			local cur_time = lualib:GetAllTime()
			lualib:SetStr(map, "guild_map_guid", dgn)
			-- lualib:SetInt(map, "guild_active_time", cur_time + 3600)
		end
		local str = "[挑战BOSS]还有"..math.floor(times / 60000).."分钟开启。"
		lualib:SysMsg_SendBroadcastMsg(str, "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[挑战BOSS]", str, 15000)
		lualib:SysMsg_SendTopColor(2, str, 11, 13) --竟然是红色
    end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
        lualib:SetStr(map, "guild_map_guid", "")
		-- lualib:SetInt(map, "guild_active_time", 0)
        lualib:SysMsg_SendBroadcastMsg("[挑战BOSS]已停止进入！", "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[挑战BOSS]", "[挑战BOSS]已停止进入！", 15000)
    else
        lualib:SysMsg_SendBroadcastMsg("[挑战BOSS]将在"..math.floor(times / 60000).."分钟后停止进入！", "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[挑战BOSS]", "[挑战BOSS]将在"..math.floor(times / 60000).."分钟后停止进入！", 15000)
    end
end

function Goto(id,player,map)
	local x = 62
	local y = 43
	local r = 8
	local dgn_key_name = "困兽之地"
	local gold = 0
	local msg = ""
	
	local mapguid = lualib:MapGuid(player);
	local map_keyname = lualib:KeyName(mapguid);
	if map_keyname == "困兽之地" then 
		lualib:SysPromptMsg(player, "已经在困兽之地，无法重复传送")
		return "已经在困兽之地，无法重复传送"
	end
	
	if lualib:HasBuff(player,"摆摊") then
		lualib:SysWarnMsg(player,"你当前处于摆摊状态，无法传送")
		return false
	end
	
	
	-- if not lualib:Player_IsGoldEnough(player, gold, false) then
		-- msg = msg.."当前传送需要1500金币"
		-- lualib:NPCTalk(player, msg)
		-- return true
    -- end
	
	-- if not lualib:Player_SubGold(player, gold, false, "传送", player) then
		-- msg = msg.."扣除金币失败"
		-- lualib:NPCTalk(player, msg)
		-- return true
    -- end
	
	local dgn = lualib:GetStr(lualib:Map_GetMapGuid("天怒之城"), "guild_map_guid");
	if not lualib:Map_IsDgnExist(dgn) then
		lualib:SysMsg_SendBroadcastMsg("[挑战BOSS]活动还未开始，无法进入！", "系统通知")
		return
	end	

	local player_x = lualib:X(player);
	local player_y = lualib:Y(player);
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0");
	lualib:Player_SetDgnTicket(player, dgn);
	lualib:Player_EnterDgn(player, dgn_key_name, x, y, r);
	

	-- if not lualib:Player_MapMoveXY(player, map_key_name, x, y, r) then
		-- lualib:SysMsg_SendWarnMsg(player, "")
	-- end
end