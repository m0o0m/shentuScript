function main(player_guid, item_guid)
    lualib:NPCTalk(player_guid, "<@TiaoDiTu#"..item_guid.." *01*������ң�� ��".."����ʹ��"..lualib:Item_GetUsesCount(player_guid, item_guid).."��".."��>")
    return true
end




function TiaoDiTu(player_guid, item_guid)
	local msg = ""
	msg = msg.."#COLORCOLOR_BLUE#��#COLOREND#�ع�:#COLORCOLOR_BLUE#��#COLOREND#                                     \n"
	msg = msg.."<@JumpMap#1#"..item_guid.." *01*����ڣ> "
	msg = msg.."<@JumpMap#5#"..item_guid.." *01*������> "
	msg = msg.."<@JumpMap#9#"..item_guid.." *01*��ɽ��Ѩ> "
	msg = msg.."<@JumpMap#12#"..item_guid.." *01*�����> "
	msg = msg.."<@JumpMap#17#"..item_guid.." *01*���а��> "
	msg = msg.."<@JumpMap#65#"..item_guid.." *01*��ħʯ��> "
	msg = msg.."<@JumpMap#66#"..item_guid.." *01*�����ؾ�> "
	msg = msg.."<@JumpMap#67#"..item_guid.." *01*��ħ����> \n"
	--msg = msg.."<@jjz#"..item_guid.." *01*����ڣ>  "
	--msg = msg.."<@fqkd#"..item_guid.." *01*������>  "
	--msg = msg.."<@jlc#"..item_guid.." *01*��·��>  "
	--msg = msg.."<@ysax#"..item_guid.." *01*��ɽ>  "
	--msg = msg.."<@thz#"..item_guid.." *01*�����>  "
	--msg = msg.."<@xm#"..item_guid.." *01*���а��>  "
	--msg = msg.."<@tmsk#"..item_guid.." *01*��ħʯ��>  "
	--msg = msg.."<@hjmj#"..item_guid.." *01*�����ؾ�>  "
	--msg = msg.."<@zmjd#"..item_guid.." *01*��ħ����>  \n"
	msg = msg.."#COLORCOLOR_BLUE#��#COLOREND#Ұ��:#COLORCOLOR_BLUE#��#COLOREND#\n"
	msg = msg.."<@JumpMap#18#"..item_guid.." *01*��·��>  "
	msg = msg.."<@JumpMap#19#"..item_guid.." *01*��·��>\n"
	msg = msg.."#COLORCOLOR_BLUE#��#COLOREND#����:#COLORCOLOR_BLUE#��#COLOREND#\n"
	msg = msg.."<@JumpMap#68#"..item_guid.." *01*�����>  "
	msg = msg.."<@wsc#"..item_guid.." *01*��ɽ��>  "
	msg = msg.."<@lc#"..item_guid.." *01*����>  \n"
	--msg = msg.."<@dlc#"..item_guid.." *01*���ٳ�>"
	--msg = msg.."<@zmc#"..item_guid.." *01*  ��ħ��>\n"
	msg = msg.."#COLORCOLOR_BLUE#��#COLOREND#�Ǳ�:#COLORCOLOR_BLUE#��#COLOREND#\n"
	msg = msg.."<@JumpMap#38#"..item_guid.." *01*����>  \n"
	--msg = msg.."����ʹ��"..lualib:Item_GetUsesCount(player_guid, item_guid).."��  \n"
	return msg
end

--����ڣ
function jjz(player_guid, item_guid)
	local msg = "<@JumpMap#1#"..item_guid.." *01*����ڣһ��> \n"
	msg = msg.."<@JumpMap#2#"..item_guid.." *01*����ڣ����> \n"
	msg = msg.."<@JumpMap#3#"..item_guid.." *01*����ڣ����> \n \n"
	msg = msg.."<@TiaoDiTu#"..item_guid.." *01*�����ء�>\n"
	return msg
end

--������
function fqkd(player_guid, item_guid)
	local msg = "<@JumpMap#4#"..item_guid.." *01*�����> \n"
	msg = msg.."<@JumpMap#5#"..item_guid.." *01*�ϲ�����> \n"
	msg = msg.."<@JumpMap#6#"..item_guid.." *01*��������> \n \n"
	msg = msg.."<@TiaoDiTu#"..item_guid.." *01*�����ء�>\n"
	return msg
