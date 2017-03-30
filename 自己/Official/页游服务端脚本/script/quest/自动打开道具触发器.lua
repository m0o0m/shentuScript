function on_accomplish (player, intquest_id, intselect)
	lualib:AddTimer( player , 1 , 1000 , 1 , "on_timer" )
	return true
end

function on_timer(player, timerID )
	
		lualib:ApplyItem(player, "≤‚ ‘911", false);

end
