function GetAttackMode(player)
	local mode = lualib:Player_GetAttackMode(player)
	if mode >= 0 then
		
		lualib:ShowFormWithContent(player,"�ű���","PlayerHeaderInfo.ModeEditUpdate(".. mode ..")")
	end
	return ""
end