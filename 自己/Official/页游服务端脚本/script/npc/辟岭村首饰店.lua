gQuestMap =
{
   {1109, "", "QuestAccomplish1109","", "*01*�������: ����"},
   {1110, "QuestAccept1110", "","01*����: �ٱ��ӻ�", ""}
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"�������������󣬾͵���ȥ����ˡ�", "��㲻��������ҲҪ�����Ρ���", "�ȿ��Լӹ������ֿ��Լӷ��������������ܵġ�"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 27000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    lualib:AddShop(npc, 6)
	local msg = "     #COLORCOLOR_GREENG#�����ר�������������Σ�#COLOREND#�͹٣���ʲô��Ҫ������Щ���Ǵӳ��ﹺ������Ʒ�����������ܴ��׹⡢��ĥ�������湤�ն���һ����\n"
	msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[2].." "..v[4]..">\n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[3].." "..v[5]..">\n"
            end
        end
    end
	msg = msg.."#OFFSET<X:0,Y:10>##IMAGE1902700037# <@OpenShop#6 *01*[����]>\n"
	msg = msg.."#IMAGE1902700035# <@ShowRepire#1 *01*[����]>\n"
	msg = msg.."#IMAGE1902700035# <@ShowRepireEx#1 *01*[��������]>\n"
	msg = msg.."#IMAGE1902700036# <@SellItem#1 *01*[����]>\n"
	return msg
end

function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
end

function ShowRepire(npc, player)
    lualib:ShowForm(player, "�����")
    return ""
end

function ShowRepireEx(npc, player)
    lualib:ShowForm(player, "���������")
    return ""
end

function SellItem(npc, player, id)
	lualib:ShowForm(player, "������Ʒ��")
	return ""
end

-------1109��
function QuestAccomplish1109(npc, player)
    msg = "�������и��ֿ������������Ե�����Ŷ�����ָ�����������󡭡���ʽ�ḻ��������Ŀ��\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1109a *01* ���ε��и������ο�����������>\n"
    return msg
end

function Accomplish1109a(npc, player)
    msg = "��ϧû����˵��������������˼���Ұﲻ���㡣��������\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1109b *01* ����ʲô��>\n"
    return msg
end

function Accomplish1109b(npc, player)
    if lualib:AccomplishQuest(player, 1109, 0) == true then
        msg = "�������ӻ�������ϡ��Źֵı������Ƕ����أ�������Ӧ���ܰ���\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1110 *01*лл\n��ȡ���� ���ٱ��ӻ�>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

-------1110��

function QuestAccept1110(npc,player)
    msg = "ȥ���ӻ��̰ɣ��������ܰﵽ�㡣\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1110 *01* �õģ�������ȥ����>\n"
	return msg
end

function Accept1110(npc, player)
    if lualib:AcceptQuest(player, 1110) == true then
        return "ȥ�ӻ�����#COLORCOLOR_GREENG# #NPCLINK<STR:�ӻ���,NPCID:6>##COLOREND#"
    else
        return "�����ȡʧ��"
    end
end

function Lever(npc,player)
	return ""
end
