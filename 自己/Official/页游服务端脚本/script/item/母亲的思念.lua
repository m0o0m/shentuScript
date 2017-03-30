local CItem = {
	["npc"] = {"被迷惑的男子",},
	["非使用地图提示"] = "请在被迷惑的男子周围使用!",
	["进度条时间"] = 10000,
}

function main(player_guid, item_guid)
	if lualib:Distance(player_guid, lualib:Map_GetMapNpc(lualib:Map_GetMapGuid("海底3野外"), "被迷惑的男子"))<5 then
		lualib:ProgressBarStart(player_guid,CItem["进度条时间"] , lualib:Name(item_guid), "progress_complete", "progress_abort", item_guid) 	
	else
		lualib:SysMsg_SendTriggerMsg(player_guid, CItem["非使用地图提示"])
	end
	return false
end

function progress_complete(player_guid, item_guid)
	if not lualib:Item_Destroy(player_guid, item_guid, "扣任务道具", player_guid) then
		lualib:SysMsg_SendWarnMsg(player_guid, "扣除道具失败");
		return
	end
	
	lualib:AddItem(player_guid, "母亲的思念(完成)",1, true,"",item_guid)
end

function progress_abort(player_guid, item_guid)
	return false
end