local CItem = {
	["ʹ�õ�ͼ"] = {"����3","����3����1","����3Ұ��"},
	["ʹ��ʧ��"] = "ʲô��û�з�����",
	["������ʱ��"] = 10000,
	["��������"] = {"������(���)"},
}

function main(player_guid, item_guid)
	for _,v in pairs(CItem["ʹ�õ�ͼ"])do
		if lualib:KeyName(lualib:MapGuid(player_guid)) == v then
			lualib:ProgressBarStart(player_guid,CItem["������ʱ��"] , lualib:Name(item_guid), "progress_complete", "progress_abort", item_guid)
			return false
		end
	end
	lualib:SysMsg_SendTriggerMsg(player_guid, CItem["ʹ��ʧ��"])
end

function progress_complete(player_guid, item_guid)
	if lualib:AddItem(player_guid, CItem["��������"][1],1, true,"",item_guid)then
		if not lualib:DelItem(player_guid, "������",1, 2,"",item_guid) then
			lualib:SysMsg_SendTriggerMsg(player_guid,"�۳�����ʧ��")
			return
		end
		
		lualib:SysMsg_SendTriggerMsg(player_guid,"ʹ�óɹ�")
	end
end

function progress_abort(player_guid, item_guid)
	return false
end