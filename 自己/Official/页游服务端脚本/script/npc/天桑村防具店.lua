local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

gQuestMap =
{
   {1005, "", "QuestAccomplish1005","", "*01*�������: ����װ��"},
   {1006, "QuestAccept1006", "","01*����: װ������", ""},
}
gQuestNum = table.getn(gQuestMap)

function main(npc, player)
    lualib:AddShop(npc, 4)
	msg = "��ǹ���룬����������ͯ�����ۣ����������Ϊ������Ű���²��ϳٳٲ����˵�������������ô�ã����Ĳ��Ͽ������ˣ��������Ǻð���\n \n"
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
	msg = msg.."#IMAGE1902700030# <@OpenShop#4 *01*����>\n"
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


--------1005��

function QuestAccomplish1005(npc, player)
    msg = "���ǿɰ���Ů�����úòҰ���������СŮ�������ң�����������֮�����ӻ���֮�֣�ҩ����֮�޽����ڷ�����\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1005a *01* �Ѷ��ţ�������Ҫ�����̽��>\n"
    return msg
end

function Accomplish1005a(npc, player)
    msg = "����ɵ�С����Щ���ﰡ������֮ǰ�����㼸�����ߣ��㽫�Լ���װ�����ɣ��򿪰���(F9),�Ҽ����װ�����д������������������ԣ�\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1005b *01* �Ҽ�����װ��>\n"
    return msg
end

function Accomplish1005b(npc, player)
    if lualib:AccomplishQuest(player, 1005, 0) == true then
		lua_sex = lualib:Player_GetIntProp(player, lua_role_gender)
		lua_item = {"�鲼��(��)","�鲼��(Ů)"}
		lualib:Player_GiveItemBind(player, lua_item[lua_sex], 1, "����Ʒ����ɣ����ߵ�", player)
        msg = "��֪���ˣ�������һ������\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1006 *01*֪����,��ȡ���� �� װ������>\n" 
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n" 
		return msg
    end
end

--------1006��
function QuestAccept1006(npc,player)
    msg = "����װ��Ҳ�������ŵģ�����������ƶ���װ���ϣ�����ʾ������װ�������������磺��Ҫ���ٵȼ������ٹ�������ħ�����������ȵȡ�Խ�߼���װ��Ҫ��ҲԽ�ߣ�������Ҫ���ŵͼ�װ����ʼ��������������Ҫ�����ԣ����ܴ��ϸ߼�װ�����⿿����Ҳû�ã�Ұ�⴦�����գ����������������У��������ϰ�մ�����һ�������������ȥ������\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1006 *01* ȥ������>\n"
	return msg
end

function Accept1006(npc, player)
    if lualib:AcceptQuest(player, 1006) == true then
        return "�˽⵽�˴���װ������Ҫ�ԣ�ȥ��#COLORCOLOR_GREENG# #NPCLINK<STR:����,NPCID:12>##COLOREND#����һ�´������Ϣ"
    else
        return "�����ȡʧ��"
    end
end	

function Lever(npc,player)
	return ""
end