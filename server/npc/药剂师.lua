function main(npc, player)
	lualib:AddShop(npc, 26)	
	local msg = [[
	�������������������ҩƷ��ͬʱҲ�ǽ���Щ�ĵط�
	�Ӳ��ϳ����ɵ����綾ҩ�ۣ�������ȫ
	ҩ����ʹ���˲�ͬ�����������£�Ҳ�����ڻ���
	һ��Ҫ��ס��һ��
	]]
	msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#26 *01*������   >#OFFSET<X:0,Y:1>##IMAGE1902700036##OFFSET<X:0,Y:-1>#<@SellItem#1 *01*�����ۡ�>\n"
	msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#IMAGE<ID:1902700034>#<@info *01*�йض�ҩ��˵��>\n"
	msg = msg.."��������������������������������������������#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���뿪��>\n"
	return msg		
end

function leave()
	return ""
end

function info(npc, player)
	local msg = "ҩ������.\n"	
	msg = msg.."<@helpdrug#1 *01* ��ɫ����ҩЧ>\n"
	msg = msg.."<@helpdrug#2 *01* ��ɫ����ҩЧ>\n"
	msg = msg.."��������������������������������������������#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
	return msg		
end

function helpdrug(npc, player, int)
	local str_tbl =
	{
		["1"] = "��ɫ���ۿ��Խ��ͶԷ�������.\n ֻ�е�ʿͨ��ʩ��������ʹ��.\n",
		["2"] = "��ɫ���ۿ��Խ��ͶԷ��ķ�����.\n ֻ�е�ʿͨ��ʩ��������ʹ��.\n",
	}
	local msg = str_tbl[int]
	msg = msg.."\n"
	msg = msg.."��������������������������������������������#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@info *01*�����ء�>\n"
	return msg
end

function OpenShop(npc, player, id)
	lualib:OpenShop(npc, player, tonumber(id))	
	return ""
end

function SellItem(npc, player, id)
	lualib:ShowForm(player, "������Ʒ��")
	return ""
end
