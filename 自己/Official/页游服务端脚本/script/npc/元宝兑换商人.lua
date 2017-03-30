local talk_t = {"Ԫ���ǲ���ֱ�ӽ��׵ģ���Ҫ�һ�Ϊ���ߡ�", "��ѷ��񣬲��������ѣ�", "һ��ͬ�ʣ�������ר��"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 20000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    local msg = "     ���꾭ӪԪ�����꣬���԰������ֵԪ�����һ����ɵ���Ԫ����ֻ���������ſ��Խ���Ԫ������Ŷ��\n \n"
    msg = msg.."<@submit *01*���һ���Ԫ��>\n \n"
    msg = msg.."<@leave *01*���뿪��>\n "
    return msg
end

function leave(npc, player)
    return ""
end

local ingot_table = {
						{"1Ԫ��", 1,"��  1Ԫ��  ��    "},
						{"2Ԫ��", 2,"��  2Ԫ��  ��    "},
						{"5Ԫ��", 5,"��  5Ԫ��  ��    "},
						{"10Ԫ��", 10,"��  10Ԫ�� ��    "},
						{"20Ԫ��", 20,"��  20Ԫ�� ��    "},
						{"50Ԫ��", 50,"��  50Ԫ�� ��   \n \n"},
						{"100Ԫ��", 100,"��  100Ԫ����    "},
						{"200Ԫ��", 200,"��  200Ԫ����    "    },
						{"500Ԫ��", 500,"��  500Ԫ����   "    },
						{"1000Ԫ��", 1000,"�� 1000Ԫ����    "},
						{"2000Ԫ��", 2000,"�� 2000Ԫ����    "},
						{"5000Ԫ��", 5000,"�� 5000Ԫ����  \n "},
						{"10000Ԫ��", 10000,"��10000Ԫ����"}
                    }

function submit(npc, player)
    local msg = ""
    for i = 1, table.getn(ingot_table) do
        msg = msg.."#COLORCOLOR_BLUE#��#COLOREND#<@exchange#"..i.." *01*"..ingot_table[i][3]..">"
    end
        msg = msg.."����\n����������������������������������������������������������������������������������������������#IMAGE<ID:1902700019>#<@main *01*��������ҳ��>\n "
    return msg
end

function exchange(npc, player, type)
    if not lualib:Player_IsIngotEnough(player, ingot_table[tonumber(type)][2], false) then
        return "Ԫ�����㣡"
    end

    if lualib:Player_GetBagFree(player) < 1 then return "��ı������ˣ�" end

    if not lualib:Player_SubIngot(player, ingot_table[tonumber(type)][2], false, "��Ԫ������Ԫ�����˴���Ԫ�����һ�����Ԫ������", player) then
        return "�۳�Ԫ��ʧ�ܣ�"
    end

    if not lualib:Player_GiveItemUnbind(player, trim(ingot_table[tonumber(type)][1]), 1, "����Ʒ��Ԫ�����һ�������", player) then
        return "������Ʒʧ�ܣ�"
    end

    msg = "Ԫ�����һ����ɹ���\n \n"
	msg = msg.."<@submit *01*�������һ���>\n \n"
	msg = msg.."<@leave *01*���뿪��>\n"
    return msg
end

function trim(s)
    return (string.gsub(s, "^%s*(.-)%s*$", "%1"))
end