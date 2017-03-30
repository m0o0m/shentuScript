gQuestMap =
{
   {1107, "", "QuestAccomplish1107","", "*01*�������: ����ʵ��"},
   {1108, "QuestAccept1108", "QuestAccomplish1108","01*����: ҩƷ", "*01*�������: ҩƷ"},
   {1109, "QuestAccept1109", "","01*����: ҩƷ", ""},
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"��ҩ���ֶ����������õ��ˣ�һ������Ҳ���á�", "ֻҪ��ҩ�������ص���Ҳ�ܺܿ�ָ�������", "ҩ�ǰ���������һǻ����"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 19000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end



function main(npc, player)
    lualib:AddShop(npc, 8)
	local msg = "     #COLORCOLOR_GREENG#����������򵽸���ҩƷŶ��#COLOREND#���ֻش�����ҽ���������˵�ľ����������׻�˵���ڴ�½Ʈ�����ܲ��������������ҾͶ��ˣ��ϴ����ŵ����������ӣ������ҵ�ҩ�����Ͼͺ��ˣ�\n"
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
	msg = msg.."#OFFSET<X:0,Y:10>##IMAGE1902700037# <@OpenShop#8 *01*[����]>\n"
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


-------1107��
function QuestAccomplish1107(npc, player)
    msg = "лл��������Щ¹���������ƣ�������¹��а�����ֵ��£�Ϊ����ʧ�Ѿõ����ֻ�ͻȻ�����أ��ҵ�����ҩ���ֽ��о��������Եȣ�\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1107 *01* ҩ������ҩƷ>\n"
    return msg
end

function Accomplish1107(npc, player)
    if lualib:AccomplishQuest(player, 1107, 0) == true then
        msg = "�������������ҩƷ��\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1108 *01*֪����,��ȡ���� ��ҩƷ>\n"
		return msg
    else
        msg = "��Ҫ5��¹�⣡\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

-------1108��

function QuestAccept1108(npc,player)
    msg = "�ǵģ��������и���ҩƷ�����������������߽����Ĵ�������˵�Ǳز����ٵģ��������Ǵ�ֻ��Ǵ��ˣ�����Ҫ��������ֵ��ħ��ֵ���������д��������Ĳ���Ʒ������ʱ���Ե�������������\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1108 *01*ҩ���и��ֲ���Ʒ >\n"
	return msg
end

function Accept1108(npc, player)
    if lualib:AcceptQuest(player, 1108) == true then
		msg = "���#COLORCOLOR_GREENG# #NPCLINK<STR:ҩ����,NPCID:1>##COLOREND#�������\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccomplish1108 *01* �������>\n"
        return msg
    else
        return "�����ȡʧ��"
    end
end

-------1108��

function QuestAccomplish1108(npc, player)
    msg = "�ǿ�¹���Ѿ�����ҩƷ�ˣ��������ƺ�������ʲôüĿ����\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1108 *01* �ǿ�����Ǻã�>\n"
    return msg
end

function Accomplish1108(npc, player)
    if lualib:AccomplishQuest(player, 1108, 0) == true then
        msg = "Ҳ�������̵��������԰��Ҳ���һ�¡�\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1109 *01*֪����,��ȡ���� ������>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

-------1109��

function QuestAccept1109(npc,player)
    msg = "��ȥ�������̲���һ�°ɡ�\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1109 *01*�õģ������ȥ���ε꣬�������� >\n"
	return msg
end

function Accept1109(npc, player)
    if lualib:AcceptQuest(player, 1109) == true then
        return "ȥ�������̵�#COLORCOLOR_GREENG# #NPCLINK<STR:������,NPCID:9>##COLOREND#�������鿴һ��"
    else
        return "�����ȡʧ��"
    end
end


function Lever(npc,player)
	return ""
end
