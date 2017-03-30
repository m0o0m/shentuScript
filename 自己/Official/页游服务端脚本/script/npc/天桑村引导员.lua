local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

gQuestMap =
{
   {1001, "QuestAccept1001", "QuestAccomplish1001","*01*����: ����", "*01*�������: ���磨��ɣ�壩"},
   {1002, "QuestAccept1002", "QuestAccomplish1002","*01*����: ����", "*01*�������: ����"},
   {1003, "QuestAccept1003", "QuestAccomplish1003","*01*����: ����", "*01*�������: ����"},
   {1004, "QuestAccept1004", "QuestAccomplish1004","*01*����: ս��ʵ��", "*01*�������: ս��ʵ��"},
   {1005, "QuestAccept1005", "","01*����: ����װ��", ""},
}
gQuestNum = table.getn(gQuestMap)

function main(npc, player)

    msg = "����һֻСС�񡭡������������ţ���ӭ������;�����磡���ò�˵����Ϊǰ�����ң��������㣬����������ң���ν֪ʶ�����������\n \n"
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
    msg = msg.."#IMAGE1902700017# <@wupin *01*��Ʒʹ��ָ��     >"
	msg = msg.."#IMAGE1902700017# <@caozuo *01*����ָ��      >"
	msg = msg.."#IMAGE1902700017# <@zhandou *01*ս��ָ��      >"
    msg = msg.."#IMAGE1902700017# <@kuaijiejian *01*��ݼ�ָ��       >"
	msg = msg.."#IMAGE1902700017# <@mingling *01*����ָ��      >"
	msg = msg.."#IMAGE1902700017# <@jineng *01*����ָ��     >"
	msg = msg.."#IMAGE1902700017# <@lingqutianshu *01*��ȡ����         >"
	msg = msg.."#IMAGE1902700030# <@jihuo *01*��������ȡ���>\n"
	msg = msg.."                                              <@Lever *01*���뿪��>\n"
--    msg = msg.."<@web *01*                                      �ٷ���ҳ: www.173uu.com>"

    return msg
end

function wupin(npc, player)
   msg = "���ȣ�����F9���������ڣ���F10������������壩�򿪶�Ӧ��塣\nֱ��˫����Ʒ����Ϳ��Խ�װ��������ȥ������������Ĺ��ܵ��ߣ�˫����ʹ�øõ��ߣ�\n�����ƶ�������������������ٵ������\n \n"
   msg = msg.."#IMAGE1902700019# <@main *01*�����ء�>\n"
   return msg
end

function caozuo(npc, player)
   msg = "������ : ��Ϊ�ű����ж����ƶ����������ƶ���Ʒ�ȡ�\n����Ҽ� : ����Ϸ�����ڵ���Ҽ������ܲ�\nShift+���:ǿ�й���\nCTRL+�Ҽ� : CTRL+�Ҽ������ҿ��Բ鿴�Է���Ϣ\nAlt+��� : ��ȡ����ʬ����Ի����Ʒ\n���˫�����Ҽ����� : ʹ����Ʒ��Я��װ��\n \n"
   msg = msg.."#IMAGE1902700019# <@main *01*�����ء�>\n"
   return msg
end

function zhandou(npc, player)
   msg = "��������˵���㶼����������������й���������㲻�ܽ��й���������԰�סShift+�����ǿ�й���\n ������Щ��ȥ��¹�����ȣ�����������ǵ�ʬ���ϲɼ������Ӧ��Ʒ��\n \n"
   msg = msg.."#IMAGE1902700019# <@main *01*�����ء�>\n"
   return msg
end

function mingling(npc, player)
   msg = "�������� : ��������������ַ��ͺ�Ϊ��������\n˽�� : ������Ҽ����Ŀ��ͷ��ѡ��˽��ѡ�������/ + �������Ʒ���˽��\n���� : ��!��ͷ�������ַ��ͺ�Ϊ��������Ϣ��ɫ�ǻ�ɫ�ģ�����ʱ�����ƣ�\n��ӷ��� : ��!!��ͷ�������ַ��ͺ�Ϊֻ���͸���ӳ�Ա\n�лᷢ�� : ��!~��ͷ�������ַ��ͺ�Ϊֻ���͸��л��Ա\n���ȷ��� : ѡ����������Ⱥ��������ͺ�������Ƶ����ʾ����ÿ����Ҫ����һ��С����\n \n"
   msg = msg.."#IMAGE1902700019# <@main *01*�����ء�>\n"
   return msg
end

function jineng(npc, player)
   msg = "ÿ��ְҵ�ܹ�ѧϰ���ܵĵȼ�Ҫ����7����սʿ����ѧϰ�������ķ�������ʦ����ѧϰ��������������ʿ����ѧϰ�������䡷��\n��Щ�鶼�����ڸ��ص�������򵽵ģ��ȼ�����֮�󣬻�����ѧϰ�������߼��ļ��ܡ�\n \n����Щ���޷�������򵽣���ֻ��ͨ�����ܹ����ã�\n \n"
   msg = msg.."#IMAGE1902700019# <@main *01*�����ء�>\n"
   return msg
