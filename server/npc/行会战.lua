local talk_t = {"ÿ��������20:00�ſ��Կ�����ս����ս�ɹ����Ի�ô�����Դ��", "����ս��Ҫ50���Һ�һ����ս���ơ�", "�л�᳤��������������빥��ս��"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 220000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    msg = "��Ѫ���ֵܣ��̽��ٺ��ա��ж��������ˣ������˲����С�����������ֵܣ��ֲֳ˵�Ҳ�ſ�������ش�½��һ������ô�У�\n\n\n\n"
    msg = msg.."<@InfoFightGuild *01*�����л�ս>\n"
    return msg
end

function InfoFightGuild(npc, player)
    msg = "ֻ�л᳤���ܷ����л�ս�����⻹��Ҫ50���ҡ�\n\n\n\n"
    msg = msg.."<@FightGuildConfirm *01*�ҷ������������������л�ս>\n \n \n"
	msg = msg.."<@main *01*�����ء�>\n"
    return msg
end

function FightGuildConfirm(npc, player)

    lualib:ShowForm(player, "�л�ս�����")

    return ""
end
