function main(npc, player)
    msg = "���а�ĳƺţ�����������������ȡ�ϣ�\n \n \n"
    msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@lqch *01*��ȡ�ƺ�>\n"
    msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700030##OFFSET<X:0,Y:-1>#<@chjs *01*�ƺŽ���>\n \n \n \n"
    msg = msg.."                                                    #OFFSET<X:0,Y:1>##IMAGE1902700034##OFFSET<X:0,Y:-1>#<@chjs *01*[�뿪]>"
    return msg
end

function lqch(npc, player)
	msg = "��Ҫ��ȡ�Ǹ����а�ĳƺ���\n \n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#��ȡ<@hfb *01*��������>�ƺ�\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#��ȡ<@bqb *01*��������>�ƺ�\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#��ȡ<@erb *01*�����˰�>�ƺ�\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#��ȡ<@gspx *01*���������С�>�ƺ�\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#��ȡ<@mlpx *01*���������С�>�ƺ�\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#��ȡ<@txsc *01*����Ѫɳ����>�ƺ�\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#��ȡ<@tlmtx *01*�����������¡�>�ƺ�\n"
	msg = msg.."                                              #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
    return msg
end

function gspx(npc, player)
	msg = "��Ҫ��ȡ�Ǹ��ƺ���\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@gspx1 *01*��ȡ:������һ�ĳƺ�>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@gspx2 *01*��ȡ:�����ڶ��ĳƺ�>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@gspx3 *01*��ȡ:���������ĳƺ�>\n"
    return msg
end

function gspx1(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 8);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function gspx2(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 7);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function gspx3(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 6);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function mlpx(npc, player)
	msg = "��Ҫ��ȡ�Ǹ��ƺ���\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@mlpx1 *01*��ȡ:������һ�ĳƺ�>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@mlpx2 *01*��ȡ:�����ڶ��ĳƺ�>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@mlpx3 *01*��ȡ:���������ĳƺ�>\n"
    return msg
end


function mlpx1(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 19);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function mlpx2(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 18);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function mlpx3(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 17);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function hfb(npc, player)
	msg = "��Ҫ��ȡ�Ǹ��ƺ���\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@hfb1 *01*��ȡ:������һ�ĳƺ�>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@hfb2 *01*��ȡ:�����ڶ��ĳƺ�>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@hfb3 *01*��ȡ:���������ĳƺ�>\n"
    return msg
end

function hfb1(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 50);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function hfb2(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 49);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function hfb3(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 57);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function bqb(npc, player)
	msg = "��Ҫ��ȡ�Ǹ��ƺ���\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@bqb1 *01*��ȡ:������һ�ĳƺ�>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@bqb2 *01*��ȡ:�����ڶ��ĳƺ�>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@bqb3 *01*��ȡ:���������ĳƺ�>\n"
    return msg
end

function bqb1(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 1);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function bqb2(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 1);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function bqb3(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 1);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function txsc(npc, player)
	msg = "��Ҫ��ȡ�Ǹ��ƺ���\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@txsc1 *01*��ȡ:������һ�ĳƺ�>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@txsc2 *01*��ȡ:�����ڶ��ĳƺ�>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@txsc3 *01*��ȡ:���������ĳƺ�>\n"
    return msg
end

function txsc1(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 11);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function txsc2(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 10);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function txsc3(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 9);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function tlmtx(npc, player)
	msg = "��Ҫ��ȡ�Ǹ��ƺ���\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@tlmtx1 *01*��ȡ:������һ�ĳƺ�>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@tlmtx2 *01*��ȡ:�����ڶ��ĳƺ�>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@tlmtx3 *01*��ȡ:���������ĳƺ�>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@tlmtx4 *01*��ȡ:�������ĵĳƺ�>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@tlmtx5 *01*��ȡ:��������ĳƺ�>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@tlmtx6 *01*��ȡ:��������-ʮ�ĳƺ�>\n"
    return msg
end

