--����ɹ���ȡ�ص�
--quest_id ����id
function on_accept(player, quest_id)
	lualib:Map_GenNpc(lualib:MapGuid(player),"��������", lualib:X(player), lualib:Y(player),2,lualib:GenRandom(1,8))
	lualib:AddTimer(player, 4007,15000, 1, "enter_dgn")
return false
end

function enter_dgn(player,timeid)
	local dgn_id = lualib:Map_CreateDgn("�����ؾ�", false, 1800)
	lualib:Player_SetDgnTicket(player, dgn_id) 
    lualib:Player_EnterDgn(player, "�����ؾ�", 50, 70, 10) 
end