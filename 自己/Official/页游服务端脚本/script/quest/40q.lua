function on_accept(player,quest_id)
	if  quest_id == 40 then
		lualib:SysPromptMsg(player, "����·;��Զ���һὫ�㴫�͵�Ŀ�ĵأ�")
		lualib:Player_MapMoveXY(player, "��һ��", 88, 85, 1)
	end
	return true
end 