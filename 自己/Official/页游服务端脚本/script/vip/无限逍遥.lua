--[[function main(player, vipLevel)
    lualib:NPCTalk(player, "<@TiaoDiTu#"..vipLevel.." *01*ʹ��������ң����>")
	return false
end]]

function main(player, vipLevel)
	local msg = ""
	msg = msg.."#COLORCOLOR_BLUE#��#COLOREND#�ع�:#COLORCOLOR_BLUE#��#COLOREND#\n"
	msg = msg.."<@jjz#"..vipLevel.." *01*����ڣ>  "
	msg = msg.."<@fqkd#"..vipLevel.." *01*������>  "
	msg = msg.."<@jlc#"..vipLevel.." *01*��·��>  "
	msg = msg.."<@ysax#"..vipLevel.." *01*��ɽ>  "
	msg = msg.."<@thz#"..vipLevel.." *01*�����>  "
	msg = msg.."<@xm#"..vipLevel.." *01*���а��>  "
	msg = msg.."<@tmsk#"..vipLevel.." *01*��ħʯ��>  "
	msg = msg.."<@hjmj#"..vipLevel.." *01*�����ؾ�>  \n"
	msg = msg.."#COLORCOLOR_BLUE#��#COLOREND#Ұ��:#COLORCOLOR_BLUE#��#COLOREND#\n"
	msg = msg.."<@JumpMap#18#"..vipLevel.." *01*��·��>  "
	msg = msg.."<@JumpMap#19#"..vipLevel.." *01*��·��>\n"
	msg = msg.."#COLORCOLOR_BLUE#��#COLOREND#����:#COLORCOLOR_BLUE#��#COLOREND#\n"
	msg = msg.."<@wsc#"..vipLevel.." *01*��ɽ��>  "
	msg = msg.."<@lc#"..vipLevel.." *01*����>\n  "
	msg = msg.."<@dlc#"..vipLevel.." *01*���ٳ�>\n"
	msg = msg.."#COLORCOLOR_BLUE#��#COLOREND#�Ǳ�:#COLORCOLOR_BLUE#��#COLOREND#\n"
	msg = msg.."<@JumpMap#38#"..vipLevel.." *01*����>  \n"
	lualib:NPCTalk(player, msg)
	return ""
end

--����ڣ
function jjz(player, vipLevel)
	local msg = "<@JumpMap#1#"..vipLevel.." *01*����ڣһ��> \n"
	msg = msg.."<@JumpMap#2#"..vipLevel.." *01*����ڣ����> \n"
	msg = msg.."<@JumpMap#3#"..vipLevel.." *01*����ڣ����> \n \n"
	msg = msg.."<@main#"..vipLevel.." *01*�����ء�>\n"
	return msg
end

--������
function fqkd(player, vipLevel)
	local msg = "<@JumpMap#4#"..vipLevel.." *01*�����> \n"
	msg = msg.."<@JumpMap#5#"..vipLevel.." *01*�ϲ�����> \n"
	msg = msg.."<@JumpMap#6#"..vipLevel.." *01*��������> \n \n"
	msg = msg.."<@main#"..vipLevel.." *01*�����ء�>\n"
	return msg
end
--��·��
function jlc(player, vipLevel)
	local msg = "<@JumpMap#7#"..vipLevel.." *01*��·�Ƕ���> \n"
	msg = msg.."<@JumpMap#8#"..vipLevel.." *01*��·���ϲ�> \n \n"
	msg = msg.."<@main#"..vipLevel.." *01*�����ء�>\n"
	return msg
end
--��ɽ��Ѩ
function ysax(player, vipLevel)
	local msg = "<@JumpMap#9#"..vipLevel.." *01*��ɽ��Ѩһ��> \n"
	msg = msg.."<@JumpMap#10#"..vipLevel.." *01*��ɽ��Ѩ����> \n"
	msg = msg.."<@JumpMap#11#"..vipLevel.." *01*��ɽ��Ѩ����> \n \n"
	msg = msg.."<@main#"..vipLevel.." *01*�����ء�>\n"
	return msg
