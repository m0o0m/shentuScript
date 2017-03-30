local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

gQuestMap =
{
   {1011, "", "QuestAccomplish1011","", "*01*完成任务: 技能书"},
   {1012, "QuestAccept1012", "QuestAccomplish1012","01*任务: 技能实战", "*01*完成任务: 技能实战"},
   {1013, "QuestAccept1013", "","01*任务: 包裹和高级仓库扩充", ""},
}
gQuestNum = table.getn(gQuestMap)

function main(npc, player)
    lualib:AddShop(npc, 13)
	msg = "少年，看你生得一表人才，器宇轩昂，一看就知道是天生练武的好材料，来来来，我这有各种武功秘籍，总有一本是你喜欢学的。\n \n"
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
	msg = msg.."#IMAGE1902700030# <@OpenShop#12 *01*购买>\n"
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


-------1011交
function QuestAccomplish1011(npc, player)
    msg = "我这确有上古神书，但非万能，神书内记载着各种高超武艺、法术的修炼方法！授人以鱼不如授人以渔，你可学习书中技能，使用技能来为你解开各种奥妙……来来，我这里正好有一本适合你修炼的技能书，赠予你，你双击使用学习吧。\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1011a *01* 学习技能书中的技能！>\n"
    return msg
end

function Accomplish1011a(npc, player)
    msg = "你现在学习的技能只是初级的，随着你使用该技能的次数越多，熟练度就会越高，当技能升级后，威力就会增强！所以，你要勤加练习啊！此外当你等级越高，可学习到的高超技能就会越多越强！\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1011b *01* 多使用技能可提升技能的熟练度！>\n"
    return msg
end

function Accomplish1011b(npc, player)
    if lualib:AccomplishQuest(player, 1011, 0) == true then
		lua_job = lualib:Player_GetIntProp(player, lua_role_job)
		lua_item = {"剑术心法","炎球术","治疗咒"}
		lualib:Player_GiveItemBind(player, lua_item[lua_job], 1, "给物品：天桑村书店", player)
        msg = "年轻人，你知道了吗？\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1012 *01*知道了,接取任务 ：技能实战>\n"
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@Lever *01*我知道了>\n"
		return msg
    end
end

-------1012接

function QuestAccept1012(npc,player)
    msg = "成大器者必经百般磨炼，修习入门技能后须得勤加练习，用技能去和那些白茅人战斗，增加技能的熟练度！有了充足的经验，你才能发挥出技能的最大威力！\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1012 *01* 等级高了才能学习更强大技能！>\n"
	return msg
end

function Accept1012(npc, player)
    if lualib:AcceptQuest(player, 1012) == true then
        return "用你的技能去击败5只#COLORCOLOR_GREENG##LINK<MAP:巫山城,POSX:465,POSY:620,STR:白茅人>##COLOREND#！"
    else
        return "任务接取失败"
    end
end

-------1012交
function QuestAccomplish1012(npc, player)
    msg = "你果然是旷世奇才！牛逼！\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1012 *01* 过奖>\n"
    return msg
end

function Accomplish1012(npc, player)
    if lualib:AccomplishQuest(player, 1012, 0) == true then
        msg = "真是后生可畏啊！\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1013 *01*知道了,接取任务 ：包裹和高级仓库扩充>\n"
		return msg
    else
        msg = "你击败了5只#COLORCOLOR_GREENG##LINK<MAP:巫山城,POSX:465,POSY:620,STR:白茅人>##COLOREND#了吗？\n \n"
		msg = msg.."#IMAGE1902700017# <@Lever *01*我知道了>\n"
		return msg
    end
end

-------1013接

function QuestAccept1013(npc,player)
    msg = "相信你从怪物身上获得了不少物品，倘若你的包裹不够携带，可去仓库管理员处储存一点。\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1013 *01* 找仓库管理员>\n"
	return msg
end

function Accept1013(npc, player)
    if lualib:AcceptQuest(player, 1013) == true then
        return "去找#COLORCOLOR_GREENG# #NPCLINK<STR:仓库管理员,NPCID:17>##COLOREND#对话了解仓库存储知识"
    else
        return "任务接取失败"
    end
end


function Lever(npc,player)
	return ""
end