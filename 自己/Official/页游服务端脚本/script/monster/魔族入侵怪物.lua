function on_create(monster) 
	lualib:AddTrigger(monster, lua_trigger_post_die, "on_post_die")
	
	return ""
end
 
function on_post_die(monster, killer)
	 
	local x = lualib:X(monster)
    local y = lualib:Y(monster)
	local mapguid = lualib:MapGuid(monster)     
	for i=1,100 do
			lualib:Map_GenItemRnd(mapguid, x, y, 3, "BOSS积分精魄小", 1, true, 0)
	end
	return ""
end