end

--�����
function thz(player, vipLevel)
	local msg = "<@JumpMap#12#"..vipLevel.." *01*�����һ��> \n"
	msg = msg.."<@JumpMap#13#"..vipLevel.." *01*��������> \n"
	msg = msg.."<@JumpMap#14#"..vipLevel.." *01*���������> \n \n"
	msg = msg.."<@main#"..vipLevel.." *01*�����ء�>\n \n"
	return msg
end

--а��
function xm(player, vipLevel)
	local msg = "<@JumpMap#15#"..vipLevel.." *01*���а��һ��> \n"
	msg = msg.."<@JumpMap#16#"..vipLevel.." *01*���а�����> \n"
	msg = msg.."<@JumpMap#17#"..vipLevel.." *01*���а������> \n \n"
	msg = msg.."<@main#"..vipLevel.." *01*�����ء�>\n"
	return msg
end

--��ħʯ��
function tmsk(player, vipLevel)
	local msg = "<@JumpMap#46#"..vipLevel.." *01*��ħʯ��һ��> \n"
	msg = msg.."<@JumpMap#47#"..vipLevel.." *01*��ħʯ�߶���> \n \n"
	msg = msg.."<@main#"..vipLevel.." *01*�����ء�>\n"
	return msg
end

--�����ؾ�
function hjmj(player, vipLevel)
	local msg = "<@JumpMap#48#"..vipLevel.." *01*�ؾ�����һ��> \n"
	msg = msg.."<@JumpMap#49#"..vipLevel.." *01*�ؾ���������> \n \n"
	msg = msg.."<@main#"..vipLevel.." *01*�����ء�>\n"
	return msg
end

--��ɽ�Ǻ�����
function wsc(player, vipLevel)
	local msg = "<@JumpMap#20#"..vipLevel.." *01*��ɽ��> \n \n"
	msg = msg.."<@JumpMap#21#"..vipLevel.." *01*��ɣ��>  \n \n"
	--msg = msg.."<@JumpMap#22#"..vipLevel.." *01*�����> \n \n"
	msg = msg.."<@JumpMap#23#"..vipLevel.." *01*��ɽ��������>  "
	msg = msg.."<@JumpMap#24#"..vipLevel.." *01*��ɽ�Ƿ�װ��>  "
	msg = msg.."<@JumpMap#25#"..vipLevel.." *01*��ɽ�����ε�>  "
	msg = msg.."<@JumpMap#26#"..vipLevel.." *01*��ɽ��ҩ��>  "
	msg = msg.."<@JumpMap#27#"..vipLevel.." *01*��ɽ���ӻ���>  "
	msg = msg.."<@JumpMap#28#"..vipLevel.." *01*��ɽ�����>    "
	msg = msg.."<@JumpMap#29#"..vipLevel.." *01*��ɽ�ǲֿ�>\n  \n"
	msg = msg.."<@main#"..vipLevel.." *01*�����ء�>\n"

	return msg
end

--���Ǻ�����
function lc(player, vipLevel)
	local msg = "<@JumpMap#30#"..vipLevel.." *01*����> \n \n"
	msg = msg.."<@JumpMap#31#"..vipLevel.." *01*����������>  "
	msg = msg.."<@JumpMap#32#"..vipLevel.." *01*���Ƿ�װ��>  "
	msg = msg.."<@JumpMap#33#"..vipLevel.." *01*�������ε�>  "
	msg = msg.."<@JumpMap#34#"..vipLevel.." *01*����ҩ��>  "
	msg = msg.."<@JumpMap#35#"..vipLevel.." *01*�����ӻ���>  "
	msg = msg.."<@JumpMap#36#"..vipLevel.." *01*�������>    "
	msg = msg.."<@JumpMap#37#"..vipLevel.." *01*���ǲֿ�>\n  \n"
	msg = msg.."<@main#"..vipLevel.." *01*�����ء�>\n"
	return msg
