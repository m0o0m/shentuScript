function main(player, vipLevel)
	lualib:SysMsg_SendInputDlg(player, 10, "��������Ҫ̽�������ǳ�", 45, 14, "EnterHot", "")
	return true
end

function EnterHot(id,player,toName)
	--print(toName)
	local target_Guid = lualib:Name2Guid(toName)
	--print(player)
	if target_Guid == "" then 
		lualib:SysMsg_SendTriggerMsg(player, "Ŀ����Ҳ�����!")
		return false
	end
	local t_map = lualib:Name(lualib:MapGuid(target_Guid))
	local t_x = lualib:X(target_Guid)
	local t_y = lualib:Y(target_Guid)
	--print(t_map,t_x,t_y)
	
	lualib:SysMsg_SendTriggerMsg(player, "�Է�����λ�á�"..t_map.."��"..t_x..","..t_y.."��")
	return true
end
	
	