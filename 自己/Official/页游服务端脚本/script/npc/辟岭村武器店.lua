gQuestMap =
{
   {1106, "", "QuestAccomplish1106","", "*01*�������: �鿴װ������"},
   {1107, "QuestAccept1107", "","01*����: ����ʵ��", ""}
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"���ҳ���������ֵģ�������ʵҲ�Ǹ�ϸ�»������ô˵Ҳ�Ǹ��������֡�", "����֮��Ҳ�ù����ӣ���Ҳ����Ҹ�������ŷ�첹����ϴϴ���̵��ˡ�", "������Ҫһ��ĺ�������һ����˻���ɲ��ˡ�"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 17000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    lualib:AddShop(npc, 2)
	msg = "     #COLORCOLOR_GREENG#����������ר�����۸���������#COLOREND#�꣡����������һ��������������ĳ��ֶ�������ʦ��˵����ÿһ���������������ģ����ڣ������ڵȵ����Լ������ˣ�\n \n"
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
	msg = msg.."#IMAGE1902700037# <@OpenShop#2 *01*����> \n"
	msg = msg.."#IMAGE1902700035# <@ShowRepire#1 *01*����> \n"
	msg = msg.."#IMAGE1902700035# <@ShowRepireEx#1 *01*��������> \n"
	msg = msg.."#IMAGE1902700036# <@SellItem#1 *01*����> \n"

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

-------1106��
function QuestAccomplish1106(npc, player)
    msg = "��ǰ����ɽ���飬���Ÿջأ���Щ��ɽ��ɥ����ɽ�е���Щ������������ױ���ƽ�ռ�����ϰ��֮ľ�˲��˾����˹����������ǵ�����ӿ���Ĺ��\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1106 *01* ���>\n"
    return msg
end

function Accomplish1106(npc, player)
    if lualib:AccomplishQuest(player, 1106, 0) == true then
        msg = "�����������ö��С�Ĳ��ǰ���\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1107 *01*֪����,��ȡ���� �� ����ʵ��>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

-------1107��
function QuestAccept1107(npc,player)
    msg = "�ҵö����һЩ�������������ˣ����ô��˶�������������������������һ���������鷳��������ڻ��ܼ�ֻ¹�����ã�Alt+�������¹��������1��¹�����ҩ���̣������о�����ͻ����ԭ��\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1107 *01* Alt+��������ʬ���̽����Ʒ��>\n"
	return msg
end

function Accept1107(npc, player)
    if lualib:AcceptQuest(player, 1107) == true then
        return "ȥ�������#COLORCOLOR_GREENG##LINK<MAP:��ɽ��,POSX:153,POSY:628,STR:¹>##COLOREND#����ȡ1���⡣"
    else
        return "�����ȡʧ��"
    end
end

function Lever(npc,player)
	return ""
end
