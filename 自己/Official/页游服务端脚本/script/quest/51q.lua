function on_accept(player,quest_id)
	if  quest_id == 51 then
		lualib:SysPromptMsg(player, "����·;��Զ���һὫ�㴫�͵�Ŀ�ĵأ�")
		lualib:Player_MapMoveXY(player, "����", 103, 128, 1)
	end
	return true
end 
