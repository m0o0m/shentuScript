local campaignpos = {
	["��ħ����"] = {"�����������"},
	["��ħ���"] = {"����ħ������"},
	["Ĥ�ݳ���"] = {"Ĥ�ݳ�����"},
	["����֮��"] = {"����֮��"},
	["Ԫ�����껪"] = {"Ԫ�����껪"},
	["Ѱ���ᱦ"] = {"���Ƕᱦ���"},
	["ȺӢ����"] = {"����ҹս�����"},
	["˭������"] = {"����˭������"},
	["�޾���Ԩ"] = {"����������Ա"},
	["Ѻ���淨"] = {"���ڳ���"},

	
}

function playermove(player,param)
	if lualib:HasBuff(player,"��̯") then
		lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
		return false
	end
	if param == "Ԫ�����껪" then
		lualib:Player_MapMoveXY(player, "����", 86, 143, 6)
		return ""
	end
	if param == "����ս" then
		lualib:Player_MapMoveXY(player, "����", 160, 190, 10)
		return ""
	end
	lualib:Player_NpcMove(player, campaignpos[param][1],2)
	return ""
end
