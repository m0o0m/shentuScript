local talk_t = 
{
	"�������ǣ�������ǰϲ��������ҩ�Ĵ仨�������ﶼ����ˣ�", 
	"��������������������ϡ��ĺ����ӣ�����似����ҩ�ַ���������ƿ����90�Ĵ������ѵ��Ҳ���һ����������ˣ�", 
	"�������ҹգ��ţ�ת��֮ǰ�����ң���ϲ�ɣ�"
}

function on_create(npc)
	lualib:AddTimer(npc, 1, 13000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)	
	lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])
end

function main(npc, player)
	lualib:AddShop(npc, 5)
	local msg = "     ������ħ���У����õ�ҩ�Ļ�û��������������ͷʹ�����������ˣ���ӭ���٣�������������ҩƷ�Ĺ�Ӧ�� \n"
	msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037#<@OpenShop#5 *01*������           >#IMAGE1902700036#<@SellItem#1 *01*�����ۡ�>\n"
	msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
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