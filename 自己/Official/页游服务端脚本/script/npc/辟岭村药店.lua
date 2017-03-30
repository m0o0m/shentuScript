gQuestMap =
{
   {1107, "", "QuestAccomplish1107","", "*01*完成任务: 挖肉实践"},
   {1108, "QuestAccept1108", "QuestAccomplish1108","01*任务: 药品", "*01*完成任务: 药品"},
   {1109, "QuestAccept1109", "","01*任务: 药品", ""},
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"是药三分毒，技术不好的人，一般身体也不好。", "只要有药在身，再重的伤也能很快恢复过来。", "药是爱，满满的一腔爱。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 19000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end



function main(npc, player)
    lualib:AddShop(npc, 8)
	local msg = "     #COLORCOLOR_GREENG#我这儿可以买到各种药品哦！#COLOREND#妙手回春赵神医嘛……嘻嘻，说的就是我啦！俗话说人在大陆飘，哪能不挨刀，你来找我就对了，上次王婆的孙子拉肚子，吃了我的药后马上就好了！\n"
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
	msg = msg.."#OFFSET<X:0,Y:10>##IMAGE1902700037# <@OpenShop#8 *01*[购买]>\n"
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


-------1107交
function QuestAccomplish1107(npc, player)
    msg = "谢谢少侠，这些鹿肉妖气萦绕，估计是鹿被邪气入侵导致，为何消失已久的妖怪会突然出现呢？我得炼成药，分解研究，少侠稍等！\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1107 *01* 药材商有药品>\n"
    return msg
end

function Accomplish1107(npc, player)
    if lualib:AccomplishQuest(player, 1107, 0) == true then
        msg = "从我这里可以买到药品！\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1108 *01*知道了,接取任务 ：药品>\n"
		return msg
    else
        msg = "需要5块鹿肉！\n \n"
		msg = msg.."<@Lever *01*我知道了>\n"
		return msg
    end
end

-------1108接

function QuestAccept1108(npc,player)
    msg = "是的，我这里有各种药品，对于你们这种行走江湖的大人物来说是必不可少的！无论你是打怪还是打人，都需要补充生命值和魔法值！我这里有大量这样的补给品，你随时可以到我这里来购买。\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1108 *01*药店有各种补给品 >\n"
	return msg
end

function Accept1108(npc, player)
    if lualib:AcceptQuest(player, 1108) == true then
		msg = "点击#COLORCOLOR_GREENG# #NPCLINK<STR:药材商,NPCID:1>##COLOREND#完成任务！\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccomplish1108 *01* 完成任务>\n"
        return msg
    else
        return "任务接取失败"
    end
end

-------1108交

function QuestAccomplish1108(npc, player)
    msg = "那块鹿肉已经炼成药品了，但这样似乎看不出什么眉目来。\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1108 *01* 那可如何是好？>\n"
    return msg
end

function Accomplish1108(npc, player)
    if lualib:AccomplishQuest(player, 1108, 0) == true then
        msg = "也许首饰商的银器可以帮我测验一下。\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1109 *01*知道了,接取任务 ：首饰>\n"
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@Lever *01*我知道了>\n"
		return msg
    end
end

-------1109接

function QuestAccept1109(npc,player)
    msg = "快去找首饰商测验一下吧。\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1109 *01*好的，我这就去首饰店，找首饰商 >\n"
	return msg
end

function Accept1109(npc, player)
    if lualib:AcceptQuest(player, 1109) == true then
        return "去找首饰铺的#COLORCOLOR_GREENG# #NPCLINK<STR:首饰商,NPCID:9>##COLOREND#用银器查看一下"
    else
        return "任务接取失败"
    end
end


function Lever(npc,player)
	return ""
end
