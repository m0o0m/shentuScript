function on_accept(player,quest_id)
	if  quest_id == 51 then
		lualib:SysPromptMsg(player, "由于路途较远，我会将你传送到目的地！")
		lualib:Player_MapMoveXY(player, "土城", 103, 128, 1)
	end
	return true
end 
