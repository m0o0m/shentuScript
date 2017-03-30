function main(player_guid, item_guid)
	local monsters1 = lualib:Map_GetRegionMonsters(lualib:MapGuid(player_guid), "海魔触手1", lualib:X(player_guid), lualib:Y(player_guid), 8,false, false)
local monsters2 = lualib:Map_GetRegionMonsters(lualib:MapGuid(player_guid), "海魔触手2", lualib:X(player_guid), lualib:Y(player_guid), 8,false, false)
local monsters3 = lualib:Map_GetRegionMonsters(lualib:MapGuid(player_guid), "海魔触手3", lualib:X(player_guid), lualib:Y(player_guid), 8,false, false)
	if (#monsters1)+(#monsters2)+(#monsters3) == 0 then
		lualib:SysMsg_SendTriggerMsg(player_guid,"附近没有海魔触手")
		return false
	else
		lualib:ProgressBarStart(player_guid,5000, lualib:Name(item_guid), "progress_complete", "progress_abort", item_guid)
		return false
	end
end

function progress_complete(player_guid, item_guid)
	if not lualib:Item_Destroy(player_guid, item_guid, "扣任务道具", player_guid) then
		lualib:SysMsg_SendWarnMsg(player_guid, "扣除道具失败");
		return
	end
	
	if lualib:AddItem(player_guid,"残留的毒药",1, true,"",item_guid)then
		lualib:SysMsg_SendTriggerMsg(player_guid,"使用成功")
	end
end

function progress_abort(player_guid, item_guid)
	return false
end