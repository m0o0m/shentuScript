
		
function on_accept(player, quest_id)
	local map = lualib:MapGuid(player)
    local X = lualib:X(player)
    local Y = lualib:Y(player)
	lualib:Map_GenSingleMonster(map, X, Y, 3, 5, "����",false)
	lualib:SysMsg_SendTriggerMsg(player, "���ǳ���������ߣ������������ڻ�ɱ����������ʧ���ɷ��������ؽӣ�")
	return true
end