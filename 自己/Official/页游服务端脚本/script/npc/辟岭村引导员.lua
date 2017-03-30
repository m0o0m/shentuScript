local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("npc/���������")

gQuestMap =
{
   {1101, "QuestAccept1101", "QuestAccomplish1101","*01*����: ����", "*01*�������: ���磨����壩"},
   {1102, "QuestAccept1102", "QuestAccomplish1102","*01*����: ����", "*01*�������: ����"},
   {1103, "QuestAccept1103", "QuestAccomplish1103","*01*����: ����", "*01*�������: ����"},
   {1104, "QuestAccept1104", "QuestAccomplish1104","*01*����: ս��ʵ��", "*01*�������: ս��ʵ��"},
   {1105, "QuestAccept1105", "","01*����: ����װ��", ""},
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"����ң��ҿ��Ը�����ܶ�����Ŷ��", "����ʲô�����׵��Ҷ����Ը����㡣", "�����˵˵���ɣ���ʿ���ҿ���������������ȷ�ĵ�·��"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 10000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end



function main(npc, player)

    local msg = "    ����һֻСС�񡭡������������ţ���ӭ������;�����磡��Ϊǰ�����ң��������㣬����������Ұ�����Ϊ�����������Ծ�����Ϥ��ϷŶ��\n"
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
    msg = msg.."#OFFSET<X:10,Y:0>##IMAGE1902700017# <@wupin *01*��Ʒʹ��ָ��>"
	msg = msg.."#OFFSET<X:17,Y:0>##IMAGE1902700017# <@caozuo *01*����ָ��>"
    msg = msg.."#OFFSET<X:44,Y:0>##IMAGE1902700017# <@kuaijiejian *01*��ݼ�ָ��>\n"
	msg = msg.."#OFFSET<X:10,Y:0>##IMAGE1902700017# <@zhandou *01*ս��ָ��>"
	msg = msg.."#OFFSET<X:42,Y:0>##IMAGE1902700017# <@mingling *01*����ָ��>"
	msg = msg.."#OFFSET<X:44,Y:0>##IMAGE1902700017# <@jineng *01*����ָ��>\n"
--	msg = msg.."#OFFSET<X:36,Y:0>##IMAGE1902700031# <@jihuo *01*��ȡVIP���>"
--  msg = msg.."#OFFSET<X:10,Y:0>##IMAGE1902700031# <@huigui_libao *01*��ȡ�ع����>"
--  msg = msg.."#OFFSET<X:20,Y:0>##IMAGE1902700031# <@fengce *01*��ȡ������>"
--  msg = msg.."#OFFSET<X:20,Y:0>##IMAGE1902700031# <@huangjin_libao *01*��ȡ�ƽ�����> \n"
    msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:40,Y:0>##IMAGE1902700017# <@lingqutianshu *01*��ȡ����>"
	msg = msg.."#OFFSET<X:150,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:0>#<@Lever *01*���뿪��>\n"
--    msg = msg.."<@web *01*                                      �ٷ���ҳ: www.173uu.com>"

    return msg
end

function wupin(npc, player)
   msg = "���ȣ�����F9���������ڣ���F10������������壩�򿪶�Ӧ��塣\nֱ��˫����Ʒ����Ϳ��Խ�װ��������ȥ������������Ĺ��ܵ��ߣ�˫����ʹ�øõ��ߣ�\n�����ƶ�������������������ٵ������\n \n \n \n"
   msg = msg.."                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
   return msg
end

function caozuo(npc, player)
   msg = "������ : ��Ϊ�ű����ж����ƶ����������ƶ���Ʒ�ȡ�\n����Ҽ� : ����Ϸ�����ڵ���Ҽ������ܲ�\nShift+���:ǿ�й���\nCTRL+�Ҽ� : CTRL+�Ҽ������ҿ��Բ鿴�Է���Ϣ\nAlt+��� : ��ȡ����ʬ����Ի����Ʒ\n���˫�����Ҽ����� : ʹ����Ʒ��Я��װ��\n \n"
   msg = msg.."                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
   return msg
end

function zhandou(npc, player)
   msg = "��������˵���㶼����������������й���������㲻�ܽ��й���������԰�סShift+�����ǿ�й���\n ������Щ��ȥ��¹�����ȣ�����������ǵ�ʬ���ϲɼ������Ӧ��Ʒ��\n \n \n \n"
   msg = msg.."                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
   return msg
end

function mingling(npc, player)
   msg = "�������� : ��������������ַ��ͺ�Ϊ��������\n˽�� : ������Ҽ����Ŀ��ͷ��ѡ��˽��ѡ�������/ + �������Ʒ���˽��\n���� : ��!��ͷ�������ַ��ͺ�Ϊ��������Ϣ��ɫ�ǻ�ɫ�ģ�����ʱ�����ƣ�\n��ӷ��� : ��!!��ͷ�������ַ��ͺ�Ϊֻ���͸���ӳ�Ա\n�лᷢ�� : ��!~��ͷ�������ַ��ͺ�Ϊֻ���͸��л��Ա\n���ȷ��� : ѡ����������Ⱥ��������ͺ�������Ƶ����ʾ����ÿ����Ҫ����һ��С����\n"
   msg = msg.."                                                   #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
   return msg
end

function jineng(npc, player)
   msg = "ÿ��ְҵ�ܹ�ѧϰ���ܵĵȼ�Ҫ����7����սʿ����ѧϰ�������ķ�������ʦ����ѧϰ��������������ʿ����ѧϰ�������䡷��\n��Щ�鶼�����ڸ��ص�������򵽵ģ��ȼ�����֮�󣬻�����ѧϰ�������߼��ļ��ܡ�\n \n����Щ���޷�������򵽣���ֻ��ͨ�����ܹ����ã�\n \n"
   msg = msg.."                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
   return msg
end

function kuaijiejian(npc, player)
   msg = "#COLORCOLOR_YELLOW#0~9#COLOREND#   #OFFSET<X:2,Y:0>#����������������Է��ü��ܺ͸������ߣ�\n#COLORCOLOR_YELLOW#F1~F8#COLOREND# #OFFSET<X:3,Y:0>#�����ܰ󶨰����������趨Ϊ���ܿ�ݼ���\n#COLORCOLOR_YELLOW#F9#COLOREND#    #OFFSET<X:3,Y:0>#���򿪰�������#COLORCOLOR_YELLOW#\nF10#COLOREND#   #OFFSET<X:4,Y:0>#���򿪽�ɫ����\n#COLORCOLOR_YELLOW#F11#COLOREND#   #OFFSET<X:5,Y:0>#���򿪼��ܽ���\n#COLORCOLOR_YELLOW#F12#COLOREND#   #OFFSET<X:4,Y:0>#������Ϸ������\n#COLORCOLOR_YELLOW#~#COLOREND#     #OFFSET<X:2,Y:0>#�����ʰȡ��Ʒ\n#COLORCOLOR_YELLOW#TAB#COLOREND#   #OFFSET<X:2,Y:0>#������/�رմ��ͼ����\n#COLORCOLOR_YELLOW#PAUSE#COLOREND# #OFFSET<X:1,Y:0>#����������\n#COLORCOLOR_YELLOW#SHIFT#COLOREND# #OFFSET<X:2,Y:0>#����סǿ�ƹ���Ŀ��\n#COLORCOLOR_YELLOW#ALT#COLOREND#   #OFFSET<X:1,Y:0>#����ס��ʾ���ϵ���Ʒ\n#COLORCOLOR_YELLOW#Enter#COLOREND# #OFFSET<X:2,Y:0>#���������촰��\n#COLORCOLOR_YELLOW#�ո�#COLOREND#  #OFFSET<X:1,Y:0>#���������촰��\n#COLORCOLOR_YELLOW#/#COLOREND#     #OFFSET<X:3,Y:0>#������˽��Ƶ��\n#COLORCOLOR_YELLOW#ESC#COLOREND#   #OFFSET<X:3,Y:0>#���رյ�ǰ����\n#COLORCOLOR_YELLOW#CTRL+Q#COLOREND##OFFSET<X:1,Y:0>#����������\n#COLORCOLOR_YELLOW#CTRL+S#COLOREND##OFFSET<X:1,Y:0>#���л���ǰĿ�겢������Ŀ��\n#COLORCOLOR_YELLOW#CTRL+Z#COLOREND##OFFSET<X:1,Y:0>#��������Χ��������Һ͹���\n#COLORCOLOR_YELLOW#CTRL+B#COLOREND##OFFSET<X:1,Y:0>#����/�رա��̳ǡ�����\n#COLORCOLOR_YELLOW#CTRL+A#COLOREND#���л�����AIģʽ����Ϣ��������\n#COLORCOLOR_YELLOW#CTRL+H#COLOREND#���л�����ģʽ\n#COLORCOLOR_YELLOW#CTRL+T#COLOREND##OFFSET<X:1,Y:0>#������������촰��\n#COLORCOLOR_YELLOW#CTRL+D#COLOREND##OFFSET<X:1,Y:0>#����/�رա����顱����\n#COLORCOLOR_YELLOW#CTRL+F#COLOREND##OFFSET<X:1,Y:0>#����/�رա��罻������\n#COLORCOLOR_YELLOW#CTRL+G#COLOREND#����/�رա��лᡱ����\n#COLORCOLOR_YELLOW#CTRL+Y#COLOREND##OFFSET<X:1,Y:0>#����/�رա��ɾ͡�����\n#COLORCOLOR_YELLOW#CTRL+R#COLOREND#����/�رա����񡱽���\n#COLORCOLOR_YELLOW#CTRL+N#COLOREND#����/�رա������������\n#COLORCOLOR_YELLOW#CTRL+����Ҽ�#COLOREND#���鿴Ŀ���ɫ����\n#COLORCOLOR_YELLOW#CTRL+������#COLOREND#��ѡ��Ŀ��\n#COLORCOLOR_YELLOW#ALT+~#COLOREND# ���������촰�ڹ���\n#COLORCOLOR_YELLOW#ALT+S#COLOREND# #OFFSET<X:1,Y:0>#�������ָ���Ŀ���ɫ��������б�\n#COLORCOLOR_YELLOW#ALT+E#COLOREND# #OFFSET<X:1,Y:0>#�������ָ���Ŀ���ɫ�Ӷ������Ƴ�\n#COLORCOLOR_YELLOW#ALT+F#COLOREND# #OFFSET<X:1,Y:0>#�������ָ���Ŀ���Ϊ����\n#COLORCOLOR_YELLOW#ALT+T#COLOREND# #OFFSET<X:1,Y:0>#�������ָ���Ŀ���ɫ������������\n#COLORCOLOR_YELLOW#ALT+W#COLOREND# #OFFSET<X:1,Y:0>#�������ָ���Ŀ���ɫ�����������\n#COLORCOLOR_YELLOW#ALT+Z#COLOREND# #OFFSET<X:1,Y:0>#������/�ر��Զ����̶�\n#COLORCOLOR_YELLOW#ALT+X#COLOREND# #OFFSET<X:1,Y:0>#���˻ؽ�ɫѡ�����\n"
   msg = msg.."                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
   return msg
end

function lingqutianshu(npc, player)
    local level = lualib:Player_GetIntProp(player, lua_role_level)
    if level > 71 then return "���Ѿ����������ˣ��޷���ȡ��" end
    if lualib:Player_GetItemCount(player, "����") < 1 then
        lualib:Player_GiveItemBind(player, "����", 1, "����Ʒ����ɣ������Ա", player)
    end
    return "��Ʒ��ȡ�ɹ���\n \n \n \n \n \n \n                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
end

--function web(npc, player)
--    lualib:SysMsg_SendWebMsg(player, "��;�ٷ���վ", "http://www.173uu.com", "")
--    return ""
--end
-------1101��
function QuestAccept1101(npc,player)
    msg = "����ǰ����Ѫ�����������ǣ�����ٴ��⵽��Ϯ������Ҫ�Ž��������������ǵļ�԰����ʿ��ϣ������������һ��ȥ���ǣ��������\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1101 *01*����������������ħ��>\n"
	return msg
end

function Accept1101(npc, player)
    if lualib:AcceptQuest(player, 1101) == true then
        msg = "���#COLORCOLOR_GREENG# #NPCLINK<STR:���������Ա,NPCID:1001>##COLOREND#�������\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccomplish1101 *01*�������>\n"
		return msg
    else
        return "�����ȡʧ��"
    end
end

-------1101��

function QuestAccomplish1101(npc, player)
    msg = "[F12]��ף��һ��֮������Ҫ����İ������Կ�������ָ�ϡ�\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1101a *01* F12>\n"
    return msg
end

function Accomplish1101a(npc, player)
    msg = "�һ����ָ���Խ򣬻�������һЩ���֮�ԣ���ɵ��С��ͼ�Աߵġ�����ͼ��鿴��ͬʱ��Ҳ���Դ򿪰���[F9]�鿴�����顿����������źܶ������\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1101b *01* ������ͼ��Ͱ���������飡�Ҽ�ס�ˣ�>\n"
    return msg
end

function Accomplish1101b(npc, player)
    if lualib:AccomplishQuest(player, 1101, 0) == true then
        msg = "������ɣ�������һ������\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1102 *01*֪����,��ȡ���� �� ����>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

-------1102��
function QuestAccept1102(npc,player)
    msg = "��ס����ÿ��һ��������������ݶ��б仯������ָ����ȥʲô�ط�����ʲô�֣�ѧʲô���ܣ��Լ�����ʲôװ�������齫�����ɹ�22����22��֮����͵ÿ��Լ�������ȥ̽���ˣ���������кܶ�������Ҫ��ȥ��������\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1102 *01*�����ָ����ÿ����ʲô��>\n"
	return msg
end

function Accept1102(npc, player)
    if lualib:AcceptQuest(player, 1102) == true then
        msg = "���#COLORCOLOR_GREENG# #NPCLINK<STR:���������Ա,NPCID:1001>##COLOREND#�������\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccomplish1102 *01*�������>\n"
		return msg
    else
        return "�����ȡʧ��"
    end
end

-------1102��
function QuestAccomplish1102(npc, player)
    msg = "��ȥ���Ǳ�����԰֮ǰ���ҵ�ѵ����һЩ�����Ĳ�����\n��·��������������յأ����Գ��յصķ����߶�һ���������������һֱ���Ǹ������߶�\n�ܲ���������Ҽ�����յأ����Գ��յصķ����ܶ������������Ҽ�����һֱ���Ǹ������ܶ�\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1102 *01* ��������յ���·������Ҽ���յ��ܲ�>\n"
    return msg
end

function Accomplish1102(npc, player)
    if lualib:AccomplishQuest(player, 1102, 0) == true then
        msg = "������ɣ��Ժ���������ʿ��Բ鿴���飡\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1103 *01*֪����,��ȡ���񣺲���>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

-------1103��
function QuestAccept1103(npc,player)
    msg = "�ܺã�ѧϰ�úܿ죬�������ҵô�����һЩ������صĲ�����\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1103 *01*ѧϰ���� >\n"
	return msg
end

function Accept1103(npc, player)
    if lualib:AcceptQuest(player, 1103) == true then
		msg = "���#COLORCOLOR_GREENG# #NPCLINK<STR:���������Ա,NPCID:1001>##COLOREND#�������\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccomplish1103 *01*������� >\n"
        return msg
    else
        return "�����ȡʧ��"
    end
end

-------1103��
function QuestAccomplish1103(npc, player)
    msg = "1.����������������������ͻ��Զ��ܹ�ȥ����\n2.̽������ʬ�壺���Ź����ʬ�壬��סALT+�������ɻ�ù������ص���Ʒ��\n3.ѡ��Ŀ�꣺��סCTRL+���������Ŀ�꣬Ŀ���ͷ����������Ļ���Ϸ�������Ҽ����ͷ��ᵯ���˵���\n4.����������ң���CTRL+H�л�����ģʽ����SHIFT+���������Ŀ�꣬���׷��Ŀ��\n\n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1103 *01* �������ĸ��ֲ���������ѽ��>\n"
    return msg
end

function Accomplish1103(npc, player)
    if lualib:AccomplishQuest(player, 1103, 0) == true then
        msg = "������ɣ������������β�������\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1104 *01*֪����,��ȡ����ս��ʵ��>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

-------1104��
function QuestAccept1104(npc,player)
    msg = "�������Ѿ��˽���һЩ���������������в����׵ĵط�������ȥ��������ˡ��˿���ʱ������ȥʵ���ˡ����ռ���ͻ�䱩�壬�ò����գ��ŵ����ײ��ð�����ԭ�򲻵ö�֪������Ҫ�ڴ˵ؽӴ���·Ӣ���Ѳ������ͷ����æ����3ֻ�����ñ�ļ�������������\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1104 *01*�õģ������ȥ����3ֻ�� >\n"
	return msg
end

function Accept1104(npc, player)
    if lualib:AcceptQuest(player, 1104) == true then
        return "�ڴ��Ӹ�������3ֻ #COLORCOLOR_GREENG##LINK<MAP:��ɽ��,POSX:187,POSY:675,STR:��>##COLOREND# �����ְɣ�"
    else
        return "�����ȡʧ��"
    end
end

-------1104��
function QuestAccomplish1104(npc, player)
    msg = "��ס������������\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1104 *01* �����������,��ס�ˣ�>\n"
    return msg
end

function Accomplish1104(npc, player)
    if lualib:AccomplishQuest(player, 1104, 0) == true then
        msg = "������ɣ���֪����δ���˰ɣ�\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1105 *01*֪����,��ȡ���񣺴���װ��>\n"
		return msg
    else
        msg = "����ʧ�ܣ��������3ֻ #COLORCOLOR_GREENG##LINK<MAP:��ɽ��,POSX:187,POSY:675,STR:��>##COLOREND# ����\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

-------1105��
function QuestAccept1105(npc,player)
    msg = "��ɰ��أ��÷���ϰ�֮Ů�����������δ�飬��Ѱ��ʬ�ǣ���״���ң�����������Ϊ����ȥ�÷���ϰ崦�˽������\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1105 *01*�����ȥ�÷���Ҳ÷죡 >\n"
	return msg
end

function Accept1105(npc, player)
    if lualib:AcceptQuest(player, 1105) == true then
        return "ȥ��#COLORCOLOR_GREENG# #NPCLINK<STR:�÷�,NPCID:4>##COLOREND#�Ի����˽������"
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

--�ع����
function huigui_libao(npc, player)

    if lualib:SysMsg_SendInputDlg(player, 1, "�������ȡ���ļ����룺", 60, 19, "InputHgCallback", npc) == false then
	    lualib:SysMsg_SendPromptMsg(player, "���롸ȡ�����У����Ժ����ԣ�")
    end
    return ""
end

--�ƽ�����
function huangjin_libao(npc, player)

    if lualib:SysMsg_SendInputDlg(player, 1, "�������ȡ���ļ����룺", 60, 19, "InputHgCallback_huangjin", npc) == false then
	    lualib:SysMsg_SendPromptMsg(player, "���롸ȡ�����У����Ժ����ԣ�")
    end
    return ""
end

--������

function fengce(npc, player)
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)
	local times = lualib:GetAllTime()
	local timesStr = lualib:Time2Str( "%Y-%m-%d %H:%M:%S", times)

	if times < StartServerTime_int then
		return "�������ڴ��ڿ���ǰ������Խ׶��޷���ȡ��"
	end

	local account_Name = tostring(lualib:AccountName(player))
	
	if not lualib:IO_CheckTextInFile("fengcehuikui.txt", account_Name) then
		return "���ڷ����û�дﵽ40�����Ѿ���ȡ��������޷���ȡ��"
	end
	
	if not lualib:IO_TextFileDeleteLineStr("fengcehuikui.txt", account_Name) then
		return "У�鼤����ʧ�ܣ�"
	end
	
	if not lualib:AddItem(player, "���弶���35��", 1, true, "���弶���35��", player) then
		return "��ӻع����ʧ�ܣ�"
	end

    return "��ȡ�ɹ���"
