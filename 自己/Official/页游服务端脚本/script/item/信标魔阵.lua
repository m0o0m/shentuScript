function main(player, item)
	local map_k = lualib:KeyName(lualib:MapGuid(player))
	local p_x = lualib:X(player)
	local p_y = lualib:Y(player)
	
	if map_k == "а��3" then
		if p_x > 258 and p_x < 262 and p_y > 76 and p_y < 81 then
			lualib:RunClientScript(player, "ItemEffect", "texiao", "100001581#"..p_x.."#"..p_y.."#0#30000")
			lualib:SysMsg_SendTriggerMsg(player, "ʹ�óɹ�")
			if not lualib:DelItem(player, "�ű�ħ��", 1, 2, "ʹ�óɹ�ɾ������", "�ű�ħ��") then
				lualib:SysMsg_SendTriggerMsg(player, "�۳�����ʧ��")
				return false
			end
		else
			lualib:SysMsg_SendTriggerMsg(player, "�㻹û�����а��3�㣨259:79��λ�ã�����ʹ�ã�")
			return false
		end
	else
		lualib:SysMsg_SendTriggerMsg(player, "�㻹û�����а��3�㣨259:79��λ�ã�����ʹ�ã�")
		return false
	end
	return true
end