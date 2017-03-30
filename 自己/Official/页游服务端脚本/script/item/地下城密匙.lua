function main(player, item)
    local dgn = lualib:Map_CreateDgn("地下城", false, 1800)
    if dgn == "" then
		lualib:SysMsg_SendWarnMsg(player, "副本：地下城创建失败！")
        return false
    end

    if lualib:Player_SetDgnTicket(player, dgn) == false then 
		lualib:SysMsg_SendWarnMsg(player, "您不被许可进入地图！")
        return false
    end

    if lualib:Player_EnterDgn(player, "地下城", 0, 0, 0) == false then 
		lualib:SysMsg_SendWarnMsg(player, "进入地图失败！")
        return false
    end

    --lualib:Item_Destroy(player, item, "删物品：使用地下城密匙", "地下城密匙")
    local amount = lualib:Item_GetAmount(player, item)
    lualib:Item_SetAmount(player, item, amount - 1)
	return true
end


function leave(player)
    return ""
end