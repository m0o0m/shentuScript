function on_accept(player, quest)
	local sMapGuid = lualib:Map_CreateDgn( "òÚò¼¶´¸±±¾" , false , 30*60 )
	if lualib:Player_SetDgnTicket(player,sMapGuid) == true then
		if lualib:Map_IsDgnExist(sMapGuid) == true then
			lualib:Player_EnterDgn(player, "òÚò¼¶´¸±±¾", 44, 48, 3)
			return true
		end
	end
end

function can_accomplish( sPlayerID , iTaskID )
	if iTaskID == 37 then
		if lualib:GetInt( sPlayerID , "òÚò¼¶´¸±±¾" ) > 0 then
			return true
		end
	end
	return true
end