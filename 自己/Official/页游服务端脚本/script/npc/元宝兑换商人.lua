local talk_t = {"元宝是不能直接交易的，需要兑换为道具。", "免费服务，不收手续费！", "一视同仁，不设贵宾专柜！"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 20000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    local msg = "     本店经营元宝多年，可以帮你把数值元宝「兑换」成道具元宝，只有这样，才可以进行元宝交易哦！\n \n"
    msg = msg.."<@submit *01*「兑换」元宝>\n \n"
    msg = msg.."<@leave *01*「离开」>\n "
    return msg
end

function leave(npc, player)
    return ""
end

local ingot_table = {
						{"1元宝", 1,"【  1元宝  】    "},
						{"2元宝", 2,"【  2元宝  】    "},
						{"5元宝", 5,"【  5元宝  】    "},
						{"10元宝", 10,"【  10元宝 】    "},
						{"20元宝", 20,"【  20元宝 】    "},
						{"50元宝", 50,"【  50元宝 】   \n \n"},
						{"100元宝", 100,"【  100元宝】    "},
						{"200元宝", 200,"【  200元宝】    "    },
						{"500元宝", 500,"【  500元宝】   "    },
						{"1000元宝", 1000,"【 1000元宝】    "},
						{"2000元宝", 2000,"【 2000元宝】    "},
						{"5000元宝", 5000,"【 5000元宝】  \n "},
						{"10000元宝", 10000,"【10000元宝】"}
                    }

function submit(npc, player)
    local msg = ""
    for i = 1, table.getn(ingot_table) do
        msg = msg.."#COLORCOLOR_BLUE#★#COLOREND#<@exchange#"..i.." *01*"..ingot_table[i][3]..">"
    end
        msg = msg.."　　\n　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　#IMAGE<ID:1902700019>#<@main *01*「返回首页」>\n "
    return msg
end

function exchange(npc, player, type)
    if not lualib:Player_IsIngotEnough(player, ingot_table[tonumber(type)][2], false) then
        return "元宝不足！"
    end

    if lualib:Player_GetBagFree(player) < 1 then return "你的背包满了！" end

    if not lualib:Player_SubIngot(player, ingot_table[tonumber(type)][2], false, "扣元宝：从元宝商人处将元宝「兑换」成元宝道具", player) then
        return "扣除元宝失败！"
    end

    if not lualib:Player_GiveItemUnbind(player, trim(ingot_table[tonumber(type)][1]), 1, "给物品：元宝「兑换」商人", player) then
        return "给予物品失败！"
    end

    msg = "元宝「兑换」成功！\n \n"
	msg = msg.."<@submit *01*继续「兑换」>\n \n"
	msg = msg.."<@leave *01*「离开」>\n"
    return msg
end

function trim(s)
    return (string.gsub(s, "^%s*(.-)%s*$", "%1"))
end