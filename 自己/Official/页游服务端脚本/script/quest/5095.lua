
		
function on_accept(player, quest_id)
	local map = lualib:MapGuid(player)
    local X = lualib:X(player)
    local Y = lualib:Y(player)
	local monster = lualib:Map_GenSingleMonster(map, X, Y, 3, 5, "ս��ָ��Ա",false)
	lualib:AddBuff(monster, "�䶷�����ս����", 0)
	lualib:SysMsg_SendTriggerMsg(player, "ս��ָ��Ա����������ߣ������������ڻ�ɱ����ս��ָ��Ա��ʧ������������ؽӣ�")
	return true
end