function tlmtx1(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 36);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function tlmtx2(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 35);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function tlmtx3(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 33);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function tlmtx4(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 32);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function tlmtx5(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 34);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function tlmtx6(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 31);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function erb(npc, player)
	msg = "��Ҫ��ȡ�Ǹ��ƺ���\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@erb1 *01*��ȡ:������һ�ĳƺ�>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@erb2 *01*��ȡ:�����ڶ��ĳƺ�>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#<@erb3 *01*��ȡ:���������ĳƺ�>\n"
    return msg
end

function erb1(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 1);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function erb2(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 1);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function erb3(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 1);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function likai(npc, player)
	return ""
end

function chjs(npc, player)
	msg = "��Ҫ��ȡ�Ǹ����а�ĳƺ���\n \n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#��ȡ<@hfb *01*��������>�ƺ�\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#��ȡ<@bqb *01*��������>�ƺ�\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#��ȡ<@erb *01*�����˰�>�ƺ�\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#��ȡ<@gspx *01*���������С�>�ƺ�\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#��ȡ<@mlpx *01*���������С�>�ƺ�\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#��ȡ<@txsc *01*����Ѫɳ����>�ƺ�\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700031##OFFSET<X:0,Y:-1>#��ȡ<@tlmtx *01*�����������¡�>�ƺ�\n"
	msg = msg.."                                              #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
    return msg
end

--[[function addch1(npc, player)
	if lualib:HasTitle(player, 1) == false then
	lualib:AddTitle(player, 1);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function addch2(npc, player)
	if lualib:HasTitle(player, 2) == false then
	lualib:AddTitle(player, 2);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function addch3(npc, player)
	if lualib:HasTitle(player, 3) == false then
	lualib:AddTitle(player, 3);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function addch6(npc, player)
	if lualib:HasTitle(player, 6) == false then
	lualib:AddTitle(player, 6);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function addch7(npc, player)
	if lualib:HasTitle(player, 7) == false then
	lualib:AddTitle(player, 7);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function addch8(npc, player)
	if lualib:HasTitle(player, 8) == false then
	lualib:AddTitle(player, 8);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function addch9(npc, player)
	if lualib:HasTitle(player, 9) == false then
	lualib:AddTitle(player, 9);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function addch10(npc, player)
	if lualib:HasTitle(player, 10) == false then
	lualib:AddTitle(player, 10);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function addch11(npc, player)
	if lualib:HasTitle(player, 11) == false then
	lualib:AddTitle(player, 11);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function addch12(npc, player)
	if lualib:HasTitle(player, 12) == false then
	lualib:AddTitle(player, 12);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function addch13(npc, player)
	if lualib:HasTitle(player, 13) == false then
	lualib:AddTitle(player, 13);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function addch14(npc, player)
	if lualib:HasTitle(player, 14) == false then
	lualib:AddTitle(player, 14);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function addch15(npc, player)
	if lualib:HasTitle(player, 15) == false then
	lualib:AddTitle(player, 15);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function addch16(npc, player)
	if lualib:HasTitle(player, 16) == false then
	lualib:AddTitle(player, 16);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function addch17(npc, player)
	if lualib:HasTitle(player, 17) == false then
	lualib:AddTitle(player, 17);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function addch18(npc, player)
	if lualib:HasTitle(player, 18) == false then
	lualib:AddTitle(player,18);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function addch19(npc, player)
	if lualib:HasTitle(player, 19) == false then
	lualib:AddTitle(player, 19);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function addch20(npc, player)
	if lualib:HasTitle(player, 20) == false then
	lualib:AddTitle(player, 20);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function addch21(npc, player)
	if lualib:HasTitle(player, 21) == false then
	lualib:AddTitle(player, 21);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end

function addch22(npc, player)
	if lualib:HasTitle(player, 22) == false then
	lualib:AddTitle(player, 22);
	return "��ȡ�ɹ�"
	else
    return "���Ѿ��иóƺ���!"
	end
end]]



    --void AddTitle(const std::string& player_guid, UINT16 title_id);���
    --void RemoveTitle(const std::string& player_guid, UINT16 title_id);ɾ��
    --void ApplyTitle(const std::string& player_guid, UINT16 title_id);Ӧ��
    --void HasTitle(const std::string& player_guid, UINT16 title_id);���
