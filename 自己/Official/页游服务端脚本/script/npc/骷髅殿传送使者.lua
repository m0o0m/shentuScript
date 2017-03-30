
function main(npc, player)
	local distance = lualib:Map_GetDistance(lualib:Player_GetPosX(player), lualib:Player_GetPosY(player), lualib:Npc_GetPosX(npc), lualib:Npc_GetPosY(npc))
	if distance > 1 then 
        return "���ƺ�...Ӧ��...�������ң�" 
    end
	
    local msg = "����ڣ������ӵ�д����ı��أ�Ϊ�˸�л��Ĵ�����Ҿ;ͽ��㴫�ͽ�ȥ��\n"
	msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n \n \n"
    msg = msg.." #OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-2>#<@Transmit *01*���͵�����ڣ����>\n \n \n \n"
	msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@Leave *01*���뿪��>\n"
    return msg
end

function Transmit(npc, player)
	if lualib:ProgressBarStart(player, 15000, "���ͽ�����", "on_progress_complete", "on_progress_abort", npc) == false then
		return "�����ˣ�����ϵGM��"
	end
    return ""
end

function Leave()
    return ""
end  

function on_progress_complete(player, npc)
    local dgn_guid = lualib:Npc_GetCustomVar(npc, "custom_var_dgn_guid")
    if dgn_guid == "" then
        lualib:SysMsg_SendWarnMsg(player, "����ڣ���ҵ�ͼ��δ���ţ�")
        return
    end

    if lualib:Player_SetDgnTicket(player, dgn_guid) == false then
        lualib:SysMsg_SendWarnMsg(player, "��������ɽ��뽫��ڣ���ҵ�ͼ��")
        return
    end

    if lualib:Player_EnterDgn(player, "����ڣ����", 0, 0, 0) == false then
        lualib:SysMsg_SendWarnMsg(player, "���뽫��ڣ���ҵ�ͼʧ�ܣ�")
        return
    end

    lualib:Npc_Remove(npc)
end

function on_progress_abort(player, npc)
    lualib:SysMsg_SendWarnMsg(player, "���ͱ���ϣ�")
end
