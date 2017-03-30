local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")
require("system/ScriptPackage")
require("form/ActivityDegree_s")
local BayeEquip = {"��ҵ��", "10���﹥��ʯ", "10��ħ����ʯ", {"��ҵ�����", "��ҵ���Ů"}, "10��������ʯ", "10��������ʯ"}
local ZhiZunEquip = {"�������ս��", "�����������", "����Ԫ������", {"�������ս��", "�������ս��"}, {"�����������", "�����������"}, {"����Ԫ������", "����Ԫ������"}}

local sheng_tab = {{"�������ͷ��","�����������","�����������","��������ָ"},--սʿ
{"�������ͷ��","�����������","�����������","���������ָ"},--��ʦ
{"����Ԫ��ͷ��","����Ԫ������","����Ԫ������","����Ԫ����ָ"}}--��ʿ
--̽�����ܻ����Ʒ��
local tanbao_basic = {
			{"���鵤С", 1,	12000},
			{"���鵤��", 1,	6000},
			{"���鵤��", 1,	2000},
			{"����BOSS�ٻ���", 1, 500},
			{"2��������ʯ", 1, 50},
			{"2���﹥��ʯ", 1, 50},
			{"2��ħ����ʯ", 1, 50},
			{"2��������ʯ", 1, 50},
			{"2�������ʯ", 1, 50},
			{"2��ħ����ʯ", 1, 50},
		}
