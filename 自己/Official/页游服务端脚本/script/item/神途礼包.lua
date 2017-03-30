
function main(player, item)
    local item_table = {
						"灵元珠",
						"灵元珠",
						"灵元珠",
						"灵元珠",
						"灵元珠",
						"灵元珠",
						"灵元珠",
						"双倍经验卷轴",
						"双倍经验卷轴",
						"双倍经验卷轴",
						"双倍经验卷轴",
						"双倍经验卷轴",
						"3倍经验卷轴",
						"3倍经验卷轴",
						"3倍经验卷轴",
						"锦织袋",
						"皮革囊",
						"百珍囊",
						"巫山城传送石",
						"龙城传送石",
						"定位石",
						"祝福神水",
						"打捆绳",
						"号角",
						"修复神水"
                    }

    local bag_free = lualib:Player_GetBagFree(player)
    if bag_free < 1 then
        lualib:SysMsg_SendWarnMsg(player, "背包已满！")
        return false
    end

    local index = lualib:GenRandom(1, table.getn(item_table))
    if not lualib:Player_GiveItemUnbind(player, item_table[index], 1, "给物品：神途礼包", player) then
        lualib:SysMsg_SendWarnMsg(player, "给予物品失败！")
        return false
    end

    return true
end
