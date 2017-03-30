function main(player_guid, item_guid)
	local monsters1 = lualib:Map_GetRegionMonsters(lualib:MapGuid(player_guid), "����ţħ1", lualib:X(player_guid), lualib:Y(player_guid), 8,false, false)
local monsters2 = lualib:Map_GetRegionMonsters(lualib:MapGuid(player_guid), "�������ţħ1", lualib:X(player_guid), lualib:Y(player_guid), 8,false, false)
local monsters3 = lualib:Map_GetRegionMonsters(lualib:MapGuid(player_guid), "��Ӣ����ţħ1", lualib:X(player_guid), lualib:Y(player_guid), 8,false, false)
local monsters4 = lualib:Map_GetRegionMonsters(lualib:MapGuid(player_guid), "��������ţħ1", lualib:X(player_guid), lualib:Y(player_guid), 8,false, false)

	if (#monsters1)+(#monsters2)+(#monsters3)+(#monsters4) == 0 then
		lualib:SysMsg_SendTriggerMsg(player_guid,"����û�к���ţħ")
		return false
	else
		lualib:ProgressBarStart(player_guid,500, lualib:Name(item_guid), "progress_complete", "progress_abort", item_guid)
		return false
	end
end

function progress_complete(player_guid, item_guid)
	if lualib:AddItem(player_guid,"�������ĺ���ţħ",1, true,"",item_guid)then
		if not lualib:DelItem(player_guid, "ħ����������",1, 2,"",item_guid) then
			lualib:SysMsg_SendTriggerMsg(player_guid,"�۳�����ʧ��")
			return
		end
		
		lualib:SysMsg_SendTriggerMsg(player_guid,"ʹ�óɹ�")
	end
end

function progress_abort(player_guid, item_guid)
	return false
end