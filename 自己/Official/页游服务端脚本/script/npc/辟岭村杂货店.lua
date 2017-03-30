gQuestMap =
{
   {1110, "", "QuestAccomplish1110","", "*01*完成任务: 百宝杂货"},
   {1111, "QuestAccept1111", "","01*任务: 技能书", ""}
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"我卖的都是人们必不可少的东西。", "外出旅行遇险，没有随机传送卷可不行。", "NPC也是有NPC权的，买东西不给钱可不行。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 21000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end


function main(npc, player)
    lualib:AddShop(npc, 10)
	local msg = "     #COLORCOLOR_GREENG#我这儿是卖杂货的#COLOREND#，什么东西都有，老葛说过，即便是一张草纸，都有它的价值！是的，你看，画上符咒，它就可以变成镇妖驱魔的符纸……\n"
		  msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
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
	msg = msg.."#OFFSET<X:0,Y:10>##IMAGE1902700037# <@OpenShop#10 *01*[购买]>\n"
	msg = msg.."#IMAGE1902700036# <@SellItem#1 *01*[出售]>\n"
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

-------1110交

function QuestAccomplish1110(npc, player)
    msg = "是的，我这里有各种小玩意，比如随机传送卷，回城卷，可以帮你快捷移动哦！更多的宝贝，你可以点击我的商店查看！日后你若有什么需求，尽管到我的商店里来挑选！\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1110 *01* 杂货店有很多便捷的物品！>\n"
    return msg
end

function Accomplish1110(npc, player)
    if lualib:AccomplishQuest(player, 1110, 0) == true then
        msg = "好的，让我检验一下这块肉！\n \n"
		msg = msg.."#IMAGE1902700017#<@QuestAccept1111 *01*好的,接取任务：技能书 >\n"
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@Lever *01*我知道了>\n"
		return msg
    end
end

-------1111接

function QuestAccept1111(npc,player)
    msg = "你刚给我的鹿肉，在我的研究下，发现这种妖气十分怪哉，我无法参透其来源，须得借助书店老板的上古神书方可解开奥妙!\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1111 *01* 去书店，找书商>\n"
	return msg
end

function Accept1111(npc, player)
    if lualib:AcceptQuest(player, 1111) == true then
        return "去找#COLORCOLOR_GREENG# #NPCLINK<STR:书商,NPCID:5>##COLOREND#，他会帮到你的！"
    else
        return "任务接取失败"
    end
end

function Lever(npc,player)
	return ""
end
