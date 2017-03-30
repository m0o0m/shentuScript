function main(player, item)
    local dgn = lualib:Map_CreateDgn("封魔台", false, 1800)
    if dgn == "" then
		lualib:SysMsg_SendWarnMsg(player, "副本：封魔台创建失败！")
        return false
    end

    if lualib:Player_SetDgnTicket(player, dgn) == false then
		lualib:SysMsg_SendWarnMsg(player, "您不被许可进入地图！")
        return false
    end

    if lualib:Player_EnterDgn(player, "封魔台", 0, 0, 0) == false then
		lualib:SysMsg_SendWarnMsg(player, "进入地图失败！")
        return false
    end

    local amount = lualib:Item_GetAmount(player, item)
    lualib:Item_SetAmount(player, item, amount - 1)
	return true
end