function main(npc, player)
    lualib:AddShop(npc, 2)
	local msg = "��ӭ������Ҫ��ʲô��\n \n"
		
	msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#2 *01*������   >#OFFSET<X:0,Y:1>##IMAGE1902700036##OFFSET<X:0,Y:-1>#<@SellItem#1 *01*�����ۡ�   >#OFFSET<X:0,Y:1>##IMAGE1902700035##OFFSET<X:0,Y:-1>#<@ShowRepire#1 *01*������   >#OFFSET<X:0,Y:1>##IMAGE1902700035##OFFSET<X:0,Y:-1>#<@ShowRepireEx#1 *01*����������>\n"
	msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."��������������������������������������������#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���뿪��>\n"
	return msg
end

function OpenShop(npc, player, id)	
	lualib:OpenShop(npc, player, tonumber(id))
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
