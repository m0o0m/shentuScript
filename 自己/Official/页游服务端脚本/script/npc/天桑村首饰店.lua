gQuestMap =
{
   {1009, "", "QuestAccomplish1009","", "*01*完成任务: 首饰"},
   {1010, "QuestAccept1010", "","01*任务: 百宝杂货", ""}
}
gQuestNum = table.getn(gQuestMap)

function main(npc, player)
    lualib:AddShop(npc, 6)
	msg = "天上繁星点点，地上群芳争艳，人啊需要靠精贵的首饰点缀……客官请看，我这的首饰虽然比不上贡品，但制作工艺绝对一流！\n \n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[2].." "..v[4]..">\n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[3].." "..v[5]..">\n"
            end
        end
    end
	msg = msg.."#IMAGE1902700030# <@OpenShop#6 *01*购买>\n"
	msg = msg.."#IMAGE1902700018# <@ShowRepire#1 *01*修理>\n"
	msg = msg.."#IMAGE1902700018# <@ShowRepireEx#1 *01*特殊修理>\n"
	msg = msg.."#IMAGE1902700030# <@SellItem#1 *01*出售>\n"
	return msg
end

function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
end

function ShowRepire(npc, player)
    lualib:ShowForm(player, "修理表单")
    return ""
end

function ShowRepireEx(npc, player)
    lualib:ShowForm(player, "特殊修理表单")
    return ""
end

function SellItem(npc, player, id)
	lualib:ShowForm(player, "卖出物品表单")
	return ""
end

-------1009交
function QuestAccomplish1009(npc, player)
    msg = "我这里有各种可以提升你属性的首饰哦，如戒指、项链、护腕……样式丰富、琳琅满目。\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1009a *01* 首饰店有各种首饰可以增加属性>\n"
    return msg
end

function Accomplish1009a(npc, player)
    msg = "可惜没有你说的银器，不好意思，我帮不了你。不过……\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1009b *01* 不过什么？>\n"
    return msg
end

function Accomplish1009b(npc, player)
    if lualib:AccomplishQuest(player, 1009, 0) == true then
        msg = "不过，杂货商那里稀奇古怪的宝贝倒是多着呢，我想他应该能帮你\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1010 *01*谢谢\n接取任务 ：百宝杂货>\n" 
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@Lever *01*我知道了>\n" 
		return msg
    end
end

-------1010接

function QuestAccept1010(npc,player)
    msg = "去找杂货商吧，他或许能帮到你。\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1010 *01* 好的，我现在去找他>\n"
	return msg
end

function Accept1010(npc, player)
    if lualib:AcceptQuest(player, 1010) == true then
        return "去杂货铺找#COLORCOLOR_GREENG# #NPCLINK<STR:杂货商,NPCID:15>##COLOREND#"
    else
        return "任务接取失败"
    end
end

function Lever(npc,player)
	return ""
end