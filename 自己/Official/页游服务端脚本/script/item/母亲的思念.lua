local CItem = {
	["npc"] = {"���Ի������",},
	["��ʹ�õ�ͼ��ʾ"] = "���ڱ��Ի��������Χʹ��!",
	["������ʱ��"] = 10000,
}

function main(player_guid, item_guid)
	if lualib:Distance(player_guid, lualib:Map_GetMapNpc(lualib:Map_GetMapGuid("����3Ұ��"), "���Ի������"))<5 then
		lualib:ProgressBarStart(player_guid,CItem["������ʱ��"] , lualib:Name(item_guid), "progress_complete", "progress_abort", item_guid) 	
	else
		lualib:SysMsg_SendTriggerMsg(player_guid, CItem["��ʹ�õ�ͼ��ʾ"])
	end
	return false
end

function progress_complete(player_guid, item_guid)
	if not lualib:Item_Destroy(player_guid, item_guid, "���������", player_guid) then
		lualib:SysMsg_SendWarnMsg(player_guid, "�۳�����ʧ��");
		return
	end
	
	lualib:AddItem(player_guid, "ĸ�׵�˼��(���)",1, true,"",item_guid)
end

function progress_abort(player_guid, item_guid)
	return false
end