local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local yuanbao = 100
local zb_table = {
			{
				{"����", "ʮɱ", "�Ͽ�", "����", "ʮ������"},
				{"���ս��", "����ս��"},
			},
			{
				{"����", "����", "���", "�к�", "�߽ٸ���"},
				{"���޳���", "ʥ�鷨��"},
			},
			{
				{"����", "��Ԩ", "�ɿ�", "�޳�", "�����׵�"},
				{"��������", "̫������"},
			},
}
local jp_table = {"����","����","����","����"}

local duihuan = {
["���С���"] = {"����(��)","����","����"},
["���С���"] = {"����(��)","����(��)","���С���"},
["ʮɱ����"] = {"ʮɱ(��)","ʮɱ","ʮɱ"},
["ʮɱ����"] = {"ʮɱ(��)","ʮɱ(��)","ʮɱ����"},
["�Ͽա���"] = {"�Ͽ�(��)","�Ͽ�","�Ͽ�"},
["�Ͽա���"] = {"�Ͽ�(��)","�Ͽ�(��)","�Ͽա���"},
["�Ͽա���"] = {"�Ͽ�(��)","�Ͽ�(��)","�Ͽա���"},
["�Ͽա���"] = {"�Ͽ�(��)","�Ͽ�(��)","�Ͽա���"},
["���͡���"] = {"����(��)","����","����"},
["���͡���"] = {"����(��)","����(��)","���͡���"},
["���͡���"] = {"����(��)","����(��)","���͡���"},
["���͡���"] = {"����(��)","����(��)","���͡���"},
["ʮ�����ޡ���"] = {"ʮ������(��)","ʮ������","ʮ������"},
["ʮ�����ޡ���"] = {"ʮ������(��)","ʮ������(��)","ʮ�����ޡ���"},
["ʮ�����ޡ���"] = {"ʮ������(��)","ʮ������(��)","ʮ�����ޡ���"},
["ʮ�����ޡ���"] = {"ʮ������(��)","ʮ������(��)","ʮ�����ޡ���"},
["��������"] = {"����(��)","����","����"},
["��������"] = {"����(��)","����(��)","��������"},
["���١���"] = {"����(��)","����","����"},
["���١���"] = {"����(��)","����(��)","���١���"},
["��ա���"] = {"���(��)","���","���"},
["��ա���"] = {"���(��)","���(��)","��ա���"},
["��ա���"] = {"���(��)","���(��)","��ա���"},
["��ա���"] = {"���(��)","���(��)","��ա���"},
["�к硤��"] = {"�к�(��)","�к�","�к�"},
["�к硤��"] = {"�к�(��)","�к�(��)","�к硤��"},
["�к硤��"] = {"�к�(��)","�к�(��)","�к硤��"},
["�к硤��"] = {"�к�(��)","�к�(��)","�к硤��"},
["�߽ٸ�������"] = {"�߽ٸ���(��)","�߽ٸ���","�߽ٸ���"},
["�߽ٸ�������"] = {"�߽ٸ���(��)","�߽ٸ���(��)","�߽ٸ�������"},
["�߽ٸ�������"] = {"�߽ٸ���(��)","�߽ٸ���(��)","�߽ٸ�������"},
["�߽ٸ�������"] = {"�߽ٸ���(��)","�߽ٸ���(��)","�߽ٸ�������"},
["��������"] = {"����(��)","����","����"},
["��������"] = {"����(��)","����(��)","��������"},
["��Ԩ����"] = {"��Ԩ(��)","��Ԩ","��Ԩ"},
["��Ԩ����"] = {"��Ԩ(��)","��Ԩ(��)","��Ԩ����"},
["�ɿա���"] = {"�ɿ�(��)","�ɿ�","�ɿ�"},
["�ɿա���"] = {"�ɿ�(��)","�ɿ�(��)","�ɿա���"},
["�ɿա���"] = {"�ɿ�(��)","�ɿ�(��)","�ɿա���"},
["�ɿա���"] = {"�ɿ�(��)","�ɿ�(��)","�ɿա���"},
["�޳�����"] = {"�޳�(��)","�޳�","�޳�"},
["�޳�����"] = {"�޳�(��)","�޳�(��)","�޳�����"},
["�޳�����"] = {"�޳�(��)","�޳�(��)","�޳�����"},
["�޳�����"] = {"�޳�(��)","�޳�(��)","�޳�����"},
["�����׵ۡ���"] = {"�����׵�(��)","�����׵�","�����׵�"},
["�����׵ۡ���"] = {"�����׵�(��)","�����׵�(��)","�����׵ۡ���"},
["�����׵ۡ���"] = {"�����׵�(��)","�����׵�(��)","�����׵ۡ���"},
["�����׵ۡ���"] = {"�����׵�(��)","�����׵�(��)","�����׵ۡ���"},
["���ս�ס���(��)"] = {"���ս�ס���(��)","���ս��(��)","���ս��(��)"},
["���ս�ס���(Ů)"] = {"���ս�ס���(Ů)","���ս��(Ů)","���ս��(Ů)"},
["���޳��ۡ���(��)"] = {"���޳��ۡ���(��)","���޳���(��)","���޳���(��)"},
["���޳��ۡ���(Ů)"] = {"���޳��ۡ���(Ů)","���޳���(Ů)","���޳���(Ů)"},
["�������ۡ���(��)"] = {"�������ۡ���(��)","��������(��)","��������(��)"},
["�������ۡ���(Ů)"] = {"�������ۡ���(Ů)","��������(Ů)","��������(Ů)"},
["���ս�ס���(��)"] = {"���ս�ס���(��)","���ս�ס���(��)","���ս�ס���(��)"},
["���ս�ס���(Ů)"] = {"���ս�ס���(Ů)","���ս�ס���(Ů)","���ս�ס���(Ů)"},
["���޳��ۡ���(��)"] = {"���޳��ۡ���(��)","���޳��ۡ���(��)","���޳��ۡ���(��)"},
["���޳��ۡ���(Ů)"] = {"���޳��ۡ���(Ů)","���޳��ۡ���(Ů)","���޳��ۡ���(Ů)"},
["�������ۡ���(��)"] = {"�������ۡ���(��)","�������ۡ���(��)","�������ۡ���(��)"},
["�������ۡ���(Ů)"] = {"�������ۡ���(Ů)","�������ۡ���(Ů)","�������ۡ���(Ů)"},
["���ս�ס���(��)"] = {"���ս�ס���(��)","���ս�ס���(��)","���ս�ס���(��)"},
["���ս�ס���(Ů)"] = {"���ս�ס���(Ů)","���ս�ס���(Ů)","���ս�ס���(Ů)"},
["���޳��ۡ���(��)"] = {"���޳��ۡ���(��)","���޳��ۡ���(��)","���޳��ۡ���(��)"},
["���޳��ۡ���(Ů)"] = {"���޳��ۡ���(Ů)","���޳��ۡ���(Ů)","���޳��ۡ���(Ů)"},
["�������ۡ���(��)"] = {"�������ۡ���(��)","�������ۡ���(��)","�������ۡ���(��)"},
["�������ۡ���(Ů)"] = {"�������ۡ���(Ů)","�������ۡ���(Ů)","�������ۡ���(Ů)"},
["���ս�ס���(��)"] = {"���ս�ס���(��)","���ս�ס���(��)","���ս�ס���(��)"},
["���ս�ס���(Ů)"] = {"���ս�ס���(Ů)","���ս�ס���(Ů)","���ս�ס���(Ů)"},
["���޳��ۡ���(��)"] = {"���޳��ۡ���(��)","���޳��ۡ���(��)","���޳��ۡ���(��)"},
["���޳��ۡ���(Ů)"] = {"���޳��ۡ���(Ů)","���޳��ۡ���(Ů)","���޳��ۡ���(Ů)"},
["�������ۡ���(��)"] = {"�������ۡ���(��)","�������ۡ���(��)","�������ۡ���(��)"},
["�������ۡ���(Ů)"] = {"�������ۡ���(Ů)","�������ۡ���(Ů)","�������ۡ���(Ů)"},
["����ս�ס���(��)"] = {"����ս�ס���(��)","����ս��(��)","����ս��(��)"},
["����ս�ס���(Ů)"] = {"����ս�ס���(Ů)","����ս��(Ů)","����ս��(Ů)"},
["ʥ�鷨�¡���(��)"] = {"ʥ�鷨�¡���(��)","ʥ�鷨��(��)","ʥ�鷨��(��)"},
["ʥ�鷨�¡���(Ů)"] = {"ʥ�鷨�¡���(Ů)","ʥ�鷨��(Ů)","ʥ�鷨��(Ů)"},
["̫�����ۡ���(��)"] = {"̫�����ۡ���(��)","̫������(��)","̫������(��)"},
["̫�����ۡ���(Ů)"] = {"̫�����ۡ���(Ů)","̫������(Ů)","̫������(Ů)"},
["����ս�ס���(��)"] = {"����ս�ס���(��)","����ս�ס���(��)","����ս�ס���(��)"},
["����ս�ס���(Ů)"] = {"����ս�ס���(Ů)","����ս�ס���(Ů)","����ս�ס���(Ů)"},
["ʥ�鷨�¡���(��)"] = {"ʥ�鷨�¡���(��)","ʥ�鷨�¡���(��)","ʥ�鷨�¡���(��)"},
["ʥ�鷨�¡���(Ů)"] = {"ʥ�鷨�¡���(Ů)","ʥ�鷨�¡���(Ů)","ʥ�鷨�¡���(Ů)"},
["̫�����ۡ���(��)"] = {"̫�����ۡ���(��)","̫�����ۡ���(��)","̫�����ۡ���(��)"},
["̫�����ۡ���(Ů)"] = {"̫�����ۡ���(Ů)","̫�����ۡ���(Ů)","̫�����ۡ���(Ů)"},
["����ս�ס���(��)"] = {"����ս�ס���(��)","����ս�ס���(��)","����ս�ס���(��)"},
["����ս�ס���(Ů)"] = {"����ս�ס���(Ů)","����ս�ס���(Ů)","����ս�ס���(Ů)"},
["ʥ�鷨�¡���(��)"] = {"ʥ�鷨�¡���(��)","ʥ�鷨�¡���(��)","ʥ�鷨�¡���(��)"},
["ʥ�鷨�¡���(Ů)"] = {"ʥ�鷨�¡���(Ů)","ʥ�鷨�¡���(Ů)","ʥ�鷨�¡���(Ů)"},
["̫�����ۡ���(��)"] = {"̫�����ۡ���(��)","̫�����ۡ���(��)","̫�����ۡ���(��)"},
["̫�����ۡ���(Ů)"] = {"̫�����ۡ���(Ů)","̫�����ۡ���(Ů)","̫�����ۡ���(Ů)"},
["����ս�ס���(��)"] = {"����ս�ס���(��)","����ս�ס���(��)","����ս�ס���(��)"},
["����ս�ס���(Ů)"] = {"����ս�ס���(Ů)","����ս�ס���(Ů)","����ս�ס���(Ů)"},
["ʥ�鷨�¡���(��)"] = {"ʥ�鷨�¡���(��)","ʥ�鷨�¡���(��)","ʥ�鷨�¡���(��)"},
["ʥ�鷨�¡���(Ů)"] = {"ʥ�鷨�¡���(Ů)","ʥ�鷨�¡���(Ů)","ʥ�鷨�¡���(Ů)"},
["̫�����ۡ���(��)"] = {"̫�����ۡ���(��)","̫�����ۡ���(��)","̫�����ۡ���(��)"},
["̫�����ۡ���(Ů)"] = {"̫�����ۡ���(Ů)","̫�����ۡ���(Ů)","̫�����ۡ���(Ů)"},
["����ս�ס���(��)"] = {"����ս�ס���(��)","����ս��(��)","����ս��(��)"},
["����ս�ס���(Ů)"] = {"����ս�ס���(Ů)","����ս��(Ů)","����ս��(Ů)"},
["���η��ۡ���(��)"] = {"���η��ۡ���(��)","���η���(��)","���η���(��)"},
["���η��ۡ���(Ů)"] = {"���η��ۡ���(Ů)","���η���(Ů)","���η���(Ů)"},
["�춦���ۡ���(��)"] = {"�춦���ۡ���(��)","�춦����(��)","�춦����(��)"},
["�춦���ۡ���(Ů)"] = {"�춦���ۡ���(Ů)","�춦����(Ů)","�춦����(Ů)"},
["����ս�ס���(��)"] = {"����ս�ס���(��)","����ս�ס���(��)","����ս�ס���(��)"},
["����ս�ס���(Ů)"] = {"����ս�ס���(Ů)","����ս�ס���(Ů)","����ս�ס���(Ů)"},
["���η��ۡ���(��)"] = {"���η��ۡ���(��)","���η��ۡ���(��)","���η��ۡ���(��)"},
["���η��ۡ���(Ů)"] = {"���η��ۡ���(Ů)","���η��ۡ���(Ů)","���η��ۡ���(Ů)"},
["�춦���ۡ���(��)"] = {"�춦���ۡ���(��)","�춦���ۡ���(��)","�춦���ۡ���(��)"},
["�춦���ۡ���(Ů)"] = {"�춦���ۡ���(Ů)","�춦���ۡ���(Ů)","�춦���ۡ���(Ů)"},
["����ս�ס���(��)"] = {"����ս�ס���(��)","����ս�ס���(��)","����ս�ס���(��)"},
["����ս�ס���(Ů)"] = {"����ս�ס���(Ů)","����ս�ס���(Ů)","����ս�ס���(Ů)"},
["���η��ۡ���(��)"] = {"���η��ۡ���(��)","���η��ۡ���(��)","���η��ۡ���(��)"},
["���η��ۡ���(Ů)"] = {"���η��ۡ���(Ů)","���η��ۡ���(Ů)","���η��ۡ���(Ů)"},
["�춦���ۡ���(��)"] = {"�춦���ۡ���(��)","�춦���ۡ���(��)","�춦���ۡ���(��)"},
["�춦���ۡ���(Ů)"] = {"�춦���ۡ���(Ů)","�춦���ۡ���(Ů)","�춦���ۡ���(Ů)"},
["����ս�ס���(��)"] = {"����ս�ס���(��)","����ս�ס���(��)","����ս�ס���(��)"},
["����ս�ס���(Ů)"] = {"����ս�ס���(Ů)","����ս�ס���(Ů)","����ս�ס���(Ů)"},
["���η��ۡ���(��)"] = {"���η��ۡ���(��)","���η��ۡ���(��)","���η��ۡ���(��)"},
["���η��ۡ���(Ů)"] = {"���η��ۡ���(Ů)","���η��ۡ���(Ů)","���η��ۡ���(Ů)"},
["�춦���ۡ���(��)"] = {"�춦���ۡ���(��)","�춦���ۡ���(��)","�춦���ۡ���(��)"},
["�춦���ۡ���(Ů)"] = {"�춦���ۡ���(Ů)","�춦���ۡ���(Ů)","�춦���ۡ���(Ů)"},
}

