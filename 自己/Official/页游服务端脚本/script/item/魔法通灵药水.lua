local CItem = {
	["npc"] = {"孤独的旅人",},
	["非使用地图提示"] = "请在孤独的旅人周围使用!",
	["进度条时间"] = 10000,
}

function main(player_guid, item_guid)
		if lualib:Distance(player_guid, lualib:Map_GetMapNpc(lualib:Map_GetMapGuid("龙城"), "孤独的旅人"))<5 then
			lualib:ProgressBarStart(player_guid,CItem["进度条时间"] , lualib:Name(item_guid), "progress_complete", "progress_abort", item_guid) 	
		else
			lualib:SysMsg_SendTriggerMsg(player_guid, CItem["非使用地图提示"])
		end
	return true	
	
end

function progress_complete(player_guid, item_guid)
	if lualib:AddItem(player_guid, "喝了一半的药水",1, true,"",item_guid)then
		if not lualib:DelItem(player_guid, "魔法通灵药水",1, 2,"",item_guid) then
			lualib:SysMsg_SendTriggerMsg(player_guid,"扣除物品失败")
			return
		end
	end
end

function progress_abort(player_guid, item_guid)
	return false
end