local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

gQuestMap =
{
   {1011, "", "QuestAccomplish1011","", "*01*�������: ������"},
   {1012, "QuestAccept1012", "QuestAccomplish1012","01*����: ����ʵս", "*01*�������: ����ʵս"},
   {1013, "QuestAccept1013", "","01*����: �����͸߼��ֿ�����", ""},
}
gQuestNum = table.getn(gQuestMap)

function main(npc, player)
    lualib:AddShop(npc, 13)
	msg = "���꣬��������һ���˲ţ�����������һ����֪������������ĺò��ϣ��������������и����书�ؼ�������һ������ϲ��ѧ�ġ�\n \n"
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
	msg = msg.."#IMAGE1902700030# <@OpenShop#12 *01*����>\n"
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


-------1011��
function QuestAccomplish1011(npc, player)
    msg = "����ȷ���Ϲ����飬�������ܣ������ڼ����Ÿ��ָ߳����ա������������������������㲻���������棬���ѧϰ���м��ܣ�ʹ�ü�����Ϊ��⿪���ְ����������������������һ���ʺ��������ļ����飬�����㣬��˫��ʹ��ѧϰ�ɡ�\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1011a *01* ѧϰ�������еļ��ܣ�>\n"
    return msg
end

function Accomplish1011a(npc, player)
    msg = "������ѧϰ�ļ���ֻ�ǳ����ģ�������ʹ�øü��ܵĴ���Խ�࣬�����Ⱦͻ�Խ�ߣ������������������ͻ���ǿ�����ԣ���Ҫ�ڼ���ϰ�������⵱��ȼ�Խ�ߣ���ѧϰ���ĸ߳����ܾͻ�Խ��Խǿ��\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1011b *01* ��ʹ�ü��ܿ��������ܵ������ȣ�>\n"
    return msg
end

function Accomplish1011b(npc, player)
    if lualib:AccomplishQuest(player, 1011, 0) == true then
		lua_job = lualib:Player_GetIntProp(player, lua_role_job)
		lua_item = {"�����ķ�","������","������"}
		lualib:Player_GiveItemBind(player, lua_item[lua_job], 1, "����Ʒ����ɣ�����", player)
        msg = "�����ˣ���֪������\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1012 *01*֪����,��ȡ���� ������ʵս>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

-------1012��

function QuestAccept1012(npc,player)
    msg = "�ɴ����߱ؾ��ٰ�ĥ������ϰ���ż��ܺ�����ڼ���ϰ���ü���ȥ����Щ��é��ս�������Ӽ��ܵ������ȣ����˳���ľ��飬����ܷ��ӳ����ܵ����������\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1012 *01* �ȼ����˲���ѧϰ��ǿ���ܣ�>\n"
	return msg
end

function Accept1012(npc, player)
    if lualib:AcceptQuest(player, 1012) == true then
        return "����ļ���ȥ����5ֻ#COLORCOLOR_GREENG##LINK<MAP:��ɽ��,POSX:465,POSY:620,STR:��é��>##COLOREND#��"
    else
        return "�����ȡʧ��"
    end
end

-------1012��
function QuestAccomplish1012(npc, player)
    msg = "���Ȼ�ǿ�����ţ�ţ�ƣ�\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1012 *01* ����>\n"
    return msg
end

function Accomplish1012(npc, player)
    if lualib:AccomplishQuest(player, 1012, 0) == true then
        msg = "���Ǻ�����η����\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1013 *01*֪����,��ȡ���� �������͸߼��ֿ�����>\n"
		return msg
    else
        msg = "�������5ֻ#COLORCOLOR_GREENG##LINK<MAP:��ɽ��,POSX:465,POSY:620,STR:��é��>##COLOREND#����\n \n"
		msg = msg.."#IMAGE1902700017# <@Lever *01*��֪����>\n"
		return msg
    end
end

-------1013��

function QuestAccept1013(npc,player)
    msg = "������ӹ������ϻ���˲�����Ʒ��������İ�������Я������ȥ�ֿ����Ա������һ�㡣\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1013 *01* �Ҳֿ����Ա>\n"
	return msg
end

function Accept1013(npc, player)
    if lualib:AcceptQuest(player, 1013) == true then
        return "ȥ��#COLORCOLOR_GREENG# #NPCLINK<STR:�ֿ����Ա,NPCID:17>##COLOREND#�Ի��˽�ֿ�洢֪ʶ"
    else
        return "�����ȡʧ��"
    end
end


function Lever(npc,player)
	return ""
end