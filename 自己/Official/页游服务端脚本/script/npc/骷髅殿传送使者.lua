
function main(npc, player)
	local distance = lualib:Map_GetDistance(lualib:Player_GetPosX(player), lualib:Player_GetPosY(player), lualib:Npc_GetPosX(npc), lualib:Npc_GetPosY(npc))
	if distance > 1 then 
        return "你似乎...应该...碰不到我！" 
    end
	
    local msg = "将军冢密室中拥有大量的宝藏，为了感谢你的大恩，我就就将你传送进去吧\n"
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n \n \n"
    msg = msg.." #OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-2>#<@Transmit *01*传送到将军冢密室>\n \n \n \n"
	msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@Leave *01*「离开」>\n"
    return msg
end

function Transmit(npc, player)
	if lualib:ProgressBarStart(player, 15000, "传送进行中", "on_progress_complete", "on_progress_abort", npc) == false then
		return "出错了，请联系GM！"
	end
    return ""
end

function Leave()
    return ""
end  

function on_progress_complete(player, npc)
    local dgn_guid = lualib:Npc_GetCustomVar(npc, "custom_var_dgn_guid")
    if dgn_guid == "" then
        lualib:SysMsg_SendWarnMsg(player, "将军冢密室地图还未开放！")
        return
    end

    if lualib:Player_SetDgnTicket(player, dgn_guid) == false then
        lualib:SysMsg_SendWarnMsg(player, "您不被许可进入将军冢密室地图！")
        return
    end

    if lualib:Player_EnterDgn(player, "将军冢密室", 0, 0, 0) == false then
        lualib:SysMsg_SendWarnMsg(player, "进入将军冢密室地图失败！")
        return
    end

    lualib:Npc_Remove(npc)
end

function on_progress_abort(player, npc)
    lualib:SysMsg_SendWarnMsg(player, "传送被打断！")
end
