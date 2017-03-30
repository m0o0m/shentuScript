gQuestMap =
{
   {1007, "", "QuestAccomplish1007","", "*01*�������: ����ʵ��"},
   {1008, "QuestAccept1008", "QuestAccomplish1008","01*����: ҩƷ", "*01*�������: ҩƷ"},
   {1009, "QuestAccept1009", "","01*����: ҩƷ", ""},
}
gQuestNum = table.getn(gQuestMap)

function main(npc, player)
    lualib:AddShop(npc, 8)
	msg = "���ֻش�����ҽ���������˵�ľ����������׻�˵���ڴ�½Ʈ�����ܲ��������������ҾͶ��ˣ��ϴ����ŵ����������ӣ������ҵ�ҩ�����Ͼͺ��ˣ�\n \n"
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
	msg = msg.."#IMAGE1902700030# <@OpenShop#8 *01*����>\n"
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


-------1007��
function QuestAccomplish1007(npc, player)
    msg = "лл��������Щ¹���������ƣ�������¹��а�����ֵ��£�Ϊ����ʧ�Ѿõ����ֻ�ͻȻ�����أ��ҵ�����ҩ���ֽ��о��������Եȣ�\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1007 *01* ҩ������ҩƷ>\n"
    return msg
end

function Accomplish1007(npc, player)
    if lualib:AccomplishQuest(player, 1007, 0) == true then
        msg = "�������������ҩƷ��\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1008 *01*֪����,��ȡ���� ��ҩƷ>\n"
		return msg
    else
        msg = "��Ҫ1��¹�⣡\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

-------1008��

function QuestAccept1008(npc,player)
    msg = "�ǵģ��������и���ҩƷ�����������������߽����Ĵ�������˵�Ǳز����ٵģ��������Ǵ�ֻ��Ǵ��ˣ�����Ҫ��������ֵ��ħ��ֵ���������д��������Ĳ���Ʒ������ʱ���Ե�������������\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1008 *01*ҩ���и��ֲ���Ʒ >\n"
	return msg
end

function Accept1008(npc, player)
    if lualib:AcceptQuest(player, 1008) == true then
		msg = "���#COLORCOLOR_GREENG# #NPCLINK<STR:ҩ����,NPCID:10>##COLOREND#�������\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccomplish1008 *01* �������>\n"
        return msg
    else
        return "�����ȡʧ��"
    end
end

-------1008��

function QuestAccomplish1008(npc, player)
    msg = "�ǿ�¹���Ѿ�����ҩƷ�ˣ��������ƺ�������ʲôüĿ����\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1008 *01* �ǿ�����Ǻã�>\n"
    return msg
end

function Accomplish1008(npc, player)
    if lualib:AccomplishQuest(player, 1008, 0) == true then
        msg = "Ҳ�������̵��������԰��Ҳ���һ�¡�\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1009 *01*֪����,��ȡ���� ������>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

-------1009��

function QuestAccept1009(npc,player)
    msg = "��ȥ�������̲���һ�°ɡ�\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1009 *01*�õģ������ȥ���ε꣬�������� >\n"
	return msg
end

function Accept1009(npc, player)
    if lualib:AcceptQuest(player, 1009) == true then
        return "ȥ�������̵�#COLORCOLOR_GREENG# #NPCLINK<STR:������,NPCID:18>##COLOREND#�������鿴һ��"
    else
        return "�����ȡʧ��"
    end
end


function Lever(npc,player)
	return ""
end