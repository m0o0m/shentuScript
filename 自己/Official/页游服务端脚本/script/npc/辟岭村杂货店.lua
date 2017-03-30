gQuestMap =
{
   {1110, "", "QuestAccomplish1110","", "*01*�������: �ٱ��ӻ�"},
   {1111, "QuestAccept1111", "","01*����: ������", ""}
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"�����Ķ������Ǳز����ٵĶ�����", "����������գ�û��������;�ɲ��С�", "NPCҲ����NPCȨ�ģ���������Ǯ�ɲ��С�"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 21000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end


function main(npc, player)
    lualib:AddShop(npc, 10)
	local msg = "     #COLORCOLOR_GREENG#����������ӻ���#COLOREND#��ʲô�������У��ϸ�˵����������һ�Ų�ֽ���������ļ�ֵ���ǵģ��㿴�����Ϸ��䣬���Ϳ��Ա��������ħ�ķ�ֽ����\n"
		  msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n"
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
	msg = msg.."#OFFSET<X:0,Y:10>##IMAGE1902700037# <@OpenShop#10 *01*[����]>\n"
	msg = msg.."#IMAGE1902700036# <@SellItem#1 *01*[����]>\n"
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

-------1110��

function QuestAccomplish1110(npc, player)
    msg = "�ǵģ��������и���С���⣬����������;��سǾ����԰������ƶ�Ŷ������ı���������Ե���ҵ��̵�鿴���պ�������ʲô���󣬾��ܵ��ҵ��̵�������ѡ��\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1110 *01* �ӻ����кܶ��ݵ���Ʒ��>\n"
    return msg
end

function Accomplish1110(npc, player)
    if lualib:AccomplishQuest(player, 1110, 0) == true then
        msg = "�õģ����Ҽ���һ������⣡\n \n"
		msg = msg.."#IMAGE1902700017#<@QuestAccept1111 *01*�õ�,��ȡ���񣺼����� >\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

-------1111��

function QuestAccept1111(npc,player)
    msg = "��ո��ҵ�¹�⣬���ҵ��о��£�������������ʮ�ֹ��գ����޷���͸����Դ����ý�������ϰ���Ϲ����鷽�ɽ⿪����!\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1111 *01* ȥ��꣬������>\n"
	return msg
end

function Accept1111(npc, player)
    if lualib:AcceptQuest(player, 1111) == true then
        return "ȥ��#COLORCOLOR_GREENG# #NPCLINK<STR:����,NPCID:5>##COLOREND#������ﵽ��ģ�"
    else
        return "�����ȡʧ��"
    end
end

function Lever(npc,player)
	return ""
end
