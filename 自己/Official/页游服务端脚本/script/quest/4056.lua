--����ɹ���ȡ�ص�
--quest_id ����id
function on_accept(player, quest_id)
	lualib:Map_GenNpc(lualib:MapGuid(player),"���ѽ����ĺ���ţħ", lualib:X(player), lualib:Y(player),2,lualib:GenRandom(1,8))
	lualib:AddTimer(player, 4056, 5000, 1, "enter_dgn")
	lualib:SysMsg_SendBottomColor(player, "5��󽫴��ͽ������񸱱���\n�����˳�����������������ؽ��Խ��븱����", 1, 12)
	return true	
end

function enter_dgn(player,timeid)
	local dgn_id = lualib:Map_CreateDgn("������ʱ����", false, 1200)
	lualib:Player_SetDgnTicket(player, dgn_id) 
    lualib:Player_EnterDgn(player, "������ʱ����", 22, 33, 1)	
	return true	
end
