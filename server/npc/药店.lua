function main(npc, player)
    lualib:AddShop(npc, 5)
	local msg = "���ֻش�����ҽ���������˵�ľ����������׻�˵���ڴ�½Ʈ�����ܲ��������������ҾͶ��ˣ��ϴ����ŵ����������ӣ������ҵ�ҩ�����Ͼͺ��ˣ�\n \n"
	msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#5 *01*������   >#OFFSET<X:0,Y:1>##IMAGE1902700036##OFFSET<X:0,Y:-1>#<@SellItem#1 *01*�����ۡ�>\n"
	msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."��������������������������������������������#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���뿪��>\n"
	return msg
end

function OpenShop(npc, player, id)
	local map_k = lualib:KeyName(lualib:MapGuid(npc))
	if map_k == "�þ�3��" then
		lualib:OpenShop(npc, player, 22)
		return ""
	end
	
	lualib:OpenShop(npc, player, tonumber(id))	
	return ""
end

function SellItem(npc, player)
	lualib:ShowForm(player, "������Ʒ��")
	return ""
end

function leave(player)
	return ""
end