end
--��·��
function jlc(player_guid, item_guid)
	local msg = "<@JumpMap#7#"..item_guid.." *01*��·�Ƕ���> \n"
	msg = msg.."<@JumpMap#8#"..item_guid.." *01*��·���ϲ�> \n \n"
	msg = msg.."<@TiaoDiTu#"..item_guid.." *01*�����ء�>\n"
	return msg
end
--��ɽ��Ѩ
function ysax(player_guid, item_guid)
	local msg = "<@JumpMap#9#"..item_guid.." *01*��ɽ��Ѩһ��> \n"
	msg = msg.."<@JumpMap#10#"..item_guid.." *01*��ɽ��Ѩ����> \n"
	msg = msg.."<@JumpMap#11#"..item_guid.." *01*��ɽ��Ѩ����> \n \n"
	msg = msg.."<@TiaoDiTu#"..item_guid.." *01*�����ء�>\n"
	return msg
end

--�����
function thz(player_guid, item_guid)
	local msg = "<@JumpMap#12#"..item_guid.." *01*�����һ��> \n"
	msg = msg.."<@JumpMap#13#"..item_guid.." *01*��������> \n"
	msg = msg.."<@JumpMap#14#"..item_guid.." *01*���������> \n \n"
	msg = msg.."<@TiaoDiTu#"..item_guid.." *01*�����ء�>\n \n"
	return msg
end

--а��
function xm(player_guid, item_guid)
	local msg = "<@JumpMap#15#"..item_guid.." *01*���а��һ��> \n"
	msg = msg.."<@JumpMap#16#"..item_guid.." *01*���а�����> \n"
	msg = msg.."<@JumpMap#17#"..item_guid.." *01*���а������> \n \n"
	msg = msg.."<@TiaoDiTu#"..item_guid.." *01*�����ء�>\n"
	return msg
end

--��ħʯ��
function tmsk(player_guid, item_guid)
	--local tmsk_key = 5
	--local tianmo_Open = lualib:IO_GetCustomVarInt("tianmo_Open")
	if lualib:Level(player_guid) >= 40 then
		local msg = "<@JumpMap#46#"..item_guid.." *01*��ħʯ��һ��> \n"
		msg = msg.."<@JumpMap#47#"..item_guid.." *01*��ħʯ�߶���> \n \n"
		msg = msg.."<@TiaoDiTu#"..item_guid.." *01*�����ء�>\n"
		return msg
	else
		return "�㻹δ�ﵽ40�����޷�������ħʯ�ߣ�"
	end
end

--�����ؾ�
function hjmj(player_guid, item_guid)
	local haidi_key = 20
	local haidi_Open = lualib:IO_GetCustomVarInt("haidi_Open")
	if haidi_Open >= haidi_key then
		local msg = "<@JumpMap#49#"..item_guid.." *01*�ؾ�����һ��> \n"
		msg = msg.."<@JumpMap#50#"..item_guid.." *01*�ؾ���������> \n \n"
		msg = msg.."<@TiaoDiTu#"..item_guid.." *01*�����ء�>\n"
		return msg
	else
		return "�����ؾ���δ����ʿ����������½����"..haidi_key.."λ47������ʿʱ�������ؾ���̽��֮·���Ὺ����"
	end
end

--��ħ����
function zmjd(player_guid, item_guid)
	local zmjd_key = 5
	local zhenmocheng_Open = lualib:IO_GetCustomVarInt("zhenmocheng_Open")
	if zhenmocheng_Open >= zmjd_key then
		local msg = "<@JumpMap#51#"..item_guid.." *01*��ħ����һ��> \n"
		msg = msg.."<@JumpMap#52#"..item_guid.." *01*��ħ���ض���> \n"
		msg = msg.."<@JumpMap#53#"..item_guid.." *01*��ħ��������> \n"
		msg = msg.."<@JumpMap#54#"..item_guid.." *01*��ħ�����Ĳ�> \n"
		msg = msg.."<@JumpMap#55#"..item_guid.." *01*��ħ�������> \n"
		msg = msg.."<@JumpMap#56#"..item_guid.." *01*��ħ��������> \n"
		msg = msg.."<@JumpMap#57#"..item_guid.." *01*��ħ�����߲�> \n \n"
		msg = msg.."<@TiaoDiTu#"..item_guid.." *01*�����ء�>\n"
		return msg
	else
		return "��ħ���ػ�δ����������½����"..zmjd_key.."λ52������ʿʱ����ħ����̽��֮·���Ὺ����"
	end
