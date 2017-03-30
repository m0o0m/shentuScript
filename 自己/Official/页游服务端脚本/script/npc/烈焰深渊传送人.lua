CMap =
{
    keys =
    {
        "������Ԩ1",
        "������Ԩ2",
        "������Ԩ3",
    },
}

local talk_t = {"�ҿ��Ը�����һ������ĵط����Ƕ�ӵ�и��ߵȼ���װ����Ʒ��", "������ʵ����Ҫ��ƥ��ģ�����������û��ʵ���ɲ��С�", "���ǿ�����㻹����ǿ���㻹���Ը�ǿ��������Ԩ������ѵ�ѡ��"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 260000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "    Ϊ�����а����������ʿ��������Ԩչ�������ħ�ļ�ս����Ȼ���ң����ǣ�������ջ��ø������ʿͶ�����У�ԭ�������ħЯ����װ����Ʒ������������Ԩ֮���󣬱���˸��߼���װ����Ʒ��\n  ����ʲô��������˷��������㲻ȱ������������㻹��ʵ�����㽫���ջ���࣡\n"
	msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:4>##IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@jump *01*������������Ԩ������Ҫ��ӣ�>\n"
	msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
    msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���뿪��>"
	return msg
end

function jump(npc, player)
    local msg = "��ʿ����׼��������\n"
    msg = msg.."�����������������ұ���ȼ����ڵ���40��������Ҫ��ӣ��ɶӳ��������������Ԩ(����5���������)\n"
	msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n\n"
	local members = lualib:Player_GetTeamList(player)

	for _, v in pairs(members) do
		if not lualib:VerifyCampCount(v, 16) then
			if player == v then
				msg = msg .. "���Ѿ���ս��������Ԩ�����ܼ�����ս��\n\n<@leave *01*���뿪��>"
			else
				msg = msg .. "���ѡ�"..lualib:Name(v).."���Ѿ���ս��������Ԩ�����ܼ�����ս��\n\n<@leave *01*���뿪��>"
			end
			return msg
		end
	end

	msg = msg.."#OFFSET<X:0,Y:4>##IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@jumpex *01*��ǰ��������Ԩ��>\n\n"
	msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	msg = msg.."                                               #OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
    return msg
end

function jumpex(npc, player)
	if not lualib:Player_IsTeamLeader(player) then
        return "�㲻�Ƕӳ���\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    end

	local members = lualib:Player_GetTeamList(player)
	if members == nil or #members == 0 then
        return "�����ԱΪ�գ�\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    end

	local require_distance = 20
	for _, v in pairs(members) do
		local distance = lualib:Distance(v, npc)
		if distance > require_distance then
			if player == v then
				return "���ľ����Զ��\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			else
				return "���ѡ�"..lualib:Name(v).."���ľ����Զ��\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			end
		end
	end

	local require_level = 40
	for _, v in pairs(members) do
		if lualib:Level(v) < require_level then
			if player == v then
				return "���ĵȼ����ͣ���40��������\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			else
				return "���ѡ�"..lualib:Name(v).."���ĵȼ����ͣ�\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			end
		end
	end

	for _, v in pairs(members) do
        for _, _v in pairs(CMap.keys) do
		    if lualib:Player_HasDgnTicket(v, _v) then
                if player == v then
                    return "���Ѿ��������������ĸ�����\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
                else
			        return "���ѡ�"..lualib:Name(v).."���Ѿ��������������ĸ�����\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
                end
            end
        end
	end

	for _, v in pairs(members) do
		if not lualib:VerifyCampCount(v, 16) then
			if v == player then
				return "�������Ѿ������������Ԩ�ˣ�\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			else
				return "���ѡ�"..lualib:Name(v).."�������Ѿ������������Ԩ��\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			end
		end
	end

    local require_gold = 0
    if not lualib:Player_IsGoldEnough(player, require_gold, false) then
        return "���Ľ�Ҳ���"..require_gold.."��\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    end

    if not lualib:Player_SubGold(player, require_gold, false, "�۽�ң�������Ԩ���ͷ�", "������Ԩ������") then
        return "�۳����ʧ�ܣ�\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    end

    local dgns = {}
    local now = lualib:GetAllTime()
    local times = lualib:Str2Time(string.format("%s %s", lualib:Time2Str("%Y-%m-%d", now), "23:59:59")) - now

    for k, v in pairs(CMap.keys) do
    	local dgn = lualib:Map_CreateDgn(v, true, times)
        if dgn == "" then
            lualib:Error("������"..v.."����ʧ�ܣ�")
            return "������"..v.."����ʧ�ܣ�\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
        end
        lualib:Debug("������"..v.."�����ɹ���")
        table.insert(dgns, k, dgn)
    end

    if #dgns == 0 then
        return "ϵͳ����\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    end

	for _, v in pairs(members) do
        for _, _v in pairs(dgns) do
		    if lualib:Player_SetDgnTicket(v, _v) == false then
                return "��������ɽ����ͼ��\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
            end
        end
        lualib:JoinCamp(v, 16, 0)
		if lualib:Player_EnterDgn(v, "������Ԩ1", 127, 27, 15) == false then
            return "�����ͼʧ�ܣ�\n\n \n\n \n\n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
        end
    end
    return ""
end

function leave(npc, player)
    return ""
end
