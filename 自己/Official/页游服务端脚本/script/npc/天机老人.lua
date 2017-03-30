local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/level_gold_exp")
require("system/��ȡ����")
gQuestMap =
{
   {1014, "", "QuestAccomplish1014","", "*01*�������: ȥ��ɽ��"},
   {1015, "QuestAccept1015", "QuestAccomplish1015","*01*����: �˽���װ", "*01*�������: �˽���װ"},
   {1017, "QuestAccept1017", "","01*����������: ����", ""},
   {2001, "QuestAccept2001", "QuestAccomplish2001","*01*����������: ǰ����ѹ����ڣ", "*01*�������: ��ѹ����ڣ"},
   {2002, "QuestAccept2002", "QuestAccomplish2002","*01*����������: ����������Թ��", "*01*�������: ����������Թ��"},
   {1022, "", "QuestAccomplish1022","", "*01*�������: ��������˱���"},
   {1023, "QuestAccept1023", "","01*����: ��ħ��", ""},
   {1027, "", "QuestAccomplish1027","", "*01*�������: ��������˸��"},
   {2005, "QuestAccept2005", "QuestAccomplish2005","*01*����: ��˾�·��ţħ", "*01*�������: ��˾�·��ţħ"},
   {2006, "", "QuestAccomplish2006","", "*01*�������: ��˺���ţħ"},
   {2007, "", "QuestAccomplish2007","", "*01*�������: ��˺���ţħ"},
   {2008, "", "QuestAccomplish2008","", "*01*�������: ���ţħ����"},
   {2009, "QuestAccept2009", "QuestAccomplish2009","*01*����: �����ɽ��Ѩ", "*01*�������: �����ɽ��Ѩ"},
   {2010, "", "QuestAccomplish2010","", "*01*�������: ���ʬū"},
   {2011, "", "QuestAccomplish2011","", "*01*�������: ��˹���๤"},
   {2012, "", "QuestAccomplish2012","", "*01*�������: �������๤"},
   {2013, "", "QuestAccomplish2013","", "*01*�������: ��˾��ʬū"},
   {2014, "QuestAccept2014", "QuestAccomplish2014","*01*����: ��������", "*01*�������: ��������"},
   {2015, "", "QuestAccomplish2015","", "*01*�������: ��˾޶�"},
   {2016, "", "QuestAccomplish2016","", "*01*�������: �������"},
   {2017, "", "QuestAccomplish2017","", "*01*�������: ���ɳʯħ"},
   {2018, "", "QuestAccomplish2018","", "*01*�������: ���ɢ��"},
   {2019, "QuestAccept2019", "QuestAccomplish2019","*01*����: ������а��", "*01*�������: ������а��"},
   {2020, "", "QuestAccomplish2020","", "*01*�������: �����ԭ��ʿ"},
   {2021, "", "QuestAccomplish2021","", "*01*�������: ���ҹ��ɮ"},
   {2022, "", "QuestAccomplish2022","", "*01*�������: �����ԭ��ʿ"},
   {2023, "", "QuestAccomplish2023","", "*01*�������: ��˹�������"},
   {2024, "", "QuestAccomplish2024","", "*01*�������: �����ԭ��ʿ"}
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"�Ҳ��Ǵ�˵����������˵�������꣬�����˴�˵��", "ʹ����ǣ�����������ʧȥ�˹�ȥ�����˵�������ӵ�����ڡ����Լ�δ����", "����û����·��û��������û������ֻ��ս��"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 230000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function leave(npc, player)
    return ""
end

function key(npc, player)
    local require_count = 10
    local require_item = "�ܳײп�"
    local award_item = "���³��ܳ�"

    local cur_count = lualib:Player_GetItemCount(player, require_item)
    if cur_count < require_count then return "���߲��㣬��Ҫ"..require_count.."��"..require_item.."��\n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end

    if not lualib:Player_DestroyItem(player, require_item, 10, "����Ʒ��������ˡ��һ������³��ܳ�", "�������") then
        return "���һ���ʧ�ܣ�\n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    if not lualib:Player_GiveSingleItem(player, award_item, 0, "����Ʒ��������ˡ��һ������³��ܳ�", "�������") then
        return "���һ���ʧ�ܣ�\n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    return "���³��ܳס��һ����ɹ���\n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
end

function award(npc, player)
    local player_var = "award_mrqdlb_var"
    local item_name = "ÿ�����"
    local cur_days = lualib:GetAllDays(0)
    local days = lualib:Player_GetCustomVarInt(player, player_var)

    if cur_days == days then
        return "������Ѿ���ȡ�������������������\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    elseif cur_days < days then
        return "ϵͳ����\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    local require_times = 300
    if lualib:Player_GetTimeProp(player, lua_role_today_online) < require_times then
        return "������ʱ��δ��5���ӣ����Ժ�������ȡ�����\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    if lualib:Player_GetBagFree(player) < 1 then
        return "�Բ�����ı����Ѿ����ˣ���������������ȡ��\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    lualib:Player_SetCustomVarInt(player, player_var, cur_days)

    if not lualib:Player_GiveSingleItem(player, item_name, 1, "����Ʒ�����������ȡÿ�����", "�������") then
        return "��ȡʧ�ܣ�\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    local level = lualib:Player_GetIntProp(player,  lua_role_level)
    --if not lualib:Player_AddGold(player, level * 1000, true, "�ӽ�ң����������ȡÿ�����", "�������") then
    --    return "��ȡ���ʧ�ܣ�\n \n<@main *01*�����ء�>"
    --end

    --[[if not lualib:Player_AddExp(player, level *level *level /5, "�Ӿ��飺���������ȡÿ�����", "�������") then
        return "��ȡ����ʧ�ܣ�\n \n<@main *01*�����ء�>"
    end]]

    return "��ȡÿ������ɹ���ֻҪ���֣���ÿ�춼���Ը���һ�����Ŷ\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
end

local task_level =
{
    "#COLORCOLOR_WHITE#���ף�#COLOREND#",
    "#COLORCOLOR_GREENG#���̣�#COLOREND#",
    "#COLORCOLOR_BLUE#������#COLOREND#",
    "#COLORCOLOR_PURPLE#���ϣ�#COLOREND#",
    "#COLORCOLOR_GOLD#����#COLOREND#"
}

local task_var =
{
    "custom_var_ss_task_days",
    "custom_var_ss_task_count",
    10,
	"custom_var_ss_task_cur",
	"custom_var_ss_accom_cur"
}

local refresh_item =
{
    ["Ԫ��"] = {1, 100},
    ["ѭ��ħ��"] = {2, 1},
}

local ring_t =
{
	10, 11, 12, 13, 14, 15, 16, 17, 18, 20
}

function main(npc, player)
	return accept_task(npc, player)
end

function accept_task(npc, player)
    local msg = "#COLORCOLOR_ORANGE#�������ι���5��Ʒ�ף�#COLOREND#��ɫ��#COLORCOLOR_GREENG#��ɫ��#COLOREND##COLORCOLOR_BLUE#��ɫ��#COLOREND##COLORCOLOR_PURPLE#��ɫ��#COLOREND##COLORCOLOR_GOLD#��ɫ#COLOREND#\n \n"
    msg = msg.."Ʒ��Խ�ߣ������������Խ�࣬ˢ�����������������Ʒ��\n"
    --msg = msg.."#COLORCOLOR_PURPLE#��ÿ��ˢ��������Ҫ����100Ԫ������15��ѭ��ħ�䣩#COLOREND#\n \n"
    msg = msg.."#COLORCOLOR_PURPLE#��ÿ��ˢ��������Ҫ����1��ѭ��ħ�䣩#COLOREND#\n"
	msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n \n"
    msg = msg.."#IMAGE<ID:1902700016>#<@accept *01*[��ȡ�µ�����]>����#IMAGE<ID:1902700016>#<@accomplish *01*[�ύ�������]>����#IMAGE<ID:1902700017>#<@pingjiejieshao *01*[�˽�����Ʒ��]>\n"
	msg = msg.."#IMAGE<ID:1902700016>#<@days_task *01*[һ����ɽ�����������]>"
		for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[2].." "..v[4]..">\n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016# <@"..v[3].." "..v[5]..">\n"
            end
        end
    end
    
    return msg
end


function pingjiejieshao(npc, player)
    local msg = "����ĸߵͺ����ĵȼ���أ��ȼ�Խ�ߣ����������Խ�ࡣ�����ס�#COLORCOLOR_GREENG#���̡�#COLOREND##COLORCOLOR_BLUE#������#COLOREND##COLORCOLOR_PURPLE#���ϡ�#COLOREND##COLORCOLOR_GOLD#����#COLOREND#�ֱ�����ڻ��������ϵı�����\n"
     msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GRAY#�X���j�������j�������j�������j�������j�������j�������[#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GRAY#��#COLOREND#��#COLORCOLOR_GRAY#��#COLOREND# #COLORCOLOR_ORANGE#����#COLOREND# #COLORCOLOR_GRAY#��#COLOREND# ��ɫ #OFFSET<X:1,Y:0>##COLORCOLOR_GRAY#��#COLOREND# #COLORCOLOR_GREENG#��ɫ#COLOREND# #OFFSET<X:1,Y:0>##COLORCOLOR_GRAY#��#COLOREND# #COLORCOLOR_BLUE#��ɫ#COLOREND# #OFFSET<X:1,Y:0>##COLORCOLOR_GRAY#��#COLOREND# #COLORCOLOR_PURPLE#��ɫ#COLOREND# #OFFSET<X:1,Y:0>##COLORCOLOR_GRAY#��#COLOREND# #COLORCOLOR_GOLD#��ɫ#COLOREND# #OFFSET<X:0,Y:0>##COLORCOLOR_GRAY#��#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GRAY#��#COLOREND#��#COLORCOLOR_GRAY#��#COLOREND# #COLORCOLOR_ORANGE#����#COLOREND# #COLORCOLOR_GRAY#��#COLOREND#(1 ��)#OFFSET<X:0,Y:0>##COLORCOLOR_GRAY#��#COLOREND#(2 ��)#OFFSET<X:1,Y:0>##COLORCOLOR_GRAY#��#COLOREND#(3 ��)#OFFSET<X:1,Y:0>##COLORCOLOR_GRAY#��#COLOREND#(5 ��)#OFFSET<X:1,Y:0>##COLORCOLOR_GRAY#��#COLOREND#(7 ��)#OFFSET<X:0,Y:0>##COLORCOLOR_GRAY#��#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GRAY#�^���m�������m�������m�������m�������m�������m�������a#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n \n"
    msg = msg.."                                                   #OFFSET<X:0,Y:7>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>"
    return msg
end

local task_t =
{
    {
        {10001, 20, "�ַ���·��", "ǰ����·��ɱ��10����ħ�ȷ����������", "�������飺", "������ң�", 200},
        {20001, 20, "�ַ���·��", "ǰ����·��ɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {30001, 20, "�ַ���·��", "ǰ����·��ɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {40001, 20, "�ַ���·��", "ǰ����·��ɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {50001, 20, "�ַ���·��", "ǰ����·��ɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200}
    },
    {
        {10002, 20, "�ַ���·��", "ǰ����·��ɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {20002, 20, "�ַ���·��", "ǰ����·��ɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {30002, 20, "�ַ���·��", "ǰ����·��ɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {40002, 20, "�ַ���·��", "ǰ����·��ɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {50002, 20, "�ַ���·��", "ǰ����·��ɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200}
    },
	{
        {10003, 25, "�ַ�����ڣ", "ǰ������ڣɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {20003, 25, "�ַ�����ڣ", "ǰ������ڣɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {30003, 25, "�ַ�����ڣ", "ǰ������ڣɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {40003, 25, "�ַ�����ڣ", "ǰ������ڣɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {50003, 25, "�ַ�����ڣ", "ǰ������ڣɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200}
    },
	{
        {10004, 25, "�ַ�������", "ǰ��������ɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {20004, 25, "�ַ�������", "ǰ��������ɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {30004, 25, "�ַ�������", "ǰ��������ɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {40004, 25, "�ַ�������", "ǰ��������ɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {50004, 25, "�ַ�������", "ǰ��������ɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200}
    },
	{
        {10005, 30, "�ַ���·��", "ǰ����·��ɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {20005, 30, "�ַ���·��", "ǰ����·��ɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {30005, 30, "�ַ���·��", "ǰ����·��ɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {40005, 30, "�ַ���·��", "ǰ����·��ɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {50005, 30, "�ַ���·��", "ǰ����·��ɱ��10����ħ�ȷ���������", "�������飺", "������ң�", 200}
    },
	{
        {10006, 30, "�ַ���ɽ��Ѩ", "ǰ����ɽ��Ѩɱ��15����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {20006, 30, "�ַ���ɽ��Ѩ", "ǰ����ɽ��Ѩɱ��15����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {30006, 30, "�ַ���ɽ��Ѩ", "ǰ����ɽ��Ѩɱ��15����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {40006, 30, "�ַ���ɽ��Ѩ", "ǰ����ɽ��Ѩɱ��15����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {50006, 30, "�ַ���ɽ��Ѩ", "ǰ����ɽ��Ѩɱ��15����ħ�ȷ���������", "�������飺", "������ң�", 200}
    },
	{
        {10007, 35, "�ַ������", "ǰ�������ɱ��20����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {20007, 35, "�ַ������", "ǰ�������ɱ��20����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {30007, 35, "�ַ������", "ǰ�������ɱ��20����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {40007, 35, "�ַ������", "ǰ�������ɱ��20����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {50007, 35, "�ַ������", "ǰ�������ɱ��20����ħ�ȷ���������", "�������飺", "������ң�", 200}
    },
	{
        {10008, 35, "�ַ����а��", "ǰ�����а��ɱ��25����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {20008, 35, "�ַ����а��", "ǰ�����а��ɱ��25����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {30008, 35, "�ַ����а��", "ǰ�����а��ɱ��25����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {40008, 35, "�ַ����а��", "ǰ�����а��ɱ��25����ħ�ȷ���������", "�������飺", "������ң�", 200},
        {50008, 35, "�ַ����а��", "ǰ�����а��ɱ��25����ħ�ȷ���������", "�������飺", "������ң�", 200}
    },
	    {
        {10009, 20, "�ַ���·��", "ǰ����·��ɱ��10��������������", "�������飺", "������ң�", 200},
        {20009, 20, "�ַ���·��", "ǰ����·��ɱ��10��������������", "�������飺", "������ң�", 200},
        {30009, 20, "�ַ���·��", "ǰ����·��ɱ��10��������������", "�������飺", "������ң�", 200},
        {40009, 20, "�ַ���·��", "ǰ����·��ɱ��10��������������", "�������飺", "������ң�", 200},
        {50009, 20, "�ַ���·��", "ǰ����·��ɱ��10��������������", "�������飺", "������ң�", 200}
    },
    {
        {10010, 20, "�ַ���·��", "ǰ����·��ɱ��10��������������", "�������飺", "������ң�", 200},
        {20010, 20, "�ַ���·��", "ǰ����·��ɱ��10��������������", "�������飺", "������ң�", 200},
        {30010, 20, "�ַ���·��", "ǰ����·��ɱ��10��������������", "�������飺", "������ң�", 200},
        {40010, 20, "�ַ���·��", "ǰ����·��ɱ��10��������������", "�������飺", "������ң�", 200},
        {50010, 20, "�ַ���·��", "ǰ����·��ɱ��10��������������", "�������飺", "������ң�", 200}
    },
	{
        {10011, 25, "�ַ�����ڣ", "ǰ������ڣɱ��10��������������", "�������飺", "������ң�", 200},
        {20011, 25, "�ַ�����ڣ", "ǰ������ڣɱ��10��������������", "�������飺", "������ң�", 200},
        {30011, 25, "�ַ�����ڣ", "ǰ������ڣɱ��10��������������", "�������飺", "������ң�", 200},
        {40011, 25, "�ַ�����ڣ", "ǰ������ڣɱ��10��������������", "�������飺", "������ң�", 200},
        {50011, 25, "�ַ�����ڣ", "ǰ������ڣɱ��10��������������", "�������飺", "������ң�", 200}
    },
	{
        {10012, 25, "�ַ�������", "ǰ��������ɱ��10��������������", "�������飺", "������ң�", 200},
        {20012, 25, "�ַ�������", "ǰ��������ɱ��10��������������", "�������飺", "������ң�", 200},
        {30012, 25, "�ַ�������", "ǰ��������ɱ��10��������������", "�������飺", "������ң�", 200},
        {40012, 25, "�ַ�������", "ǰ��������ɱ��10��������������", "�������飺", "������ң�", 200},
        {50012, 25, "�ַ�������", "ǰ��������ɱ��10��������������", "�������飺", "������ң�", 200}
    },
	{
        {10013, 30, "�ַ���·��", "ǰ����·��ɱ��10��������������", "�������飺", "������ң�", 200},
        {20013, 30, "�ַ���·��", "ǰ����·��ɱ��10��������������", "�������飺", "������ң�", 200},
        {30013, 30, "�ַ���·��", "ǰ����·��ɱ��10��������������", "�������飺", "������ң�", 200},
        {40013, 30, "�ַ���·��", "ǰ����·��ɱ��10��������������", "�������飺", "������ң�", 200},
        {50013, 30, "�ַ���·��", "ǰ����·��ɱ��10��������������", "�������飺", "������ң�", 200}
    },
	{
        {10014, 30, "�ַ���ɽ��Ѩ", "ǰ����ɽ��Ѩɱ��15��������������", "�������飺", "������ң�", 200},
        {20014, 30, "�ַ���ɽ��Ѩ", "ǰ����ɽ��Ѩɱ��15��������������", "�������飺", "������ң�", 200},
        {30014, 30, "�ַ���ɽ��Ѩ", "ǰ����ɽ��Ѩɱ��15��������������", "�������飺", "������ң�", 200},
        {40014, 30, "�ַ���ɽ��Ѩ", "ǰ����ɽ��Ѩɱ��15��������������", "�������飺", "������ң�", 200},
        {50014, 30, "�ַ���ɽ��Ѩ", "ǰ����ɽ��Ѩɱ��15��������������", "�������飺", "������ң�", 200}
    },
	{
        {10015, 35, "�ַ������", "ǰ�������ɱ��20��������������", "�������飺", "������ң�", 200},
        {20015, 35, "�ַ������", "ǰ�������ɱ��20��������������", "�������飺", "������ң�", 200},
        {30015, 35, "�ַ������", "ǰ�������ɱ��20��������������", "�������飺", "������ң�", 200},
        {40015, 35, "�ַ������", "ǰ�������ɱ��20��������������", "�������飺", "������ң�", 200},
        {50015, 35, "�ַ������", "ǰ�������ɱ��20��������������", "�������飺", "������ң�", 200}
    },
	{
        {10016, 35, "�ַ����а��", "ǰ�����а��ɱ��25��������������", "�������飺", "������ң�", 200},
        {20016, 35, "�ַ����а��", "ǰ�����а��ɱ��25��������������", "�������飺", "������ң�", 200},
        {30016, 35, "�ַ����а��", "ǰ�����а��ɱ��25��������������", "�������飺", "������ң�", 200},
        {40016, 35, "�ַ����а��", "ǰ�����а��ɱ��25��������������", "�������飺", "������ң�", 200},
        {50016, 35, "�ַ����а��", "ǰ�����а��ɱ��25��������������", "�������飺", "������ң�", 200}
    },
}

color_t =
{
	1, 2, 3, 5, 7
}
local gold_rates = {3500, 6500, 8500, 9500, 10000}
function accept(npc, player)
    local level = lualib:Player_GetIntProp(player,  lua_role_level)

    local temp_t = {}
    for k, v in pairs(task_t) do
        local temp = {k, v[1]}
        if (level >= v[1][2] and level <= v[1][7]) then table.insert(temp_t, temp) end
    end

    local rnd = lualib:GenRandom(1, #temp_t)
    if temp_t[rnd] == nil then return "��ɫ����20���ſ��Խ���������\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end

    for _, v in pairs(task_t) do
        for _, _v in pairs(v) do
            if lualib:HasQuest(player, _v[1]) then
				return "���Ѿ������������ˣ�����ɺ�������ȡ��\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
			end
        end
    end

    local all_days = lualib:GetAllDays(0)
    local days = lualib:Player_GetCustomVarInt(player, task_var[1])
	local cur_ring = lualib:Player_GetCustomVarInt(player, task_var[2])
    if days == all_days then
        if cur_ring >= task_var[3] then
            return "ÿ��ֻ����ȡ"..task_var[3].."����������\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
        end
    elseif days > all_days then
        return "ϵͳ����\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    else
        lualib:Player_SetCustomVarInt(player, task_var[2], 0)
        cur_ring = 0
    end

	local cur_task = lualib:Player_GetCustomVarInt(player, task_var[4])
	local msg
	if cur_task ~= 0 then
		local cur_index, cur_sub_index
		for k, v in pairs(task_t) do
			for _k, _v in pairs(v) do
				if _v[1] == cur_task then
					msg = "#IMAGE1902700016##OFFSET<X:0,Y:-2>#<@task#"..k.."#".._k.."#"..cur_ring.." *01*["..task_t[k][_k][3].."]>\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>"
				end
			end
		end
	else
		local cur_index = 0
		local rnd_sub = lualib:GenRandom(1, 10000)
		for i = 1, #gold_rates do
			if rnd_sub < gold_rates[i] then 
				cur_index = i
				break
			end
		end

		
		msg = "#IMAGE1902700016##OFFSET<X:0,Y:-2>#<@task#"..temp_t[rnd][1].."#"..cur_index.."#"..cur_ring.." *01*["..temp_t[rnd][2][3].."]>\n \n \n \n \n \n \n \n                                                   #OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>"
		
	end

    return msg
end

function task(npc, player, index, subindex, ring)
    index = tonumber(index)
    subindex = tonumber(subindex)
	ring = tonumber(ring)

	lualib:Player_SetCustomVarInt(player, task_var[4], task_t[index][subindex][1])
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	local exp = math.floor(color_t[subindex] * level * level * level * ring_t[ring + 1] / 10)
	local gold = math.floor(((130 * level * level - 5000 * level + 70000) / 300) * 2 * subindex)

    local msg = "                     #COLORCOLOR_PURPLE#��"..(ring + 1).."����#COLOREND##COLORCOLOR_RED#"..task_t[index][subindex][3]..task_level[subindex].."#COLOREND#\n"
    msg = msg.."#COLORCOLOR_RED#��������:#COLORCOLOREND#\n    #COLORCOLOR_GOLD#"..task_t[index][subindex][4].."#COLOREND#\n"
    msg = msg.."#COLORCOLOR_RED#������:#COLORCOLOREND#\n    #COLORCOLOR_GOLD#"..task_t[index][subindex][5]..exp.."#COLOREND#    #COLORCOLOR_GOLD#"..task_t[index][subindex][6]..gold.."#COLOREND#\n"
--    msg = msg.."#COLORCOLOR_RED#����˵��:#COLORCOLOREND##COLORCOLOR_GOLD#"..task_t[index][subindex][6].."#COLOREND#\n"
    msg = msg.."------------------------------------------------------------"
    --msg = msg.."        #OFFSET<X:0,Y:-4>##IMAGE1902700032#<@refresh#1#"..index.."#"..subindex.."#"..ring.." *01*��Ԫ��ˢ�¡�             >#IMAGE1902700037#<@refresh#2#"..index.."#"..subindex.."#"..ring.." *01*��ħ��ˢ�¡�>\n"
    msg = msg.."  #OFFSET<X:0,Y:1>##IMAGE1902700016##OFFSET<X:2,Y:-1>#<@accept_quest#"..task_t[index][subindex][1].."#"..index.."#"..subindex.." *01*����ȡ����>                #OFFSET<X:0,Y:1>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@refresh#2#"..index.."#"..subindex.."#"..ring.." *01*��ˢ������>\n \n                                               #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2># <@main *01*��������ҳ��>"
    --msg = msg.."            --------------------------------------------"
    return msg
end

function refresh(npc, player, refresh_type, index, subindex, ring)
    index = tonumber(index)
    refresh_type = tonumber(refresh_type)
    subindex = tonumber(subindex)
	ring = tonumber(ring)

	if subindex == #task_level then return "��������Ѿ�ˢ�µ���ߵȼ��ˣ�\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>" end

    if refresh_type == refresh_item["Ԫ��"][1] then
        if not lualib:Player_IsIngotEnough(player, refresh_item["Ԫ��"][2], false) then
            return "���Ԫ������"..refresh_item["Ԫ��"][2].."��\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>"
        end
    elseif refresh_type == refresh_item["ѭ��ħ��"][1] then
        if lualib:Player_GetItemCount(player, "ѭ��ħ��") < refresh_item["ѭ��ħ��"][2] then
            return "���ѭ��ħ����������"..refresh_item["ѭ��ħ��"][2].."����\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>"
        end
    else
        return "δ֪����\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>"
    end

    if refresh_type == refresh_item["Ԫ��"][1] then
        if not lualib:Player_SubIngot(player, refresh_item["Ԫ��"][2], false, "��Ԫ�������������������", "�������") then
            return "�۳�Ԫ��ʧ�ܣ�\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>"
        end
    elseif refresh_type == refresh_item["ѭ��ħ��"][1] then
        if not lualib:Player_DestroyItem(player, "ѭ��ħ��", refresh_item["ѭ��ħ��"][2], "ɾ��Ʒ�����������������", "�������") then
            return "�Ͻ�ѭ��ħ��ʧ�ܣ�\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>"
        end
    end


    return task(npc, player, tostring(index), tostring(lualib:GenRandom(subindex, #task_t[index])), tostring(ring))
end


function accept_quest(npc, player, id, index, subindex)
    id = tonumber(id)
    index = tonumber(index)
    subindex = tonumber(subindex)

    if not lualib:AcceptQuest(player, id) then
        return "����"..task_t[index][subindex][3]..task_level[subindex].."��ȡʧ�ܣ������ȡ�ﵽ���ޣ���������ѽ���������ȡ��\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>"
    end

    lualib:Player_SetCustomVarInt(player, task_var[2], lualib:Player_GetCustomVarInt(player, task_var[2]) + 1)
    lualib:Player_SetCustomVarInt(player, task_var[1], lualib:GetAllDays(0))
	lualib:Player_SetCustomVarInt(player, task_var[4], 0)
	lualib:Player_SetCustomVarInt(player, task_var[5], subindex)
	lualib:JoinCamp(player, 2, 0)
	if subindex > 3 then
			local name = lualib:Name(player)
			lualib:SysMsg_SendBroadcastColor("���#COLORCOLOR_BROWN#["..name.."] #COLORCOLOR_YELLOW#��������˴���ȡ��#COLORCOLOR_GOLD#["..task_level[subindex].."#COLORCOLOR_GOLD#] #COLORCOLOR_YELLOW#ɫ��������", "", 1, 12)
	end
    return "����"..task_t[index][subindex][3]..task_level[subindex].."��ȡ�ɹ���\n \n \n #IMAGE<ID:1902700016>#<@accomplish *01*[��ѭ��ħ�������ύ�������]>\n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>"
end








function accomplish(npc, player)
	if lualib:Player_GetCustomVarInt(player, task_var[2]) == 0 then
		lualib:Player_SetCustomVarInt(player, task_var[2], 1)
	end
	local cur_ring = lualib:Player_GetCustomVarInt(player, task_var[2])
    for k, v in pairs(task_t) do
        for _k, _v in pairs(v) do
            if lualib:HasQuest(player, _v[1]) then
                return accomplish_info(npc, player, k, _k, _k, cur_ring)
            end
        end
    end

	return "��û����ȡ��������\n \n \n \n \n \n \n \n                                                   #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>"
end

function accomplish_info(npc, player, index, sub_index, real_index, ring)
	local cur_index = lualib:Player_GetCustomVarInt(player, task_var[5])
	if cur_index ~= 0 then sub_index = cur_index end
	
	if sub_index == nil  then
		sub_index = 1
	end
	
	
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
    --����=��ɫϵ��*�ȼ�^3/10*��ϵ��
    --���=��130*�ȼ�^2-5000*�ȼ�+70000��/300*20*��ɫϵ��
	local exp = math.floor(color_t[sub_index] * level * level * level * ring_t[ring] / 10)
	local gold = math.floor(((130 * level * level - 5000 * level + 70000) / 300) * 2 * sub_index)
	local msg = ""
	
	
	if not lualib:CanAccomplishQuest(player, task_t[index][real_index][1]) then 
		msg = msg.."#COLORCOLOR_RED#δ���ɱ��Ҫ�󣬶�����һ��ѭ��ħ���Կ��������#COLOREND#\n \n��ǰ����#COLORCOLOR_PURPLE#��"..(ring).."����#COLOREND#"..task_t[index][sub_index][3]..task_level[sub_index].."����ɸ�����ɻ�ã�\n"
		msg = msg.."���飺"..exp.."            ��ң�"..gold.."\n"
		
		msg = msg.."\n \n#IMAGE1902700016#<@accomplish_complete#"..task_t[index][real_index][1].."#"..index.."#"..sub_index.."#"..ring.."#1".." *01*��ֱ���콱��>��1��ѭ��ħ��        #IMAGE1902700016#<@accomplish_complete#"..task_t[index][real_index][1].."#"..index.."#"..sub_index.."#"..ring.."#2".." *01*������������>��2��ѭ��ħ��\n"
		msg = msg.."#IMAGE1902700016#<@accomplish_complete#"..task_t[index][real_index][1].."#"..index.."#"..sub_index.."#"..ring.."#3".." *01*������������>��3��ѭ��ħ��        #IMAGE1902700016#<@accomplish_complete#"..task_t[index][real_index][1].."#"..index.."#"..sub_index.."#"..ring.."#4".." *01*���ı�������>��4��ѭ��ħ��"
	else
		msg = msg.."#COLORCOLOR_GREENG#�Ѵ�ɱ��Ҫ�󣬶�����ѭ��ħ��ɻ�౶����#COLOREND#\n \n��ǰ����#COLORCOLOR_PURPLE#��"..(ring).."����#COLOREND#"..task_t[index][sub_index][3]..task_level[sub_index].."����ɸ�����ɻ�ã�\n"
		msg = msg.."���飺"..exp.."            ��ң�"..gold.."\n"
		
		msg = msg.."\n \n#IMAGE1902700016#<@accomplish_complete#"..task_t[index][real_index][1].."#"..index.."#"..sub_index.."#"..ring.."#1".." *01*���������>                     #IMAGE1902700016#<@accomplish_complete#"..task_t[index][real_index][1].."#"..index.."#"..sub_index.."#"..ring.."#2".." *01*������������>��1��ѭ��ħ��\n"
		msg = msg.."#IMAGE1902700016#<@accomplish_complete#"..task_t[index][real_index][1].."#"..index.."#"..sub_index.."#"..ring.."#3".." *01*������������>��2��ѭ��ħ��        #IMAGE1902700016#<@accomplish_complete#"..task_t[index][real_index][1].."#"..index.."#"..sub_index.."#"..ring.."#4".." *01*���ı�������>��3��ѭ��ħ��"
	end
	--msg = msg.."\n \n \n \n#IMAGE1902700016# <@accomplish_complete#"..task_t[index][real_index][1].."#"..index.."#"..sub_index.."#"..ring.." *01*���������>"
	return msg
end

function refresh_accomplish(npc, player, refresh_type, index, sub_index, real_index, ring)
	refresh_type = tonumber(refresh_type)
	index = tonumber(index)
	sub_index = tonumber(sub_index)
	real_index = tonumber(real_index)
	ring = tonumber(ring)

	if refresh_type == refresh_item["Ԫ��"][1] then
        if not lualib:Player_SubIngot(player, refresh_item["Ԫ��"][2], false, "��Ԫ�������������������", "�������") then
            return "����Ԫ�����㣬�޷�ˢ�£�\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>"
        end
    elseif refresh_type == refresh_item["ѭ��ħ��"][1] then
        if not lualib:Player_DestroyItem(player, "ѭ��ħ��", refresh_item["ѭ��ħ��"][2], "ɾ��Ʒ�����������������", "�������") then
            return "����ѭ��ħ���������㣬�޷�ˢ�£�\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>"
        end
    end

	local rnd = lualib:GenRandom(sub_index, #task_t[index])
	lualib:Player_SetCustomVarInt(player, task_var[5], rnd)
	return accomplish_info(npc, player, index, rnd, real_index, ring)
end

function accomplish_complete(npc, player, id, index, sub_index, ring, exp_pct)
	local id = tonumber(id)
	local index = tonumber(index)
	local sub_index = tonumber(sub_index)
	local ring = tonumber(ring)
	local exp_pct = tonumber(exp_pct)
	
	if not lualib:CanAccomplishQuest(player, id) then
		if not lualib:DelItem(player, "ѭ��ħ��", exp_pct , 2, "ɾ��Ʒ�����������������", "�������") then
			return "����ѭ��ħ���������㣬�޷���ɣ�\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>"
		end
		lualib:DropQuest(player, id)
	else
		if exp_pct > 1 then
			if not lualib:DelItem(player, "ѭ��ħ��", exp_pct - 1 , 2, "ɾ��Ʒ�����������������", "�������") then
				return "����ѭ��ħ���������㣬�޷���ɣ�\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>"
			end
		end

		lualib:DropQuest(player, id)
--		if not lualib:CanAccomplishQuest(player, id) then return "����"..task_t[index][sub_index][3]..task_level[sub_index].."��δ��ɣ�\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>" end
--		if not lualib:AccomplishQuest(player, id, 0) then return "����"..task_t[index][sub_index][3]..task_level[sub_index].."�ύʧ�ܣ�\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>" end
	end

	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	local exp = math.floor(color_t[sub_index] * level * level * level * ring_t[ring] / 10) * exp_pct
	local gold = math.floor(((130 * level * level - 5000 * level + 70000) / 300) * 2 * sub_index) * exp_pct
	if not lualib:Player_AddExp(player, exp, "�Ӿ��飺�����������������", "�������" ) then return "�Ӿ���ʧ�ܣ�\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>" end
	if not lualib:Player_AddGold(player, gold, false, "�ӽ�ң������������������", "�������") then return "�ӽ��ʧ�ܣ�\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>" end
	lualib:OnGloryTrigger(player, lua_glory_trigger_taofa, "", 0, "��������", "")
	lualib:SetInt(player, "60011_q", 1)
	return "����"..task_t[index][sub_index][3]..task_level[sub_index].."�ύ�ɹ�����þ��飺"..exp.."����ң�"..gold.."��\n \n \n #IMAGE<ID:1902700016>#<@accept *01*[��ȡ�µ�����]> \n \n                                               #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>"
end


function lingquexp(npc, player)
	 local msg = "����Ѳ⣬��;���ˣ������ˣ�����ҶԻ��������а�����Ŷ��\n"
    msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."��#COLORCOLOR_GRAY#�X�������������[���X�������������[#COLOREND#\n"
	msg = msg.."��#COLORCOLOR_GRAY#��#COLOREND#<@online_exp *01*  ���߾���>#OFFSET<X:-1,Y:0>##COLORCOLOR_GRAY#  ������#COLOREND#<@offline_exp *01*  ���߾���>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#  ����#COLOREND#\n"
	msg = msg.."��#COLORCOLOR_GRAY#�^�������������a���^�������������a#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                                   #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"


	return msg
end

--���߾���-offline_exp

function offline_exp(npc, player)
	local seconds = lualib:Player_GetCustomVarInt(player, "player_total_offline_times")
	local day = math.floor(seconds / 3600 / 24)
	local hour = math.floor((seconds - day * 24 * 3600) / 3600)
	local minute = math.floor((seconds - math.floor(seconds / 3600) * 3600) / 60)
	local second = math.floor(seconds - math.floor(seconds / 60) * 60)

	if seconds < 3600 then
		return "����"..minute.."����"..second.."������߾���ʱ�䣬����#COLORCOLOR_RED#1Сʱ#COLOREND#�޷���ȡ��\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	end

	local msg = "#OFFSET<X:0,Y:5>#  #COLORCOLOR_RED#��������ʱ�䣺#COLOREND##COLORCOLOR_ORANGE#����"..day.."��"..hour.."Сʱ"..minute.."����"..second.."������߾���ʱ�䣡#COLOREND##OFFSET<X:0,Y:-5>#\n"
	msg = msg.."#OFFSET<X:0,Y:10>#  #COLORCOLOR_RED#������ȡʱ�䣺#COLOREND##COLORCOLOR_ORANGE#�������ȡ"..math.floor(seconds / 3600).."#COLORCOLOR_ORANGE#Сʱ�����߾��飡#COLOREND##OFFSET<X:0,Y:-10>#\n \n"
     msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	--msg = msg.."��#COLORCOLOR_GRAY#�X�������������[���X�������������[#COLOREND#\n"
    --msg = msg.."��#COLORCOLOR_GRAY#��#COLOREND#<@exp_award#2#"..math.floor(seconds / 3600).." *01*�������ȡ��>#OFFSET<X:-1,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@main *01*��������ҳ��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#��#COLOREND#\n"
	--msg = msg.."��#COLORCOLOR_GRAY#�^�������������a���^�������������a#COLOREND#\n"
    msg = msg.."��#COLORCOLOR_GRAY#�X�������������[���X�������������[���X�������������[#COLOREND#\n"
    msg = msg.."��#COLORCOLOR_GRAY#��#COLOREND#<@exp_award#1#"..math.floor(seconds / 3600).." *01*����ͨ��ȡ��>#OFFSET<X:-1,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@exp_award#2#"..math.floor(seconds / 3600).." *01*�������ȡ��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@main *01*��������ҳ��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#��#COLOREND#\n"
	msg = msg.."��#COLORCOLOR_GRAY#�^�������������a���^�������������a���^�������������a#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"

	return msg
end

function exp_award(npc, player, index, hours)
	index = tonumber(index)
	hours = tonumber(hours)

	local require_level = 15

	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < require_level then return "��ĵȼ�����"..require_level.."�����޷���ȡ��\n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*�����ء�>" end

	local exps, golds, ingots, msg = 0, 0, 0, ""
	if index == 1 then
		exps = math.floor(hours * level_gold_exp_t[level][2] * 12 / 1000)
		msg = msg.."�㽫��ȡ#COLORCOLOR_RED#"..exps.."#COLOREND#���飡ȷ��Ҫ��ȡô��\n \n"
	elseif index == 2 then
		exps, golds = math.floor(hours * level_gold_exp_t[level][2] * 6 / 100), math.floor(hours * level_gold_exp_t[level][1] * 3 /80)
		msg = msg.."�㽫��ȡ#COLORCOLOR_RED#"..exps.."#COLOREND#���飬ͬʱ������#COLORCOLOR_GOLD#"..golds.."#COLOREND#��ң�ȷ��Ҫ��ȡô��\n \n \n \n \n"
	elseif index == 3 then
		exps, ingots = math.floor(hours * level_gold_exp_t[level][2] / 10), (hours * 10)
		msg = msg.."�㽫��ȡ#COLORCOLOR_RED#"..exps.."#COLOREND#���飬ͬʱ������#COLORCOLOR_GOLD#"..ingots.."#COLOREND#Ԫ����ȷ��Ҫ��ȡô��\n \n \n \n \n"
	else
		return "ϵͳ����\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*�����ء�>"
	end

	msg = msg.."#OFFSET<X:0,Y:-2>##IMAGE1902700033##OFFSET<X:0,Y:-1>#<@add_exp_award#"..exps.."#"..golds.."#"..ingots.."#"..hours.." *01*ȷ��>\n \n#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*�����ء�>"
	return msg
end

function add_exp_award(npc, player, exps, golds, ingots, hours)
	exps = tonumber(exps)
	golds = tonumber(golds)
	ingots = tonumber(ingots)
	hours = tonumber(hours)

	if not lualib:Player_IsGoldEnough(player, golds, false) then return "��Ľ�Ҳ���"..golds.."��\n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*�����ء�>" end
	if not lualib:Player_IsIngotEnough(player, ingots, false) then return "���Ԫ������"..ingots.."��\n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*�����ء�>" end

	if not lualib:Player_SubGold(player, golds, false, "�۽�ң�����������߾���", "�������") then return "�۳���ҳ���\n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*�����ء�>" end
	if not lualib:Player_SubIngot(player, ingots, false, "��Ԫ��������������߾���", "�������") then return "�۳�Ԫ������\n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*�����ء�>" end

	lualib:Player_SetCustomVarInt(player, "player_total_offline_times", lualib:Player_GetCustomVarInt(player, "player_total_offline_times") - hours * 3600)

	if not lualib:Player_AddExp(player, exps, "�Ӿ��飺����������߾���", "�������") then return "�����������\n \n \n \n \n \n#IMAGE1902700019#<@offline_exp *01*�����ء�>" end
	lingqujingyan_xianshi(player) --��ȡ����ͼ���Ƿ���ʾ
	return "���ѻ��"..exps.."���飡\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
end

--���߾���-online_exp

function online_exp(npc, player)
	--local seconds = lualib:Player_GetCustomVarInt(player, "player_total_offline_times")
	local seconds;
	local current_time = lualib:GetTime()
	local last_login_time = lualib:LoginTime(player)
	local last_award_time = lualib:Player_GetCustomVarInt(player, "last_award_time")

	if last_award_time > last_login_time then
	    seconds = current_time - last_award_time
	else
	    seconds = current_time - last_login_time
	end

	local day = math.floor(seconds / 3600 / 24)
	local hour = math.floor((seconds - day * 24 * 3600) / 3600)
	local minute = math.floor((seconds - math.floor(seconds / 3600) * 3600) / 60)
	local second = math.floor(seconds - math.floor(seconds / 60) * 60)

	if seconds < 3600 then
		return "����"..minute.."����"..second.."������߾���ʱ�䣬����#COLORCOLOR_RED#1Сʱ#COLOREND#�޷���ȡ��\n \n \n \n \n \n \n                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingquexp *01*�����ء�>"
	end

	local msg = "#OFFSET<X:0,Y:5>#  #COLORCOLOR_RED#��������ʱ�䣺#COLOREND##COLORCOLOR_ORANGE#����"..day.."��"..hour.."Сʱ"..minute.."����"..second.."������߾���ʱ�䣡#COLOREND##OFFSET<X:0,Y:-5>#\n"
	msg = msg.."#OFFSET<X:0,Y:10>#  #COLORCOLOR_RED#������ȡʱ�䣺#COLOREND##COLORCOLOR_ORANGE#�������ȡ"..math.floor(seconds / 3600).."#COLORCOLOR_ORANGE#Сʱ�����߾��飡#COLOREND##OFFSET<X:0,Y:-10>#\n \n"
    msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	--msg = msg.."��#COLORCOLOR_GRAY#�X�������������[���X�������������[#COLOREND#\n"
	--msg = msg.."��#COLORCOLOR_GRAY#��#COLOREND#<@exp_awardonline#2#"..math.floor(seconds / 3600).." *01*�������ȡ��>#OFFSET<X:-1,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@main *01*��������ҳ��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#��#COLOREND#\n"
	--msg = msg.."��#COLORCOLOR_GRAY#�^�������������a���^�������������a#COLOREND#\n"
    msg = msg.."��#COLORCOLOR_GRAY#�X�������������[���X�������������[���X�������������[#COLOREND#\n"
	msg = msg.."��#COLORCOLOR_GRAY#��#COLOREND#<@exp_awardonline#1#"..math.floor(seconds / 3600).." *01*����ͨ��ȡ��>#OFFSET<X:-1,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@exp_awardonline#2#"..math.floor(seconds / 3600).." *01*�������ȡ��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@main *01*��������ҳ��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#��#COLOREND#\n"
	msg = msg.."��#COLORCOLOR_GRAY#�^�������������a���^�������������a���^�������������a#COLOREND#\n"
     msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"

	return msg
end

function exp_awardonline(npc, player, index, hours)
	index = tonumber(index)
	hours = tonumber(hours)

	local require_level = 15

	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < require_level then return "��ĵȼ�����"..require_level.."�����޷���ȡ��\n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*�����ء�>" end

	local exps, golds, ingots, msg = 0, 0, 0, ""
	if index == 1 then
		exps = math.floor(hours * level_gold_exp_t[level][2] * 3 / 100)
		msg = msg.."�㽫��ȡ#COLORCOLOR_RED#"..exps.."#COLOREND#���飡ȷ��Ҫ��ȡô��\n \n"
	elseif index == 2 then
		exps, golds = math.floor(hours * level_gold_exp_t[level][2] / 10), math.floor(hours * level_gold_exp_t[level][1] * 3 /80)
		msg = msg.."�㽫��ȡ#COLORCOLOR_RED#"..exps.."#COLOREND#���飬ͬʱ������#COLORCOLOR_GOLD#"..golds.."#COLOREND#��ң�ȷ��Ҫ��ȡô��\n \n \n \n \n"
	elseif index == 3 then
		exps, ingots = math.floor(hours * level_gold_exp_t[level][2] / 5), (hours * 10)
		msg = msg.."�㽫��ȡ#COLORCOLOR_RED#"..exps.."#COLOREND#���飬ͬʱ������#COLORCOLOR_GOLD#"..ingots.."#COLOREND#Ԫ����ȷ��Ҫ��ȡô��\n \n \n \n \n"
	else
		return "ϵͳ����\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*�����ء�>"
	end

	msg = msg.."#OFFSET<X:0,Y:-2>##IMAGE1902700033##OFFSET<X:0,Y:-1>#<@add_exp_awardonline#"..exps.."#"..golds.."#"..ingots.."#"..hours.." *01*��ȷ����>\n \n#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*�����ء�>"
	return msg
end


function add_exp_awardonline(npc, player, exps, golds, ingots, hours)
	exps = tonumber(exps)
	golds = tonumber(golds)
	ingots = tonumber(ingots)
	hours = tonumber(hours)

	if not lualib:Player_IsGoldEnough(player, golds, false) then return "��Ľ�Ҳ���"..golds.."��\n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*�����ء�>" end
	if not lualib:Player_IsIngotEnough(player, ingots, false) then return "���Ԫ������"..ingots.."��\n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*�����ء�>" end

	if not lualib:Player_SubGold(player, golds, false, "�۽�ң�����������߾���", "�������") then return "�۳���ҳ���\n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*�����ء�>" end
	if not lualib:Player_SubIngot(player, ingots, false, "��Ԫ��������������߾���", "�������") then return "�۳�Ԫ������\n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*�����ء�>" end

	--lualib:Player_SetCustomVarInt(player, "player_total_offline_times", lualib:Player_GetCustomVarInt(player, "player_total_offline_times") - hours * 3600)

	if not lualib:Player_AddExp(player, exps, "�Ӿ��飺����������߾���", "�������") then return "�����������\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*�����ء�>" end
	lualib:Player_SetCustomVarInt(player, "last_award_time", lualib:GetTime())
    lualib:OnGloryTrigger(player, lua_glory_trigger_offline_exp, "", exps, "���߾���", "")
	lingqujingyan_xianshi(player) --��ȡ����ͼ���Ƿ���ʾ
	return "���ѻ��"..exps.."���飡\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
end


-------1014��
function QuestAccomplish1014(npc, player)
    msg = "�������ã���ҹ�ǳ�ͻ�䣬�¹��첷�ԣ���Ϥ�����֪[����֮��ͼ]��ʧ��磬���Թ�����������Ǵ�������Щ���������ܵ���Щ������Ӱ�춼�����ˡ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1014 *01* �⿪ԭ���ˣ�>\n"
    return msg
end

function Accomplish1014(npc, player)
    if lualib:AccomplishQuest(player, 1014, 0) == true then
        msg = "��֪������ش�½����һ�������װ��������֮����ܷ���ǿ���������\n \n"
		msg = msg.."#IMAGE1902700017#<@QuestAccept1015 *01* �õģ���ȡ�����˽���װ>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

--------1015��
function QuestAccept1015(npc,player)
    msg = "��������װ�����������󣬺ܶ඼��ǿ�����ħ�����ơ�\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1015 *01* ��Ը����ǰ������>\n"
	return msg
end

function Accept1015(npc, player)
    if lualib:AcceptQuest(player, 1015) == true then
		msg = "���#COLORCOLOR_GREENG# #NPCLINK<STR:�������,NPCID:25001>##COLOREND#�������\n \n"
		msg = msg.."#IMAGE1902700017#<@QuestAccomplish1015 *01* �������>\n"
        return msg
    else
        return "�����ȡʧ��"
    end
end

-------1015��
function QuestAccomplish1015(npc, player)
    msg = "�������õ�ǿ���������ȥ�ռ���װ�ɣ�������������벻����������\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1015 *01* лл���������Щ��>\n"
    return msg
end

function Accomplish1015(npc, player)
    if lualib:AccomplishQuest(player, 1015, 0) == true then
        msg = "��һ��Ҫ�ú������������������ܵ�����������֣�ȥ��װ����ʦ�˽�װ��������\n \n"
		msg = msg.."#IMAGE1902700017#<@QuestAccept1017 *01* ֪���ˣ���ȡ���񣺾���>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

--[[
--------1016��
function QuestAccept1016(npc,player)
    msg = "Ҫ����ʵ������õķ������Ǵ��������Լ���װ������һ���㵹�ǿ���ȥװ����ʦ���˽���ϸ���\n \n"
	msg = msg.."<@Accept1016 *01* ȥ��װ����ʦ>\n"
	return msg
end

function Accept1016(npc, player)
    if lualib:AcceptQuest(player, 1016) == true then
        return "ȥװ����ʦ���˽�װ���Ĵ���"
    else
        return "�����ȡʧ��"
    end
end
]]--

--------1017��
function QuestAccept1017(npc,player)
    msg = "����õ���װ�������뽫װ��������һ�����Σ�����ȥװ����ʦ��������װ��������\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1017 *01* ȥ��װ����ʦ>\n"
	return msg
end

function Accept1017(npc, player)
    if lualib:AcceptQuest(player, 1017) == true then
        return "ȥ��#COLORCOLOR_GREENG# #NPCLINK<STR:װ����ʦ,NPCID:1004>##COLOREND#�˽⾫�����顣"
    else
        return "�����ȡʧ��"
    end
end


--------3001��

function QuestAccept3001(npc,player)
    msg = "��Ҫ������԰���͵ñ�ĸ�ǿ�����Ƿ�Ը�������ս��\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept3001a *01* ��Ҫ��ǿ>\n"
	return msg
end

function Accept3001a(npc,player)
    msg = "�õģ���Ȼ���������ľ��������ȥ������������ͷ�������������ô����\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept3001b *01* �õģ������ȥ>\n"
	return msg
end

function Accept3001b(npc, player)
    if lualib:AcceptQuest(player, 3001) == true then
        return "ȥ������#COLORCOLOR_GREENG# #NPCLINK<STR:������ͷ,NPCID:30006>##COLOREND#"
    else
        return "�����ȡʧ��"
    end
end
--------3003��

function QuestAccept3003(npc,player)
    msg = "��ͯ��������ѷ죬С��Я���Ŵ����ı�����ѷ����ӵ��������ض��У���֮�����������ħ��\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept3003a *01* �б������ȥ����>\n"
	return msg
end

function Accept3003a(npc,player)
    msg = "�����ȥ����Ѱ�Һ�ͯ��С��\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept3003b *01* �õģ������ȥ>\n"
	return msg
end

function Accept3003b(npc, player)
    if lualib:AcceptQuest(player, 3003) == true then
        return "ȥ�����Һ�ͯ��С��"
    else
        return "�����ȡʧ��"
    end
end

--------3005��
function QuestAccept3005(npc,player)
    msg = "��ʧ����Ķ�ħ��½��Ư���������������ˣ���Ԥʾ��Σ���������ٵ�����ͷ�ϣ�\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept3005a *01* ����ô������>\n"
	return msg
end

function Accept3005a(npc,player)
    msg = "С���ӣ�������һ�㶼�����İ�����ȥ�����ǵ�ͨ��ʦ�˽������\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept3005b *01* �õģ������Ұ�>\n"
	return msg
end

function Accept3005b(npc, player)
    if lualib:AcceptQuest(player, 3005) == true then
        return "ȥ������ͨ��ʦ"
    else
        return "�����ȡʧ��"
    end
end

--------3007��
function QuestAccept3007(npc,player)
    msg = "���ݴ�½���ڻ�ٰ�����������������������ո¶ͷ�ǣ���������ĺû��ᡣ��ȥ����ݽ����˽������\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept3007 *01* ����μ�>\n"
	return msg
end


function Accept3007(npc, player)
    if lualib:AcceptQuest(player, 3007) == true then
        return "ȥ��ɽ������ݽ����˽����µ�һս"
    else
        return "�����ȡʧ��"
    end
end

--------3008��
function QuestAccept3008(npc,player)
    msg = "��Ҫͻ���𣬲��������ս�Ե�ս����ȥ�����ҿ�����ս��\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept3008 *01* �����ȥ>\n"
	return msg
end


function Accept3008(npc, player)
    if lualib:AcceptQuest(player, 3008) == true then
        return "ȥ�����ҿ�����ս"
    else
        return "�����ȡʧ��"
    end
end

-------2001��
function QuestAccept2001(npc,player)
    msg = "һ������ʤ���ˣ��˻�һ�㲻�٣��������˽���ͳ��ʮ��������ڽ�ʿ�����������߽�������������Ĺڣ��������ǰ����������������Ÿ�������һ����Ϣ�Ļ��ᣬ����ǽ���ڣ����������\n \n"
	msg = msg.."#IMAGE1902700017#<@j2001a *01*����ڣԭ�����������ǵ��������ɣ��������������ȷ����� >\n"
	return msg
end


function j2001a(npc,player)
    msg = "���֪�����㽲����µ�ԭ����\n \n"
	msg = msg.."#IMAGE1902700017#<@j2001b *01*��֪������ǰ���ͽ� >\n"
	return msg
end

function j2001b(npc,player)
    msg = "����񣬶�������������裬����ڣ�ڵ������ƺ����ӳ�����������ȱ���������ս�ľ��飬����֮������ȥ����ڣ��ѹס��Щ����ӵ�20ֻ���ã�\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept2001 *01*�ã�ȥ����ڣɱ20ֻ���� >\n"
	return msg
end





function Accept2001(npc, player)
    if lualib:AcceptQuest(player, 2001) == true then
        return "ȥ#COLORCOLOR_GREENG##LINK<MAP:����ڣ1,POSX:128,POSY:39,STR:����ڣ>##COLOREND#ɱ20ֻ�������ã�"
    else
        return "�����ȡʧ��"
    end
end

-------2001��
function QuestAccomplish2001(npc, player)
    msg = "�ҿ���ȥ�ļ�ʱ�����ڽ���ڣ����ƽϢ�����Ƿ������Ǳ�Ҳ������ͬ������״����\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2001 *01* �����Ұ�>\n"
    return msg
end

function Accomplish2001(npc, player)
    if lualib:AccomplishQuest(player, 2001, 0) == true then
        msg = "���Ĳ��������㻹�ǵö�Ӷ���������ȥ������ɱ20ֻ��ʬ��\n \n"
		msg = msg.."#IMAGE1902700017#<@Accept2002 *01*û���⣬�����ȥ>\n"
		return msg
    else
        msg = "����ʧ�ܣ���ɱ��20ֻ��������\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end

-------2002��
function QuestAccept2002(npc,player)
    msg = "�����󶴱���һƬ��Ȼ�Ŀ󶴣����Ǵ������ھ��ʯ����ұ����Ȼ����һ���ºڷ�ߵ����ϣ�ħ��ͻȻ�ӿ󶴵ײ����˳���������Ͷ���˴��������ߣ����������ȫ����Ⱦ��\n \n"
	msg = msg.."#IMAGE1902700017#<@j2002a *01*���߸�Ⱦ�˷����󶴵��ˣ� >\n"
	return msg
end


function j2002a(npc,player)
    msg = "�ţ���Щ���������Ǳ���Ⱦ�󣬲�û��������������Ϊ��ħ�˵Ŀ��ܣ�ɥʧ��������ʶ���������ʬ���⡣���ǵ��������˸���Թ���ͱ��ߣ����ֱ������Ѿ�����Ӱ�쵽�˻����ǵ����ǡ����������������ֱ����������Ƕ���ʧ�أ�����ȥ������ƽϢ20ֻ��ʬ��Թ���ɣ�\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept2002 *01*ȥ������ƽϢ20ֻ��ʬ��Թ�� >\n"
	return msg
end





function Accept2002(npc, player)
    if lualib:AcceptQuest(player, 2002) == true then
        return "ȥ#COLORCOLOR_GREENG##LINK<MAP:��ɽ��,POSX:22,POSY:94,STR:������>##COLOREND#ɱ20ֻ���⽩ʬ��"
    else
        return "�����ȡʧ��"
    end
end

-------2002��
function QuestAccomplish2002(npc, player)
    msg = "�����������£������󶴵�Թ����Ȼ���㻯���ˡ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2002 *01* С��˼>\n"
    return msg
end

function Accomplish2002(npc, player)
    if lualib:AccomplishQuest(player, 2002, 0) == true then
        msg = "�����ħ��������ƺ������춯����Ͻ�ȥ�����ǵķ�ħ����·ʹ���˽������\n \n"
		msg = msg.."#IMAGE1902700017#<@Accept1023 *01*�õģ������ȥ>\n"
		return msg
    else
        msg = "����ʧ�ܣ���ɱ��20ֻ��ʬ����\n \n"
		msg = msg.."<@Lever *01*��֪����>\n"
		return msg
    end
end


----1022��
function QuestAccomplish1022(npc, player)
    msg = "�����������������������ɳ���\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1022 *01* ��֪����>\n"
    return msg
end


function Accomplish1022(npc, player)
    if lualib:AccomplishQuest(player, 1022, 0) == true then
        msg = "���ˣ��鷳��ȥ����ڣһ�ˣ�����������ִ��������������ȥ��ѵһ���������¡�\n \n"
		msg = msg.."#IMAGE1902700017#<@Accept2001 *01* �õ�>"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*����֪���ˣ����Ժ��ȥ>\n"
		return msg
    end
end

-------1023��
function QuestAccept1023(npc,player)
    msg = "��Щ��ӡ�������ƺ������춯����Ͻ�ȥ�����ǵķ�ħ����·ʹ���˽������\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1023 *01* �õ�>\n"
	return msg
end


function Accept1023(npc, player)
    if lualib:AcceptQuest(player, 1023) == true then
		msg = "ȥ�����ҷ�ħ����·��\n \n"
		msg = msg.."#IMAGE1902700017#<@MapMoveXYB#����#238#238#1 *01*����ȥ�ҷ�ħ����·��> \n"
        return msg
    else
        return "�����ȡʧ��"
    end
end


----1027��
function QuestAccomplish1027(npc, player)
    msg = "��������֮�꿴�����������������ˣ�ʵ��̫���˸����ˣ��Ժ��������Ϳ����ˡ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1027 *01* ��������>\n"
    return msg
end


function Accomplish1027(npc, player)
    if lualib:AccomplishQuest(player, 1027, 0) == true then
        msg = "���ˣ���μӻ�������з��Ľ��������еع�����ħҲ�������������С�������\n \n"
		msg = msg.."#IMAGE1902700017#<@accept_task *01* ��֪����,�Ժ�������Ϳ��ҵİɣ�>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@Lever *01*����֪���ˣ����Ժ��ȥ>\n"
		return msg
    end
end


---2005��
function QuestAccept2005(npc,player)
    msg = "�����˵��·���⵽ţħ����Ľ�����ȥ��·�ǰ������������ħ�ɡ�\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept2005 *01* ��������>\n"
	return msg
end


function Accept2005(npc, player)
    if lualib:AcceptQuest(player, 2005) == true then
        return "��·������ʮ��Σ�գ������С�ģ�"
    else
        return "��26���������Ұ�"
    end
end


---2005��
function QuestAccomplish2005(npc, player)
    msg = "���Ѿ������·�ǵ�ţħ�ˣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2005 *01* ��������ţħ������������>\n"
    return msg
end

function Accomplish2005(npc, player)
    if lualib:AccomplishQuest(player, 2005, 0) == true then
        msg = "���ĺã���������Ӧ���ܹ��Ѿ�·�Ƕ�����ˣ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*̫����>\n"
		return msg
    else
        msg = "����ʧ�ܣ�����ܹ�������\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end

---2006��
function QuestAccomplish2006(npc, player)
    msg = "���Ѿ������·�ǵĺ���ţħ�ˣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2006 *01* ��������ţħ������������>\n"
    return msg
end

function Accomplish2006(npc, player)
    if lualib:AccomplishQuest(player, 2006, 0) == true then
        msg = "���ĺã���������Ӧ���ܹ��Ѿ�·�Ƕ�����ˣ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*̫����>\n"
		return msg
    else
        msg = "����ʧ�ܣ�����ܹ�������\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end

---2007��
function QuestAccomplish2007(npc, player)
    msg = "���Ѿ������·�ǵĺ���ţħ�ˣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2007 *01* ��������ţħ������������>\n"
    return msg
end

function Accomplish2007(npc, player)
    if lualib:AccomplishQuest(player, 2007, 0) == true then
        msg = "���ĺã���������Ӧ���ܹ��Ѿ�·�Ƕ�����ˣ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*̫����>\n"
		return msg
    else
        msg = "����ʧ�ܣ�����ܹ�������\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end

---2008��
function QuestAccomplish2008(npc, player)
    msg = "���Ѿ������·�ǵ�ţħ�����ˣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2008 *01* ��������ţħ������������>\n"
    return msg
end

function Accomplish2008(npc, player)
    if lualib:AccomplishQuest(player, 2008, 0) == true then
        msg = "���ĺã���������Ӧ���ܹ��Ѿ�·�Ƕ�����ˣ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*̫����>\n"
		return msg
    else
        msg = "����ʧ�ܣ�����ܹ�������\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end


---2009��
function QuestAccept2009(npc,player)
    msg = "�����˵��ɽ��Ѩ�����˴������ȥ��ɽ��Ѩ��˹���ɡ�\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept2009 *01* ��������>\n"
	return msg
end


function Accept2009(npc, player)
    if lualib:AcceptQuest(player, 2009) == true then
        return "��ɽ��Ѩ����ʮ��Σ�գ������С�ģ�"
    else
        return "��29���������Ұ�"
    end
end


---2009��
function QuestAccomplish2009(npc, player)
    msg = "���Ѿ�������ɽ��Ѩ�Ĺ����ˣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2009 *01* ��������������������>\n"
    return msg
end

function Accomplish2009(npc, player)
    if lualib:AccomplishQuest(player, 2009, 0) == true then
        msg = "���ĺã�������ɽ��ѨӦ�ð�ȫ�ˣ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*̫����>\n"
		return msg
    else
        msg = "����ʧ�ܣ�����ܹ�������\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end

---2010��
function QuestAccomplish2010(npc, player)
    msg = "���Ѿ�������ɽ��Ѩ��ʬū�ˣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2010 *01* ��������ʬū������������>\n"
    return msg
end

function Accomplish2010(npc, player)
    if lualib:AccomplishQuest(player, 2010, 0) == true then
        msg = "���ĺã�������ɽ��ѨӦ�ð�ȫ�ˣ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*̫����>\n"
		return msg
    else
        msg = "����ʧ�ܣ������ʬū����\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end


---2011��
function QuestAccomplish2011(npc, player)
    msg = "���Ѿ�������ɽ��Ѩ�Ĺ���๤�ˣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2011 *01* �����������๤������������>\n"
    return msg
end

function Accomplish2011(npc, player)
    if lualib:AccomplishQuest(player, 2011, 0) == true then
        msg = "���ĺã�������ɽ��ѨӦ�ð�ȫ�ˣ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*̫����>\n"
		return msg
    else
        msg = "����ʧ�ܣ�����ܹ���๤����\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end


---2012��
function QuestAccomplish2012(npc, player)
    msg = "���Ѿ�������ɽ��Ѩ������๤�ˣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2012 *01* ������������๤������������>\n"
    return msg
end

function Accomplish2012(npc, player)
    if lualib:AccomplishQuest(player, 2012, 0) == true then
        msg = "���ĺã�������ɽ��ѨӦ�ð�ȫ�ˣ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*̫����>\n"
		return msg
    else
        msg = "����ʧ�ܣ����������๤����\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end


---2013��
function QuestAccomplish2013(npc, player)
    msg = "���Ѿ�������ɽ��Ѩ�ľ��ʬū�ˣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2013 *01* ����������ʬū������������>\n"
    return msg
end

function Accomplish2013(npc, player)
    if lualib:AccomplishQuest(player, 2013, 0) == true then
        msg = "���ĺã�������ɽ��ѨӦ�ð�ȫ�ˣ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*̫����>\n"
		return msg
    else
        msg = "����ʧ�ܣ�����ܾ��ʬū����\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end


---2014��
function QuestAccept2014(npc,player)
    msg = "�����˵������⵽�������Ľ�����ȥ�������˹���ɡ�\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept2014 *01* ��������>\n"
	return msg
end


function Accept2014(npc, player)
    if lualib:AcceptQuest(player, 2014) == true then
        return "���������ʮ��Σ�գ������С�ģ�"
    else
        return "��32���������Ұ�"
    end
end


---2014��
function QuestAccomplish2014(npc, player)
    msg = "���Ѿ����������Ĺ����ˣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2014 *01* ��������������������>\n"
    return msg
end

function Accomplish2014(npc, player)
    if lualib:AccomplishQuest(player, 2014, 0) == true then
        msg = "���ĺã���������Ӧ���ܹ�������������ˣ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*̫����>\n"
		return msg
    else
        msg = "����ʧ�ܣ�����ܹ�������\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end


---2015��
function QuestAccomplish2015(npc, player)
    msg = "���Ѿ����������ľ޶��ˣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2015 *01* ��������޶꣬����������>\n"
    return msg
end

function Accomplish2015(npc, player)
    if lualib:AccomplishQuest(player, 2015, 0) == true then
        msg = "���ĺã���������Ӧ���ܹ�������������ˣ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*̫����>\n"
		return msg
    else
        msg = "����ʧ�ܣ�����ܾ޶�����\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end


---2016��
function QuestAccomplish2016(npc, player)
    msg = "���Ѿ����������������ˣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2016 *01* �����������ޣ�����������>\n"
    return msg
end

function Accomplish2016(npc, player)
    if lualib:AccomplishQuest(player, 2016, 0) == true then
        msg = "���ĺã���������Ӧ���ܹ�������������ˣ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*̫����>\n"
		return msg
    else
        msg = "����ʧ�ܣ��������������\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end


---2017��
function QuestAccomplish2017(npc, player)
    msg = "���Ѿ�����������ɳʯħ�ˣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2017 *01* ��������ɳʯħ������������>\n"
    return msg
end

function Accomplish2017(npc, player)
    if lualib:AccomplishQuest(player, 2017, 0) == true then
        msg = "���ĺã���������Ӧ���ܹ�������������ˣ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*̫����>\n"
		return msg
    else
        msg = "����ʧ�ܣ������ɳʯħ����\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end


---2018��
function QuestAccomplish2018(npc, player)
    msg = "���Ѿ�����������ɢ���ˣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2018 *01* ��������ɢ��������������>\n"
    return msg
end

function Accomplish2018(npc, player)
    if lualib:AccomplishQuest(player, 2018, 0) == true then
        msg = "���ĺã���������Ӧ���ܹ�������������ˣ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*̫����>\n"
		return msg
    else
        msg = "����ʧ�ܣ������ɢ������\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end


---2019��
function QuestAccept2019(npc,player)
    msg = "�����˵���а����ִ�Ⱥа��ͽ��ȥ���а�������Ща��ͽ�ɡ�\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept2019 *01* ��������>\n"
	return msg
end


function Accept2019(npc, player)
    if lualib:AcceptQuest(player, 2019) == true then
        return "���а������ʮ��Σ�գ������С�ģ�"
    else
        return "��35���������Ұ�"
    end
end


---2019��
function QuestAccomplish2019(npc, player)
    msg = "���Ѿ��������а���а��ͽ�ˣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2019 *01* ��������а��ͽ������������>\n"
    return msg
end

function Accomplish2019(npc, player)
    if lualib:AccomplishQuest(player, 2019, 0) == true then
        msg = "���ĺã����°���Ӧ�ò������ܵ�а�̵������ˣ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*̫����>\n"
		return msg
    else
        msg = "����ʧ�ܣ�����ܹ�������\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end

---2020��
function QuestAccomplish2020(npc, player)
    msg = "���Ѿ��������а�����ԭ��ʿ�ˣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2020 *01* ����������ԭ��ʿ������������>\n"
    return msg
end

function Accomplish2020(npc, player)
    if lualib:AccomplishQuest(player, 2020, 0) == true then
        msg = "���ĺã����°���Ӧ�ò������ܵ�а�̵������ˣ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*̫����>\n"
		return msg
    else
        msg = "����ʧ�ܣ��������ԭ��ʿ����\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end


---2021��
function QuestAccomplish2021(npc, player)
    msg = "���Ѿ��������а���ҹ��ɮ�ˣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2021 *01* ��������ҹ��ɮ������������>\n"
    return msg
end

function Accomplish2021(npc, player)
    if lualib:AccomplishQuest(player, 2021, 0) == true then
        msg = "���ĺã����°���Ӧ�ò������ܵ�а�̵������ˣ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*̫����>\n"
		return msg
    else
        msg = "����ʧ�ܣ������ҹ��ɮ����\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end



---2022��
function QuestAccomplish2022(npc, player)
    msg = "���Ѿ��������а�����ԭ��ʿ�ˣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2022 *01* ����������ԭ��ʿ������������>\n"
    return msg
end

function Accomplish2022(npc, player)
    if lualib:AccomplishQuest(player, 2022, 0) == true then
        msg = "���ĺã����°���Ӧ�ò������ܵ�а�̵������ˣ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*̫����>\n"
		return msg
    else
        msg = "����ʧ�ܣ��������ԭ��ʿ����\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end


---2023��
function QuestAccomplish2023(npc, player)
    msg = "���Ѿ��������а��Ĺ��������ˣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2023 *01* ��������������ߣ�����������>\n"
    return msg
end

function Accomplish2023(npc, player)
    if lualib:AccomplishQuest(player, 2023, 0) == true then
        msg = "���ĺã����°���Ӧ�ò������ܵ�а�̵������ˣ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*̫����>\n"
		return msg
    else
        msg = "����ʧ�ܣ�����ܹ�����������\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end


---2024��
function QuestAccomplish2024(npc, player)
    msg = "���Ѿ��������а�����ԭ��ʿ�ˣ�\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2024 *01* ����������ԭ��ʿ������������>\n"
    return msg
end

function Accomplish2024(npc, player)
    if lualib:AccomplishQuest(player, 2024, 0) == true then
        msg = "���ĺã����°���Ӧ�ò������ܵ�а�̵������ˣ�\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*̫����>\n"
		return msg
    else
        msg = "����ʧ�ܣ��������ԭ��ʿ����\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end



---����

function MapMoveXYB(npc, player, map_key_name, x, y, r)
	local msg=""
	gold = 0
	if not lualib:Player_SubGold(player, gold, false, "�۳���ң����ͷ�����", "��ɣ�崫��") then return "��Ľ�Ҳ��㣬���ܴ��ͣ�" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "����ͼʧ��"
    end
	return msg
end

--�ۻ�ǩ��

function qiandao(npc, player)
	local msg = ""
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE<ID:1902700017>##OFFSET<X:0,Y:-2># <@qiandao_q *01*[ǩ��]>"
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE<ID:1902700017>##OFFSET<X:0,Y:-2># <@qiandao_j *01*[�콱]>"
	
    return msg
end

function qiandao_q(npc, player)
	local msg = ""
	local qiandao_day = lualib:GetDayInt(player, "qiandao_day")
	local qiandao_ci = lualib:GetInt(player, "qiandao_ci")
	if qiandao_day >= 1 then
		return "������Ѿ�ǩ�����ˣ�"
	else
		lualib:SetDayInt(player, "qiandao_day", qiandao_day + 1)
		lualib:SetInt(player, "qiandao_ci", qiandao_ci + 1)
		local xzcishu = qiandao_ci + 1
		return "ǩ���ɹ������Ѿ��ۻ�ǩ��"..xzcishu.."���ˣ����ͣ�"
	end
    return msg
end

function qiandao_j(npc, player)
	local msg = ""
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE<ID:1902700017>##OFFSET<X:0,Y:-2># <@qiandao_jl#3 *01*[��½3�콱��]>\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE<ID:1902700017>##OFFSET<X:0,Y:-2># <@qiandao_jl#6 *01*[��½6�콱��]>\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE<ID:1902700017>##OFFSET<X:0,Y:-2># <@qiandao_jl#9 *01*[��½9�콱��]>\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE<ID:1902700017>##OFFSET<X:0,Y:-2># <@qiandao_jl#11 *01*[��½11�콱��]>\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE<ID:1902700017>##OFFSET<X:0,Y:-2># <@qiandao_jl#15 *01*[��½15�콱��]>\n"
	
    return msg
end

local qiandao_item =
{
		["3"]  =  {"ѭ��ħ��", 5},
		["6"]  =  {"ѭ��ħ��", 5},
		["9"]  =  {"������", 3},
		["11"] =  {"��λʯ", 1},
		["15"] =  {"��ң��(100��)", 1}
	
}


function qiandao_jl(npc, player, num)
	local msg = ""
	local qiandao_ci = lualib:GetInt(player, "qiandao_ci")

	if qiandao_ci == tonumber(num) then
		
		for k, v in pairs(qiandao_item) do
			if qiandao_ci == tonumber(k) then
				local qdlj_bl = lualib:GetInt(player, "qdlj_bl"..num)
				if qdlj_bl >= 1 then
					return "���Ѿ���ȡ����������ˣ�"
				else
					lualib:SetInt(player, "qdlj_bl"..num, qdlj_bl + 1)
					if not lualib:AddItem(player, v[1], v[2], true, "�ۻ�ǩ��", player) then
						return "������ȡʧ�ܣ�����ϵ�ͷ��˹���ȡ��"
					end
				end
			end
		end
		
	else
		return "��ǩ������������"..num.."�죬�޷���ȡ������ǩ����"
	
	end
	
	
	
    return msg
end



function days_task(npc, player)
	local task_Color_xs =
	{
		"��ɫ",
		"��ɫ",
		"��ɫ",
		"��ɫ",
		"��ɫ"
	}
	
    local all_days = lualib:GetAllDays(0)
    local days = lualib:Player_GetCustomVarInt(player, task_var[1])
	local cur_ring = lualib:Player_GetCustomVarInt(player, task_var[2])
    local level = lualib:Player_GetIntProp(player,  lua_role_level)
    local temp_t = {}
    for k, v in pairs(task_t) do
        local temp = {k, v[1]}
        if (level >= v[1][2] and level <= v[1][7]) then table.insert(temp_t, temp) end
    end
	
    local rnd = lualib:GenRandom(1, #temp_t)
    if temp_t[rnd] == nil then return "��ɫ����20���ſ��Խ���������\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end

    for _, v in pairs(task_t) do
        for _, _v in pairs(v) do
            if lualib:HasQuest(player, _v[1]) then
				cur_ring = cur_ring - 1
			end
        end
    end
	

    if days == all_days then
        if cur_ring >= task_var[3] then
            return "������������ȫ����ɣ�\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
        end
    elseif days > all_days then
        return "ϵͳ����\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    else
        lualib:Player_SetCustomVarInt(player, task_var[2], 0)
        cur_ring = 0
    end
	
	local msg = "�����컹��#COLORCOLOR_RED#"..task_var[3] - cur_ring.."��#COLOREND#��������δ��ɣ���ѡ��Ʒ����ɣ�\n \n"
	for i = 1, #task_Color_xs do
		msg = msg.."<@days_task_ex#"..i.."#"..cur_ring.." *01*"..task_Color_xs[i]..">"
		msg = msg.."     "
	end
	--msg = msg.."#IMAGE1902700017#<@leave *01*�뿪>\n"
	return msg
end


function days_task_ex(npc, player, task_lv, ring)
	local ring = tonumber(ring)
	local task_lv = tonumber(task_lv)
	
	local req_mz_count = (task_var[3] - ring) * task_lv 
	local msg = "�����컹��"..task_var[3] - ring.."����δ��ɣ�һ�������Ҫ����һ��ѭ��ħ�䣬ѭ��ħ�䲻��ʱÿ��#COLORCOLOR_RED#10���Ҵ���#COLOREND#1��ħ�䡣ѭ��ħ��ͽ�Ҷ��������޷���ɡ�\n"
	
	local itemNum = lualib:ItemCountByKey(player, "ѭ��ħ��", true, false, false, 2)
	msg = msg.."<@accomplish_xs_task#"..task_lv.."#"..ring.."#1 *01*��һ����ɡ�> -- ��Ҫ".. req_mz_count * 1 .."ħ��\n"
	msg = msg.."<@accomplish_xs_task#"..task_lv.."#"..ring.."#2 *01*��������ɡ�> -- ��Ҫ".. req_mz_count * 2 .."ħ��\n"
	msg = msg.."<@accomplish_xs_task#"..task_lv.."#"..ring.."#3 *01*��������ɡ�> -- ��Ҫ".. req_mz_count * 3 .."ħ��\n"
	msg = msg.."<@accomplish_xs_task#"..task_lv.."#"..ring.."#4 *01*���ı���ɡ�> -- ��Ҫ".. req_mz_count * 4 .."ħ��\n"
	return msg
end



function accomplish_xs_task(npc, player, task_lv, ring, pow)
	local msg = ""
	local task_lv = tonumber(task_lv)
	local ring = tonumber(ring)
	local pow = tonumber(pow)
	local req_mz_count = (task_var[3] - ring) * task_lv * pow
	local itemNum = lualib:ItemCountByKey(player, "ѭ��ħ��", true, false, false, 2)
	
	print(req_mz_count)
	local subGold = 0
	if req_mz_count > itemNum then
		subGold = (req_mz_count - itemNum) * 100000
		print("subGold:"..subGold)
		if not lualib:Player_IsGoldEnough(player, subGold, false) then
			return "���ѭ��ħ�����Ҳ��㣬�޷���ɣ�"
		end
		if itemNum > 0 then
			if not lualib:DelItem(player, "ѭ��ħ��", itemNum, 2, "һ����ɵ�������", player) then
				return "�۳�����ʧ��"
			end		
		end
		
		if not lualib:Player_SubGold(player, subGold, false, "һ����ɵ�������", player) then
			return "�۳����ʧ��"
		end
	else
		if not lualib:DelItem(player, "ѭ��ħ��", req_mz_count, 2, "һ����ɵ�������", player) then
			return "�۳�����ʧ��!"
		end
	end
	for i = ring + 1, task_var[3] do
		local level = lualib:Player_GetIntProp(player,  lua_role_level)
		local exp = math.floor(color_t[task_lv] * level * level * level * ring_t[i] / 10) * pow
		local gold = math.floor(((130 * level * level - 5000 * level + 70000) / 300) * 2 * task_lv) * pow
		if not lualib:Player_AddExp(player, exp, "�Ӿ��飺�����������������", "�������" ) then return "�Ӿ���ʧ�ܣ�\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>" end
		if not lualib:Player_AddGold(player, gold, false, "�ӽ�ң������������������", "�������") then return "�ӽ��ʧ�ܣ�\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*�����ء�>" end
		lualib:OnGloryTrigger(player, lua_glory_trigger_taofa, "", 0, "��������", "")
	end
	
	for _, v in pairs(task_t) do
        for _, _v in pairs(v) do
            if lualib:HasQuest(player, _v[1]) then
				lualib:DropQuest(player, _v[1])
				break
			end
        end
    end
	lualib:Player_SetCustomVarInt(player, task_var[2], task_var[3])
    lualib:Player_SetCustomVarInt(player, task_var[1], lualib:GetAllDays(0))
	return msg
end