function main(npc, player)
    local msg = "��Ѫ���ֵܣ��̽��ٺ��ա��ж���ɱ�ˣ�ɱ�˲����С�����������ֵܣ��ֲֳ˵�Ҳ�ſ�������ش�½��һ������ô�У�\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@CreateFamily *01*�����ҵ��л�>\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@JoinFamily *01*��������л�>\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@FightGuild *01*�����л�ս>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE<ID:1902700034>##OFFSET<X:-5,Y:-1>#<@likai *01*���رա�>\n"
    return msg
end

function CreateFamily(npc, player)
    local msg = "�����л���Ҫ1000000��Һ�һ������Žǡ�\n\n\n\n"
    msg = msg.."<@CreateFamilyConfirm *01*�ҷ������������������л�>\n \n \n"
	msg = msg.."<@main *01*�����ء�>\n"
    return msg
end

function CreateFamilyConfirm(npc, player)
    if lualib:GuildGuid(player) ~= "" then
        return "���Ѿ����л��ˡ�"
    end

    if lualib:Level(player) < 1 then
        return "��ĵȼ�������"
    end

    if not lualib:Player_IsGoldEnough(player, 1000000, false) then
        return "��Ľ�Ҳ��㡣"
    end

    if lualib:ItemCount(player, "����Ž�") < 1 then
       return "������û�д����л�����Ҫ�ĵ��ߡ�"
    end

    if lualib:SysMsg_SendInputDlg(player, 1, "�������л����ƣ�", 30, 12, "GetFamilyName", "") == false then
        return "æ���أ�������������"
    end
    return ""
end

function GetFamilyName(id, player, family_name)
	if lualib:HasFamily(family_name) then
		lualib:SysMsg_SendWarnMsg(player, "�л�"..family_name.."�Ѿ�����.");
		return
	end
	
	if not lualib:SubGold(player, 1000000, "�۽�ң������лỨ��", "�л����Ա") then
		lualib:SysMsg_SendWarnMsg(player, "��Ҳ���1000000.");
		return
	end
	
    if not lualib:TakeItem(player, "����Ž�", 1, "ɾ��Ʒ�������л�����", "�л����Ա") then
		lualib:SysMsg_SendWarnMsg(player, "ȱ����Ʒ����Ž�.");
		return
	end
	
    if lualib:CreateFamily(player, family_name) ~= 0 then
		lualib:SysMsg_SendWarnMsg(player, "�����л�ʧ��.");
		return
    end
end

function JoinFamily(npc, player)
    if lualib:GetFamilyJoinList(player) ~= 0 then
        return "�����������л����ϣ���Ȼ�������ɡ�"
    end

    return ""
end

--�л�ս
function FightGuild(npc, player)
    local msg = "ֻ�л᳤����[�ַ���]���ܶ������лᷢ���л�ս��\n\n\n\n"
    msg = msg.."<@FightGuildConfirm *01*�ҷ������������������л�ս(�л�ս����3Сʱ)>\n \n \n"
	msg = msg.."<@main *01*�����ء�>\n"
    return msg
end

function FightGuildConfirm(npc, player)
    lualib:ShowForm(player, "�л�ս�����")
    return ""
end

function likai(npc, player)
    return""
end