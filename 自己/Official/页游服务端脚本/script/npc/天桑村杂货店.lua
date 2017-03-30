gQuestMap =
{
   {1010, "", "QuestAccomplish1010","", "*01*�������: �ٱ��ӻ�"},
   {1011, "QuestAccept1011", "","01*����: ������", ""}
}
gQuestNum = table.getn(gQuestMap)

function main(npc, player)
    lualib:AddShop(npc, 10)
	msg = "�����ˣ������������Ѳ⣬����㶫�������ϰɣ�Ҳ�������Ծ���һ������\n \n"
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
	msg = msg.."#IMAGE1902700030# <@OpenShop#10 *01*����>\n"
	msg = msg.."#IMAGE1902700030# <@SellItem#1 *01*����>\n"
	return msg
end
	
function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
end

function SellItem(npc, player, id)
	lualib:ShowForm(player, "������Ʒ��")
	return ""
end

-------1010��

function QuestAccomplish1010(npc, player)
    msg = "�ǵģ��������и���С���⣬����������;��سǾ����԰������ƶ�Ŷ������ı���������Ե���ҵ��̵�鿴���պ�������ʲô���󣬾��ܵ��ҵ��̵�������ѡ��\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1010 *01* �ӻ����кܶ��ݵ���Ʒ��>\n"
    return msg
end

function Accomplish1010(npc, player)
    if lualib:AccomplishQuest(player, 1010, 0) == true then
        msg = "�õģ����Ҽ���һ������⣡\n \n"
		msg = msg.."#IMAGE1902700017#<@QuestAccept1011 *01*�õ�,��ȡ���񣺼����� >\n" 
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n" 
		return msg
    end
end

-------1011��

function QuestAccept1011(npc,player)
    msg = "��ո��ҵ�¹�⣬���ҵ��о��£�������������ʮ�ֹ��գ����޷���͸����Դ����ý�������ϰ���Ϲ����鷽�ɽ⿪����!\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1011 *01* ȥ��꣬������>\n"
	return msg
end

function Accept1011(npc, player)
    if lualib:AcceptQuest(player, 1011) == true then
        return "ȥ��#COLORCOLOR_GREENG# #NPCLINK<STR:����,NPCID:14>##COLOREND#������ﵽ��ģ�"
    else
        return "�����ȡʧ��"
    end
end

function Lever(npc,player)
	return ""
end