local table_zb = {
			{
				{"ʮɱ������",20,"����:12-26",1},
				{"��Ԩ������",20,"����:4-16    ����:3-10",1},
				{"���١�����",20,"����:7-16    ħ��:2-8",1},
				{"�ɿա�����",80,"����:8-31    ����:5-12",1},
				{"��ա�����",80,"����:7-15    ħ��:5-12",1},
				{"�Ͽա�����",80,"����:6-40",1},
			},
			{
				{"���ս��(��)������",20,"���:5-12    ħ��:4-7    ����:1-2",2},
				{"���ս��(Ů)������",20,"���:5-12    ħ��:4-7    ����:1-2",2},
				{"���޳���(��)������",20,"���:4-9    ħ��:4-6    ħ��:2-5",2},
				{"���޳���(Ů)������",20,"���:4-9    ħ��:4-6    ħ��:2-5",2},
				{"��������(��)������",20,"���:4-9    ħ��:4-6    ����:2-5",2},
				{"��������(Ů)������",20,"���:4-9    ħ��:4-6    ����:2-5",2},
			},
			{
				{"����֮��������",20,"����:2-7",3},
				{"����ս��������",20,"���:4-7    ħ��:2-3",2},
				{"ħ�Ż�������",20,"���:1-4    ����:2-3",3},
				{"����ս�䡤����",20,"����:2-9",1},
				{"����֮׹������",20,"ħ��:2-6",3},
				{"������ߡ�����",20,"���:3-5    ħ��:3-3",2},
				{"���׻�������",20,"���:1-3    ħ��:2-5",3},
				{"��ڤħ�䡤����",20,"ħ��:2-8",1},
				{"�켫����������",20,"����:2-6",3},
				{"�޻�ͷ��������",20,"���:3-5    ħ��:3-3",2},
				{"������������",20,"���:1-3    ����:2-5",3},
				{"������ָ������",20,"����:2-8",1},
				{"����ѥ������",20,"���:3-4    ħ��:3-4",2},
			},
			}
			
