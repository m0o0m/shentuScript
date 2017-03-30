function main(player, item)
       local dgn = lualib:Map_CreateDgn("灵韵阁", false, 1800)
    if dgn == "" then
		lualib:SysMsg_SendWarnMsg(player, "副本：地下城创建失败！")
        return false
    end

    if lualib:Player_SetDgnTicket(player, dgn) == false then
		lualib:SysMsg_SendWarnMsg(player, "您不被许可进入地图！")
        return false
    end

    if lualib:Player_EnterDgn(player, "灵韵阁", 0, 0, 0) == false then
		lualib:SysMsg_SendWarnMsg(player, "进入地图失败！")
        return false
    end

    --lualib:Item_Destroy(player, item, "删物品：使用灵石", "灵石")
    local amount = lualib:Item_GetAmount(player, item)
    lualib:Item_SetAmount(player, item, amount - 1)

	return true
end
--[[
function enter(player, item)
    local dgn = lualib:Map_CreateDgn("灵韵阁", false, 1800)
    if dgn == "" then
        return "副本：地下城创建失败！\n \n<@leave *01*「离开」>"
    end

    if lualib:Player_SetDgnTicket(player, dgn) == false then
        return "您不被许可进入地图！\n \n<@leave *01*「离开」>"
    end

    if lualib:Player_EnterDgn(player, "灵韵阁", 0, 0, 0) == false then
        return "进入地图失败！\n \n<@leave *01*「离开」>"
    end

    --lualib:Item_Destroy(player, item, "删物品：使用灵石", "灵石")
    local amount = lualib:Item_GetAmount(player, item)
    lualib:Item_SetAmount(player, item, amount - 1)
    return ""
end]]

function leave(player)
    return ""
end
