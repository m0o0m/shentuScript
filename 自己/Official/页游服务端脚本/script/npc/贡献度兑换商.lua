
local item_table = {{"万年雪霜包", 1, 1}, {"疗伤药包", 1, 1}, {"超级黄色药粉", 1, 1}, {"超级灰色药粉", 1, 1}}
function main(npc, player)
	local msg = "    没有付出就没有得到，成就越高，责任越大，兄弟，你对本行会做出贡献了吗？那么，你可以在我这里「兑换」各种珍稀物品。\n \n"
	msg = msg.."<@ExchangeInfo#1 *01*"..item_table[1][1]..">     "
    msg = msg.."<@ExchangeInfo#2 *01*"..item_table[2][1]..">     "
    msg = msg.."<@ExchangeInfo#3 *01*"..item_table[3][1]..">     "
    msg = msg.."<@ExchangeInfo#4 *01*"..item_table[4][1]..">     \n \n \n \n \n"
    msg = msg.."<@Leave *01*  「离开」>\n"
	return msg
end

function ExchangeInfo(npc, player, types)
    local msg = "「兑换」 "..item_table[tonumber(types)][1].." 需要 "..item_table[tonumber(types)][3].." 点贡献度，你「确定」要「兑换」么？\n \n"
    msg = msg.."<@ExchangeItem#"..types.." *01*「确定」>\n"
    msg = msg.."<@Leave *01*「离开」>\n"
    return msg
end

function ExchangeItem(npc, player, types)
    local free_slot_count = lualib:Player_GetBagFree(player)
    if free_slot_count < item_table[tonumber(types)][2] then
        return "背包已满！"
    end

    if lualib:Player_ReCalGuildCtrb(player, 0 - item_table[tonumber(types)][3]) == false then 
        return "贡献度不足！" 
    end    

    if lualib:Player_GiveItemUnbind(player, item_table[tonumber(types)][1], 1, "给物品：贡献度「兑换」商", player) == false then 
        return "「兑换」失败@2！" 
    end
    
    lualib:SysMsg_SendTriggerMsg(player, item_table[tonumber(types)][1].." 「兑换」成功！")
    return item_table[tonumber(types)][1].." 「兑换」成功！"
end

function Leave(npc, player)
    return ""
end