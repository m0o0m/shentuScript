

function on_accept(player, quest_id)
	local map = lualib:Map_GetMapGuid("�����1")
	local monster = lualib:Map_GenSingleMonster(map, 92, 93, 5, 5, "���������1",false)
	lualib:SysMsg_SendTriggerMsg(player, "������������������һ����ڣ������������ڻ�ɱ����ע������Լ��Ĺ���ģʽ���������������ʧ���ɷ��������ؽӣ�")
	local a = lualib:Camp(player)
	local u = a + 1 	
	lualib:SetCamp(monster, u)
	return true
end










