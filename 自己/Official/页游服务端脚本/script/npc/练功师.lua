local talk_t = {"ʹ������ľ�˿���ʹ��ļ��ܺܿ���ס�", "����ľ���Ǵ򲻻��ģ����������ԡ�", "���ҿ��Կ��ٻص��㳡��"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 270000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(player, npc)
	local msg = "     �������Լ���ʵ��ô��ȥ������ľ�˰ɣ�\n"
	msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n \n \n"
	msg = msg.." #OFFSET<X:0,Y:-4>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#��ɽ��#235#305#3 *01*[�ص���ɽ�ǹ㳡]>\n \n \n \n \n"
	msg = msg.."                                                   #OFFSET<X:0,Y:-4>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@leave *01*[�뿪]>\n"
	return msg
end

function leave(player,npc)
	return ""
end

function jump(npc, player, map_name, x, y, r)
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	if not lualib:Player_MapMoveXY(player, map_name, x, y, r) then return "����ͼʧ�ܣ�\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end
	return ""
end
