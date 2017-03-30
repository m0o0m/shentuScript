gQuestMap =
{
   {1010, "", "QuestAccomplish1010","", "*01*完成任务: 百宝杂货"},
   {1011, "QuestAccept1011", "","01*任务: 技能书", ""}
}
gQuestNum = table.getn(gQuestMap)

function main(npc, player)
    lualib:AddShop(npc, 10)
	msg = "年青人，江湖中凶险难测，多带点东西在身上吧，也许它可以救你一命……\n \n"
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
	msg = msg.."#IMAGE1902700030# <@OpenShop#10 *01*购买>\n"
	msg = msg.."#IMAGE1902700030# <@SellItem#1 *01*出售>\n"
	return msg
end
	
function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
end

function SellItem(npc, player, id)
	lualib:ShowForm(player, "卖出物品表单")
	return ""
end

-------1010交

function QuestAccomplish1010(npc, player)
    msg = "是的，我这里有各种小玩意，比如随机传送卷，回城卷，可以帮你快捷移动哦！更多的宝贝，你可以点击我的商店查看！日后你若有什么需求，尽管到我的商店里来挑选！\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1010 *01* 杂货店有很多便捷的物品！>\n"
    return msg
end

function Accomplish1010(npc, player)
    if lualib:AccomplishQuest(player, 1010, 0) == true then
        msg = "好的，让我检验一下这块肉！\n \n"
		msg = msg.."#IMAGE1902700017#<@QuestAccept1011 *01*好的,接取任务：技能书 >\n" 
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@Lever *01*我知道了>\n" 
		return msg
    end
end

-------1011接

function QuestAccept1011(npc,player)
    msg = "你刚给我的鹿肉，在我的研究下，发现这种妖气十分怪哉，我无法参透其来源，须得借助书店老板的上古神书方可解开奥妙!\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1011 *01* 去书店，找书商>\n"
	return msg
end

function Accept1011(npc, player)
    if lualib:AcceptQuest(player, 1011) == true then
        return "去找#COLORCOLOR_GREENG# #NPCLINK<STR:书商,NPCID:14>##COLOREND#，他会帮到你的！"
    else
        return "任务接取失败"
    end
end

function Lever(npc,player)
	return ""
end