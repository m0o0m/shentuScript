function main(npc, player)
	lualib:AddShop(npc, 7)
	lualib:AddShop(npc, 17)
	
	local msg = ""
	msg = msg.."�ӻ���Ķ�����ʲô?����ζ��ʲô��������? \n"
	msg = msg.."�����ǰ������Ը�����Ҫ����Ʒ\n"
	msg = msg.."������Ǳ����˵��������Ǹ��Ǳ��л��Ա���۵��Ż�\n"

	msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@CheckFamily *01*������>    #OFFSET<X:0,Y:1>##IMAGE1902700036##OFFSET<X:0,Y:-1>#<@SellItem#1 *01*�����ۡ�>    #OFFSET<X:0,Y:1>##IMAGE1902700035##OFFSET<X:0,Y:-1>#<@ShowRepire#1 *01*������>   #OFFSET<X:0,Y:1>##IMAGE1902700035##OFFSET<X:0,Y:-1>#<@ShowRepireEx#1 *01*����������>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n \n \n"
	msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<leave *01*���뿪��>\n"
	return msg
end


function CheckFamily(npc, player)

	local own_family = lualib:GetCastleOwnFamily("����")	
    local my_family = lualib:GuildGuid(player)
    local msg = ""
    if own_family == "" or own_family ~= my_family then
        msg = "�����ǳǱ���ռ���ߣ����ܸ����ṩ�����Żݷ���\n \n \n \n"
        msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700033##OFFSET<X:0,Y:-2>#<@OpenShop#7 *01*��ȷ����>\n \n \n \n"
    else
        msg = "���ǳǱ���ռ���ߣ��ҿ��Ը����ṩ�����Żݷ���\n \n \n \n"
        msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700033##OFFSET<X:0,Y:-2>#<@OpenShop#17 *01*��ȷ����>\n \n \n \n"
    end
    msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
    return msg
end

function OpenShop(npc, player, id)
    shopid = tonumber(id)
    
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

function leave(player)
	return ""
end