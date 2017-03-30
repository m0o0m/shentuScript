gQuestMap =
{
   {1006, "", "QuestAccomplish1006","", "*01*完成任务: 查看装备属性"},
   {1007, "QuestAccept1007", "","01*任务: 挖肉实践", ""}
}
gQuestNum = table.getn(gQuestMap)

function main(npc, player)
    lualib:AddShop(npc, 2)
	msg = "磨刀不误砍柴功，行走江湖一定要有一把利器在手，来吧壮士，看看我这里有哪一把武器适合你！不是我吹嘘，我所打造的武器绝对是削铁如泥。\n \n"
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
	msg = msg.."#IMAGE1902700030# <@OpenShop#2 *01*购买> \n"
	msg = msg.."#IMAGE1902700018# <@ShowRepire#1 *01*修理> \n"
	msg = msg.."#IMAGE1902700018# <@ShowRepireEx#1 *01*特殊修理> \n"
	msg = msg.."#IMAGE1902700030# <@SellItem#1 *01*出售> \n"

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

-------1006交
function QuestAccomplish1006(npc, player)
    msg = "我前日上山调查，方才刚回，险些在山中丧命！山中的那些动物个个反常凶暴，平日间用于习武之木人草人竟活了过来！像是那地狱里涌出的怪物！\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1006 *01* 怪物？>\n"
    return msg
end

function Accomplish1006(npc, player)
    if lualib:AccomplishQuest(player, 1006, 0) == true then
        msg = "怪物横生，你得多加小心才是啊。\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1007 *01*知道了,接取任务 ： 挖肉实践>\n"
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@Lever *01*我知道了>\n"
		return msg
    end
end

-------1007接
function QuestAccept1007(npc,player)
    msg = "我得多打造一些精铁兵器给村人，好让村人都有自卫的能力，来，先赠你一把武器，麻烦少侠到村口击败几只鹿，并用（Alt+左键）从鹿的身上挖1块鹿肉带给药材商，让其研究动物突暴的原因。\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1007 *01* Alt+左键点怪物尸体可探索物品！>\n"
	return msg
end

function Accept1007(npc, player)
    if lualib:AcceptQuest(player, 1007) == true then
        return "去村外击败#COLORCOLOR_GREENG##LINK<MAP:巫山城,POSX:473,POSY:647,STR:鹿>##COLOREND#后，挖取1块肉。"
    else
        return "任务接取失败"
    end
end

function Lever(npc,player)
	return ""
end