function is_in_table_zb(a_name,b_name)
	for k,v in pairs(table_zb) do
		for k1,v1 in pairs(v) do
			if a_name == v1[1] or b_name == v1[1] then
				lualib:Warn(v1[1])
				return true
			end
		end
	end
		
	return false
end			

local table_jl = {
{"1������",1,1},
{"2������",2,5},
{"3������",3,15},
{"4������",4,30},
{"5������",6,50},
{"6������",8,100},
{"7������",11,200},
--{"8������",15,600},
--{"9������",19,7500},
}

local att_type = {
					{
					{"�﹥����",lua_role_max_phy_atk_pct},
					{"ħ������",lua_role_max_mag_atk_pct},
					{"��������",lua_role_max_tao_atk_pct},
					},
					{
					{"�������",lua_role_max_phy_def_pct},
					{"ħ������",lua_role_max_mag_def_pct},
					},
					{
					{"HP����",lua_role_max_hp_pct},
					{"MP����",lua_role_max_mp_pct},
					},
					}

local talk_t = {"����԰��Լ���װ�������ɷ�������Ե�װ������Ŷ��", "�������������ú�װ��������ѡ��װ�����ޡ�", "����԰�������ͬ��װ���ϳɸ���Ʒ����װ����"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 170000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc,player)
	local msg = "    ��Ϊŷ־�ӵ�ʦ�֣��Ҿ�ͨװ���ϳ���һ���Ҽ��գ�����װ����������ֻ��Сcase��\n"
	msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@zhuanghecheng *01*[װ���ϳ�]>        #OFFSET<X:0,Y:0>##IMAGE1902700032##OFFSET<X:0,Y:-1>#<@zhuangzulin *01*[װ������]>        #OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@gaiming *01*[װ�����Ը���]>\n"
    msg = msg.."#OFFSET<X:0,Y:10>##IMAGE<ID:1902700017>#<@info *01*[���ܽ���]>\n"
	msg = msg.."#OFFSET<X:0,Y:10>##COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n \n"
	msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-1>#<@leave *01*���뿪��>\n"
	return msg
