function on_accept(player,quest_id)
	if quest_id == 47 then
		local sMapGuid = lualib:Map_CreateDgn( "������" , false , 30*60 )
		if lualib:Player_SetDgnTicket(player,sMapGuid) == true then
			if lualib:Map_IsDgnExist(sMapGuid) == true then
				lualib:Player_EnterDgn(player, "������" , 34 , 24 , 1 )
			end 
		end
	end
	
	return true
end 