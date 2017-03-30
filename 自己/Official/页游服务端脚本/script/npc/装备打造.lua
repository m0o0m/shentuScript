local equip_count_table = {
                        {1, 30, 30, 50},
                        {1, 30, 30, 50},
                        {1, 30, 30, 50},
                        {1, 10, 50, 50, 50},
                        {1, 10, 50, 50, 50},
                        {1, 10, 50, 50, 50},
                        {1, 10, 50, 50, 50},
                        {1, 10, 50, 50, 50},
                        {1, 10, 50, 50, 50},
                        {1, 10, 50, 50, 50},
                        {1, 10, 50, 50, 50},
                        {1, 10, 50, 50, 50}
                    }

local equip_name_table = {
                        {"鬼头杖", "牛魔精元", "树妖精元", "傀儡精元"},
                        {"毁灭", "牛魔精元", "树妖精元", "傀儡精元"},
                        {"诅咒之剑", "牛魔精元", "树妖精元", "傀儡精元"},
                        {"紫晶战甲（男）", "牛魔精元", "树妖精元", "傀儡精元",  "魔人精元"},
                        {"紫晶战甲（女）", "牛魔精元", "树妖精元", "傀儡精元",  "魔人精元"},
                        {"阎罗长袍（男）", "牛魔精元", "树妖精元", "傀儡精元",  "魔人精元"},
                        {"阎罗长袍（女）", "牛魔精元", "树妖精元", "傀儡精元",  "魔人精元"},
                        {"光明道袍（男）", "牛魔精元", "树妖精元", "傀儡精元",  "魔人精元"},
                        {"光明道袍（女）", "牛魔精元", "树妖精元", "傀儡精元",  "魔人精元"},
                        {"判决之杖", "牛魔精元", "树妖精元", "傀儡精元",  "魔人精元"},
                        {"飞魂法杖", "牛魔精元", "树妖精元", "傀儡精元",  "魔人精元"},
                        {"天晶道棍", "牛魔精元", "树妖精元", "傀儡精元",  "魔人精元"}
                    }

function main(npc, player)
    local msg = "     只要提供足够的材料，我能打造出惊天下泣鬼神的绝世神兵！"
    msg = msg.."<@Build#1 *01*"..equip_name_table[1][1]..">"
    msg = msg.."<@Build#2 *01*"..equip_name_table[2][1]..">"
    msg = msg.."<@Build#3 *01*"..equip_name_table[3][1]..">"
    msg = msg.."<@Build#4 *01*"..equip_name_table[4][1]..">"
    msg = msg.."<@Build#5 *01*"..equip_name_table[5][1]..">"
    msg = msg.."<@Build#6 *01*"..equip_name_table[6][1]..">"
    msg = msg.."<@Build#7 *01*"..equip_name_table[7][1]..">"
    msg = msg.."<@Build#8 *01*"..equip_name_table[8][1]..">"
    msg = msg.."<@Build#9 *01*"..equip_name_table[9][1]..">"
    msg = msg.."<@Build#10 *01*"..equip_name_table[10][1]..">"
    msg = msg.."<@Build#11 *01*"..equip_name_table[11][1]..">"
    msg = msg.."<@Build#12 *01*"..equip_name_table[12][1]..">"
    return msg
end

function Build(npc, player, index)	
    local msg = "「确定」要打造："..equip_name_table[tonumber(index)][1].." 吗？\n"
    for i = 2, table.getn(equip_name_table[tonumber(index)]) do
        msg = msg.."打造需要材料："..equip_name_table[tonumber(index)][i].."* "..equip_count_table[tonumber(index)][i].."！\n"
    end
    msg = msg.."<@BuildEx#"..index.." *01*打造>"
    msg = msg.."<@Leave *01*「离开」>"
    return msg
end

function BuildEx(npc, player, index)
    local name_table = {}
    local count_table = {}
    local bind_table = {}
    local opr_table = {}
    for i = 1, table.getn(equip_name_table[tonumber(index)]) do
        name_table[i] = equip_name_table[tonumber(index)][i]
        count_table[i] = equip_count_table[tonumber(index)][i]
        bind_table[i] = 0
        if i == 1 then
            opr_table[i] = 0
        else
            opr_table[i] = 1
        end        
    end

    if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "事务操作：装备打造", player) then
        lualib:SysMsg_SendWarnMsg(player, "装备打造失败，材料不足或背包已满！")
        return "装备打造失败，材料不足或背包已满！"
    end

    lualib:SysMsg_SendTriggerMsg(player, "获得物品："..equip_name_table[tonumber(index)][1].."！")
    return "物品打造成功！"
end


