local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

gQuestMap =
{
   {1005, "", "QuestAccomplish1005","", "*01*完成任务: 穿戴装备"},
   {1006, "QuestAccept1006", "","01*任务: 装备属性", ""},
}
gQuestNum = table.getn(gQuestMap)

function main(npc, player)
    lualib:AddShop(npc, 4)
	msg = "刀枪不入，固若金汤，童叟无欺！唉，最近因为怪物肆虐，新布料迟迟不能运到，我这生意这么好，库存的布料快用完了，这可如何是好啊！\n \n"
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
	msg = msg.."#IMAGE1902700030# <@OpenShop#4 *01*购买>\n"
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


--------1005交

function QuestAccomplish1005(npc, player)
    msg = "我那可爱的女儿死得好惨啊，不光是小女遭遇不幸，村里首饰商之父，杂货商之兄，药材商之妻皆死于非命！\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1005a *01* 已耳闻，在下正要出村打探！>\n"
    return msg
end

function Accomplish1005a(npc, player)
    msg = "那你可得小心那些怪物啊！出村之前我送你几件防具，你将自己武装起来吧，打开包裹(F9),右键点击装备进行穿戴，可提升各项属性！\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1005b *01* 右键穿戴装备>\n"
    return msg
end

function Accomplish1005b(npc, player)
    if lualib:AccomplishQuest(player, 1005, 0) == true then
		lua_sex = lualib:Player_GetIntProp(player, lua_role_gender)
		lua_item = {"麻布衣(男)","麻布衣(女)"}
		lualib:Player_GiveItemBind(player, lua_item[lua_sex], 1, "给物品：天桑村防具店", player)
        msg = "我知道了，继续下一个任务！\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1006 *01*知道了,接取任务 ： 装备属性>\n" 
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@Lever *01*我知道了>\n" 
		return msg
    end
end

--------1006接
function QuestAccept1006(npc,player)
    msg = "穿戴装备也是有窍门的，你把鼠标左键移动到装备上，会显示穿戴该装备的条件，比如：需要多少等级、多少攻击力、魔法力、道术等等。越高级的装备要求也越高，所以你要穿着低级装备开始，合理搭配出所需要的属性，才能穿上高级装备。光靠防具也没用，野外处处凶险，还得配上武器才行，铁匠店老板刚打造了一批武器，你可以去看看。\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1006 *01* 去铁匠铺>\n"
	return msg
end

function Accept1006(npc, player)
    if lualib:AcceptQuest(player, 1006) == true then
        return "了解到了穿戴装备的重要性，去找#COLORCOLOR_GREENG# #NPCLINK<STR:铁匠,NPCID:12>##COLOREND#打听一下村外的消息"
    else
        return "任务接取失败"
    end
end	

function Lever(npc,player)
	return ""
end