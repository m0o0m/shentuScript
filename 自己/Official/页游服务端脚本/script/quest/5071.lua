
		
function on_accept(player, quest_id)
	local map = lualib:MapGuid(player)
    local X = lualib:X(player)
    local Y = lualib:Y(player)
	lualib:Map_GenSingleMonster(map, X, Y, 5, 5, "���û�",false)
	lualib:SysMsg_SendTriggerMsg(player, "���ûʳ���������ߣ������������ڻ�ɱ����������ʧ������������ؽӣ�")
	return true
end