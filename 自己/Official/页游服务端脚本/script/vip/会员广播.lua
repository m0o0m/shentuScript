function main(player, vipLevel)
	local msg = ""
    msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
    msg = msg.."�𾴵Ļ�Ա��\n \n"
	msg = msg.."��ÿ������ڱ�Ƶ����ѷ���10��ȫ�����棡����\n \n"
    msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700017>#<@huiyuan77 *01*������ȫ�����桹>\n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	lualib:NPCTalk(player, msg)
	return ""
end

function huiyuan77(player)
	local vip8_day_jintian = lualib:GetAllDays(0)
	local vip8_guangbo_zuotian = lualib:Player_GetCustomVarInt(player, "vip8_guangbo_zuotian")
	if vip8_day_jintian == vip8_guangbo_zuotian then
		lualib:NPCTalk(player, "ÿ��ֻ�ܷ���10����ѹ㲥�����������ɣ�����\n \n<@main *01*�����ء�>\n")
		return ""
	end
	
	lualib:SysMsg_SendInputDlg(player, 2, "��������Ҫ���������ݣ�(����40����)", 30, 80, "EnterSilver", "")
	return ""
end

function EnterSilver(id, player, silver, param)
	local player_name = lualib:Name(player)
	local msg = silver
	local vip8_day_jintian = lualib:GetAllDays(0)
	local huiyuan_guangbo_zhi = lualib:Player_GetCustomVarInt(player, "vip8_guangbo"..vip8_day_jintian)
		if huiyuan_guangbo_zhi > 8 then
			lualib:Player_SetCustomVarInt(player, "vip8_guangbo_zuotian", vip8_day_jintian)
			lualib:Player_SetCustomVarInt(player, "vip8_guangbo"..vip8_day_jintian, 0)
			lualib:NPCTalk(player, "��ǰΪ�����췢���ĵ�10����ѹ㲥��ÿ����Է���10������\n \n<@main *01*�����ء�>\n")
			return ""
		else
			huiyuan_guangbo_zhi = huiyuan_guangbo_zhi + 1
			lualib:Player_SetCustomVarInt(player, "vip8_guangbo"..vip8_day_jintian, huiyuan_guangbo_zhi)
			lualib:SysMsg_SendBroadcastMsg(""..msg, "��ҡ�"..player_name.."��������Ա�㲥")
			lualib:NPCTalk(player, "��ǰΪ�����췢���ĵ�"..huiyuan_guangbo_zhi.."����ѹ㲥��ÿ����Է���10������\n \n<@main *01*�����ء�>\n")
			return ""
		end
		return ""
end
	
	