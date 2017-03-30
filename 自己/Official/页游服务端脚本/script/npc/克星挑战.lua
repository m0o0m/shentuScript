--[[
gQuestMap =
{
   {3008, "", "QuestAccomplish3008","", "*01*�������: ������ս(֧��)"},
}
gQuestNum = table.getn(gQuestMap)


function main(npc, player)
    local dgn_table = {"��սǧ����ħ", "��սѪ��ʦ", "��ս����ɮ"}
    local msg = " #COLORCOLOR_ORANGE#�d#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_ORANGE#�d#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_ORANGE#�d#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#�X�ר[#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#�X�ר[#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#�X�ר[#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#�X�ר[#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_ORANGE#�d#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_ORANGE#�d#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_ORANGE#�d#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-3>#���� #COLORCOLOR_ORANGE#�d#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_ORANGE#�d#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#ս#COLOREND##COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_ORANGE#�d#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_ORANGE#�d#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-3>#�������� #COLORCOLOR_ORANGE#�d#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#�^�ߨa#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#�^�ߨa#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#�^�ߨa#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#�^�ߨa#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_ORANGE#�d#COLOREND#\n"
     msg = msg.."#COLORCOLOR_ORANGE#�I#COLOREND##COLORCOLOR_BLUE#========================================================#COLOREND##COLORCOLOR_ORANGE#�I#COLOREND#\n"
     msg = msg.."#COLORCOLOR_ORANGE#����Ի�100Ԫ���������ﱨ���μ�BOSS�Ŀ�����ս����ս�ɹ��������ȡӵ��#COLOREND##COLORCOLOR_RED#�������Ե�����ƺ�#COLOREND##COLORCOLOR_ORANGE#Ŷ����սʱ��Ϊ15���ӣ�15�����ڿ����ɽ������أ��㡸ȷ������ս��#COLOREND#\n"
     msg = msg.."#COLORCOLOR_ORANGE#�I#COLOREND##COLORCOLOR_BLUE#========================================================#COLOREND##COLORCOLOR_ORANGE#�I#COLOREND#\n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."<@"..v[2].." "..v[4]..">\n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."<@"..v[3].." "..v[5]..">\n"
            end
        end
    end
    msg = msg.."      #IMAGE<ID:1902700018>#<@tz1 *01*��Ҫ��ս>      #IMAGE<ID:1902700017>#<@award *01*��ȡ����>       #IMAGE<ID:1902700019>#<@leave *01*���뿪��>\n"

    return msg
end


function tz(npc, player)
    local msg = "��ս��Ҫ����100Ԫ������սʱ��Ϊ15���ӣ�15�����ڿ����ɽ������أ��㡸ȷ������ս��\n \n"
	msg = msg.."<@tz1 *01*��ս>\n"
    msg = msg.."<@leave *01*���뿪��>\n"
    return msg
end


function tz1(npc, player)
	local dgn_table = {"��ǧ����ħ��", "�� Ѫ��ʦ ��", "�� ����ɮ ��"}
    local msg = " #COLORCOLOR_ORANGE#�d#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_ORANGE#�d#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_ORANGE#�d#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#�X�ר[#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#�X�ר[#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#�X�ר[#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#�X�ר[#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_ORANGE#�d#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_ORANGE#�d#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_ORANGE#�d#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-3>#���� #COLORCOLOR_ORANGE#�d#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_ORANGE#�d#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#��#COLOREND##COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#ս#COLOREND##COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_ORANGE#�d#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_ORANGE#�d#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-3>#�������� #COLORCOLOR_ORANGE#�d#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#�^�ߨa#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#�^�ߨa#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#�^�ߨa#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_GOLD#�^�ߨa#COLOREND##COLORCOLOR_BLUE#�T#COLOREND##COLORCOLOR_ORANGE#�d#COLOREND#\n"
     msg = msg.."#COLORCOLOR_ORANGE#�I#COLOREND##COLORCOLOR_BLUE#========================================================#COLOREND##COLORCOLOR_ORANGE#�I#COLOREND#\n"
     msg = msg.."��#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#�X�j�j�j�j�j�j�[��#OFFSET<X:1,Y:0>#�X�j�j�j�j�j�j�[��#OFFSET<X:1,Y:0>#�X�j�j�j�j�j�j�[#COLOREND#\n"
    for i = 1, table.getn(dgn_table) do
        msg = msg.."��#COLORCOLOR_BLUE#�d#COLOREND#<@challenge#"..i.." *01*"..dgn_table[i]..">#COLORCOLOR_BLUE#�g#COLOREND#"

    end
     msg = msg.."��#OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#�^�m�m�m�m�m�m�a��#OFFSET<X:1,Y:0>#�^�m�m�m�m�m�m�a��#OFFSET<X:1,Y:0>#�^�m�m�m�m�m�m�a#COLOREND#\n"
     msg = msg.."#COLORCOLOR_ORANGE#��������BOSS�ȴ������ٻ���ֻҪ��ʵ����ǿ���������Ե�����ƺ����ֿɵ�Ŷ��ӭ�ӿ�����ս�ɣ�#COLOREND#������������#IMAGE<ID:1902700019>#<@main *01*�����ء�>\n"

    return msg
end

function leave(npc,player)
	return ""
end



function challenge(npc, player, t)
    local index = tonumber(t)

    local var_tick = "������ս��_tick"
    local dgn_table = {"������ս��1", "������ս��2", "������ս��3"}
    local var_cur_dgn = "������ս_cur_dgn"

    local require_ingot = 100
    local dgn_time = 30 * 60

    local var_time = lualib:Player_GetCustomVarInt(player, var_tick)
    local dgn_index = lualib:Player_GetCustomVarInt(player, var_cur_dgn)
    local day = os.date("*t", var_time)["day"]
    local today = os.date("*t", os.time())["day"]
    if day == today then
        if var_time + dgn_time < os.time() then
            return "�������Ѿ���ս������"
        end
        if dgn_index ~= index then
            return "���Ѿ�����ս����"
        else
            if not lualib:Player_EnterDgn(player, dgn_table[index], 24, 58, 3) then
                return "�����ͼʧ�ܣ�"
            end
            return ""
        end
    end

    if not lualib:Player_IsIngotEnough(player, require_ingot, false) then
        return "Ԫ�����㣡"
    end

    local dgn = lualib:Map_CreateDgn(dgn_table[index], false, dgn_time)
    if dgn == "" then
        return "������"..dgn_table[index].."����ʧ�ܣ�"
    end

    if not lualib:Player_SetDgnTicket(player, dgn) then
        return "��������ɽ����ͼ��"
    end

    if not lualib:Player_SubIngot(player, require_ingot, false, "��Ԫ�����μӿ�����ս�۳�Ԫ����", player) then
        return "�۳�Ԫ��ʧ�ܣ�"
    end

    lualib:Player_SetCustomVarInt(player, var_tick, os.time())
    lualib:Player_SetCustomVarInt(player, var_cur_dgn, index)
    if not lualib:Player_EnterDgn(player, dgn_table[index], 24, 58, 3) then
        return "�����ͼʧ�ܣ�"
    end

    return ""
end

function award(npc, player)
    local title_table = {{23, "ǧ����ħ����"}, {24, "Ѫ��ʦ����"}, {25, "����ɮ����"}}
    local var_cur_dgn_succ = "������ս_cur_dgn_succ"
    local succ = lualib:Player_GetCustomVarInt(player, var_cur_dgn_succ)

    if succ == 0 then return "��û����ս������" end
    lualib:AddTitle(player, title_table[succ][1])
    lualib:Player_SetCustomVarInt(player, var_cur_dgn_succ, 0)
    return "��ϲ����óƺţ�"..title_table[succ][2].."��"
end


----3008��
function QuestAccomplish3008(npc, player)
    msg = "��սBOSS�ɲ���һ�����׵��£��ܳɹ��Ķ�����Щ���������쵱���Ĵ��������Ҫӵ��ǿ����������Ҫ�Ҽ�����Ը��������Ŀ����Ǿ������Ұ�\n \n"
    msg = msg.."<@Accomplish3008 *01* �ǵģ���ʲôҪ����>\n"
    return msg
end

function Accomplish3008(npc, player)
    if lualib:AccomplishQuest(player, 3008, 0) == true then
        msg = "�������ʵ����������սBOSS��\n \n"
		msg = msg.."<@leave *01* ��֪����>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end
]]