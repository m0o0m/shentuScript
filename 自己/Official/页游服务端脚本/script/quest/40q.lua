function on_accept(player,quest_id)
	if  quest_id == 40 then
		lualib:SysPromptMsg(player, "由于路途较远，我会将你传送到目的地！")
		lualib:Player_MapMoveXY(player, "猪洞一层", 88, 85, 1)
	end
	return true
end 