local golds = {}
golds[40] = 100000	
golds[45] = 300000	
golds[50] = 1000000	
golds[55] = 1500000	
golds[60] = 1800000	
golds[65] = 2000000	

--[[�ӽ��]]
function main(player_guid, item_guid)

	local item_id = lualib:Item_GetID(player_guid, item_guid)
	if item_id == 0 then
		lualib:SysMsg_SendTipsMsg(player_guid, "���߲����ڣ�")
		lualib:SysMsg_SendWarnMsg(player_guid, "���߲����ڣ�")
		return false
	end

	local level = lualib:Level(player_guid)

	if level < 30 then
			if not lualib:Player_AddGold(player_guid, golds[40], false, "ÿ�����������Ǯ�������", player_guid) then
				lualib:SysMsg_SendTipsMsg(player_guid, "��Ӱ󶨽��ʧ�ܣ�")
				lualib:SysMsg_SendWarnMsg(player_guid, "��Ӱ󶨽��ʧ�ܣ�")
				return false
			end
	elseif level >= 30 and level < 40 then
			if not lualib:Player_AddGold(player_guid, golds[45], false, "ÿ�����������Ǯ�������", player_guid) then
				lualib:SysMsg_SendTipsMsg(player_guid, "��Ӱ󶨽��ʧ�ܣ�")
				lualib:SysMsg_SendWarnMsg(player_guid, "��Ӱ󶨽��ʧ�ܣ�")
				return false
			end
	elseif level >= 40 and level < 50 then
			if not lualib:Player_AddGold(player_guid, golds[50], false, "ÿ�����������Ǯ�������", player_guid) then
				lualib:SysMsg_SendTipsMsg(player_guid, "��Ӱ󶨽��ʧ�ܣ�")
				lualib:SysMsg_SendWarnMsg(player_guid, "��Ӱ󶨽��ʧ�ܣ�")
				return false	
			end
	elseif level >= 50 and level < 55 then
			if not lualib:Player_AddGold(player_guid, golds[55], false, "ÿ�����������Ǯ�������", player_guid) then
				lualib:SysMsg_SendTipsMsg(player_guid, "��Ӱ󶨽��ʧ�ܣ�")
				lualib:SysMsg_SendWarnMsg(player_guid, "��Ӱ󶨽��ʧ�ܣ�")
				return false
			end
	elseif level >= 55 and level < 60 then
			if not lualib:Player_AddGold(player_guid, golds[60], false, "ÿ�����������Ǯ�������", player_guid) then
				lualib:SysMsg_SendTipsMsg(player_guid, "��Ӱ󶨽��ʧ�ܣ�")
				lualib:SysMsg_SendWarnMsg(player_guid, "��Ӱ󶨽��ʧ�ܣ�")
				return false
			end
	elseif level >= 60 and level < 65 then
			if not lualib:Player_AddGold(player_guid, golds[65], false, "ÿ�����������Ǯ�������", player_guid) then
				lualib:SysMsg_SendTipsMsg(player_guid, "��Ӱ󶨽��ʧ�ܣ�")
				lualib:SysMsg_SendWarnMsg(player_guid, "��Ӱ󶨽��ʧ�ܣ�")
				return false	
			end
	elseif level >= 60 then
			if not lualib:Player_AddGold(player_guid, golds[65], false, "ÿ�����������Ǯ�������", player_guid) then
				lualib:SysMsg_SendTipsMsg(player_guid, "��Ӱ󶨽��ʧ�ܣ�")
				lualib:SysMsg_SendWarnMsg(player_guid, "��Ӱ󶨽��ʧ�ܣ�")
				return false				
			end
	end
	
	

	return true
end