local tanbao_equip = {
			{"�������", 1,	8000},
			{"��������", 1, 6400},
			{"��������", 1,	3200},
			{"ʥ������", 1,	1600},
			{"��������", 1,	800},
			{"������������", 1,	400},
			{"������������", 1,	200},
			{"������������", 1,	100},
			{"������������", 1,	50},
			{"�����������", 1,	25},
			
			{"ħ������", 1,	8000},
			{"��ħ����", 1,	6400},
			{"��ħ����", 1,	3200},
			{"ʥħ����", 1,	1600},
			{"��������", 1,	800},
			{"�����������", 1,	400},
			{"������������", 1,	200},
			{"�����������", 1,	100},
			{"�챩��������", 1,	50},
			{"�����������", 1,	25},
			
			{"��������", 1,	8000},
			{"��������", 1,	6400},
			{"��������", 1,	3200},
			{"ʥ������", 1,	1600},
			{"��������", 1,	800},
			{"���������", 1,	400},
			{"����㷨����", 1,	200},
			{"������������", 1,	100},
			{"�����������", 1,	50},
			{"����Ԫ������", 1,	25},
			
			{"����ָ", 1,	8000},
			{"�����ָ", 1,	6400},
			{"�����ָ", 1,	3200},
			{"ʥ���ָ", 1,	1600},
			{"�����ָ", 1,	800},
			{"���������ָ", 1,	400},
			{"���������ָ", 1,	200},
			{"���������ָ", 1,	100},
			{"���������ָ", 1,	50},
			{"��������ָ", 1,	25},
			
			{"ħ���ָ", 1,	8000},
			{"��ħ��ָ", 1,	6400},
			{"��ħ��ָ", 1,	3200},
			{"ʥħ��ָ", 1,	1600},
			{"�����ָ", 1,	800},
			{"��������ָ", 1,	400},
			{"�������½�ָ", 1,	200},
			{"��������ָ", 1,	100},
			{"�챩���ڽ�ָ", 1,	50},
			{"���������ָ", 1,	25},
			
			{"�����ָ", 1,	8000},
			{"�����ָ", 1,	6400},
			{"�����ָ", 1,	3200},
			{"ʥ���ָ", 1,	1600},
			{"������ָ", 1,	800},
			{"�������ָ", 1,	400},
			{"����㷨��ָ", 1,	200},
			{"����������ָ", 1,	100},
			{"��������ָ", 1,	50},
			{"����Ԫ����ָ", 1,	25},
			
			{"�������", 1,	8000},
			{"��������", 1,	6400},
			{"��������", 1,	3200},
			{"ʥ������", 1,	1600},
			{"��������", 1,	800},
			{"������������", 1,	400},
			{"������������", 1,	200},
			{"������������", 1,	100},
			{"������������", 1,	50},
			{"�����������", 1,	25},
			
			{"ħ������", 1,	8000},
			{"��ħ����", 1,	6400},
			{"��ħ����", 1,	3200},
			{"ʥħ����", 1,	1600},
			{"��������", 1,	800},
			{"�����������", 1,	400},
			{"������������", 1,	200},
			{"�����������", 1,	100},
			{"�챩��������", 1,	50},
			{"�����������", 1,	25},
			
			{"��������", 1,	8000},
			{"��������", 1,	6400},
			{"��������", 1,	3200},
			{"ʥ������", 1,	1600},
			{"��������", 1,	800},
			{"���������", 1,	400},
			{"����㷨����", 1,	200},
			{"������������", 1,	100},
			{"�����������", 1,	50},
			{"����Ԫ������", 1,	25},
			
			{"�������", 1,	8000},
			{"����ѥ��", 1,	6400},
			{"����ѥ��", 1,	3200},
			{"ʥ��ѥ��", 1,	1600},
			{"����ѥ��", 1,	800},
			{"��������ѥ��", 1,	400},
			{"��������ѥ��", 1,	200},
			{"��������ѥ��", 1,	100},
			{"��������ѥ��", 1,	50},
			{"�������ѥ��", 1,	25},
			
			{"ħ��ѥ��", 1,	8000},
			{"��ħѥ��", 1,	6400},
			{"��ħѥ��", 1,	3200},
			{"ʥħѥ��", 1,	1600},
			{"����ѥ��", 1,	800},
			{"�������ѥ��", 1,	400},
			{"��������ѥ��", 1,	200},
			{"�������ѥ��", 1,	100},
			{"�챩����ѥ��", 1,	50},
			{"�������ѥ��", 1,	25},
			
			{"����ѥ��", 1,	8000},
			{"����ѥ��", 1,	6400},
			{"����ѥ��", 1,	3200},
			{"ʥ��ѥ��", 1,	1600},
			{"����ѥ��", 1,	800},
			{"�����ѥ��", 1,	400},
			{"����㷨ѥ��", 1,	200},
			{"��������ѥ��", 1,	100},
			{"�������ѥ��", 1,	50},
			{"����Ԫ��ѥ��", 1,	25},
			
			{"�������", 1,	8000},
			{"��������", 1,	6400},
			{"��������", 1,	3200},
			{"ʥ������", 1,	1600},
			{"��������", 1,	800},
			{"������������", 1,	400},
			{"������������", 1,	200},
			{"������������", 1,	100},
			{"������������", 1,	50},
			{"�����������", 1,	25},
			
			{"ħ������", 1,	8000},
			{"��ħ����", 1,	6400},
			{"��ħ����", 1,	3200},
			{"ʥħ����", 1,	1600},
			{"��������", 1,	800},
			{"�����������", 1,	400},
			{"������������", 1,	200},
			{"�����������", 1,	100},
			{"�챩��������", 1,	50},
			{"�����������", 1,	25},
			
			{"��������", 1,	8000},
			{"��������", 1,	6400},
			{"��������", 1,	3200},
			{"ʥ������", 1,	1600},
			{"��������", 1,	800},
			{"���������", 1,	400},
			{"����㷨����", 1,	200},
			{"������������", 1,	100},
			{"�����������", 1,	50},
			{"����Ԫ������", 1,	25},
			
			{"���ͷ��", 1,	8000},
			{"����ͷ��", 1,	6400},
			{"����ͷ��", 1,	3200},
			{"ʥ��ͷ��", 1,	1600},
			{"����ͷ��", 1,	800},
			{"��������ͷ��", 1,	400},
			{"��������ͷ��", 1,	200},
			{"��������ͷ��", 1,	100},
			{"��������ͷ��", 1,	50},
			{"�������ͷ��", 1,	25},
			
			{"ħ��ͷ��", 1,	8000},
			{"��ħͷ��", 1,	6400},
			{"��ħͷ��", 1,	3200},
			{"ʥħͷ��", 1,	1600},
			{"����ͷ��", 1,	800},
			{"�������ͷ��", 1,	400},
			{"��������ͷ��", 1,	200},
			{"�������ͷ��", 1,	100},
			{"�챩����ͷ��", 1,	50},
			{"�������ͷ��", 1,	25},
			
			{"����ͷ��", 1,	8000},
			{"����ͷ��", 1,	6400},
			{"����ͷ��", 1,	3200},
			{"ʥ��ͷ��", 1,	1600},
			{"����ͷ��", 1,	800},
			{"�����ͷ��", 1,	400},
			{"����㷨ͷ��", 1,	200},
			{"��������ͷ��", 1,	100},
			{"�������ͷ��", 1,	50},
			{"����Ԫ��ͷ��", 1,	25},
		}
