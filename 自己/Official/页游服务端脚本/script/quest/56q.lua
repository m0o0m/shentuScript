function on_accept(player,quest_id)
	local sMapGuid =lualib:Map_CreateDgn( "神歌城副本" , false , 30*60 )
	if lualib:Player_SetDgnTicket(player,sMapGuid) == true then
			if lualib:Map_IsDgnExist(sMapGuid) == true then
				lualib:Player_EnterDgn(player, "神歌城副本" , 121 , 148 , 1 )
			end 
		end

	return true
end 