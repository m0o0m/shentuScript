local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

gQuestMap =
{
   {1111, "", "QuestAccomplish1111","", "*01*�������: ������"},
   {1112, "QuestAccept1112", "QuestAccomplish1112","01*����: ����ʵս", "*01*�������: ����ʵս"},
   {1113, "QuestAccept1113", "","01*����: �����͸߼��ֿ�����", ""},
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"������飬������·����ѧ�㼼�����Ǻõġ�", "��Ҫ��Ϊѧ�˼���û���ô�����Ҫ������ô������", "�����һ��٣�����Ϊ����Щ�԰ײ���Ҫ��������"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 15000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end


function main(npc, player)
    lualib:AddShop(npc, 13)
	local msg = "     #COLORCOLOR_GREENG#������и��ּ��������Ŷ��#COLOREND#���ۣ����꣬�����˰������˰���ս�����ǣ�Ԫ�����壬�������ʣ��պ�ض��������¡������߱���ش�½�������Ϊ�֣����ձ���ʹ���⼸ʮ���ؼ��±�����ת�ø����ˣ��պ�ά����غ�ƽ��ɨ����ħ����ȫ�����ˣ�\n"
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
	msg = msg.."#OFFSET<X:0,Y:10>##IMAGE1902700037# <@OpenShop#12 *01*[����]>\n"
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


-------1111��
function QuestAccomplish1111(npc, player)
    msg = "����ȷ���Ϲ����飬�������ܣ������ڼ����Ÿ��ָ߳����ա������������������������㲻���������棬���ѧϰ���м��ܣ�ʹ�ü�����Ϊ��⿪���ְ����������������������һ���ʺ��������ļ����飬�����㣬��˫��ʹ��ѧϰ�ɡ�\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1111a *01* ѧϰ�������еļ��ܣ�>\n"
    return msg
end

function Accomplish1111a(npc, player)
    msg = "������ѧϰ�ļ���ֻ�ǳ����ģ�������ʹ�øü��ܵĴ���Խ�࣬�����Ⱦͻ�Խ�ߣ������������������ͻ���ǿ�����ԣ���Ҫ�ڼ���ϰ�������⵱��ȼ�Խ�ߣ���ѧϰ���ĸ߳����ܾͻ�Խ��Խǿ��\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1111b *01* ��ʹ�ü��ܿ��������ܵ������ȣ�>\n"
    return msg
end

function Accomplish1111b(npc, player)
    if lualib:AccomplishQuest(player, 1111, 0) == true then
		lua_job = lualib:Player_GetIntProp(player, lua_role_job)
		lua_item = {"�����ķ�","������","������"}
		lualib:Player_GiveItemBind(player, lua_item[lua_job], 1, "����Ʒ����ɣ�����", player)
        msg = "�����ˣ���֪������\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1112 *01*֪����,��ȡ���� ������ʵս>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

-------1112��

function QuestAccept1112(npc,player)
    msg = "�ɴ����߱ؾ��ٰ�ĥ������ϰ���ż��ܺ�����ڼ���ϰ���ü���ȥ����Щ��é��ս�������Ӽ��ܵ������ȣ����˳���ľ��飬����ܷ��ӳ����ܵ����������\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1112 *01* �ȼ����˲���ѧϰ��ǿ���ܣ�>\n"
	return msg
end

function Accept1112(npc, player)
    if lualib:AcceptQuest(player, 1112) == true then
        return "����ļ���ȥ����5ֻ#COLORCOLOR_GREENG##LINK<MAP:��ɽ��,POSX:162,POSY:617,STR:��é��>#��"
    else
        return "�����ȡʧ��"
    end
end

-------1112��
function QuestAccomplish1112(npc, player)
    msg = "���Ȼ�ǿ�����ţ�ţ�ƣ�\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1112 *01* ����>\n"
    return msg
end

function Accomplish1112(npc, player)
    if lualib:AccomplishQuest(player, 1112, 0) == true then
        msg = "���Ǻ�����η����\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1113 *01*֪����,��ȡ���� �������͸߼��ֿ�����>\n"
		return msg
    else
        msg = "�������5ֻ#COLORCOLOR_GREENG##LINK<MAP:��ɽ��,POSX:152,POSY:644,STR:��é��>##COLOREND#����\n \n"
		msg = msg.."#IMAGE1902700017# <@Lever *01*��֪����>\n"
		return msg
    end
end

-------1113��

function QuestAccept1113(npc,player)
    msg = "������ӹ������ϻ���˲�����Ʒ��������İ�������Я������ȥ�ֿ����Ա������һ�㡣\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1113 *01* �Ҳֿ����Ա>\n"
	return msg
end

function Accept1113(npc, player)
    if lualib:AcceptQuest(player, 1113) == true then
        return "ȥ��#COLORCOLOR_GREENG# #NPCLINK<STR:�ֿ����Ա,NPCID:8>##COLOREND#�Ի��˽�ֿ�洢֪ʶ"
    else
        return "�����ȡʧ��"
    end
end


function Lever(npc,player)
	return ""
end
