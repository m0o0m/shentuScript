function main(player, npc)
	local msg = "     ������ʲô���԰ﵽ�����\n \n \n \n"
	msg = msg.."#OFFSET<X:0,Y:-4>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#��ɽ��#235#305#3 *01*�ص���ɽ��>\n"
	msg = msg.."#OFFSET<X:0,Y:4>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#����#236#228#3 *01*�ص�����>\n \n \n"
	msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-1>#<@leave *01*�뿪>\n"
	return msg
end

function leave(player,npc)
	return ""
end

function jump(npc, player, map_name, x, y, r)
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	if not lualib:Player_MapMoveXY(player, map_name, x, y, r) then return "����ͼʧ�ܣ�\n \n<@main *01*����>" end
	return ""
end