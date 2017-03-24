function main(npc, player)
	local map = lualib:Map_GetMapGuid("命运小屋")
	if lualib:Map_GetMonsterCount(map, "", true, true) == 0 then
		lualib:Player_MapMoveXY(player, "巫山城", 75, 355, 0)
		lualib:SetInt(player, "my_quest", 7)
		return ""
	else
		return "妖魔欲扰乱世界,快去把它们消除掉.\n \n<@Leave *01*关闭对话>"
	end
end

function Leave(npc, player)
	return ""
end