function on_map_create(map)
   lualib:AddTrigger(map,  lua_trigger_pre_enter_jump, "on_pre_enter_jump")
end
 
function on_pre_enter_jump(player, from_map, to_map)
	local level = lualib:Level(player)
	local to_map_keyname = lualib:KeyName(to_map)
	if to_map_keyname == "��" then
		if level < 1 then
			lualib:SysMsg_SendPromptMsg(player, "���ĵȼ����㣬�޷�����")
			return false
		else
			return true
		end
	end	
	
	if to_map_keyname == "��򼶴һ��" then
		if level < 30 then
			lualib:SysMsg_SendPromptMsg(player, "���ĵȼ�����30�����޷�����")
			return false
		else
			return true
		end
	end
	
	if to_map_keyname == "��һ��" then
		if level < 30 then
			lualib:SysMsg_SendPromptMsg(player, "���ĵȼ�����30�����޷�����")
			return false
		else
			return true
		end
	end
	
	if to_map_keyname == "��������һ��" then
		if level < 40 then
			lualib:SysMsg_SendPromptMsg(player, "���ĵȼ�����40�����޷�����")
			return false
		else
			return true
		end
	end
	
	if to_map_keyname == "�����������" then
		if level < 40 then
			lualib:SysMsg_SendPromptMsg(player, "���ĵȼ�����40�����޷�����")
			return false
		else
			return true
		end
	end

	if to_map_keyname == "�������һ��" then
		if level < 50 then
			lualib:SysMsg_SendPromptMsg(player, "���ĵȼ�����50�����޷�����")
			return false
		else
			return true
		end
	end
	
	return true
end
