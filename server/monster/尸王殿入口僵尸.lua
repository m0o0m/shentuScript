function on_create(monster)
	lualib:AddTrigger(monster, lua_trigger_remove_buff, "remove_buff")
end

function remove_buff(monster, buffId)
	local map = lualib:MapGuid(monster)
	local x = lualib:X(monster)
	local y = lualib:Y(monster)
	local to_map = lualib:Map_GetMapGuid("Ê¬Íõµî")
	if tonumber(buffId) == 96 then
		lualib:Map_AddJumpPoint(map, to_map, x, y, 23, 23)
		lualib:DelayCall(map, 60000, "remove_Jump", x.."#"..y)
	end
end

function remove_Jump(map, x, y)
	lualib:Map_DelJumpPoint(map, tonumber(x), tonumber(y))
end