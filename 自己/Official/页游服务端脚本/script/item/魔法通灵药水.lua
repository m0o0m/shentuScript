local CItem = {
	["npc"] = {"�¶�������",},
	["��ʹ�õ�ͼ��ʾ"] = "���ڹ¶���������Χʹ��!",
	["������ʱ��"] = 10000,
}

function main(player_guid, item_guid)
		if lualib:Distance(player_guid, lualib:Map_GetMapNpc(lualib:Map_GetMapGuid("����"), "�¶�������"))<5 then
			lualib:ProgressBarStart(player_guid,CItem["������ʱ��"] , lualib:Name(item_guid), "progress_complete", "progress_abort", item_guid) 	
		else
			lualib:SysMsg_SendTriggerMsg(player_guid, CItem["��ʹ�õ�ͼ��ʾ"])
		end
	return true	
	
end

function progress_complete(player_guid, item_guid)
	if lualib:AddItem(player_guid, "����һ���ҩˮ",1, true,"",item_guid)then
		if not lualib:DelItem(player_guid, "ħ��ͨ��ҩˮ",1, 2,"",item_guid) then
			lualib:SysMsg_SendTriggerMsg(player_guid,"�۳���Ʒʧ��")
			return
		end
	end
end

function progress_abort(player_guid, item_guid)
	return false
end