--[[
gQuestMap =
{
   {3008, "", "QuestAccomplish3008","", "*01*完成任务: 克星挑战(支线)"},
}
gQuestNum = table.getn(gQuestMap)


function main(npc, player)
    local dgn_table = {"挑战千年树魔", "挑战血禅师", "挑战梵天僧"}
    local msg = " #COLORCOLOR_ORANGE#卍#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_ORANGE#卍#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_ORANGE#卍#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#╔┳╗#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#╔┳╗#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#╔┳╗#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#╔┳╗#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_ORANGE#卍#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_ORANGE#卍#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_ORANGE#卍#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-3>#　　 #COLORCOLOR_ORANGE#卍#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_ORANGE#卍#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#┣#COLOREND##COLORCOLOR_RED#克#COLOREND##COLORCOLOR_GOLD#┫#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#┣#COLOREND##COLORCOLOR_RED#星#COLOREND##COLORCOLOR_GOLD#┫#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#┣#COLOREND##COLORCOLOR_RED#挑#COLOREND##COLORCOLOR_GOLD#┫#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#┣#COLOREND##COLORCOLOR_RED#战#COLOREND##COLORCOLOR_GOLD#┫#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_ORANGE#卍#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_ORANGE#卍#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-3>#　　　　 #COLORCOLOR_ORANGE#卍#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#╚┻╝#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#╚┻╝#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#╚┻╝#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#╚┻╝#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_ORANGE#卍#COLOREND#\n"
     msg = msg.."#COLORCOLOR_ORANGE#㊣#COLOREND##COLORCOLOR_BLUE#========================================================#COLOREND##COLORCOLOR_ORANGE#㊣#COLOREND#\n"
     msg = msg.."#COLORCOLOR_ORANGE#你可以花100元宝在我这里报名参加BOSS的克星挑战！挑战成功后可以领取拥有#COLOREND##COLORCOLOR_RED#附加属性的特殊称号#COLOREND##COLORCOLOR_ORANGE#哦！挑战时间为15分钟，15分钟内可自由进出场地，你「确定」挑战吗？#COLOREND#\n"
     msg = msg.."#COLORCOLOR_ORANGE#㊣#COLOREND##COLORCOLOR_BLUE#========================================================#COLOREND##COLORCOLOR_ORANGE#㊣#COLOREND#\n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."<@"..v[2].." "..v[4]..">\n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."<@"..v[3].." "..v[5]..">\n"
            end
        end
    end
    msg = msg.."      #IMAGE<ID:1902700018>#<@tz1 *01*我要挑战>      #IMAGE<ID:1902700017>#<@award *01*领取奖励>       #IMAGE<ID:1902700019>#<@leave *01*「离开」>\n"

    return msg
end


function tz(npc, player)
    local msg = "挑战需要花费100元宝，挑战时间为15分钟，15分钟内可自由进出场地，你「确定」挑战吗？\n \n"
	msg = msg.."<@tz1 *01*挑战>\n"
    msg = msg.."<@leave *01*「离开」>\n"
    return msg
end


function tz1(npc, player)
	local dgn_table = {"〖千年树魔〗", "〖 血禅师 〗", "〖 梵天僧 〗"}
    local msg = " #COLORCOLOR_ORANGE#卍#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_ORANGE#卍#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_ORANGE#卍#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#╔┳╗#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#╔┳╗#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#╔┳╗#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#╔┳╗#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_ORANGE#卍#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_ORANGE#卍#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_ORANGE#卍#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-3>#　　 #COLORCOLOR_ORANGE#卍#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_ORANGE#卍#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#┣#COLOREND##COLORCOLOR_RED#克#COLOREND##COLORCOLOR_GOLD#┫#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#┣#COLOREND##COLORCOLOR_RED#星#COLOREND##COLORCOLOR_GOLD#┫#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#┣#COLOREND##COLORCOLOR_RED#挑#COLOREND##COLORCOLOR_GOLD#┫#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#┣#COLOREND##COLORCOLOR_RED#战#COLOREND##COLORCOLOR_GOLD#┫#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_ORANGE#卍#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_ORANGE#卍#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-3>#　　　　 #COLORCOLOR_ORANGE#卍#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#╚┻╝#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#╚┻╝#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#╚┻╝#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_GOLD#╚┻╝#COLOREND##COLORCOLOR_BLUE#═#COLOREND##COLORCOLOR_ORANGE#卍#COLOREND#\n"
     msg = msg.."#COLORCOLOR_ORANGE#㊣#COLOREND##COLORCOLOR_BLUE#========================================================#COLOREND##COLORCOLOR_ORANGE#㊣#COLOREND#\n"
     msg = msg.."　#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#╔╦╦╦╦╦╦╗　#OFFSET<X:1,Y:0>#╔╦╦╦╦╦╦╗　#OFFSET<X:1,Y:0>#╔╦╦╦╦╦╦╗#COLOREND#\n"
    for i = 1, table.getn(dgn_table) do
        msg = msg.."　#COLORCOLOR_BLUE#╠#COLOREND#<@challenge#"..i.." *01*"..dgn_table[i]..">#COLORCOLOR_BLUE#╣#COLOREND#"

    end
     msg = msg.."　#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#╚╩╩╩╩╩╩╝　#OFFSET<X:1,Y:0>#╚╩╩╩╩╩╩╝　#OFFSET<X:1,Y:0>#╚╩╩╩╩╩╩╝#COLOREND#\n"
     msg = msg.."#COLORCOLOR_ORANGE#三个超级BOSS等待您的召唤，只要你实力够强，附加属性的特殊称号唾手可得哦，迎接克星挑战吧！#COLOREND#　　　　　　#IMAGE<ID:1902700019>#<@main *01*「返回」>\n"

    return msg
end

function leave(npc,player)
	return ""
end



function challenge(npc, player, t)
    local index = tonumber(t)

    local var_tick = "克星挑战场_tick"
    local dgn_table = {"克星挑战场1", "克星挑战场2", "克星挑战场3"}
    local var_cur_dgn = "克星挑战_cur_dgn"

    local require_ingot = 100
    local dgn_time = 30 * 60

    local var_time = lualib:Player_GetCustomVarInt(player, var_tick)
    local dgn_index = lualib:Player_GetCustomVarInt(player, var_cur_dgn)
    local day = os.date("*t", var_time)["day"]
    local today = os.date("*t", os.time())["day"]
    if day == today then
        if var_time + dgn_time < os.time() then
            return "您今日已经挑战结束！"
        end
        if dgn_index ~= index then
            return "您已经有挑战任务！"
        else
            if not lualib:Player_EnterDgn(player, dgn_table[index], 24, 58, 3) then
                return "进入地图失败！"
            end
            return ""
        end
    end

    if not lualib:Player_IsIngotEnough(player, require_ingot, false) then
        return "元宝不足！"
    end

    local dgn = lualib:Map_CreateDgn(dgn_table[index], false, dgn_time)
    if dgn == "" then
        return "副本："..dgn_table[index].."创建失败！"
    end

    if not lualib:Player_SetDgnTicket(player, dgn) then
        return "您不被许可进入地图！"
    end

    if not lualib:Player_SubIngot(player, require_ingot, false, "扣元宝：参加克星挑战扣除元宝！", player) then
        return "扣除元宝失败！"
    end

    lualib:Player_SetCustomVarInt(player, var_tick, os.time())
    lualib:Player_SetCustomVarInt(player, var_cur_dgn, index)
    if not lualib:Player_EnterDgn(player, dgn_table[index], 24, 58, 3) then
        return "进入地图失败！"
    end

    return ""
end

function award(npc, player)
    local title_table = {{23, "千年树魔克星"}, {24, "血禅师克星"}, {25, "梵天僧克星"}}
    local var_cur_dgn_succ = "克星挑战_cur_dgn_succ"
    local succ = lualib:Player_GetCustomVarInt(player, var_cur_dgn_succ)

    if succ == 0 then return "您没有挑战奖励！" end
    lualib:AddTitle(player, title_table[succ][1])
    lualib:Player_SetCustomVarInt(player, var_cur_dgn_succ, 0)
    return "恭喜您获得称号："..title_table[succ][2].."！"
end


----3008交
function QuestAccomplish3008(npc, player)
    msg = "挑战BOSS可不是一件容易的事，能成功的都是那些当今世上响当当的大人物，不仅要拥有强大力量，还要我坚毅的性格！如果你觉的可以那就来找我吧\n \n"
    msg = msg.."<@Accomplish3008 *01* 是的，有什么要求吗？>\n"
    return msg
end

function Accomplish3008(npc, player)
    if lualib:AccomplishQuest(player, 3008, 0) == true then
        msg = "如果你有实力，就来挑战BOSS吧\n \n"
		msg = msg.."<@leave *01* 我知道了>\n"
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end
]]