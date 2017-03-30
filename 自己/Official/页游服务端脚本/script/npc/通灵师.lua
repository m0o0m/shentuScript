local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

gQuestMap =
{
   {3005, "", "QuestAccomplish3005","", "*01*完成任务: 恶魔的逆袭(支线)"},
   {3006, "QuestAccept3006", "QuestAccomplish3006","01*任务: 漂流岛(支线)", "*01*完成任务: 漂流岛(支线)"},
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"如果你看到了恶魔之匣，打开它之前，要先观察四周，提高警惕哦。", "漂流岛里的恶魔虽然攻击不高，但是很缠人，你要小心。", "漂流岛是恶魔之岛，也是勇士的天堂之岛。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 200000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#漂流岛#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."     每当恶魔大陆上的漂流岛重新回到我们世界轨道时，我体内都会涌出一股打开异次元空间的神力，瞬间破开虚空，进入漂流岛！\n"
     msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-4>#　#COLORCOLOR_GRAY#╔──────╗　╔──────╗　╔──────╗#COLOREND#\n"
	msg = msg.."　#COLORCOLOR_GRAY#│#COLOREND#<@transmission *01*【进入挑战】>#OFFSET<X:-1,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@info *01*【活动介绍】>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@leave *01*【我不敢去】>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│#COLOREND#\n"
	msg = msg.."　#COLORCOLOR_GRAY#╚──────╝　╚──────╝　╚──────╝#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."<@"..v[2].." "..v[4]..">　　　　　　#IMAGE<ID:1902700019>#<@leave *01*「离开」>\n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."<@"..v[3].." "..v[5]..">　　　　　　#IMAGE<ID:1902700019>#<@leave *01*「离开」>\n"
            end
        end
    end

    return msg
end

function enter(npc, player)
    local msg = "你得给我一张#COLORCOLOR_GOLD#[漂流岛通灵卡]#COLOREND#，我的法力才能发挥效用，带你进入漂流岛通灵卡可从#COLORCOLOR_GOLD#[绝路岭]#COLOREND#的怪物身上获取！据说「确定」进入吗？\n \n"
    msg = msg.."#IMAGE1902700015#<@transmission *01*进入漂流岛>\n \n"
    msg = msg.."#IMAGE1902700019#<@main *01*「返回」>\n"
    return msg
end



function transmission(npc, player)
    local gold = 0
    local map = lualib:Player_GetGuidProp(player,  lua_role_current_map_id)
    if map == "" then return "获取地图信息失败！\n \n \n \n \n \n#IMAGE1902700019#<@main *01*「返回」>" end

    --[[local tick = lualib:Map_GetCustomVarInt(map, "scheduled_pldwf_begin_tick")
    if (tick == 0) or (lualib:GetTime() - tick > 600) then
        return "飘流岛还未开放！请留意系统公告！\n \n<@main *01*「返回」>"
    end]]

    local dgn = lualib:Map_GetCustomVarStr(map, "scheduled_pldfb_dgn_guid")
    if dgn == "" then return "飘流岛地图还未准备好，请联系统GM！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end

    if not lualib:Player_IsGoldEnough(player, gold, false) then return "对不起，您的金币不足10000，无法进入！\n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end

    local require_item = "漂流岛通灵卡"
    if lualib:Player_GetItemCount(player, require_item) < 0 then
        return "进入漂流岛要"..require_item.."！\n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    if not lualib:Player_DestroyItem(player, require_item, 0, "扣道具：通灵师传送消耗", "通灵师") then
        return "上缴物品"..require_item.."失败！\n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    if lualib:Player_SetDgnTicket(player, dgn) == false then return "漂流岛还未开放！请留意系统公告！\n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end
    if not lualib:Player_SubGold(player, gold, false, "扣金币：通灵师进入飘流岛花费", "通灵师") then return "扣除金币失败！\n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end
	lualib:JoinCamp(player, 12, 0)
    if lualib:Player_EnterDgn(player, "漂流岛", 0, 0, 0) == false then return "进入地图失败！\n \n \n \n \n \n#IMAGE1902700019#<@main *01*「返回」>"end
	
	
	return ""
end

function info(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#漂流岛#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."#COLORCOLOR_RED#开启时间：#COLOREND#每日 13:00、19:00、21:00: 开启活动！\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#COLORCOLOR_RED#活动介绍：#COLOREND#漂流岛上有很多当年俱灭战役留下来的财富，这些财富被一群恶魔守护者看管，并装入了恶魔的匣子中，你如果不怕恶魔就进去吧.\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."　　　　　　　　　　　　　　　　　　　　　　#IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"

	return msg
end

function leave(npc, player)
    return ""
end


---3005交
function QuestAccomplish3005(npc, player)
    msg = "哦，是天机老人让你来的帮忙的，真是太感谢了！\n \n"
    msg = msg.."#IMAGE1902700016#<@Accomplish3005 *01* 不客气>\n"
    return msg
end

function Accomplish3005(npc, player)
    if lualib:AccomplishQuest(player, 3005, 0) == true then
        msg = "神州大陆危机重重\n \n"
		msg = msg.."#IMAGE1902700016#<@QuestAccept3006 *01* 接取任务：漂流岛(支线)>\n"
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end

----3006接
function QuestAccept3006(npc,player)
    msg = "恶魔大陆的漂流岛的出现，让我惶恐不安，岛上有大批妖魔，神州大陆危机迫在眉睫！\n \n"
	msg = msg.."#IMAGE1902700016#<@Accept3006a *01* 有这么严重吗？>\n"
	return msg
end

function Accept3006a(npc,player)
    msg = "小子，你哪那么多废话，总之很严重，用我传送术将你传到岛上，你帮我消灭恶魔守护者\n \n"
	msg = msg.."#IMAGE1902700016#<@Accept3006b *01* ……额    好吧>\n"
	return msg
end

function Accept3006b(npc, player)
    if lualib:AcceptQuest(player, 3006) == true then
		msg = "我这就送你前往漂流岛，准备好了吗？\n \n"
		msg = msg.."#IMAGE1902700016#<@transmission *01*前往漂流岛>"
        return msg
    else
        return "任务接取失败"
    end
end

---3006交
function QuestAccomplish3006(npc, player)
    msg = "天机老人果然没介绍错人，太感谢你了，不过这次虽然消灭了怪物，但是妖魔还会持续来犯，希望你以后也能来帮忙！\n \n"
    msg = msg.."#IMAGE1902700016#<@Accomplish3006 *01* 我知道了>\n"
    return msg
end

function Accomplish3006(npc, player)
    if lualib:AccomplishQuest(player, 3006, 0) == true then
        msg = "消失的恶魔又开始复苏了，神州大陆将迎来危机，以后就靠你们了@\n \n"
		msg = msg.."#IMAGE1902700016#<@leave *01* 好的>\n"
		return msg
    else
        msg = "你击败了一只恶魔守护者了吗？\n \n"
		msg = msg.."#IMAGE1902700016#<@leave *01*继续努力>\n"
		return msg
    end
end