end
--����
function info(npc,player)
    local msg = "������Ҫ�˽�ʲô��\n \n"
    msg = msg.."#IMAGE<ID:1902700017>#<@hechenginfo#1# *01* [װ���ϳ�]>\n"
    msg = msg.."#IMAGE<ID:1902700017>#<@zulininfo#1# *01* [װ������]>\n"
    msg = msg.."#IMAGE<ID:1902700017>#<@namechangeinfo#1# *01* [���Ը���]>\n \n \n \n"
    msg = msg.."                                                #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01* �����ء�>\n"
    return msg
end

function hechenginfo(npc,player)
    local msg = "                        װ���ϳ�\n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
    msg = msg.."����ͬ���ġ�����ϳɵ�װ�����Ժϳ�Ϊһ����һ����װ�����ϳ�֮��װ�����Ի���һ����������ͬʱװ������ȼ�Ҳ��������һ��\n"
    msg = msg.."���磺�������Ͽա�(45��)�����Ժϳɡ��Ͽա�����(46��)\n"
    msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
    msg = msg.."                                                       #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@info *01* �����ء�>\n"
    return msg
end

function zulininfo(npc,player)
    local msg = "                        װ������\n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
    msg = msg.."    �������������ȱ��װ��������������������װ�����������ṩ�ܶ�װ�������ޣ�����װ��������װ�����޽����ڲ�ѯ��"
    msg = msg.."���޵�װ����������ѡ�����ȼ�(���7��)�;������ԣ���Ȼ�ˣ��۸�����Թ�����ͯ�����ۣ�\n#COLORCOLOR_RED#    ���⣬ʹ��ʱ��������ҾͻὫ�����ջأ�\n"
    msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
    msg = msg.."                                                      #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>#<@info *01* �����ء�>\n"
    return msg
