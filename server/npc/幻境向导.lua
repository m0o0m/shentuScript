function main(npc, player)
	local msg = ""
	msg = "���������˵�������㹻��ʵ��������һ�㡣 \n"
	msg = "�����ڻ���ȥ��\n \n"
	msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@go_nest#�þ�4��#48#63 *01*��ȥ�þ��Ĳ㡹   >\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@go_nest#�þ�2��#173#214 *01*��ȥ�þ����㡹   >\n"

	msg = msg.."��������������������������������������������#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*����ȥ��>\n"
	return msg
end




function go_nest(npc, player, map_k, x, y)
	local x, y = tonumber(x), tonumber(y)
	lualib:Player_MapMoveXY(player, map_k, x, y, 3)

	return ""
end


function leave(player)
	return ""
end