local tanbao_item =	{
			-- {"���鵤��", 1,	20},
			-- {"˫������12Сʱ", 1, 20},
			-- {"��������8Сʱ", 1, 15},
			-- {"��ש��",	1, 15},
			-- {"������ש", 1 , 5},
			-- {"�߼�BOSS���־���", 1,	20},
			-- {"����BOSS���־���", 1,	20},
			-- {"�߼�ת����", 1, 20},
			-- {"������Ƭ��", 1, 30},
			-- {"������Ƭ��", 1, 10},
			-- {"��ʯ�ᾧ��", 1, 30},
			-- {"��ʯ�ᾧ��", 1, 10},
			-- {"�߼��ɾ�����", 1,	15},
			-- {"��ʯ������", 1, 30},
			-- {"��ʯ������", 1, 10},
			-- {"�߼���ѫ����", 1,	20},
			-- {"�߼�ħ�����", 1,	5},
		}
local tanbao_cloth = {
			{"���ս��", 1, 8000},
			{"����ս��", 1, 6400},
			{"����ս��", 1, 3200},
			{"ʥ��ս��", 1, 1600},
			{"����ս��", 1, 800},
			{"��������ս��", 1, 400},
			{"��������ս��", 1, 200},
			{"��������ս��", 1, 100},
			{"��������ս��", 1, 50},
			{"�������ս��", 1, 25},
			
			{"���ս��", 1, 8000},
			{"����ս��", 1, 6400},
			{"����ս��", 1, 3200},
			{"ʥ��ս��", 1, 1600},
			{"����ս��", 1, 800},
			{"��������ս��", 1, 400},
			{"��������ս��", 1, 200},
			{"��������ս��", 1, 100},
			{"��������ս��", 1, 50},
			{"�������ս��", 1, 25},
			
			{"ħ�귨��", 1, 8000},
			{"��ħ����", 1, 6400},
			{"��ħ����", 1, 3200},
			{"ʥħ����", 1, 1600},
			{"������", 1, 800},
			{"������淨��", 1, 400},
			{"�������·���", 1, 200},
			{"������鷨��", 1, 100},
			{"�챩���ڷ���", 1, 50},
			{"�����������", 1, 25},
			
			{"ħ������", 1, 8000},
			{"��ħ����", 1, 6400},
			{"��ħ����", 1, 3200},
			{"ʥħ����", 1, 1600},
			{"��������", 1, 800},
			{"�����������", 1, 400},
			{"������������", 1, 200},
			{"�����������", 1, 100},
			{"�챩��������", 1, 50},
			{"�����������", 1, 25},
			
			{"�������", 1, 8000},
			{"�������", 1, 6400},
			{"�������", 1, 3200},
			{"ʥ�����", 1, 1600},
			{"��������", 1, 800},
			{"���������", 1, 400},
			{"����㷨����", 1, 200},
			{"������������", 1, 100},
			{"����������", 1, 50},
			{"����Ԫ������", 1, 25},
			
			{"�������", 1, 8000},
			{"�������", 1, 6400},
			{"�������", 1, 3200},
			{"ʥ�����", 1, 1600},
			{"��������", 1, 800},
			{"���������", 1, 200},
			{"����㷨����", 1, 200},
			{"������������", 1, 100},
			{"����������", 1, 50},
			{"����Ԫ������", 1, 25},
			
			{"��ҵ�����", 1, 5},
			{"��ҵ���Ů", 1, 5},
		}	