end

function namechangeinfo(npc,player)
    local msg = "                        ���Ը���\n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
    msg = msg.."    ���������Լ���װ�������ֲ���������������û��ϵ����Ϊŷ־�ӵ�ʦ���һ�����㡣"
    msg = msg.."ʹ���������������Ҫ����Ҫ������װ�����ڰ����ĵ�һ��Ȼ������Ӧ�Ĺ��ܼ���\n#COLORCOLOR_RED#    �������Ҫ100Ԫ����Ŷ��\n"
    msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
    msg = msg.."                                                      #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@info *01* �����ء�>\n"
    return msg
end

--װ���ϳ�
function zhuanghecheng(npc,player)
	local msg = "��ѡ��Ҫ�ϳ�ʲôְҵ��װ����\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@hecheng#1# *01* [սʿװ��]>\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@hecheng#2# *01* [��ʦװ��]>\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@hecheng#3# *01* [��ʿװ��]>\n \n \n \n"
	msg = msg.."                                                   #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01* �����ء�>\n"
	return msg
end

function leave(npc,player)
	return ""
end

function hecheng(npc,player,job)
	local msg = "��ѡ��Ҫ�ϳ��������Ƿ���\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700039##OFFSET<X:0,Y:-1>#<@wuqi#"..job.."#1# *01* [�����ϳ�]>      \n#OFFSET<X:0,Y:2>##IMAGE1902700040##OFFSET<X:0,Y:-1>#<@fangju#"..job.."#2# *01* [���ߺϳ�]>\n \n \n \n \n"
	msg = msg.."                                                   #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@zhuanghecheng *01*�����ء�>\n"
	return msg
end



function wuqi(npc,player,job,kind)
	local msg = " ����ϳ�ʲô������\n \n"
	for i = 1, table.getn(zb_table[tonumber(job)][tonumber(kind)]) do
	msg = msg.."<@wuqileixing#"..job.."#"..kind.."#"..i.."#*01* ["..zb_table[tonumber(job)][tonumber(kind)][i].."]>"
	msg = msg.."     "
	end
	msg = msg.."\n \n \n \n \n \n                                               #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"
	return msg
end

function fangju(npc,player,job,kind)
	local msg = " ����ϳ�ʲô���ߣ�\n \n"
	for i = 1, table.getn(zb_table[tonumber(job)][tonumber(kind)]) do
	msg = msg.."<@fangjuleixing#"..job.."#"..kind.."#"..i.."#*01* ["..zb_table[tonumber(job)][tonumber(kind)][i].."]>"
	msg = msg.."     "
	end
	msg = msg.."\n \n \n \n \n \n                                               #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n\n"
	return msg
end

function wuqileixing(npc,player,job,kind,types)
	local msg = "��ѡ����Ҫ�ϳɵ�װ��Ʒ�ף�\n \n"
	if tonumber(kind) == 1 and tonumber(types) < 3 then
	for i = 1, table.getn(jp_table) do
	msg = msg.."<@dazaozhuangbei#"..job.."#"..kind.."#"..types.."#"..i.."#*01* ["..zb_table[tonumber(job)][tonumber(kind)][tonumber(types)]..jp_table[i].."]>"
	msg = msg.."     "
	if jp_table[i] == jp_table[2] then break end
	end
	else
	for i = 1, table.getn(jp_table) do
	msg = msg.."<@dazaozhuangbei#"..job.."#"..kind.."#"..types.."#"..i.."#*01* ["..zb_table[tonumber(job)][tonumber(kind)][tonumber(types)]..jp_table[i].."]>"
	msg = msg.."     "
	end
	end
	msg = msg.."\n \n \n \n \n \n                                               #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	return msg
end

function dazaozhuangbei(npc,player,job,kind,types,quelity)
	local zname = zb_table[tonumber(job)][tonumber(kind)][tonumber(types)]..jp_table[tonumber(quelity)]
	msg = "���졸"..zb_table[tonumber(job)][tonumber(kind)][tonumber(types)]..jp_table[tonumber(quelity)].."�� �� ��Ҫ������"..duihuan[zname][3].."�� �� #COLORCOLOR_GREENG#�����ֱ�Ӻϳ�������ڵ�װ������Ѿ�������ӡ����װ������ֿ���ٴ���#COLOREND#����ȷ��������\n \n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700033##OFFSET<X:0,Y:-1>#<@quedingdazao#"..zname.." *01*[ȷ������]>\n"
	msg = msg.."\n \n                                               #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	return msg
