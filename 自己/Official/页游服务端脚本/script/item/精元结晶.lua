
function main(player, item)
	local tbl_item = {"野兽精元","骷髅精元","僵尸精元","牛魔精元","树妖精元","傀儡精元","魔人精元"}

	local bag_free = lualib:Player_GetBagFree(player)
    if bag_free < 1 then
        lualib:SysMsg_SendWarnMsg(player, "背包已满！")
        return false
    end
	
	local lua_suiji = lualib:GenRandom(1, table.getn(tbl_item))
	if not lualib:Player_GiveItemUnbind(player, tbl_item[lua_suiji], 1, "给物品：精元结晶", player) then
        lualib:SysMsg_SendWarnMsg(player, "给予物品失败！")
        return false
    end

    return true
end