local tanbao_weapon = {
			{"���ս��", 1, 8000},
			{"����ս��", 1, 6400},
			{"����ս��", 1, 3200},
			{"ʥ��ս��", 1, 1600},
			{"����ս��", 1, 800},
			{"��������ս��", 1, 400},
			{"��������ս��", 1, 200},
			{"��������ս��", 1, 100},
			{"��������ս��", 1, 50},
			{"�������ս��", 1, 25},
			
			{"ħ�귨��", 1, 8000},
			{"��ħ����", 1, 6400},
			{"��ħ����", 1, 3200},
			{"ʥħ����", 1, 1600},
			{"������", 1, 800},
			{"������淨��", 1, 400},
			{"�������·���", 1, 200},
			{"������鷨��", 1, 100},
			{"�챩���ڷ���", 1, 50},
			{"�����������", 1, 25},
			
			{"�������", 1, 8000},
			{"�������", 1, 6400},
			{"�������", 1, 3200},
			{"ʥ�����", 1, 1600},
			{"��������", 1, 800},
			{"���������", 1, 400},
			{"����㷨����", 1, 200},
			{"������������", 1, 100},
			{"����������", 1, 50},
			{"����Ԫ������", 1, 25},
			
			{"��ҵ��", 1, 5},
		}

						
local _ot = {["��ҵ��"]=1, ["��ҵ�����"]=1, ["��ҵ���Ů"]=1, ["����Ԫ������"]=1, ["����������"]=1, ["������������"]=1,
			["����㷨����"]=1, ["���������"]=1, ["��������"]=1, ["ʥ�����"]=1, ["�������"]=1, ["�����������"]=1, 
			["�챩���ڷ���"]=1, ["������鷨��"]=1, ["�������·���"]=1, ["������淨��"]=1, ["������"]=1, ["ʥħ����"]=1, 
			["��ħ����"]=1, ["�������ս��"]=1, ["��������ս��"]=1, ["��������ս��"]=1, ["��������ս��"]=1, ["��������ս��"]=1, 
			["����ս��"]=1, ["ʥ��ս��"]=1, ["����ս��"]=1, ["����Ԫ������"]=1, ["����������"]=1, ["������������"]=1, 
			["����㷨����"]=1, ["���������"]=1, ["��������"]=1, ["ʥ�����"]=1, ["�������"]=1, ["����Ԫ������"]=1, 
			["����������"]=1, ["������������"]=1, ["����㷨����"]=1, ["���������"]=1, ["��������"]=1, ["ʥ�����"]=1, 
			["�������"]=1, ["�����������"]=1, ["�챩��������"]=1, ["�����������"]=1, ["������������"]=1, ["�����������"]=1, 
			["��������"]=1, ["ʥħ����"]=1, ["��ħ����"]=1, ["�����������"]=1, ["�챩���ڷ���"]=1, ["������鷨��"]=1, 
			["�������·���"]=1, ["������淨��"]=1, ["������"]=1, ["ʥħ����"]=1, ["��ħ����"]=1, ["�������ս��"]=1, 
			["��������ս��"]=1, ["��������ս��"]=1, ["��������ս��"]=1, ["��������ս��"]=1, ["����ս��"]=1, ["ʥ��ս��"]=1, 			
			["����ս��"]=1, ["�������ս��"]=1, ["��������ս��"]=1, ["��������ս��"]=1, ["��������ս��"]=1, ["��������ս��"]=1, 
			["����ս��"]=1, ["ʥ��ս��"]=1, ["����ս��"]=1, ["����Ԫ��ͷ��"]=1, ["�������ͷ��"]=1, ["��������ͷ��"]=1,
			["����㷨ͷ��"]=1, ["�����ͷ��"]=1, ["�������ͷ��"]=1, ["�챩����ͷ��"]=1, ["�������ͷ��"]=1, ["��������ͷ��"]=1,
			["�������ͷ��"]=1, ["�������ͷ��"]=1, ["��������ͷ��"]=1, ["��������ͷ��"]=1, ["��������ͷ��"]=1, ["��������ͷ��"]=1,
			["����Ԫ������"]=1, ["�����������"]=1, ["������������"]=1, ["����㷨����"]=1, ["���������"]=1, ["�����������"]=1,
			["�챩��������"]=1, ["�����������"]=1, ["������������"]=1, ["�����������"]=1, ["�����������"]=1, ["������������"]=1,
			["������������"]=1, ["������������"]=1, ["������������"]=1, ["����Ԫ��ѥ��"]=1, ["�������ѥ��"]=1, ["��������ѥ��"]=1,
			["����㷨ѥ��"]=1, ["�������ѥ��"]=1, ["�챩����ѥ��"]=1, ["��������ѥ��"]=1, ["�������ѥ��"]=1, ["�������ѥ��"]=1,
			["�������ѥ��"]=1, ["�����ѥ��"]=1, ["��������ѥ��"]=1, ["��������ѥ��"]=1, ["��������ѥ��"]=1, ["��������ѥ��"]=1,
			["����Ԫ������"]=1, ["�����������"]=1, ["������������"]=1, ["����㷨����"]=1, ["���������"]=1, ["�����������"]=1,
			["�챩��������"]=1, ["�����������"]=1, ["������������"]=1, ["�����������"]=1, ["�����������"]=1, ["������������"]=1,
			["������������"]=1, ["������������"]=1, ["������������"]=1, ["����Ԫ����ָ"]=1, ["��������ָ"]=1, ["����������ָ"]=1,
			["����㷨��ָ"]=1, ["�������ָ"]=1, ["���������ָ"]=1, ["�챩���ڽ�ָ"]=1, ["��������ָ"]=1, ["�������½�ָ"]=1,
			["��������ָ"]=1, ["��������ָ"]=1, ["���������ָ"]=1, ["���������ָ"]=1, ["���������ָ"]=1, ["���������ָ"]=1,
			["����Ԫ������"]=1, ["�����������"]=1, ["����㷨����"]=1, ["���������"]=1, ["�����������"]=1, ["�챩��������"]=1,
			["�����������"]=1, ["������������"]=1, ["������������"]=1, ["�����������"]=1, ["�����������"]=1, ["������������"]=1,
			["������������"]=1, ["������������"]=1, ["������������"]=1, ["����BOSS�ٻ���"]=1, ["1���﹥��ʯ"]=1, ["1��ħ����ʯ"]=1,
			["1��������ʯ"]=1, ["1�������ʯ"]=1, ["1��ħ����ʯ"]=1, ["1��������ʯ"]=1
}