end

function kuaijiejian(npc, player)
   msg = "F1~F8:���ܿ�ݼ�        F9������       F10:��������\nF11:����                F12:����ѡ��\nCtrl+H:�ı乥��ģʽ    Ctrl+A:�ı���﹥��ģʽ\nAlt+W:�������            Alt+T:������\n \n"
   msg = msg.."#IMAGE1902700019# <@main *01*�����ء�>\n"
   return msg
end

function lingqutianshu(npc, player)
    local level = lualib:Player_GetIntProp(player, lua_role_level)
    if level > 41 then return "���Ѿ����������ˣ��޷���ȡ��" end
    if lualib:Player_GetItemCount(player, "����") < 1 then
        lualib:Player_GiveItemBind(player, "����", 1, "����Ʒ����ɣ������Ա", player)
    end
    return "��Ʒ��ȡ�ɹ���"
end

--function web(npc, player)
--    lualib:SysMsg_SendWebMsg(player, "��;�ٷ���վ", "http://www.173uu.com", "")
--    return ""
--end
-------1001��
function QuestAccept1001(npc,player)
    msg = "����ǰ����Ѫ�����������ǣ�����ٴ��⵽��Ϯ������Ҫ�Ž��������������ǵļ�԰����ʿ��ϣ������������һ��ȥ���ǣ��������\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1001 *01*����������������ħ��>\n"
	return msg
end

function Accept1001(npc, player)
    if lualib:AcceptQuest(player, 1001) == true then
        msg = "���#COLORCOLOR_GREENG# #NPCLINK<STR:��ɣ������Ա,NPCID:1002>##COLOREND#�������\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccomplish1001 *01*�������>\n"
		return msg
    else
        return "�����ȡʧ��"
    end
end

-------1001��

function QuestAccomplish1001(npc, player)
    msg = "[F12]��ף��һ��֮������Ҫ����İ������Կ�������ָ�ϡ�\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1001a *01* F12>\n"
    return msg
end

function Accomplish1001a(npc, player)
    msg = "�һ����ָ���Խ򣬻�������һЩ���֮�ԣ���ɵ��С��ͼ�Աߵġ�����ͼ��鿴��ͬʱ��Ҳ���Դ򿪰���[F9]�鿴�����顿����������źܶ������\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1001b *01* ������ͼ��Ͱ���������飡�Ҽ�ס�ˣ�>\n"
    return msg
end

function Accomplish1001b(npc, player)
    if lualib:AccomplishQuest(player, 1001, 0) == true then
        msg = "������ɣ�������һ������\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1002 *01*֪����,��ȡ���� �� ����>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

-------1002��
function QuestAccept1002(npc,player)
    msg = "��ס����ÿ��һ��������������ݶ��б仯������ָ����ȥʲô�ط�����ʲô�֣�ѧʲô���ܣ��Լ�����ʲôװ�������齫�����ɹ�22����22��֮����͵ÿ��Լ�������ȥ̽���ˣ���������кܶ�������Ҫ��ȥ��������\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1002 *01*�����ָ����ÿ����ʲô��>\n"
	return msg
end

function Accept1002(npc, player)
    if lualib:AcceptQuest(player, 1002) == true then
        msg = "���#COLORCOLOR_GREENG# #NPCLINK<STR:��ɣ������Ա,NPCID:1002>##COLOREND#�������\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccomplish1002 *01*�������>\n"
		return msg
    else
        return "�����ȡʧ��"
    end
end

-------1002��
function QuestAccomplish1002(npc, player)
    msg = "��ȥ���Ǳ�����԰֮ǰ���ҵ�ѵ����һЩ�����Ĳ�����\n��·��������������յأ����Գ��յصķ����߶�һ���������������һֱ���Ǹ������߶�\n�ܲ���������Ҽ�����յأ����Գ��յصķ����ܶ������������Ҽ�����һֱ���Ǹ������ܶ�\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1002 *01* ��������յ���·������Ҽ���յ��ܲ�>\n"
    return msg
end

function Accomplish1002(npc, player)
    if lualib:AccomplishQuest(player, 1002, 0) == true then
        msg = "������ɣ��Ժ���������ʿ��Բ鿴���飡\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1003 *01*֪����,��ȡ���񣺲���>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

-------1003��
function QuestAccept1003(npc,player)
    msg = "�ܺã�ѧϰ�úܿ죬�������ҵô�����һЩ������صĲ�����\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1003 *01*ѧϰ���� >\n"
	return msg
end