end

--���ٳ�

function dlc(player, vipLevel)
	local msg = "<@JumpMap#39#"..vipLevel.." *01*���ٳ�> \n \n"
	msg = msg.."<@JumpMap#40#"..vipLevel.." *01*���ٳ�������>  "
	msg = msg.."<@JumpMap#41#"..vipLevel.." *01*���ٳǷ�װ��>  "
	msg = msg.."<@JumpMap#42#"..vipLevel.." *01*���ٳ����ε�>  "
	msg = msg.."<@JumpMap#43#"..vipLevel.." *01*���ٳ�ҩ��>  "
	msg = msg.."<@JumpMap#44#"..vipLevel.." *01*���ٳ��ӻ���>  "
	msg = msg.."<@JumpMap#45#"..vipLevel.." *01*���ٳǲֿ�>\n  \n"
	msg = msg.."<@main#"..vipLevel.." *01*�����ء�>\n"
	return msg
end

function JumpMap(player, index, vipLevel)
    local map_table = {{"����ڣ1", 130, 36}, --1
					   {"����ڣ2", 142, 24}, --2
					   {"����ڣ3", 190, 76}, --3
                       {"������1", 21, 176},--4
					   {"������2", 6, 24},--5
					   {"������3", 5, 110},--6
                       {"��·��1", 295, 494},--7
					   {"��·��2", 155, 231},--8
                       {"��ɽ��Ѩ1", 32, 174},--9
					   {"��ɽ��Ѩ2", 211, 108},--10
					   {"��ɽ��Ѩ3", 28, 175},--11
					   {"�����1", 93, 96},--12
					   {"�����3", 19, 169},--13
					   {"�����6", 27, 163},--14
                       {"а��1", 86, 194},--15
					   {"а��2", 48, 274},--16
					   {"а��4", 47, 203},--17
					   {"��·��", 101, 257},--18
					   {"��·��", 171, 60},--19
					   {"��ɽ��", 237, 303},--20
					   {"��ɣ��", 205, 275}, --21��ɣ��
					   {"��ɽ��", 196, 679}, --22�����
					   {"������", 18, 30},--23
					   {"��װ��", 14, 27},--24
					   {"���ε�", 14, 30},--25
					   {"ҩ��", 17, 24},--26
					   {"��ɽ��", 243, 355},--27�ӻ���
					   {"���", 15, 26},--28
					   {"��ɽ��", 289, 341},--29�ֿ�
					   {"����", 234, 222},--30
					   {"����������", 18, 30},--31
					   {"���Ƿ�װ��", 14, 27},--32
					   {"�������ε�", 16, 30},--33
					   {"����", 268, 234},--34ҩ��
					   {"����", 249, 232},--35�ӻ���
					   {"�������", 16, 25},--36
					   {"����", 238, 268},--37�ֿ�
					   {"����", 51, 606},--38
					   {"���ٳ�", 330, 300},--39
					   {"���ٳ�", 335, 286},--40
					   {"���ٳ�", 301, 306},--41
					   {"���ٳ�", 344, 354},--42
					   {"���ٳ�", 320, 259},--43
					   {"���ٳ�", 324, 320},--44
					   {"���ٳ�", 360, 304},--45
					   {"��ħʯ��1", 25, 189},--46
					   {"��ħʯ��2", 15, 184},--47
					   {"����1", 91, 157}, --48
					   {"����2", 139, 70}, --49
					   }
	if not lualib:Player_MapMoveXY(player, map_table[tonumber(index)][1],
                                   map_table[tonumber(index)][2],
                                   map_table[tonumber(index)][3], 5) then
        return "����ͼʧ��"
    end


    return ""
end