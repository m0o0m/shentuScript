gQuestMap =
{
   {1006, "", "QuestAccomplish1006","", "*01*�������: �鿴װ������"},
   {1007, "QuestAccept1007", "","01*����: ����ʵ��", ""}
}
gQuestNum = table.getn(gQuestMap)

function main(npc, player)
    lualib:AddShop(npc, 2)
	msg = "ĥ�����󿳲񹦣����߽���һ��Ҫ��һ���������֣�����׳ʿ����������������һ�������ʺ��㣡�����Ҵ��꣬��������������������������ࡣ\n \n"
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
	msg = msg.."#IMAGE1902700030# <@OpenShop#2 *01*����> \n"
	msg = msg.."#IMAGE1902700018# <@ShowRepire#1 *01*����> \n"
	msg = msg.."#IMAGE1902700018# <@ShowRepireEx#1 *01*��������> \n"
	msg = msg.."#IMAGE1902700030# <@SellItem#1 *01*����> \n"

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

-------1006��
function QuestAccomplish1006(npc, player)
    msg = "��ǰ����ɽ���飬���Ÿջأ���Щ��ɽ��ɥ����ɽ�е���Щ������������ױ���ƽ�ռ�����ϰ��֮ľ�˲��˾����˹����������ǵ�����ӿ���Ĺ��\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1006 *01* ���>\n"
    return msg
end

function Accomplish1006(npc, player)
    if lualib:AccomplishQuest(player, 1006, 0) == true then
        msg = "�����������ö��С�Ĳ��ǰ���\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1007 *01*֪����,��ȡ���� �� ����ʵ��>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

-------1007��
function QuestAccept1007(npc,player)
    msg = "�ҵö����һЩ�������������ˣ����ô��˶�������������������������һ���������鷳��������ڻ��ܼ�ֻ¹�����ã�Alt+�������¹��������1��¹�����ҩ���̣������о�����ͻ����ԭ��\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1007 *01* Alt+��������ʬ���̽����Ʒ��>\n"
	return msg
end

function Accept1007(npc, player)
    if lualib:AcceptQuest(player, 1007) == true then
        return "ȥ�������#COLORCOLOR_GREENG##LINK<MAP:��ɽ��,POSX:473,POSY:647,STR:¹>##COLOREND#����ȡ1���⡣"
    else
        return "�����ȡʧ��"
    end
end

function Lever(npc,player)
	return ""
end