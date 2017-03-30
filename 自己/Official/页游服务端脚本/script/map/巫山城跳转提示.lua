function on_map_create(map)
   lualib:AddTrigger(map,  lua_trigger_pre_enter_jump, "on_pre_enter_jump")
end
 
function on_pre_enter_jump(player, from_map, to_map)
	local level = lualib:Level(player)
	local to_map_keyname = lualib:KeyName(to_map)
	if to_map_keyname == "矿洞" then
		if level < 1 then
			lualib:SysMsg_SendPromptMsg(player, "您的等级不足，无法传送")
			return false
		else
			return true
		end
	end	
	
	if to_map_keyname == "蜈蚣洞一层" then
		if level < 30 then
			lualib:SysMsg_SendPromptMsg(player, "您的等级不足30级，无法传送")
			return false
		else
			return true
		end
	end
	
	if to_map_keyname == "猪洞一层" then
		if level < 30 then
			lualib:SysMsg_SendPromptMsg(player, "您的等级不足30级，无法传送")
			return false
		else
			return true
		end
	end
	
	if to_map_keyname == "沃玛寺庙一层" then
		if level < 40 then
			lualib:SysMsg_SendPromptMsg(player, "您的等级不足40级，无法传送")
			return false
		else
			return true
		end
	end
	
	if to_map_keyname == "祖玛寺庙入口" then
		if level < 40 then
			lualib:SysMsg_SendPromptMsg(player, "您的等级不足40级，无法传送")
			return false
		else
			return true
		end
	end

	if to_map_keyname == "赤月神殿一层" then
		if level < 50 then
			lualib:SysMsg_SendPromptMsg(player, "您的等级不足50级，无法传送")
			return false
		else
			return true
		end
	end
	
	return true
end
