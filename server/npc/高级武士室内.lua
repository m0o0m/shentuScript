function main(npc, player)
	local map = lualib:Map_GetMapGuid("����С��")
	if lualib:Map_GetMonsterCount(map, "", true, true) == 0 then
		lualib:Player_MapMoveXY(player, "��ɽ��", 75, 355, 0)
		lualib:SetInt(player, "my_quest", 7)
		return ""
	else
		return "��ħ����������,��ȥ������������.\n \n<@Leave *01*�رնԻ�>"
	end
end

function Leave(npc, player)
	return ""
end