local talk_t = {"�ഫ��һ�������䱦�ľ޴���û���İ��ĺ��ף�����Ҳû����֪�����Ҿ޴�Ϊ�λ��û��"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 270000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)

		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(player, npc)
	local msg = "    �����ں����������һ�ҹŴ��ĳ��������ﲻ������������ͼ��Ƭ�Ĵ�˵����������ʧ���ں��׵ı��أ��������ȥ̽�գ��ҿ���Ϊ���·��\n"
	msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n \n \n"
	msg = msg.." #OFFSET<X:0,Y:-4>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#�������#36#71#3 *01*ǰ�������ؾ�>\n \n \n \n \n"
	msg = msg.." #OFFSET<X:0,Y:-4>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@leave *01*�뿪>\n"
	return msg
end

function leave(player,npc)
	return ""
end

function jump(npc, player, map_name, x, y, r)
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
	if map_name == "�������" then
		local haidi_Open = lualib:IO_GetCustomVarInt("haidi_Open")
		if haidi_Open < 0 then
			return "�����ؾ���δ����ʿ����������½����".. 20 .."λ47������ʿʱ�������ؾ���̽��֮·���Ὺ����"
		end
	end
	
	
	if not lualib:Player_MapMoveXY(player, map_name, x, y, r) then return "����ͼʧ�ܣ�\n \n<@main *01*����>" end
	return ""
end
