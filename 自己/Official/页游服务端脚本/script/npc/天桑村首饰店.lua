gQuestMap =
{
   {1009, "", "QuestAccomplish1009","", "*01*�������: ����"},
   {1010, "QuestAccept1010", "","01*����: �ٱ��ӻ�", ""}
}
gQuestNum = table.getn(gQuestMap)

function main(npc, player)
    lualib:AddShop(npc, 6)
	msg = "���Ϸ��ǵ�㣬����Ⱥ�����ޣ��˰���Ҫ����������ε�׺�����͹��뿴�������������Ȼ�Ȳ��Ϲ�Ʒ�����������վ���һ����\n \n"
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
	msg = msg.."#IMAGE1902700030# <@OpenShop#6 *01*����>\n"
	msg = msg.."#IMAGE1902700018# <@ShowRepire#1 *01*����>\n"
	msg = msg.."#IMAGE1902700018# <@ShowRepireEx#1 *01*��������>\n"
	msg = msg.."#IMAGE1902700030# <@SellItem#1 *01*����>\n"
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

-------1009��
function QuestAccomplish1009(npc, player)
    msg = "�������и��ֿ������������Ե�����Ŷ�����ָ�����������󡭡���ʽ�ḻ��������Ŀ��\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1009a *01* ���ε��и������ο�����������>\n"
    return msg
end

function Accomplish1009a(npc, player)
    msg = "��ϧû����˵��������������˼���Ұﲻ���㡣��������\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1009b *01* ����ʲô��>\n"
    return msg
end

function Accomplish1009b(npc, player)
    if lualib:AccomplishQuest(player, 1009, 0) == true then
        msg = "�������ӻ�������ϡ��Źֵı������Ƕ����أ�������Ӧ���ܰ���\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1010 *01*лл\n��ȡ���� ���ٱ��ӻ�>\n" 
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n" 
		return msg
    end
end

-------1010��

function QuestAccept1010(npc,player)
    msg = "ȥ���ӻ��̰ɣ��������ܰﵽ�㡣\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1010 *01* �õģ�������ȥ����>\n"
	return msg
end

function Accept1010(npc, player)
    if lualib:AcceptQuest(player, 1010) == true then
        return "ȥ�ӻ�����#COLORCOLOR_GREENG# #NPCLINK<STR:�ӻ���,NPCID:15>##COLOREND#"
    else
        return "�����ȡʧ��"
    end
end

function Lever(npc,player)
	return ""
end