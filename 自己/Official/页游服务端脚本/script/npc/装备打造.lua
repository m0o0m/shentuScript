local equip_count_table = {
                        {1, 30, 30, 50},
                        {1, 30, 30, 50},
                        {1, 30, 30, 50},
                        {1, 10, 50, 50, 50},
                        {1, 10, 50, 50, 50},
                        {1, 10, 50, 50, 50},
                        {1, 10, 50, 50, 50},
                        {1, 10, 50, 50, 50},
                        {1, 10, 50, 50, 50},
                        {1, 10, 50, 50, 50},
                        {1, 10, 50, 50, 50},
                        {1, 10, 50, 50, 50}
                    }

local equip_name_table = {
                        {"��ͷ��", "ţħ��Ԫ", "������Ԫ", "���ܾ�Ԫ"},
                        {"����", "ţħ��Ԫ", "������Ԫ", "���ܾ�Ԫ"},
                        {"����֮��", "ţħ��Ԫ", "������Ԫ", "���ܾ�Ԫ"},
                        {"�Ͼ�ս�ף��У�", "ţħ��Ԫ", "������Ԫ", "���ܾ�Ԫ",  "ħ�˾�Ԫ"},
                        {"�Ͼ�ս�ף�Ů��", "ţħ��Ԫ", "������Ԫ", "���ܾ�Ԫ",  "ħ�˾�Ԫ"},
                        {"���޳��ۣ��У�", "ţħ��Ԫ", "������Ԫ", "���ܾ�Ԫ",  "ħ�˾�Ԫ"},
                        {"���޳��ۣ�Ů��", "ţħ��Ԫ", "������Ԫ", "���ܾ�Ԫ",  "ħ�˾�Ԫ"},
                        {"�������ۣ��У�", "ţħ��Ԫ", "������Ԫ", "���ܾ�Ԫ",  "ħ�˾�Ԫ"},
                        {"�������ۣ�Ů��", "ţħ��Ԫ", "������Ԫ", "���ܾ�Ԫ",  "ħ�˾�Ԫ"},
                        {"�о�֮��", "ţħ��Ԫ", "������Ԫ", "���ܾ�Ԫ",  "ħ�˾�Ԫ"},
                        {"�ɻ귨��", "ţħ��Ԫ", "������Ԫ", "���ܾ�Ԫ",  "ħ�˾�Ԫ"},
                        {"�쾧����", "ţħ��Ԫ", "������Ԫ", "���ܾ�Ԫ",  "ħ�˾�Ԫ"}
                    }

function main(npc, player)
    local msg = "     ֻҪ�ṩ�㹻�Ĳ��ϣ����ܴ����������������ľ��������"
    msg = msg.."<@Build#1 *01*"..equip_name_table[1][1]..">"
    msg = msg.."<@Build#2 *01*"..equip_name_table[2][1]..">"
    msg = msg.."<@Build#3 *01*"..equip_name_table[3][1]..">"
    msg = msg.."<@Build#4 *01*"..equip_name_table[4][1]..">"
    msg = msg.."<@Build#5 *01*"..equip_name_table[5][1]..">"
    msg = msg.."<@Build#6 *01*"..equip_name_table[6][1]..">"
    msg = msg.."<@Build#7 *01*"..equip_name_table[7][1]..">"
    msg = msg.."<@Build#8 *01*"..equip_name_table[8][1]..">"
    msg = msg.."<@Build#9 *01*"..equip_name_table[9][1]..">"
    msg = msg.."<@Build#10 *01*"..equip_name_table[10][1]..">"
    msg = msg.."<@Build#11 *01*"..equip_name_table[11][1]..">"
    msg = msg.."<@Build#12 *01*"..equip_name_table[12][1]..">"
    return msg
end

function Build(npc, player, index)	
    local msg = "��ȷ����Ҫ���죺"..equip_name_table[tonumber(index)][1].." ��\n"
    for i = 2, table.getn(equip_name_table[tonumber(index)]) do
        msg = msg.."������Ҫ���ϣ�"..equip_name_table[tonumber(index)][i].."* "..equip_count_table[tonumber(index)][i].."��\n"
    end
    msg = msg.."<@BuildEx#"..index.." *01*����>"
    msg = msg.."<@Leave *01*���뿪��>"
    return msg
end

function BuildEx(npc, player, index)
    local name_table = {}
    local count_table = {}
    local bind_table = {}
    local opr_table = {}
    for i = 1, table.getn(equip_name_table[tonumber(index)]) do
        name_table[i] = equip_name_table[tonumber(index)][i]
        count_table[i] = equip_count_table[tonumber(index)][i]
        bind_table[i] = 0
        if i == 1 then
            opr_table[i] = 0
        else
            opr_table[i] = 1
        end        
    end

    if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "���������װ������", player) then
        lualib:SysMsg_SendWarnMsg(player, "װ������ʧ�ܣ����ϲ���򱳰�������")
        return "װ������ʧ�ܣ����ϲ���򱳰�������"
    end

    lualib:SysMsg_SendTriggerMsg(player, "�����Ʒ��"..equip_name_table[tonumber(index)][1].."��")
    return "��Ʒ����ɹ���"
end


