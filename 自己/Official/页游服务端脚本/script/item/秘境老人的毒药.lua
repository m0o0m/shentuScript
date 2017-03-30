function main(player_guid, item_guid)
	local monsters1 = lualib:Map_GetRegionMonsters(lualib:MapGuid(player_guid), "��ħ����1", lualib:X(player_guid), lualib:Y(player_guid), 8,false, false)
local monsters2 = lualib:Map_GetRegionMonsters(lualib:MapGuid(player_guid), "��ħ����2", lualib:X(player_guid), lualib:Y(player_guid), 8,false, false)
local monsters3 = lualib:Map_GetRegionMonsters(lualib:MapGuid(player_guid), "��ħ����3", lualib:X(player_guid), lualib:Y(player_guid), 8,false, false)
	if (#monsters1)+(#monsters2)+(#monsters3) == 0 then
		lualib:SysMsg_SendTriggerMsg(player_guid,"����û�к�ħ����")
		return false
	else
		lualib:ProgressBarStart(player_guid,5000, lualib:Name(item_guid), "progress_complete", "progress_abort", item_guid)
		return false
	end
end

function progress_complete(player_guid, item_guid)
	if not lualib:Item_Destroy(player_guid, item_guid, "���������", player_guid) then
		lualib:SysMsg_SendWarnMsg(player_guid, "�۳�����ʧ��");
		return
	end
	
	if lualib:AddItem(player_guid,"�����Ķ�ҩ",1, true,"",item_guid)then
		lualib:SysMsg_SendTriggerMsg(player_guid,"ʹ�óɹ�")
	end
end

function progress_abort(player_guid, item_guid)
	return false
end