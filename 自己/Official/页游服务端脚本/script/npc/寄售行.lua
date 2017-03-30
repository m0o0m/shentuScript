gQuestMap =
{
   {1020, "", "QuestAccomplish1020","", "*01*�������: ��Ʒ����"},
   {1021, "QuestAccept1021", "","01*����: Ԫ����ֵ", ""}
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"����ʲô��Ʒ�����Էŵ�����������ۡ�", "���ۺܷ��㣬�������������̯��", "���������ö������������������ϸ������"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 280000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    local msg = "     ��ͣ���ӭ���٣����꾭Ӫһ����Ʒ��ί�����ۣ�����������������ۡ�\n"
	msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n \n \n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[2].." "..v[4]..">\n \n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[3].." "..v[5]..">\n \n"
            end
        end
    end
    msg = msg.."#OFFSET<X:0,Y:2>##IMAGE1902700037##OFFSET<X:0,Y:-2>#<@ShowSellMarket#1 *01*[���뽻����]>\n \n \n"
	msg = msg.."                                                    #OFFSET<X:0,Y:2>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@likai *01*[�뿪]>\n"
    return msg
end

function ShowSellMarket(npc, player)
    lualib:ShowForm(player, "�����б�")
    return ""
end


--------1020��

function QuestAccomplish1020(npc, player)
    msg = "�������ί�����еĽ��ף�����������챦����֣������и����ң��ҿ϶����������ü�Ǯ��\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1020 *01* һ����һ��>\n"
    return msg
end


function Accomplish1020(npc, player)
    if lualib:AccomplishQuest(player, 1020, 0) == true then
        msg = "�����챦�ý�ҿɲ�һ���ܹ���õ���������ҪԪ�����ܰ쵽��ȥ��Ԫ����ֵ�˽��°�\n \n"
		msg = msg.."#IMAGE1902700017#<@Accept1021 *01* ȥ��Ԫ����ֵ>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*�õ�>\n"
		return msg
    end
end

-----1021��
function QuestAccept1021(npc,player)
    msg = "�����챦��ҿɲ�һ���ܹ���ĵ���������ҪԪ�����ܰ쵽��ȥ��Ԫ����ֵ�˽��°� \n"
	msg = msg.."#IMAGE1902700017#<@Accept1021 *01* ȥ��Ԫ����ֵ>\n"
	return msg
end

function Accept1021(npc, player)
    if lualib:AcceptQuest(player, 1021) == true then
        return "ȥ��#COLORCOLOR_GREENG# #NPCLINK<STR:Ԫ����ֵ,NPCID:30034>##COLOREND#�˽�Ԫ����ֵϵͳ��"
    else
        return "�����ȡʧ��"
    end
end

function likai()
	return ""
end