function main(player, item_guid)
	local ItemName = lualib:KeyName(item_guid)
	local amount = lualib:Item_GetAmount(player, item_guid)
    local i = (string.gsub(ItemName,"荣耀牌",""))
    i = tonumber(i)
	lualib:Item_SetAmount(player, item_guid, amount - 1)
	lualib:SetInt(player,"jjc_rongyao",lualib:GetInt(player,"jjc_rongyao") + i) --增加荣耀值
	lualib:SysMsg_SendWarnMsg(player,"获得了"..i.."点荣耀值！")
	return true
end
