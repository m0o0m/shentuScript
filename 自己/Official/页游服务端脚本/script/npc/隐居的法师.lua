function main(npc,player)
	local msg = ""
	msg = msg .. "     �������������ǵģ������Ƕ����ǵģ����գ��������ǰ������ǵģ�\n \n\n "
	--msg = msg .. "     �������������ǵģ������Ƕ����ǵģ����գ��������ǰ������ǵģ�\n \n\n "
	--msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@likai *01* ��ս��>\n"
	return msg
end

function likai(npc,player)
	local map = lualib:MapGuid(player)
    local X = lualib:X(player)
    local Y = lualib:Y(player)
	local a = 2
	
	if  lualib:HasQuest(player,5069) == false then
		lualib:SysMsg_SendTriggerMsg(player, "��ȡ�������󷽿���ս��")	
		return ""
	end
	
	if  lualib:Map_GetMonsterCount(map, "���ӵķ�ʦ", true, true) > a then
		lualib:SysMsg_SendTriggerMsg(player, "�����Ѵ��ڣ�")	
	else	
		local monster = lualib:Map_GenSingleMonster(map, X, Y, 5, 5, "���ӵķ�ʦ", false)
		lualib:AddBuff(monster, "�䶷�����޳�����", 0)
	end
	return ""
end