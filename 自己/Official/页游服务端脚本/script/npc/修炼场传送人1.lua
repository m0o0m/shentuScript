local talk_t = {"�ر�������������������챦�����û��ǿ���ʵ�����ǵò�����Щ���صġ�"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 270000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)

		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(player, npc)
	local msg = "    ������ر�����������������أ���Ҫ�õ����ǣ�û��ʵ�����ǲ����еģ�\n"
	msg = msg.."#COLORCOLOR_GREENG#���͵�����������Ҫ2000��ң�#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg.." #OFFSET<X:0,Y:-5>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#ľ����2#181#182#5 *01*ǰ���м�ľ����>(��������)"
	msg = msg.." #OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#ľ����3#181#182#5 *01*ǰ���߼�ľ����>(��������)\n"
	msg = msg.." #OFFSET<X:0,Y:5>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#�ؾ�¥#28#75#5 *01*ǰ���ؾ�¥>(�ռ����ܲ�ҳ)"
	msg = msg.." #OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#������#22#39#5 *01*ǰ��������>(ϡ������ץ��)\n"
	msg = msg.." #OFFSET<X:0,Y:5>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#�䱦��#27#104#5 *01*ǰ���䱦��>(����ǿ������)"
	msg = msg.." #OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#�ٲ���#18#27#5 *01*ǰ���ٲ���>(���ָ߼�ҩƷ)\n"
	msg = msg.." #OFFSET<X:0,Y:5>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#������#62#69#5 *01*ǰ��������>(�������ٵ���)"
    msg = msg.." #OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#��ħ��#158#160#5 *01*ǰ����ħ��>(��ս����BOSS)\n"
	msg = msg.." #OFFSET<X:0,Y:5>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump_longcheng#����#234#226#5 *01*��������>\n \n"
	msg = msg.." #OFFSET<X:0,Y:5>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@leave *01*�뿪>"
	return msg
end

function leave(player,npc)
	return ""
end

function jump_longcheng(npc, player)

	if not lualib:Player_MapMoveXY(player, "����", 234, 226, 5) then return "����ͼʧ�ܣ�\n \n<@main *01*����>" end
	return ""
end

function jump(npc, player, map_name, x, y, r)
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
    if not lualib:Player_SubGold(player, 2000, false, "�۽�ң����ͷ�", "������������") then return "��Ҳ��㣬�۽��ʧ�ܣ�" end
	if not lualib:Player_MapMoveXY(player, map_name, x, y, r) then return "����ͼʧ�ܣ�\n \n<@main *01*����>" end
	return ""
end
