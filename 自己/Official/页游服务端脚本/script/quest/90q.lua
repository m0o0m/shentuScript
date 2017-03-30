function on_accept(player,quest_id)
		lualib:SysPromptMsg(player, "由于路途较远，我会将你传送到目的地！")
		lualib:Player_MapMoveXY(player, "猪洞二层", 12, 73, 1)
	return true
end 