end


function quedingdazao(npc,player,zname)
	local delCount = 0
	local del_Guid = {}
	for i = 22 , 221 do
		local hechen_G = lualib:Item_GetBySite(player, i)
		local hecheng_K = lualib:KeyName(hechen_G)
		--print("KeyName"..hecheng_K)	
		if duihuan[zname][2] == hecheng_K and delCount < 2 then
			delCount = delCount + 1
			del_Guid[delCount] = hechen_G
		end
	end
	if delCount < 2 then
		--print("XXX")
		return "��û������"..duihuan[zname][3].."���޷����졣\n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	end
	
	for i = 1, table.getn(del_Guid) do
		if not lualib:Item_Destroy(player, del_Guid[i], "װ���ϳ�", "װ�������ʦ") then return "���ٵ���ʧ��" end
	end
	
	--if not lualib:DelItem(player,duihuan[zname][2],2,2,"װ���ϳ�","װ�������ʦ") then return "��û������"..duihuan[zname][3].."���޷����졣" end
	if not lualib:Player_GiveItemUnbind(player,duihuan[zname][1],1,"װ���ϳ�","װ�������ʦ") then return "װ�����ʧ�ܣ�" end
	local user_name = lualib:Player_GetStrProp(player, lua_role_user_name)
	local gb = "��ϲ ["..user_name.."] ��װ�������ʦ���ɹ��ϳ�"..zname.."!"
	lualib:SysMsg_SendCenterMsg(1, gb,"")
	msg = "�ϳ�["..zname.."]�ɹ�!\n \n"
	msg = msg.." \n \n \n \n \n \n                                               #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"
	return msg
end

function fangjuleixing(npc,player,job,kind,types)
	local msg = "��ѡ����Ҫ�ϳɵ�װ��Ʒ�ף�\n \n"
	for i = 1, table.getn(jp_table) do
	msg = msg.."<@dazaofangju#"..job.."#"..kind.."#"..types.."#"..i.."#*01* ["..zb_table[tonumber(job)][tonumber(kind)][tonumber(types)]..jp_table[i].."]>"
	msg = msg.."     "
	end
	msg = msg.."\n \n \n \n \n                                               #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"
	return msg
end

function dazaofangju(npc,player,job,kind,types,quelity)
	local fname = zb_table[tonumber(job)][tonumber(kind)][tonumber(types)]..jp_table[tonumber(quelity)]
	table_sex = {"(��)","(Ů)"}
	local msg = "��ѡ����Ҫ�ϳɵķ��ߣ�\n \n"
	for i = 1 , table.getn(table_sex) do
	msg = msg.. "<@xuanzxingbie#"..fname.."#"..table_sex[i].." *01*["..fname..table_sex[i].."]>"
	msg = msg.."     "
	end
	msg = msg.."\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"
	return msg
end

function xuanzxingbie(npc,player,fname,sex)
	local fjname = fname..sex
	local msg = "���� ��"..fjname.."�� ����Ҫ������"..duihuan[fjname][3].."����#COLORCOLOR_GREENG#�����ֱ�Ӻϳ�������ڵ�װ������Ѿ�������ӡ����װ������ֿ���ٴ���#COLOREND#����ȷ��������\n \n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700033##OFFSET<X:0,Y:-1>#<@quedingfangju#"..fjname.." *01*[ȷ������]>\n"
	msg = msg.."\n \n                                               #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	return msg
end

function quedingfangju(npc,player,fjname)
	local delCount1 = 0
	local del_Guid = {}
	for i = 1 , 221 do
		local hechen_G = lualib:Item_GetBySite(player, i)
		local hecheng_K = lualib:KeyName(hechen_G)
		--print("KeyName"..hecheng_K)	
		if i > 21 and duihuan[fjname][2] == hecheng_K and delCount1 < 2 then
			delCount1 = delCount1 + 1
			del_Guid[delCount1] = hechen_G
		end
	end
	if delCount1 < 2 then
		return "��û������"..duihuan[fjname][3].."���޷����졣\n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	end
	
	for i = 1, table.getn(del_Guid) do
		if not lualib:Item_Destroy(player, del_Guid[i], "װ���ϳ�", "װ�������ʦ") then return "���ٵ���ʧ��" end
	end
	--if not lualib:DelItem(player,duihuan[fjname][2],2,2,"װ���ϳ�","װ�������ʦ") then return "��û������"..duihuan[fjname][3].."���޷����졣" end
	if not lualib:Player_GiveItemUnbind(player,duihuan[fjname][1],1,"װ���ϳ�","װ�������ʦ") then return "װ�����ʧ�ܣ�" end
	local user_name = lualib:Player_GetStrProp(player, lua_role_user_name)
	local gb = "��ϲ ["..user_name.."] ��װ�������ʦ���ɹ��ϳ�"..fjname.."!"
	lualib:SysMsg_SendCenterMsg(1, gb,"")
	msg = "�ϳ�["..fjname.."]�ɹ�!\n \n"
	msg = msg.." \n \n \n \n \n \n                                               #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"
	return msg
