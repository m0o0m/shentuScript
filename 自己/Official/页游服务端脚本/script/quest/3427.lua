
function on_accept(player, quest_id)
	local map = lualib:MapGuid(player)
	local x = lualib:X(player)
	local y = lualib:Y(player)	
	local b = lualib:GenRandom(1, 8)	
	if lualib:Map_GenSingleMonster(map, x, y, 4, b, "ħ������ʵ��", false) then	
		lualib:SysWarnMsg(player, "������ʾ����ʵ���Ѿ���ħ����ֹ���κο��ܵ��ж�����������������������\nʧ�ܺ���ɷ����ؽӣ�")
	end	
	
	return true
end

