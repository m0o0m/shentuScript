function GetAttackMode(player)
	local mode = lualib:Player_GetAttackMode(player)
	if mode >= 0 then
		
		lualib:ShowFormWithContent(player,"½Å±¾±íµ¥","PlayerHeaderInfo.ModeEditUpdate(".. mode ..")")
	end
	return ""
end