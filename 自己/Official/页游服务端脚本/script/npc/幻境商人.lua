local HJ_NpcName = {"�þ��Ĳ�����", "�þ��߲�����"}

function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#�þ��̵�#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
    msg = msg.."    #COLORCOLOR_RED#�þ���ʱ��ǳ����죬�ҵ���Ʒ���������Żþ���ʱ�����ʧ������Ʒ������󣬵ù�һ��ʱ����ܲ��������ð���סʱ�䡭��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	
	lualib:AddShop(npc, 22)
	lualib:AddShop(npc, 23)
	local keyname = lualib:KeyName(npc)
	print(keyname)
	if keyname == nil then 
		lualib:SysMsg_SendWarnMsg(player, "û�����NPC��") 
	return false 
	end
	
	if keyname == HJ_NpcName[1] then
		msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#22 *01*������>\n"
		msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<likai *01*���뿪��>"
	elseif keyname == HJ_NpcName[2] then
		msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#23 *01*������>\n"
		msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<likai *01*���뿪��>"
	end

	return msg
end

function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
end

function SellItem(npc, player, id)
	lualib:ShowForm(player, "������Ʒ��")
	return ""
end

function likai(npc, player)
	return ""
end