end

--װ������
function zhuangzulin(npc,player)
	local msg = "��������ʲôװ����\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700039##OFFSET<X:0,Y:-1>#<@zulin#1 *01*[��������]>\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700040##OFFSET<X:0,Y:-1>#<@zulin#2 *01*[�·�����]>\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700041##OFFSET<X:0,Y:-1>#<@zulin#3 *01*[��������]>\n \n \n \n"
	msg = msg.."                                                   #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01* �����ء�>\n"
	return msg
end

function leave(npc,player)
	return ""
end

function zulin(npc,player,types)
	local msg = "��ѡ����Ҫװ��!\n \n"
	for i = 1, table.getn(table_zb[tonumber(types)]) do
	msg = msg.."<@dazao#"..types.."#"..i.."# *01*["..table_zb[tonumber(types)][i][1].."]>"
	msg = msg.."        "
	end
	msg = msg.."\n \n \n \n \n                                               #OFFSET<X:0,Y:8>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"
	return msg
end

function dazao(npc,player,types,name)
	local msg = "#COLORCOLOR_BLUE#"..table_zb[tonumber(types)][tonumber(name)][1].."������:"..table_zb[tonumber(types)][tonumber(name)][3].."#COLOREND#\n��ѡ���������ľ����ȼ���\n \n"
	for i = 1, table.getn(table_jl) do
	msg = msg.."<@pinjie#"..types.."#"..name.."#"..i.." *01*["..table_jl[i][1].."]>"
	msg = msg.."           "
	end
	msg = msg.."\n \n \n \n                                               #OFFSET<X:0,Y:8>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"
	return msg
end

function pinjie(npc,player,types,name,lvl)
	local msg = "��ѡ������Ҫ�����ĵ�����\n \n"
	for i = 1, table.getn(att_type[tonumber(table_zb[tonumber(types)][tonumber(name)][4])]) do
	msg = msg.."<@genTime#"..types.."#"..name.."#"..lvl.."#"..i.." *01*["..att_type[tonumber(table_zb[tonumber(types)][tonumber(name)][4])][i][1].."]>"
	msg = msg.."      "
	end
	msg = msg.."\n \n \n \n \n \n                                               #OFFSET<X:0,Y:8>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"
	return msg
end

function genTime(npc,player,types,name,lvl,attType)
	--print(npc,player,types,name,lvl,attType)
	lualib:SysMsg_SendInputDlg(player, 10, "����������Ҫ���޵�ʱ��(������)", 45, 3, "attt", npc.."#"..types.."#"..name.."#"..lvl.."#"..attType)
	return ""
end


function attt(id,player,times,param)
	--print(param)
	local times = tonumber(times)
	local params = lualib:StrSplit(param, "#")
	local npc = params[1]
	local types = params[2]
	local name = params[3]
	local lvl = params[4]
	local attType = params[5]
	--print(npc,player,types,name,lvl,attType, times)
	local msg = ""
	if times == nil or times < 1 or times%1 ~= 0 then
		msg = "�����������ʱ�䲻��ȷ��"
		lualib:NPCTalkEx(npc, player, msg)
		return ""
	end

    local money = (tonumber(table_zb[tonumber(types)][tonumber(name)][2]) * times + tonumber(table_jl[tonumber(lvl)][3]) * times)
	local msg = "���� ["..table_zb[tonumber(types)][tonumber(name)][1].."] + "..lvl.."����������Ϊ"..att_type[tonumber(table_zb[tonumber(types)][tonumber(name)][4])][tonumber(attType)][1].."����Ҫ"..money.."Ԫ������ȷ��������\n \n \n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700033##OFFSET<X:0,Y:-1>#<@quedinggoumai#"..types.."#"..name.."#"..lvl.."#"..attType.."#"..money.."#"..times.." *01* [ȷ������]>\n"
	msg = msg.."\n \n                                               #OFFSET<X:0,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01* ��������ҳ��>\n"
	lualib:NPCTalkEx(npc, player, msg)
	return ""
end


