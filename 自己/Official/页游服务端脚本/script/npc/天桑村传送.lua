function main(npc,player)
	msg = "ѧǧ���ܣ�����������·��·�ϵķ���Ҳ�Ƕ���ʿ��һ�ֶ���������ʵ�ϣ��Ҳ�����ͬ��ѡ��ֱ�Ӵ��ͣ������Ҫ������\n \n"
	msg = msg.."#IMAGE1902700015# <@anquan *01*[��ȫ����]>\n \n   "
	--msg = msg.."<@digong *01*[Σ������]>\n \n"
	msg = msg.."<@likai *01*���뿪��>\n"
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

function anquan(npc,player)
	msg = "�ҿ��Խ�����Ѵ��͵������ĳ���\n \n"
	--msg = msg.."<@MapMoveXYA#��ɽ��#237#303#1 *01*��ɽ��>          "
	msg = msg.."#IMAGE1902700015# <@MapMoveXYA#��ɽ��#194#679#3 *01*�����>\n \n"
		msg = msg.."#IMAGE1902700019#<@main *01*�����ء�>\n \n"
	return msg
end



function digong(npc,player)
	msg = "���͵�Σ�յ�����Ҫ����2000��ң���Ҫȥ����ð�գ�\n \n"
	msg = msg.."<@MapMoveXYB#��ɽ��#459#94#1 *01*����ڣ>              "
	msg = msg.."<@MapMoveXYB#��ɽ��#19#91#1 *01*������>            "
	msg = msg.."<@MapMoveXYB#��·��#16#54#1 *01*��·��>\n"
	msg = msg.."<@MapMoveXYB#����#30#47#1 *01*��ɽ��Ѩ>            "
	msg = msg.."<@MapMoveXYB#����#210#197#1 *01*�����>            "
	msg = msg.."<@MapMoveXYB#����#518#23#1 *01*���а��>\n \n"
	msg = msg.."<@main *01*�����ء�>\n \n"
	return msg
end

function MapMoveXYB(npc, player, map_key_name, x, y, r)
	local msg=""
	gold = 2000
	if not lualib:Player_SubGold(player, gold, false, "�۳���ң����ͷ�����", "��ɣ�崫��") then return "��Ľ�Ҳ��㣬���ܴ��ͣ�" end
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
