function main(player_guid, item_guid)
	local monsters1 = lualib:Map_GetRegionMonsters(lualib:MapGuid(player_guid), "黑面牛魔1", lualib:X(player_guid), lualib:Y(player_guid), 8,false, false)
local monsters2 = lualib:Map_GetRegionMonsters(lualib:MapGuid(player_guid), "挖肉黑面牛魔1", lualib:X(player_guid), lualib:Y(player_guid), 8,false, false)
local monsters3 = lualib:Map_GetRegionMonsters(lualib:MapGuid(player_guid), "精英黑面牛魔1", lualib:X(player_guid), lualib:Y(player_guid), 8,false, false)
local monsters4 = lualib:Map_GetRegionMonsters(lualib:MapGuid(player_guid), "超级黑面牛魔1", lualib:X(player_guid), lualib:Y(player_guid), 8,false, false)

	if (#monsters1)+(#monsters2)+(#monsters3)+(#monsters4) == 0 then
		lualib:SysMsg_SendTriggerMsg(player_guid,"附近没有黑面牛魔")
		return false
	else
		lualib:ProgressBarStart(player_guid,500, lualib:Name(item_guid), "progress_complete", "progress_abort", item_guid)
		return false
	end
end

function progress_complete(player_guid, item_guid)
	if lualib:AddItem(player_guid,"被禁锢的黑面牛魔",1, true,"",item_guid)then
		if not lualib:DelItem(player_guid, "魔法禁锢符咒",1, 2,"",item_guid) then
			lualib:SysMsg_SendTriggerMsg(player_guid,"扣除道具失败")
			return
		end
		
		lualib:SysMsg_SendTriggerMsg(player_guid,"使用成功")
	end
end

function progress_abort(player_guid, item_guid)
	return false
end