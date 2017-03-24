function main(npc, player)
	lualib:AddShop(npc, 10)
	lualib:AddShop(npc, 20)
	
	local own_family = lualib:GetCastleOwnFamily("����")	
	local msg = ""
	msg = msg.."��ӭ���̵ꡣ ����ר������\n"
	if own_family ~= "" then
		msg = msg.."��Ϊ�����ǣ�"..own_family.."�ݵĳǣ�\n"
		msg = msg.."����Ϊ��"..own_family.."���л��Ա�ṩ20%���Ż�\n"
	else
		msg = msg.."����ǳǱ�ӵ���л�ĳ�Ա�����ǿ����ṩ20%���Ż�\n"	
	end
	msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@CheckFamily *01*������>    #OFFSET<X:0,Y:1>##IMAGE1902700036##OFFSET<X:0,Y:-1>#<@SellItem#1 *01*�����ۡ�>    #OFFSET<X:0,Y:1>##IMAGE1902700035##OFFSET<X:0,Y:-1>#<@ShowRepire#1 *01*������>   #OFFSET<X:0,Y:1>##IMAGE1902700035##OFFSET<X:0,Y:-1>#<@ShowRepireEx#1 *01*����������>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n \n \n"
	msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<likai *01*���뿪��>\n"
	return msg
end


--[[     �̵��ţ� ��һ������ ��ͨ���̵� �ڶ������� �����̵�
������ 1 11
�·��� 2 12
ͷ���� 3 13
���׵� 4 14
ҩ��   5 15
���   6 16
�ӻ��� 7 17
������ 8 18
��ָ�� 9 19
����� 10 20
�������ӻ��� 21
�ع��̵� 22						
]]

function CheckFamily(npc, player)

	local own_family = lualib:GetCastleOwnFamily("����")	
    local my_family = lualib:GuildGuid(player)
    local msg = ""
    if own_family == "" or own_family ~= my_family then
        msg = "�����ǳǱ���ռ���ߣ����ܸ����ṩ�����Żݷ���\n \n \n \n"
        msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700033##OFFSET<X:0,Y:-2>#<@OpenShop#10 *01*��ȷ����>\n \n \n \n"
    else
        msg = "���ǳǱ���ռ���ߣ��ҿ��Ը����ṩ�����Żݷ���\n \n \n \n"
        msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700033##OFFSET<X:0,Y:-2>#<@OpenShop#20 *01*��ȷ����>\n \n \n \n"
    end
    msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
    return msg
end


function OpenShop(npc, player, id)
    local shopid = tonumber(id)																	
    --lualib:AddShop(npc, shopid)
	lualib:OpenShop(npc, player, shopid)
	return ""
end

function ShowRepire(npc, player)
    lualib:ShowForm(player, "�����")
    return ""
end

function ShowRepireEx(npc, player)
    lualib:ShowForm(player, "���������")
    return ""
end

function SellItem(npc, player, id)
	lualib:ShowForm(player, "������Ʒ��")
	return ""
end

function likai(npc, player)
	return ""
end
