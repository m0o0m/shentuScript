gQuestMap =
{
   {1020, "", "QuestAccomplish1020","", "*01*完成任务: 商品寄售"},
   {1021, "QuestAccept1021", "","01*任务: 元宝充值", ""}
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"你有什么物品都可以放到我这儿来寄售。", "寄售很方便，还不用你辛苦摆摊。", "如果你想买好东西，可以来我这儿仔细看看。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 280000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    local msg = "     尊客，欢迎光临！本店经营一切物品的委托销售，公正公开，绝无虚价。\n"
	msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n \n \n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[2].." "..v[4]..">\n \n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[3].." "..v[5]..">\n \n"
            end
        end
    end
    msg = msg.."#OFFSET<X:0,Y:2>##IMAGE1902700037##OFFSET<X:0,Y:-2>#<@ShowSellMarket#1 *01*[进入交易行]>\n \n \n"
	msg = msg.."                                                    #OFFSET<X:0,Y:2>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@likai *01*[离开]>\n"
    return msg
end

function ShowSellMarket(npc, player)
    lualib:ShowForm(player, "交易行表单")
    return ""
end


--------1020交

function QuestAccomplish1020(npc, player)
    msg = "我这可以委托所有的交易，如果有奇珍异宝想出手，可以托付给我，我肯定给你卖个好价钱。\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1020 *01* 一定，一定>\n"
    return msg
end


function Accomplish1020(npc, player)
    if lualib:AccomplishQuest(player, 1020, 0) == true then
        msg = "奇珍异宝用金币可不一定能够买得到，或许需要元宝才能办到，去找元宝充值了解下吧\n \n"
		msg = msg.."#IMAGE1902700017#<@Accept1021 *01* 去找元宝充值>\n"
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@Lever *01*好的>\n"
		return msg
    end
end

-----1021接
function QuestAccept1021(npc,player)
    msg = "奇珍异宝金币可不一样能够买的到，或许需要元宝才能办到，去找元宝充值了解下吧 \n"
	msg = msg.."#IMAGE1902700017#<@Accept1021 *01* 去找元宝充值>\n"
	return msg
end

function Accept1021(npc, player)
    if lualib:AcceptQuest(player, 1021) == true then
        return "去找#COLORCOLOR_GREENG# #NPCLINK<STR:元宝充值,NPCID:30034>##COLOREND#了解元宝冲值系统。"
    else
        return "任务接取失败"
    end
end

function likai()
	return ""
end