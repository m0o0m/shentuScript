function main(npc, player)
	local msg = "��ͣ���ӭ���٣����꾭Ӫһ����Ʒ��ί�����ۣ�����������������ۡ�\n \n"
	msg = msg.."#IMAGE1902700037##OFFSET<X:0,Y:-1>#<@ShowSellMarket#1 *01*���뽻����>\n"
	msg = msg.."#OFFSET<X:0,Y:5>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@likai *01*�뿪>\n"
    return msg
end

function ShowSellMarket(npc, player)
    lualib:ShowForm(player, "�����б�")
    return ""
end

function likai()
	return ""
end