--��������������������ͼ����ʾ��������������������
function openTreasureHouse_show(player)
	local level = lualib:Level(player)
	if level > 59 then 
		AddSEIcon(player, 2, -4, "̽��", 1800200079, "����ʱ", "openTreasureHouse","","̽���ü�Ʒװ��")
	else
		AddSEIcon(player, 2, -4, "̽��", 1800200079, "����ʱ", "openTreasureHouse","","65������̽��")
	end 
	
    --  AddIconMagic(player, "̽��",1094200000 , 0,62, 150)
	return ""
end
 
-------------------ͼ�걻���-----------------------
function openTreasureHouse(player)
	
	local level = lualib:Level(player)
	if level < 60 then 
		return ""
	end 
	-------------weiduan--------------
	if lualib:GetClientType(player) == 0 then
		local score = lualib:GetInt(player, "tanbao_score")
		local newDisplay = playDisplayFive(player)
		local treasureTxt = lualib:GetDBStr("treasureMsgDataBase")
		local strDataBase = {}
		if treasureTxt ~= "" then
			strDataBase = json.decode(treasureTxt)
		end
		
		local job = tonumber(lualib:Job(player))
		BayeEquip[2]= sheng_tab[job][1]
		BayeEquip[3]= sheng_tab[job][2]
		BayeEquip[5]= sheng_tab[job][3]
		BayeEquip[6]= sheng_tab[job][4]
		lualib:ShowFormWithContent(player, "form�ļ���", "TreasureWnd#".. serialize(ZhiZunEquip) .. "#" .. serialize(BayeEquip) .. "#" .. score .. "#" .. serialize(newDisplay) .. "#" .. serialize(strDataBase))
		return ""
	end
	---------------------------------
	--lualib:SetDBNum("ActivityUnderway",0)
	--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
	--lualib:SysPromptMsg(player, ""..ActivityVar)
	lualib:ShowFormWithContent(player, "�ű���Sc", "UI.Asc_OpenWindow(0, \"TreasureWnd.sc\");")
    return ""
end

