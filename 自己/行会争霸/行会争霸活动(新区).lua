function on_start(id, map)
end

function on_start_decl(id, map, times)
	local TheserverOntime = lualib:GetDBNum("TheserverOntime")		--服务器运行天数
	
	if TheserverOntime ~= 2 then
		return 
		--lualib:SysMsg_SendBroadcastMsg("不等于7", "系统通知")
	end
		
    times = tonumber(times)
    if times == 0 then
		lualib:SetDBNum("Guild_yb", 30000000)
        lualib:SysMsg_SendBroadcastMsg("[行会争霸]已开始，请各行会成员踊跃参加！", "系统通知")
        local dgn = lualib:Map_CreateDgn("行会战争地图", true, 14400)
        if dgn == "" then
            lualib:Error("副本：行会争霸战创建失败！")
            return
        end
        lualib:Debug("副本：行会争霸战创建成功！")
		lualib:SetStr(map, "guild_map_guid", dgn)---将副本地图GUID存入变量
		lualib:SetInt(map, "open_hhzb_jinru", 1)--开启入口
    else
		lualib:SysMsg_SendBroadcastMsg("[行会争霸]还有"..math.floor(times / 60000).."分钟开启。", "系统通知")
    end
  
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		lualib:SetStr(map, "guild_map_guid", "")---将副本地图GUID清空 没有GUID玩家无法进入
    else
        lualib:SysMsg_SendBroadcastMsg("[行会争霸]将在"..math.floor(times / 60000).."分钟后停止进入！", "系统通知")
    end
end

function Goto(id,player,map)
	local x = 245
	local y = 271
	local r = 3
	local map_key_name = "龙城"
	local gold = 2000
	local msg = ""
	
	if lualib:HasBuff(player,"摆摊") then
	lualib:SysWarnMsg(player,"你当前处于摆摊状态，无法传送")
	return false
	end
	
	
	if not lualib:Player_IsGoldEnough(player, gold, false) then
	msg = msg.."当前传送需要2000金币"
	lualib:NPCTalk(player, msg)
    return true
    end
	
	if not lualib:Player_SubGold(player, gold, false, "传送", player) then
	msg = msg.."扣除金币失败"
	lualib:NPCTalk(player, msg)
    return true
    end
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100001670#"..x.."#"..y.."#0#0")
	
	if not lualib:Player_MapMoveXY(player,map_key_name, x, y, r) then
		lualib:SysMsg_SendWarnMsg(player, "")
	end
end