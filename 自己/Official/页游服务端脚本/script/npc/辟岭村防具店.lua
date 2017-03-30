local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

gQuestMap =
{
   {1105, "", "QuestAccomplish1105","", "*01*�������: ����װ��"},
   {1106, "QuestAccept1106", "","01*����: װ������", ""},
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"Ů���Ӿ�Ӧ���ڼ������ӣ�����Ů��ĺã������ͷ¶��ʲô�ģ�̫�����Ƿ��ˡ�", "���������Щ�·������˼��������ģ��ֺÿ������ʹ������˿��˶��޲������ء�", "�ף����ﲻ����Ŷ��"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 25000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    lualib:AddShop(npc, 4)
	msg = "     #COLORCOLOR_GREENG#��������۸��ַ��ߣ�#COLOREND#�͹٣��Ƿ������ļ������ȫ�Ǵ�ʦ�����ģ��㿴���ʵء������ϡ��⹤�գ��޲������ϳ�ѽ�������������ȥ���ԣ�\n"
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
	msg = msg.."#OFFSET<X:0,Y:10>##IMAGE1902700037# <@OpenShop#4 *01*[����]>\n"
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


--------1105��

function QuestAccomplish1105(npc, player)
    msg = "���ǿɰ���Ů�����úòҰ���������СŮ�������ң�����������֮�����ӻ���֮�֣�ҩ����֮�޽����ڷ�����\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1105a *01* �Ѷ��ţ�������Ҫ�����̽��>\n"
    return msg
end

function Accomplish1105a(npc, player)
    msg = "����ɵ�С����Щ���ﰡ������֮ǰ�����㼸�����ߣ��㽫�Լ���װ�����ɣ��򿪰���(F9),�Ҽ����װ�����д������������������ԣ�\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1105b *01* �Ҽ�����װ��>\n"
    return msg
end

function Accomplish1105b(npc, player)
    if lualib:AccomplishQuest(player, 1105, 0) == true then
		lua_sex = lualib:Player_GetIntProp(player, lua_role_gender)
		lua_item = {"�鲼��(��)","�鲼��(Ů)"}
		lualib:Player_GiveItemBind(player, lua_item[lua_sex], 1, "����Ʒ����ɣ����ߵ�", player)
        msg = "��֪���ˣ�������һ������\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1106 *01*֪����,��ȡ���� �� װ������>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

--------1106��
function QuestAccept1106(npc,player)
    msg = "����װ��Ҳ�������ŵģ�����������ƶ���װ���ϣ�����ʾ������װ�������������磺��Ҫ���ٵȼ������ٹ�������ħ�����������ȵȡ�Խ�߼���װ��Ҫ��ҲԽ�ߣ�������Ҫ���ŵͼ�װ����ʼ��������������Ҫ�����ԣ����ܴ��ϸ߼�װ�����⿿����Ҳû�ã�Ұ�⴦�����գ����������������У��������ϰ�մ�����һ�������������ȥ������\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1106 *01* ȥ������>\n"
	return msg
end

function Accept1106(npc, player)
    if lualib:AcceptQuest(player, 1106) == true then
        return "�˽⵽�˴���װ������Ҫ�ԣ�ȥ��#COLORCOLOR_GREENG##NPCLINK<STR:����,NPCID:3>##COLOREND#����һ�´������Ϣ"
    else
        return "�����ȡʧ��"
    end
end

function Lever(npc,player)
	return ""
end
