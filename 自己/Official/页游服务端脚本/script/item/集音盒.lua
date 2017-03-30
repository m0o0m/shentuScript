local CItem = {
	["使用地图"] = {"海底3","海底3船舱1","海底3野外"},
	["使用失败"] = "什么都没有发生！",
	["进度条时间"] = 10000,
	["奖励道具"] = {"集音盒(完成)"},
}

function main(player_guid, item_guid)
	for _,v in pairs(CItem["使用地图"])do
		if lualib:KeyName(lualib:MapGuid(player_guid)) == v then
			lualib:ProgressBarStart(player_guid,CItem["进度条时间"] , lualib:Name(item_guid), "progress_complete", "progress_abort", item_guid)
			return false
		end
	end
	lualib:SysMsg_SendTriggerMsg(player_guid, CItem["使用失败"])
end

function progress_complete(player_guid, item_guid)
	if lualib:AddItem(player_guid, CItem["奖励道具"][1],1, true,"",item_guid)then
		if not lualib:DelItem(player_guid, "集音盒",1, 2,"",item_guid) then
			lualib:SysMsg_SendTriggerMsg(player_guid,"扣除道具失败")
			return
		end
		
		lualib:SysMsg_SendTriggerMsg(player_guid,"使用成功")
	end
end

function progress_abort(player_guid, item_guid)
	return false
end