function main(player, item_guid)
	local ItemName = lualib:KeyName(item_guid)
	local amount = lualib:Item_GetAmount(player, item_guid)
    local i = (string.gsub(ItemName,"��ҫ��",""))
    i = tonumber(i)
	lualib:Item_SetAmount(player, item_guid, amount - 1)
	lualib:SetInt(player,"jjc_rongyao",lualib:GetInt(player,"jjc_rongyao") + i) --������ҫֵ
	lualib:SysMsg_SendWarnMsg(player,"�����"..i.."����ҫֵ��")
	return true
end