function DataInform(player)
	local data = {}
	local score = lualib:GetInt(player, "tanbao_score")
	local newDisplay = playDisplayFive(player)
	local treasureTxt = lualib:GetDBStr("treasureMsgDataBase")
	local strDataBase = {}
	if treasureTxt ~= "" then
		strDataBase = json.decode(treasureTxt)
	end
	
	local job = tonumber(lualib:Job(player))
	BayeEquip[2]= sheng_tab[job][1]
	BayeEquip[3]= sheng_tab[job][2]
	BayeEquip[5]= sheng_tab[job][3]
	BayeEquip[6]= sheng_tab[job][4]
	
	data[1], data[2], data[3], data[4], data[5] = ZhiZunEquip, BayeEquip, score, newDisplay, strDataBase
	lualib:ShowFormWithContent(player, "�ű���Sc", "TreasureWnd.ContentFill("..serializeSc(data)..");")
	return ""
end

function tanbaoRandomItem()
	local rand = math.random(1, 100)
	local tb = {}
	if rand <= 3 then
		tb = tanbao_equip
	elseif rand <= 13 then
		tb = tanbao_weapon
	elseif rand <= 25 then
		tb = tanbao_cloth
	elseif rand <= 100 then
		tb = tanbao_basic
	end
	local t = {}	
	local t_rate = {}					
	for i = 1 , #tb do 
		t[i] = tb[i][1]
		t_rate[i] = tb[i][3]
	end	
	local maxs = 0
	local rate_t = {}
	for i = 1, #t_rate do
		maxs = maxs + t_rate[i]
		rate_t[i] = maxs
	end
	
	local key = 1
	local rand = math.random(1, maxs)
	for i = 1, #rate_t do
		if rand < rate_t[i] then
			key = i
			break
		end
	end
	return t[key]
