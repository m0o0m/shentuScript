function on_accept(player, quest)
	local sMapGuid = lualib:Map_CreateDgn( "��򼶴����" , false , 30*60 )
	if lualib:Player_SetDgnTicket(player,sMapGuid) == true then
		if lualib:Map_IsDgnExist(sMapGuid) == true then
			lualib:Player_EnterDgn(player, "��򼶴����", 44, 48, 3)
			return true
		end
	end
end

function can_accomplish( sPlayerID , iTaskID )
	if iTaskID == 37 then
		if lualib:GetInt( sPlayerID , "��򼶴����" ) > 0 then
			return true
		end
	end
	return true
end