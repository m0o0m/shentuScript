function main(npc,player)	
lualib:GenRandom(1, 10)> 0 then
return "����"
end
	local msg = [[
	�Ӳ��µ��ߺ�·����ħ��������ԭ�����Թ��ˣ��в�ͨ����
	�����ӣ�սʤħ�������淭Խѩɽ���ǻؼҵ�Ψһ;���ˣ�
	�����ˣ��ؼҾͿ������ˡ���Ҫǿ��͵ò�����ս��	
	]]
	msg = msg.."\n"		
	msg = msg.."#IMAGE1902700015#<@move_city *01*���д���>\n"
	msg = msg.."#IMAGE1902700015#<@move_shop *01*�̵괫��>\n"
	--msg = msg.."<@text *01*����ר��>\n"	
	msg = msg.."<@exit_e *01*�뿪>"
	return msg
end

function text(npc, player)
	local mon_k = "��ʬ���ʬ"
	local map = lualib:MapGuid(npc)
	local x, y, r = 245, 269, 5
	lualib:Map_GenSingleMonster(map, x, y, r, lualib:GenRandom(1, 8), mon_k, false)
	
	return ""
end



function exit_e(npc, player)
	return ""
end

---------------�̵괫��--------------------
function move_shop(npc, player)
	local msg = "�ҿ��Խ�����Ѵ��͵��������̵�\n \n"
	msg = msg.."<@MapMoveA#����#282#270 *01*��ҩ�꡹>��������"
	msg = msg.."<@MapMoveA#����#223#297 *01*���ֿ⡹>������"
	msg = msg.."<@MapMoveA#����#226#211 *01*�����ε꡹>������\n"	
	msg = msg.."<@MapMoveA#����#259#251 *01*�������꡹>������"
	msg = msg.."<@MapMoveA#����#220#228 *01*����꡹>������"
	msg = msg.."<@MapMoveA#����#273#276 *01*���ӻ��꡹>������"
	msg = msg.."<@MapMoveA#����#238#225 *01*���·��꡹>������\n\n"
	msg = msg.."��������������������������������������������������<@main *01*���� �ء�>\n "
	return msg
end

function MapMoveA(npc, player, map_k, x, y)
	if not lualib:Player_MapMoveXY(player, map_k, tonumber(x), tonumber(y), 3) then
		return "����ͼʧ��.\n\n<@exit_e *01*�뿪>"
    end
	
	return ""
end

----------------------���д���-----------------

function move_city(npc,player)
	local msg = [[    ��Ҫ����ʲô�貨΢������ʵ��������ܼ򵥣�ֻҪ�㸶#COLORCOLOR_SKYBLUE#5000���#COLOREND#,ʲô���ⲻ�ܽ���أ�
	   ���ɣ�С��������������Σ�գ���������һ�̰ɣ�
	
	
	 #IMAGE1902700015#<@move_yes#��ɽ��#331#278 *01*��ɽ��>           ��#IMAGE1902700015#<@move_yes#���ĳ�#121#158 *01*���ĳ�>        ����  #IMAGE1902700015#<@move_yes#����#569#282 *01*����>\n
	\n\n��������������������������������������������������<@main *01*����>\n]]	
	return msg
end

function move_yes(npc, player, map_k, x, y)
	--if lualib:Player_SubGold(player, 5000, false, "", "") then
		lualib:Player_MapMoveXY(player, map_k, tonumber(x), tonumber(y), 5)
	--[[else
		return "û��Ǯ��ô�����أ�����취�ɣ�\n\n\n\n��������������������������������������������������<@main *01*����>\n"
	end]]
	
	return ""
end