function Accept1003(npc, player)
    if lualib:AcceptQuest(player, 1003) == true then
		msg = "���#COLORCOLOR_GREENG# #NPCLINK<STR:��ɣ������Ա,NPCID:1002>##COLOREND#�������\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccomplish1003 *01*������� >\n"
        return msg
    else
        return "�����ȡʧ��"
    end
end

-------1003��
function QuestAccomplish1003(npc, player)
    msg = "1.����������������������ͻ��Զ��ܹ�ȥ����\n2.̽������ʬ�壺���Ź����ʬ�壬��סALT+�������ɻ�ù������ص���Ʒ��\n3.ѡ��Ŀ�꣺��סCTRL+���������Ŀ�꣬Ŀ���ͷ����������Ļ���Ϸ�������Ҽ����ͷ��ᵯ���˵���\n4.����������ң���CTRL+H�л�����ģʽ����SHIFT+���������Ŀ�꣬���׷��Ŀ��\n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1003 *01*�������ĸ��ֲ���������ѽ��>\n"
    return msg
end

function Accomplish1003(npc, player)
    if lualib:AccomplishQuest(player, 1003, 0) == true then
        msg = "������ɣ������������β�������\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1004 *01*֪����,��ȡ����ս��ʵ��>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

-------1004��
function QuestAccept1004(npc,player)
    msg = "�������Ѿ��˽���һЩ���������������в����׵ĵط�������ȥ��������ˡ��˿���ʱ������ȥʵ���ˡ����ռ���ͻ�䱩�壬�ò����գ��ŵ����ײ��ð�����ԭ�򲻵ö�֪������Ҫ�ڴ˵ؽӴ���·Ӣ���Ѳ������ͷ����æ����3ֻ�����ñ�ļ�������������\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1004 *01*�õģ������ȥ����3ֻ�� >\n"
	return msg
end

function Accept1004(npc, player)
    if lualib:AcceptQuest(player, 1004) == true then
        return "�ڴ��Ӹ�������3ֻ #COLORCOLOR_GREENG##LINK<MAP:��ɽ��,POSX:504,POSY:704,STR:��>##COLOREND# �����ְɣ�"
    else
        return "�����ȡʧ��"
    end
end

-------1004��
function QuestAccomplish1004(npc, player)
    msg = "��ס������������\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1004 *01* �����������,��ס�ˣ�>\n"
    return msg
end

function Accomplish1004(npc, player)
    if lualib:AccomplishQuest(player, 1004, 0) == true then
        msg = "������ɣ���֪����δ���˰ɣ�\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1005 *01*֪����,��ȡ���񣺴���װ��>\n"
		return msg
    else
        msg = "����ʧ�ܣ��������3ֻ #COLORCOLOR_GREENG##LINK<MAP:��ɽ��,POSX:504,POSY:704,STR:��>##COLOREND# ����\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

-------1005��
function QuestAccept1005(npc,player)
    msg = "��ɰ��أ��÷���ϰ�֮Ů�����������δ�飬��Ѱ��ʬ�ǣ���״���ң�����������Ϊ����ȥ�÷���ϰ崦�˽������\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1005 *01*�����ȥ�÷���Ҳ÷죡 >\n"
	return msg
end

function Accept1005(npc, player)
    if lualib:AcceptQuest(player, 1005) == true then
        return "����#COLORCOLOR_GREENG# #NPCLINK<STR:�÷�,NPCID:13>##COLOREND#�Ի����˽������"
    else
        return "�����ȡʧ��"
    end
end

function Lever(npc,player)
	return ""
end

---����
function jihuo(npc, player)
    if lualib:SysMsg_SendInputDlg(player, 1, "��������վ����ȡ�ļ�������ƹ�ԱID��", 60, 19, "InputJhCallback", "") == false then
	    lualib:SysMsg_SendPromptMsg(player, "���롸ȡ�����У����Ժ����ԣ�")
    end

    return ""
end


function InputJhCallback(id, player, str)
	local accountid = lualib:Player_GetAccountID(player);
	local serverid = lualib:GetZoneId();
	local groupid = lualib:GetGroupId();
	local code = str;

	local tgdb = lualib:Player_GetCustomVarInt(player, "tgdb")

	if tgdb == 0 then
		if lualib:BagFree(player, true, false, false) > 1 then
			lualib:Player_GiveItemBind(player, "VIP���", 1, "�����������", player)
			lualib:SysMsg_SendPromptMsg(player, string.format("��ϲ���������ʺųɹ�����Ʒ�Ѿ����͵����ı�����!"))
			lualib:Player_SetCustomVarInt(player, "tgdb", 1)
		else
			lualib:SysMsg_SendPromptMsg(player, string.format("�����ʺ�ʧ�ܣ����ı�������!"))
		end
	else
		lualib:SysMsg_SendPromptMsg(player, "���Ѿ��Ѿ���ȡ������������ظ���ȡ��")
	end
end
