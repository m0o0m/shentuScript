
function main(npc, player)
	msg = "     ����������֤���Լ������µ�һ����ܵ�������ˣ�\n \n \n \n \n \n \n"
	msg = msg.."#OFFSET<X:5,Y:-4>##IMAGE<ID:1902700015>##OFFSET<X:5,Y:-1>#<<@JumpMap#��ɽ��#237#303#3 *01*�ص���ɽ��>>\n"
	msg = msg.." #OFFSET<X:-1,Y:4>##IMAGE<ID:1902700034>##OFFSET<X:-1,Y:-2>#<@leave *01*���رա�>\n"
	return msg
end




function TiaoDiTu(npc, player)
	local msg=""
	msg = msg.."<@JumpMap#��ɽ��#237#303#3 *01*��ɽ��>\n"
	msg = msg.."<@main *01*�����ء�>\n"
	return msg
end






function JumpMap(npc, player, map_key_name, x, y, r)
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



function leave(npc, player)
    return ""
end
