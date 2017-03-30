
local golds = {}
golds[65405] = 10000	--1金币
golds[65404] = 20000	--2金币
golds[65403] = 50000	--5金币
golds[65402] = 100000	--10金币
golds[65401] = 200000	--20金币
golds[65400] = 500000	--50金币

--[[加金币]]
function main(player_guid, item_guid)

	local item_id = lualib:Item_GetID(player_guid, item_guid)
	if item_id == 0 then
		lualib:SysMsg_SendTipsMsg(player_guid, "道具不存在！")
		lualib:SysMsg_SendWarnMsg(player_guid, "道具不存在！")
		return false
	end

	if golds[item_id] == nil then
		lualib:SysMsg_SendTipsMsg(player_guid, "道具类型不符合！")
		lualib:SysMsg_SendWarnMsg(player_guid, "道具类型不符合！")
		return false
	end

	if golds[item_id] ~= nil then
        if not lualib:Player_AddGold(player_guid, golds[item_id], true, "加金币：使用绑定钱袋道具", player_guid) then
			lualib:SysMsg_SendTipsMsg(player_guid, "添加绑定金币失败！")
			lualib:SysMsg_SendWarnMsg(player_guid, "添加绑定金币失败！")
			return false
        end

	lualib:SysMsg_SendTipsMsg(player_guid, "已获得"..golds[item_id].."个绑定金币！")
	lualib:SysMsg_SendPromptMsg(player_guid, "已获得"..golds[item_id].."个绑定金币！")
	end

	return true
end
