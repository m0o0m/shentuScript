
		
function on_accept(player, quest_id)
	local map = lualib:MapGuid(player)
    local X = lualib:X(player)
    local Y = lualib:Y(player)
	lualib:Map_GenSingleMonster(map, X, Y, 3, 5, "̰������ؤ",false)
	lualib:SysMsg_SendTriggerMsg(player, "̰������ؤ�����������ߣ������������ڻ�ɱ����������ʧ������������ؽӣ�")
	return true
end