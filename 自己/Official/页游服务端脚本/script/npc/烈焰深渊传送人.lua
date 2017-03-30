CMap =
{
    keys =
    {
        "烈焰深渊1",
        "烈焰深渊2",
        "烈焰深渊3",
    },
}

local talk_t = {"我可以告诉你一个神奇的地方，那儿拥有更高等级的装备物品。", "勇气和实力是要相匹配的，光有勇气，没有实力可不行。", "你很强，但你还不够强大，你还可以更强大！烈焰深渊是你最佳的选择！"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 260000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "    为了灭绝邪恶，无数的勇士在烈焰深渊展开发与恶魔的激战，虽然惨烈，但是，意外的收获让更多的勇士投入其中，原来，这恶魔携带的装备物品，竟在吸收深渊之气后，变成了更高级的装备物品！\n  还有什么比这更让人疯狂吗？如果你不缺乏勇气，如果你还有实力，你将能收获更多！\n"
	msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:4>##IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@jump *01*「进入烈焰深渊」（需要组队）>\n"
	msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
    msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「离开」>"
	return msg
end

function jump(npc, player)
    local msg = "勇士，你准备好了吗？\n"
    msg = msg.."进入条件：参与的玩家必须等级大于等于40，并且需要组队，由队长申请进入烈焰深渊(建议5人以上组队)\n"
	msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n\n"
	local members = lualib:Player_GetTeamList(player)

	for _, v in pairs(members) do
		if not lualib:VerifyCampCount(v, 16) then
			if player == v then
				msg = msg .. "您已经挑战过烈焰深渊，不能继续挑战。\n\n<@leave *01*「离开」>"
			else
				msg = msg .. "队友【"..lualib:Name(v).."】已经挑战过烈焰深渊，不能继续挑战。\n\n<@leave *01*「离开」>"
			end
			return msg
		end
	end

	msg = msg.."#OFFSET<X:0,Y:4>##IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@jumpex *01*「前往烈焰深渊」>\n\n"
	msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	msg = msg.."                                               #OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
    return msg
end

function jumpex(npc, player)
	if not lualib:Player_IsTeamLeader(player) then
        return "你不是队长！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    end

	local members = lualib:Player_GetTeamList(player)
	if members == nil or #members == 0 then
        return "队伍成员为空！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    end

	local require_distance = 20
	for _, v in pairs(members) do
		local distance = lualib:Distance(v, npc)
		if distance > require_distance then
			if player == v then
				return "您的距离过远！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			else
				return "队友【"..lualib:Name(v).."】的距离过远！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			end
		end
	end

	local require_level = 40
	for _, v in pairs(members) do
		if lualib:Level(v) < require_level then
			if player == v then
				return "您的等级过低，请40级再来！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			else
				return "队友【"..lualib:Name(v).."】的等级过低！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			end
		end
	end

	for _, v in pairs(members) do
        for _, _v in pairs(CMap.keys) do
		    if lualib:Player_HasDgnTicket(v, _v) then
                if player == v then
                    return "您已经进入过其它队伍的副本！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
                else
			        return "队友【"..lualib:Name(v).."】已经进入过其它队伍的副本！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
                end
            end
        end
	end

	for _, v in pairs(members) do
		if not lualib:VerifyCampCount(v, 16) then
			if v == player then
				return "您今天已经进入过烈焰深渊了！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			else
				return "队友【"..lualib:Name(v).."】今天已经进入过烈焰深渊了\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			end
		end
	end

    local require_gold = 0
    if not lualib:Player_IsGoldEnough(player, require_gold, false) then
        return "您的金币不足"..require_gold.."！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    end

    if not lualib:Player_SubGold(player, require_gold, false, "扣金币：烈焰深渊传送费", "烈焰深渊传送人") then
        return "扣除金币失败！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    end

    local dgns = {}
    local now = lualib:GetAllTime()
    local times = lualib:Str2Time(string.format("%s %s", lualib:Time2Str("%Y-%m-%d", now), "23:59:59")) - now

    for k, v in pairs(CMap.keys) do
    	local dgn = lualib:Map_CreateDgn(v, true, times)
        if dgn == "" then
            lualib:Error("副本："..v.."创建失败！")
            return "副本："..v.."创建失败！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
        end
        lualib:Debug("副本："..v.."创建成功！")
        table.insert(dgns, k, dgn)
    end

    if #dgns == 0 then
        return "系统错误！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    end

	for _, v in pairs(members) do
        for _, _v in pairs(dgns) do
		    if lualib:Player_SetDgnTicket(v, _v) == false then
                return "您不被许可进入地图！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
            end
        end
        lualib:JoinCamp(v, 16, 0)
		if lualib:Player_EnterDgn(v, "烈焰深渊1", 127, 27, 15) == false then
            return "进入地图失败！\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
        end
    end
    return ""
end

function leave(npc, player)
    return ""
end
