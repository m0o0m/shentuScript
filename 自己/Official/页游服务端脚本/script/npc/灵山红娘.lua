function main(npc,player)
local 	msg = "     ���������Ʈ�죬Ϫˮ�峺��ż�����������͸������Ʈ�����£������������޺���η�ˣ�����˾�����������Լ��మ����Я�ֶ��У�Ҳ���������ˣ���ϧ...��~��\n"
	msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n \n \n \n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@MapMoveXYA#��ɽ��#235#304#3 *01*[�ص���ɽ��]>\n \n"
	msg = msg.."                                                    #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@likai *01*���رա�>\n"
	return msg
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

function MapMoveXYB(npc, player, map_key_name, x, y, r)
	local msg=""
	gold = 0
	if not lualib:Player_SubGold(player, gold, false, "�۳���ң����ͷ�", "����崫��") then return "��Ľ�Ҳ��㣬���ܴ��ͣ�" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "����ͼʧ��"
    end
	return msg
end

function likai(npc,player)
	return ""
end
