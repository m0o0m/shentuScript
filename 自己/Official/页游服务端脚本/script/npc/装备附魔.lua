
local talk_t = {"����װ���ĵȼ��ж�ͣ�ֻҪ�м�Ʒ���ԣ��Ҿ��ܽ������Ϊ��"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 23000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)

		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	msg = "     ����װ���ĵȼ��ж�ͣ�ֻҪ�м�Ʒ���ԣ��Ҿ��ܽ������Ϊ��\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037#<@Openfumo#4 *01*��װ����ħ��   >#IMAGE1902700036#<@Openxishou#1 *01*���������ա�   >\n\n\n"
        msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		msg = msg.."#IMAGE<ID:1902700017># <@info *01*��ħ˵��>\n"
     msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"

	return msg
end


function Openfumo(npc, player)
    lualib:ShowForm(player, "װ����ħ��")
    return ""
end


function Openxishou(npc, player)
    lualib:ShowForm(player, "��ħʯ���ձ�")
    return ""
end


function info(npc, player)
	local msg = "#COLORCOLOR_GOLD#�������գ�#COLOREND# "
			msg = msg.." \n 1.ʹ��#COLORCOLOR_RED#������#COLOREND#�ĸ�ħʯ����ȡװ���ϵ�#COLORCOLOR_RED#��������#COLOREND#��װ������ʱ�����ӵļ�Ʒ���ԣ�"
			msg = msg.." \n 2.����ȡװ���Ķ�������ת�Ƶ�#COLORCOLOR_RED#��ħʯ#COLOREND#�ϣ�����ȡ��װ����ʧ\n"
			msg = msg.." \n #COLORCOLOR_GOLD#װ����ħ��#COLOREND#"
			msg = msg.." \n 1.ʹ��#COLORCOLOR_RED#�������Եĸ�ħʯ#COLOREND#������ħʯ�ϵ�����ת�Ƶ�����װ����"
			msg = msg.." \n 2.��ħ�ɹ��󣬸�ħʯ��ʧ"
			msg = msg.." \n 3.�������ħ��װ���Ѿ�ӵ�и�ħ�����ԣ���ħ��ԭ�ȵĸ�ħ������ʧ\n\n"
		msg = msg.."<@main *01*�����ء�>\n \n"
	return msg
end