function quedinggoumai(npc,player,types,name,lvl,attType, money, times)
	--print(npc,player,types,name,lvl,attType, money)
	if lualib:Player_GetBagFree(player) < 1 then
	lualib:SysMsg_SendTriggerMsg(player_guid, "�����ռ䲻������Ҫ1�����ӣ�")
	msg = "�����ռ䲻������Ҫ1�����ӣ�\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	return msg
	end
	local money = tonumber(money)
	if lualib:Player_IsIngotEnough(player,money,false) == false then return "���Ԫ�����㣬�޷�����\n \n \n \n \n \n \n \n                                                   #OFFSET<X:0,Y:8>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01* �����ء�>" end
	if not lualib:Player_SubIngot(player,money,false,"�ϳɴ�ʦ",player) then return "�۳�Ԫ��ʧ��" end
	local zhuangbeiguid = lualib:Player_GiveSingleItem(player,table_zb[tonumber(types)][tonumber(name)][1],0,"�ϳɴ�ʦ","װ������")
	if zhuangbeiguid == "" then return "��Ʒ���ʧ��" end
	--print(zhuangbeiguid)
	local jlsx = att_type[tonumber(table_zb[tonumber(types)][tonumber(name)][4])][tonumber(attType)][2]
	if not lualib:Equip_SetRefineLevel(player,zhuangbeiguid,tonumber(lvl)) then return "���þ����ȼ�ʧ��" end
	if not lualib:Equip_SetRefineProp(player,zhuangbeiguid,jlsx,tonumber(table_jl[tonumber(lvl)][2])) then return "���þ�������ʧ��" end
	if not lualib:Item_SetLife(player, zhuangbeiguid, tonumber(times)*3600) then return "����װ��ʱ��ʧ��" end
	lualib:Item_NotifyUpdate(player,zhuangbeiguid)
	local msg = "����ɹ���\n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:8>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	return msg
end
------װ������
function gaiming(npc,player)
	local msg="#COLORCOLOR_YELLOW#1.װ�����Ը����ɲ���һ�������ݳ޵ģ���Ҫ#COLOREND##COLORCOLOR_RED#100Ԫ��#COLOREND##COLORCOLOR_YELLOW#Ŷ��#COLOREND#\n"
	msg = msg.."#COLORCOLOR_YELLOW#2.�뽫��Ҫ�޸ĵ�װ�����ڰ�����һ������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n \n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700032##OFFSET<X:0,Y:-1>#<@zhuangbeigaiming *01*[��Ҫ����]>\n \n \n"
	msg = msg.."                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"	
	return msg
end


function zhuangbeigaiming(npc,player)
	local item_name = lualib:Player_GetItemGuid(player,lua_site_bag_0)
	local key = lualib:KeyName(item_name)
	local name = lualib:Name(item_name)
	local msg = "��Ҫ���޸ĵ�װ��Ϊ ["..name.."] ����ȷ���޸���\n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n \n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700032##OFFSET<X:0,Y:-1>#<@queding#"..item_name.."# *01*[ȷ���޸�]>\n \n \n \n"
	msg = msg.."                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	return msg
end

function queding(npc,player,itemKey)
	local item_type = lualib:Item_GetType(player,itemKey)
	--print(itemKey)
	if item_type ~= 1 then
		return "������һ��λ�ò���װ��,�޷�װ������\n \n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@zhuangbeigaiming *01*�����ء�>"
	end
	
	local z_name = lualib:KeyName(itemKey)
	for i = 1, table.getn(table_zb) do
		for z = 1, table.getn(table_zb[i]) do
			if z_name == table_zb[i][z][1] then
				return "����װ�����ܽ��и�����\n \n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			end
		end
	end
	
	if not lualib:Player_IsIngotEnough(player, tonumber(yuanbao), false) then
	
		return "��û��"..yuanbao.."Ԫ�������ܸ�����\n \n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	end
	

	
	lualib:SysMsg_SendInputDlg(player, 1, "����������Ҫ�޸ĵ�װ������", 45, 14, "EnterHot", npc.."#"..itemKey)
	return ""
end


function EnterHot(id,player,toName,param)
	local params = lualib:StrSplit(param, "#")
	local npc = params[1]
	local item_name = params[2]
	local msg = ""
	--print(npc,item_name)
	--local item_name = lualib:Player_GetItemGuid(player,lua_site_bag_0)
	local item_type = lualib:Item_GetType(player,item_name)
	local yuan_iName = lualib:Name(item_name)
	if string.find(toName,"[%]%[]") ~= nil then 
		local msg = "��������Ʋ��Ϸ������������룡\n \n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@zhuangbeigaiming *01*�����ء�>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	
	if lualib:IsBanString(toName) == true then 
		msg = "��������Ʋ��Ϸ������������룡\n \n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@zhuangbeigaiming *01*�����ء�>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	if item_type ~= 1 then
		msg = "������һ��λ�ò���װ�����޷�װ������\n \n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	local cName = "(��)"..toName
	if not lualib:Item_ChangeName(player,item_name,cName) then return "����ʧ��" end
	local gaiming_p = lualib:KeyName(player)
	local play_name = lualib:Name(player)
	if lualib:Player_SubIngot(player, yuanbao, false, "װ������", player) == false then
		lualib:NPCTalkEx(npc, player, "�۳�Ԫ��ʧ��")
		return true
	end
	
	local gb2 = "��� ["..play_name.."] ��װ�������ʦ�� ["..yuan_iName.."] ����Ϊ ["..cName.."] !"
	lualib:SysMsg_SendCenterMsg(1, gb2,"")
	
	msg = "װ�������ɹ���\n \n \n \n \n \n \n \n \n                                          #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	lualib:NPCTalkEx(npc, player, msg)
	return true
end