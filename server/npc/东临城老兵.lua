function main(npc, player)
	msg = "��˵������һ���ܸ��ĵĵط�,�д�������ʿפ��������,�����ǰ�ȫ��,�ҿ���ָ����һ��·.\n \n"
	msg = msg.."#IMAGE1902700015#<@mv *01*����˲���ƶ�>\n"
	msg = msg.."#IMAGE1902700017#<@info *01*����ѯ��>\n"
	msg = msg.."#IMAGE1902700034#<@Leave *01*�뿪>\n"
	return msg
end

function mv(npc,player)
	msg = "��Ҫ����ʲô�貨΢��,��ʵ��������ܼ�,ֻҪ�㸶Ǯ,ʲô���ⲻ�ܽ����?����,С��������������Σ��,��������һ�̰�!ֻ��Ҫ2000���Ŷ!\n \n"
	msg = msg.."<@MapMoveXYB#����#230#230#1 *01*�����ǡ�>\n\n"
	msg = msg.."<@main *01*���� �ء�>\n \n"
	return msg
end




function info(npc, player)
	msg = "������ĳ��о��������ڵ���ɽ�ǣ�����Ͳ�����˵�˰�!���ɽ�ȵ�С��ܺ��ң���ֻҪ��������Ͽ���߾��ܹ����ˡ������������Ҫ�����ǣ���Ӧ���μ�300 300������֣��������ɽ�ȣ�����ָ�����ߵ���������ŵغܽ��ģ���һ��Σ�յ������Ǵ��һ�������ʱ�����ǣ��Ҽǵ���ǰ�ڶ��ߵ�·ȥ�����������Ҫ�����㣬ÿ��ʡ�ݵ����궼�ǲ�ͬ�ģ��ɱ�������������Ŷ�����ԣ�Ҫ��סÿ��ͨ������ʡ�Ĺؿڡ����Ҫ�ǵö���������ߣ���ͻ����һ����Ϥ�����½��\n \n"
	msg = msg.."<@main *01*�����ء�>\n \n"
	return msg
end



function MapMoveXYB(npc, player, map_key_name, x, y, r)
	local msg=""
	gold = 2000
	if not lualib:Player_SubGold(player, gold, false, "�۳���ң����ͷ�", "���ͷ���") 
then return "��Ľ�Ҳ��㣬���ܴ��ͣ�" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "����ͼʧ��"
    end
	return msg
end