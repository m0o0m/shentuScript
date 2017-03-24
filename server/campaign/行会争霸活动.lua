--------------------------------------------------------------------------------
--计划任务的定时回调（玩法逻辑部分）
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		lualib:SetDBNum("Guild_yb", 0)
        lualib:SysMsg_SendBroadcastMsg("[行会争霸]已开始，请会长尽快前往比奇报名参加！", "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[行会争霸]", "[行会争霸]已开始！", 15000)

    else 
		if times == 300000 then 
			local dgn = lualib:Map_CreateDgn("行会争霸地图", true, 60*60)
			if dgn == "" then
				lualib:Error("副本：行会争霸战创建失败！")
				return
			end
			lualib:Debug("副本：行会争霸战创建成功！")
			local cur_time = lualib:GetAllTime()
			lualib:SetStr(map, "guild_map_guid", dgn)
			lualib:SetInt(map, "guild_active_time", cur_time + 3600)
		end
		local str = "[行会争霸]还有"..math.floor(times / 60000).."分钟开启。"
		lualib:SysMsg_SendBroadcastMsg(str, "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[行会争霸]", str, 15000)
		lualib:SysMsg_SendTopColor(2, str, 11, 13) --竟然是红色
    end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
        lualib:SetStr(map, "guild_map_guid", "")
		lualib:SetInt(map, "guild_active_time", 0)
        lualib:SysMsg_SendBroadcastMsg("[行会争霸]已停止进入！", "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[行会争霸]", "[行会争霸]已停止进入！", 15000)
    else
        lualib:SysMsg_SendBroadcastMsg("[行会争霸]将在"..math.floor(times / 60000).."分钟后停止进入！", "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[行会争霸]", "[行会争霸]将在"..math.floor(times / 60000).."分钟后停止进入！", 15000)
    end
end

function Goto()
	local x = 80
	local y = 100
	local r = 10
	local map_key_name = "行会争霸地图"
	local gold = 0
	local msg = ""
	
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
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100001670#"..x.."#"..y.."#0#0")
	lualib:Player_SetDgnTicket(player, dgn);
	lualib:Player_EnterDgn(player, dgn_key_name, x, y, r);
end