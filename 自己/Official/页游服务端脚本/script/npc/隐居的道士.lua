function main(npc,player)
	local msg = ""
	msg = msg .. "     �������������ǵģ������Ƕ����ǵģ����գ��������ǰ������ǵģ�\n \n\n "
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@likai *01* ��ս��>\n"
	return msg
end

function likai(npc,player)
	local map = lualib:MapGuid(player)
    local X = lualib:X(player)
    local Y = lualib:Y(player)
	local a = 0
	
	if  lualib:HasQuest(player,5070) == false then
		lualib:SysMsg_SendTriggerMsg(player, "��ȡ�������󷽿���ս��")
		return ""	
	end	
	
	if  lualib:Map_GetMonsterCount(map, "���ӵĵ�ʿ", true, true) > a then
		lualib:SysMsg_SendTriggerMsg(player, "�����Ѵ��ڣ�")
		return ""
	else
		lualib:Map_GenMonster(map, X, Y, 5, 5, "���ӵĵ�ʿ", 1, false)
		return ""
	end
	return
	
end

