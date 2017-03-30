--------------------------------------------------------------------------------
--计划任务的定时回调（玩法逻辑部分）
--------------------------------------------------------------------------------

function on_scheduled_timer(param)
    lualib:SysMsg_SendTopMsg(1, "天荒古阵大门开启了！请所有参加行会的玩家前往天荒阵6层坐标[165:155]进入古阵！")

    --创建副本
    local dgn_guid = lualib:Map_CreateDgn("天荒古阵", true, 120 * 60)
    if dgn_guid == "" then
        lualib:Print("副本：古阵群英创建失败！")
        return
    end
    lualib:Print("副本：古阵群英创建成功！")

    --刷传送NPC
    local npc_info = {"古阵传送使者", 163, 160, 0}
    npc_info[4] = lualib:Map_GenNpc(param, npc_info[1], npc_info[2], npc_info[3], 5, 6)
    if npc_info[4] == "" then
        lualib:Print(" 生成"..npc_info[1].."失败！")
        return
    end
    lualib:Print(" 生成"..npc_info[1].."成功！")

    --给NPC添加副本的GUID
    if lualib:Npc_SetCustomVar(npc_info[4], "custom_var_dgn_guid", dgn_guid) == false then
        lualib:Print("给NPC"..npc_info[1].."添加自定义变量失败！")
        return
    end
    lualib:Print("给NPC"..npc_info[1].."添加自定义变量成功！")

    --添加删除传送NPC的定时器
    if not lualib:AddTimer(npc_info[4], 1, 15 * 60 * 1000, 1, "on_timer_remove_trans_npc") then
        lualib:Print(" 添加销毁"..npc_info[1].."定时器失败！")
        return
    end
    lualib:Print(" 添加销毁"..npc_info[1].."定时器成功！")
end

--15分钟后销毁传送NPC
function on_timer_remove_trans_npc(npc_guid, time_id)
    if lualib:Npc_IsExist(npc_guid) then
        lualib:Npc_Remove(npc_guid)
    end
    lualib:Print("销毁NPC古阵传送使者成功！")
end

function Goto(id,player,map)
	 local x = 165
	 local y = 155
	 local r = 3
	 local map_key_name = "天荒阵6"
	local gold = 1500
	local level = lualib:Level(player)
	if level >= 40 then
		gold = 15000
	else
		gold = 1500
	end
	local msg = ""
	
	if lualib:HasBuff(player,"摆摊") then
	lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
	return false
	end
	
	if not lualib:Player_IsGoldEnough(player, gold, false) then
	msg = msg.."当前传送需要"..gold.."金币"
	lualib:NPCTalk(player, msg)
    return true
    end
	if not lualib:Player_SubGold(player, gold, false, "传送", player) then
	msg = msg.."扣除金币失败"
	lualib:NPCTalk(player, msg)
    return true
    end
	 if not lualib:Player_MapMoveXY(player,map_key_name, x, y, r) then
		lualib:SysMsg_SendWarnMsg(player, "")
	 end
end