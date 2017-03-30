gQuestMap =
{
   {2006, "QuestAccept2006", "","*01*任务: 清剿黑面牛魔", ""},
   {2007, "QuestAccept2007", "","*01*任务: 清剿红面牛魔", ""},
   {2008, "QuestAccept2008", "","*01*任务: 清剿牛魔守卫", ""}
}
gQuestNum = table.getn(gQuestMap)


function main(npc, player)
	local msg = "     牛魔大军进犯绝路城，援军什么时候才能到啊！\n \n"
	msg = msg.."#IMAGE<ID:1902700030>#<@jump#巫山城#235#305#3 *01*回到巫山城广场>\n"
	msg = msg.."#IMAGE<ID:1902700030>#<@leave *01*离开>\n"
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

	return msg
end

function leave(player,npc)
	return ""
end

function jump(npc, player, map_name, x, y, r)
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	if not lualib:Player_MapMoveXY(player, map_name, x, y, r) then return "跳地图失败！\n \n<@main *01*返回>" end
	return ""
end


---2006接
function QuestAccept2006(npc,player)
    msg = "绝路城内现在充斥着牛魔大军，帮我去消灭20只黑面牛魔。\n \n"
	msg = msg.."<@Accept2006 *01* 接受任务>\n"
	return msg
end


function Accept2006(npc, player)
    if lualib:AcceptQuest(player, 2006) == true then
        return "绝路城现在十分危险，请务必小心！"
    else
        return "到26级再来找我吧"
    end
end


---2007接
function QuestAccept2007(npc,player)
    msg = "绝路城内现在充斥着牛魔大军，帮我去消灭20只红面牛魔。\n \n"
	msg = msg.."<@Accept2007 *01* 接受任务>\n"
	return msg
end


function Accept2007(npc, player)
    if lualib:AcceptQuest(player, 2007) == true then
        return "绝路城现在十分危险，请务必小心！"
    else
        return "到26级再来找我吧"
    end
end



---2008接
function QuestAccept2008(npc,player)
    msg = "绝路城内现在充斥着牛魔大军，帮我去消灭20只牛魔守卫。\n \n"
	msg = msg.."<@Accept2008 *01* 接受任务>\n"
	return msg
end


function Accept2008(npc, player)
    if lualib:AcceptQuest(player, 2008) == true then
        return "绝路城现在十分危险，请务必小心！"
    else
        return "到26级再来找我吧"
    end
end




