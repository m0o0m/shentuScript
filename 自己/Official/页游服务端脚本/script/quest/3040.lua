--����ɹ���ȡ�ص�
--quest_id ����id
function on_accept(player, quest_id)
	lualib:AddBuff(player, "������", 0)
	lualib:AddTimerEx(player, 1, 200, 1, "chuansong", "")
	lualib:SysPromptMsg(player, "����·;��Զ����2��֮���㴫�͵�Ŀ�ĵأ��Ժ������ʹ����ң���Լ����͵���ȥ�ĵط���")
	return	true
end

function chuansong(player)
	lualib:Player_MapMoveXY(player, "��ɽ��", 233, 291, 5)
	lualib:SysPromptMsg(player, "���ͳɹ���")
	lualib:DisableTimer(player, 1)
    return true
end