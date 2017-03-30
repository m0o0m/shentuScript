gQuestMap =
{
   {1109, "", "QuestAccomplish1109","", "*01*完成任务: 首饰"},
   {1110, "QuestAccept1110", "","01*任务: 百宝杂货", ""}
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"你如果觉得这里贵，就到别处去买好了。", "真搞不懂，男人也要戴首饰……", "既可以加攻击，又可以加防御，首饰是万能的。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 27000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    lualib:AddShop(npc, 6)
	local msg = "     #COLORCOLOR_GREENG#我这儿专门售卖各种首饰！#COLOREND#客官，有什么需要的吗？这些都是从城里购进的饰品，您看，不管从抛光、打磨各个方面工艺都是一流！\n"
	msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
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
	msg = msg.."#OFFSET<X:0,Y:10>##IMAGE1902700037# <@OpenShop#6 *01*[购买]>\n"
	msg = msg.."#IMAGE1902700035# <@ShowRepire#1 *01*[修理]>\n"
	msg = msg.."#IMAGE1902700035# <@ShowRepireEx#1 *01*[特殊修理]>\n"
	msg = msg.."#IMAGE1902700036# <@SellItem#1 *01*[出售]>\n"
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

-------1109交
function QuestAccomplish1109(npc, player)
    msg = "我这里有各种可以提升你属性的首饰哦，如戒指、项链、护腕……样式丰富、琳琅满目。\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1109a *01* 首饰店有各种首饰可以增加属性>\n"
    return msg
end

function Accomplish1109a(npc, player)
    msg = "可惜没有你说的银器，不好意思，我帮不了你。不过……\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1109b *01* 不过什么？>\n"
    return msg
end

function Accomplish1109b(npc, player)
    if lualib:AccomplishQuest(player, 1109, 0) == true then
        msg = "不过，杂货商那里稀奇古怪的宝贝倒是多着呢，我想他应该能帮你\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1110 *01*谢谢\n接取任务 ：百宝杂货>\n"
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@Lever *01*我知道了>\n"
		return msg
    end
end

-------1110接

function QuestAccept1110(npc,player)
    msg = "去找杂货商吧，他或许能帮到你。\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1110 *01* 好的，我现在去找他>\n"
	return msg
end

function Accept1110(npc, player)
    if lualib:AcceptQuest(player, 1110) == true then
        return "去杂货铺找#COLORCOLOR_GREENG# #NPCLINK<STR:杂货商,NPCID:6>##COLOREND#"
    else
        return "任务接取失败"
    end
end

function Lever(npc,player)
	return ""
end