end

--��ɽ�Ǻ�����
function wsc(player_guid, item_guid)
	local msg = "<@JumpMap#20#"..item_guid.." *01*��ɽ��> \n \n"
	--[[msg = msg.."<@JumpMap#21#"..item_guid.." *01*��ɣ��>  "
	msg = msg.."<@JumpMap#22#"..item_guid.." *01*�����> \n \n"]]
	msg = msg.."<@JumpMap#23#"..item_guid.." *01*��ɽ��������>  "
	msg = msg.."<@JumpMap#24#"..item_guid.." *01*��ɽ�Ƿ�װ��>  "
	msg = msg.."<@JumpMap#25#"..item_guid.." *01*��ɽ�����ε�>  "
	msg = msg.."<@JumpMap#26#"..item_guid.." *01*��ɽ��ҩ��>  "
	msg = msg.."<@JumpMap#27#"..item_guid.." *01*��ɽ���ӻ���>  "
	msg = msg.."<@JumpMap#28#"..item_guid.." *01*��ɽ�����>    "
	msg = msg.."<@JumpMap#29#"..item_guid.." *01*��ɽ�ǲֿ�>\n  \n"
	msg = msg.."<@TiaoDiTu#"..item_guid.." *01*�����ء�>\n"

	return msg
end

--���Ǻ�����
function lc(player_guid, item_guid)
	local msg = "<@JumpMap#30#"..item_guid.." *01*����> \n \n"
	msg = msg.."<@JumpMap#31#"..item_guid.." *01*����������>  "
	msg = msg.."<@JumpMap#32#"..item_guid.." *01*���Ƿ�װ��>  "
	msg = msg.."<@JumpMap#33#"..item_guid.." *01*�������ε�>  "
	msg = msg.."<@JumpMap#34#"..item_guid.." *01*����ҩ��>  "
	msg = msg.."<@JumpMap#35#"..item_guid.." *01*�����ӻ���>  "
	msg = msg.."<@JumpMap#36#"..item_guid.." *01*�������>    "
	msg = msg.."<@JumpMap#37#"..item_guid.." *01*���ǲֿ�>\n  \n"
	msg = msg.."<@TiaoDiTu#"..item_guid.." *01*�����ء�>\n"
	return msg
end

--���ٳ�

function dlc(player_guid, item_guid)
	local msg = "<@JumpMap#39#"..item_guid.." *01*���ٳ�> \n \n"
	msg = msg.."<@JumpMap#40#"..item_guid.." *01*���ٳ�������>  "
	msg = msg.."<@JumpMap#41#"..item_guid.." *01*���ٳǷ�װ��>  "
	msg = msg.."<@JumpMap#42#"..item_guid.." *01*���ٳ����ε�>  "
	msg = msg.."<@JumpMap#43#"..item_guid.." *01*���ٳ�ҩ��>  "
	msg = msg.."<@JumpMap#44#"..item_guid.." *01*���ٳ��ӻ���>  "
	msg = msg.."<@JumpMap#45#"..item_guid.." *01*���ٳǲֿ�>\n  \n"
	msg = msg.."<@TiaoDiTu#"..item_guid.." *01*�����ء�>\n"
	return msg
end
--��ħ��
function zmc(player_guid, item_guid)
	local zmjd_key = 5
	local zhenmocheng_Open = lualib:IO_GetCustomVarInt("zhenmocheng_Open")
	if zhenmocheng_Open >= zmjd_key then
		local msg = "<@JumpMap#58#"..item_guid.." *01*��ħ��> \n \n"
		msg = msg.."<@JumpMap#59#"..item_guid.." *01*��ħ��������>  "
		msg = msg.."<@JumpMap#60#"..item_guid.." *01*��ħ�Ƿ�װ��>  "
		msg = msg.."<@JumpMap#61#"..item_guid.." *01*��ħ�����ε�>  "
		msg = msg.."<@JumpMap#62#"..item_guid.." *01*��ħ���ӻ���>  "
		msg = msg.."<@JumpMap#63#"..item_guid.." *01*��ħ��ҩ��>  "
		msg = msg.."<@JumpMap#64#"..item_guid.." *01*��ħ�ǲֿ�>\n  \n"
		msg = msg.."<@TiaoDiTu#"..item_guid.." *01*�����ء�>\n"
		return msg
	else
		return "��ħ�ǻ�δ����������½����"..zmjd_key.."λ52������ʿʱ����ħ����̽��֮·���Ὺ����"
	end
