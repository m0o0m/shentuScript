function main(player, npc)
	local msg = "     Ŷ����Ҫ��ȥ���𣿿϶�����˺ܴ��ջ�ɣ�������Ҫȥ���\n \n"
	msg = msg.."#OFFSET<X:0,Y:-8>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#��ɽ��#235#305#3 *01*�ص���ɽ��>\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#����#230#230#3 *01*�ص�����>\n \n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*�ر�>\n"
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