
function on_accept(player, quest_id)	
		
	lualib:SysMsg_SendTriggerMsg(player, "ע�⣺5���Ӻ����ս��������\n�ν���Σ�գ��뾡��ȡ����ʱ���ϵ�Խ�ã�����Խ���ѣ�")
	lualib:AddTimer(player, 5121, 5000, 1, "enter_dgn")	
	return true
end

function enter_dgn(player)
	local dgn_id = lualib:Map_CreateDgn("ս������", false, 1200)
	lualib:Player_SetDgnTicket(player, dgn_id) 
    lualib:Player_EnterDgn(player, "ս������", 65, 65, 2)	
	return
end
