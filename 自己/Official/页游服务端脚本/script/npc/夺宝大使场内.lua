function main(player,npc)
	msg = "������ʲô���԰ﵽ�����\n \n \n \n \n"
	msg = msg.."#OFFSET<X:0,Y:-4>##IMAGE1902700015##OFFSET<X:2,Y:-1>#<@MapMoveXYA#����#234#222#3 *01*�ص�����>\n"
	msg = msg.."#OFFSET<X:0,Y:4>##IMAGE1902700017##OFFSET<X:0,Y:-1>#<@info *01*�����>\n \n \n"
	msg = msg.."                                                #OFFSET<X:0,Y:-4>##IMAGE1902700034##OFFSET<X:0,Y:-1>#<@likai *01*���رա�>\n"
	return msg
end

function info(npc,player)
   local msg = "    �����ʱ�䣺ÿ��һ�������� 17:00~17:30  21:30~22:00\n#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n    �ӳ���Ҫ����һ��Ӣ���������ɺ��������������ҽ������������޶�����ҿ����н��룡\n"
	msg = msg.."    ��ħ���Ĺ�������Ӣ������\n#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND# \n"
	msg = msg.."                                                #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-1>#<@main *01*�����ء�>\n"
	return msg
end

function likai(player,npc)
	return ""
end

function MapMoveXYA(npc, player, map_key_name, x, y, r)
	local msg=""
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "����ͼʧ��"
    end
	return msg
end