end

function InputHgCallback_huangjin(id, player, reg, npc)
	local huangjinlibao = lualib:GetInt(player, "huangjinlibao")
	if huangjinlibao == 1 then
		lualib:NPCTalkEx(npc, player, "���Ѿ���ȡ��һ���ˣ�\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>")
		return
	end
	
	if hj_table[reg] ~= 1 then
		lualib:NPCTalkEx(npc, player, "������ļ����벻����!\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>")
		return
	else
		lualib:AddItem(player, "�ع����", 1, true, "����������", player)
		lualib:SetInt(player, "huangjinlibao", 1)
		lualib:NPCTalkEx(npc, player, "��ȡ����ɹ���\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>")
		return
		
	end
	
	return
end

function InputHgCallback(id, player, reg, npc)
	local huiguilibao = lualib:GetInt(player, "huiguilibao")
	if huiguilibao == 1 then
		lualib:NPCTalkEx(npc, player, "���Ѿ���ȡ��һ���ˣ�\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>")
		return
	end
	
	if jhm_table[reg] ~= 1 then
		lualib:NPCTalkEx(npc, player, "������ļ����벻����!\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>")
		return
	else
		lualib:AddItem(player, "�ع����", 1, true, "����������", player)
		lualib:SetInt(player, "huiguilibao", 1)
		lualib:NPCTalkEx(npc, player, "��ȡ����ɹ���\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>")
		return
		
	end
	
	return
end