end

function JumpMap(player_guid, index, item_guid)
    local map_table = {{"����ڣ1", 130, 36}, --1
					   {"����ڣ2", 142, 24}, --2
					   {"����ڣ3", 190, 76}, --3
                       {"������1", 21, 176},--4
					   {"������2", 6, 24},--5
					   {"������3", 5, 110},--6
                       {"��·��1", 295, 494},--7
					   {"��·��2", 155, 231},--8
                       {"��ɽ��Ѩ1", 154, 220},--9
					   {"��ɽ��Ѩ2", 211, 108},--10
					   {"��ɽ��Ѩ3", 28, 175},--11
					   {"�����1", 93, 96},--12
					   {"�����3", 19, 169},--13
					   {"�����6", 27, 163},--14
                       {"а��1", 86, 194},--15
					   {"а��2", 48, 274},--16
					   {"а��4", 244, 162},--17
					   {"��·��", 101, 257},--18
					   {"��·��", 167, 236},--19
					   {"��ɽ��", 237, 303},--20
					   {"��ɽ��", 502, 690}, --21��ɣ��
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
					   {"���ִ�", 202, 276}, --48������ɣ��
					   {"�������", 38, 70}, --49
					   {"����2", 139, 70}, --50
					   {"��ħ����1", 280, 167}, --51
					   {"��ħ����2", 215, 234}, --52
					   {"��ħ����3", 67, 88}, --53
					   {"��ħ����4", 83, 175}, --54
					   {"��ħ����5", 177, 190}, --55
					   {"��ħ����6", 69, 83}, --56
					   {"��ħ����7", 173, 274}, --57
					   {"��ħ��", 224, 174}, --58
					   {"��ħ��", 188, 191}, --59������
					   {"��ħ�Ƿ�װ��", 14, 24}, --60
					   {"��ħ�����ε�", 14, 26}, --61
					   {"��ħ��", 231, 164}, --62�ӻ���
					   {"��ħ��ҩ��", 14, 23}, --63
					   {"��ħ��", 211, 167}, --64�ֿ�
					   {"����", 32, 34}, --65��ħʯ��
					   {"����", 134, 734}, --66�����ؾ�
					   {"����", 242, 463}, --67��ħ����
					   {"��ɽ��", 500, 686}, --68������

					   }
	local itemname	= lualib:Name(item_guid)
	local itemkeyname = lualib:KeyName(item_guid)
	local item_num = lualib:ItemCountByKey(player_guid, itemkeyname, true, false, false, 2)

	if item_num < 1 then
		lualib:SysTriggerMsg(player_guid, "���ǲ��ǰ�["..itemname.."]���ű��ˣ�")
		return ""
	end				   
					   
					   
					   
					   
	if not lualib:Player_MapMoveXY(player_guid, map_table[tonumber(index)][1],
                                   map_table[tonumber(index)][2],
                                   map_table[tonumber(index)][3], 5) then
        return "����ͼʧ��"
    end

    local use_count = lualib:Item_GetUsesCount(player_guid, item_guid)

    if use_count <= 0 then
        if not lualib:Item_Destroy(player_guid, item_guid, "ɾ��Ʒ��ʹ����ң�δ���", "��ң�δ���") then
			return  "�۳�����ʧ��"
		end
    else
        use_count = use_count -1
        lualib:Item_SetUsesCount(player_guid, item_guid, use_count)
    end


    return ""
end


function on_create(item)
	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
	
end

function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	
	if item_map_x < 20000 then
		if player_name == "" then
			local s = "��"..item_name.."��������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "��"..item_name.."����������".."["..player_name.."]һ����Ʒ�������˳�����������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
            local s = "��"..item_name.."��������"..item_map_name.."��["..item_map_x..":"..item_map_y.."]������"
			local s1 = "["..player_name.."]��Ʒ�����ˣ���"..item_map_name.."["..item_map_x..":"..item_map_y.."]�����һ��".."��"..item_name.."��������"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end