end
function seekTreasure(player, yb)
	yb = tonumber(yb)
	local table t = {}
	t = 	lualib:GetItemsByKeys(player, "����Կ��", false, true, false, false)
	local cost = 200
	if 1800 == yb then
		cost = 180
	end
	if tonumber(yb) <= lualib:GetIngot(player) or t[1] ~= nil then
		local chargeStr = lualib:GetStr(player, "player_treasures")
		if chargeStr ~= nil and chargeStr ~= "" then 
			local chargeTb = json.decode(chargeStr)
			local length = 0
			for k,v in pairs(chargeTb) do
				length=length+1
			end
			if math.floor(tonumber(yb)/cost) + length > 280 then
				-- lualib:MsgBox(player, "���زֿ�����,��������ֿ�!")
				lualib:ShowFormWithContent(player,"�ű���Sc","TreasureWnd.Msg_Box();")
				return ""
			end
		end
		
		local leftYb = tonumber(yb)
		while leftYb > 0 do
			local str = lualib:GetStr(player, "player_treasures")
			local temp = 1
			if lualib:DelItem(player, "����Կ��", 1, 2, "̽��", player) then
				temp = 2
			elseif lualib:SubIngot(player, cost, "̽������", "�û�") then
				--********************************--
				local indexx = lualib:GetDBNum("consumeTerm")
				local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + cost
				RecordTop10ConsumeInfo(player,totalYb)
				--********************************--
				temp = 2
			end
			if temp == 2 then
				------------ÿ�ջ�Ծ��̽��-------
				local count = lualib:GetDayInt(player, "activityDgr_tb")
				if 0 == count then
					lualib:SetDayInt(player, "activityDgr_tb", 1)
					lualib:SetDayInt(player, "totalActivityDegree", lualib:GetDayInt(player, "totalActivityDegree") + 15)
					ActivityDegree_setFlag(player)
				end
				------------ÿ�ջ�Ծ��̽��END-------
				local randomNumItem = tanbaoRandomItem()
				--�洢���̽�����ã�������
				local player_treasure = {}
				local displayStr = lualib:GetStr(player, "player_displayT")
				local display_treasure = {}
				if str ~= nil and str ~= "" and displayStr ~= "" then
					player_treasure = json.decode(str)
					display_treasure = json.decode(displayStr)
					local length = 0
					for k,v in pairs(player_treasure) do
						length=length+1
					end
					local a = length
					local b = #display_treasure		
					if player_treasure[randomNumItem] ~= nil then
						player_treasure[randomNumItem] = player_treasure[randomNumItem]+1
					else
						player_treasure[randomNumItem] = 1
					end
					display_treasure[b + 1] = randomNumItem
					TreasureMsgDataBase(player,randomNumItem)
				else
					player_treasure = {}
					display_treasure = {}
					player_treasure[randomNumItem] = 1
					display_treasure[1] = randomNumItem
					TreasureMsgDataBase(player,randomNumItem)
				end
				lualib:SetStr(player, "player_treasures", json.encode(player_treasure))
				lualib:SetStr(player, "player_displayT", json.encode(display_treasure))
				local tbScore = lualib:GetInt(player, "tanbao_score")
				lualib:SetInt(player, "tanbao_score", tbScore + 1)
				leftYb = leftYb - cost
				
			end 
		end
		local isExchangePage = lualib:GetInt(player, "isExchangePage")
		local tbScore = lualib:GetInt(player, "tanbao_score")
		--[[if tbScore > 0 and isExchangePage == 0 then
			lualib:SetInt(player, "isExchangePage", 1)
			DelIcon(player,"ս��")
			AddSEIcon(player, 2, -4, "����װ��", 1800200039, "����ʱ", "openExchangePage","","�һ���Ʒװ��")		
			AddSEIcon(player, 2, -5, "ս��", 1800200055, "����ʱ", "openMarsPage","","Ӣ��ս������һ��ս��")
		end--]]
		local newDisplay = playDisplayFive(player)
		local strDataBase = json.decode(lualib:GetDBStr("treasureMsgDataBase"))
		local str =  json.decode(lualib:GetStr(player, "player_treasures"))
		strDataBase["length"] = #strDataBase
		local newStr = {}
		for k,v in pairs(str) do
			newStr[#newStr+1] = {k,v}
		end
		lualib:ShowFormWithContent(player, "�ű���Sc", "TreasureWnd.isTreasureBagOpen(".. serializeSc(newStr) .. ");TreasureWnd.Update2(" .. tbScore .. "," .. serializeSc(newDisplay) .. "," .. serializeSc(strDataBase) .. ");")
	else 	
		lualib:ShowFormWithContent(player,"�ű���Sc","TreasureWnd.MsgAttention(" .. 1 .. ");")
		return""
	end
	return ""
end

function TreasureMsgDataBase(player,randomNumItem)
	local serviceDisplay = ""
	if _ot[randomNumItem] == 1 then
		serviceDisplay = randomNumItem
	else
		return ""
	end
	local str = lualib:GetDBStr("treasureMsgDataBase")
	local treasureMsgDataBase = {}
	local name = lualib:Name(player)
	if str ~= nil and str ~= "" then
		treasureMsgDataBase = json.decode(str)
		local a = #treasureMsgDataBase
		treasureMsgDataBase[a + 1] = name .. ":" .. serviceDisplay
	else
		treasureMsgDataBase = {}
		treasureMsgDataBase[1] = name .. ":" .. serviceDisplay
	end
	local length = #treasureMsgDataBase
	if length > 5 then
		for i = 1, length - 5 do
			table.remove(treasureMsgDataBase, i)
		end
	end
	treasureMsgDataBase["length"] = #treasureMsgDataBase
	lualib:SetDBStrEx("treasureMsgDataBase", json.encode(treasureMsgDataBase), 0)
	return ""
end

function setTreasureMsg(player)
	local str = lualib:GetDBStr("treasureMsgDataBase")
	if str ~= "" then
		local tab = json.decode(str)
		tab["length"] = #tab
		lualib:ShowFormWithContent(player, "�ű���Sc", "TreasureWnd.SetTreasureMsg(" .. serializeSc(tab) .. ");")
	end	
	return ""
end

function playDisplayFive(player)
	local str = lualib:GetStr(player, "player_displayT")
	if str == "" then
		return ""
	end
	local treasure = json.decode(str)
	--ȡ������������ʾ
	local length = #treasure
	if length > 5 then
		for i = 1, length - 5 do
			table.remove(treasure, 1)
		end
		lualib:SetStr(player, "player_displayT", json.encode(treasure))
	end
	treasure["length"] = #treasure
	return treasure
end