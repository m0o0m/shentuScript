local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local jiage1 = 100 --̽��1�ε�Ԫ���۸�
local jiage10 = 950 --̽��10�ε�Ԫ���۸�
local jiage50 = 4500 --̽��50�ε�Ԫ���۸�

local cangku_rongliang = 100 --̽���ֿ��С

--��������ʾ�����Ľ���
local item_xianshi = {
                    "����", 
                    "Ǯ��(50��)", 
                    "Ǭ����(40��)", 
                    "999��õ�廨", 
                    "��ħʯ", 
                    "������", 
                    "������", 
                    "��ӡ������", 
                    "3���������", 
                    "����ӡ", 
                    "������(20��)", 
                    "�߼�ת��ʯ", 
                    "�������10��", 
                    "�߼���Ԫ����", 
                    "�߼��﹥������", 
                    "�߼�ħ��������", 
                    "�߼�����������", 
                    "�߼�HP������", 
                    "������(δ����)", 
                    "������(δ����)", 
                    "ѩ������(δ����)", 
                    "������(δ����)", 
                    "����ħʨ(δ����)", 
                    "����(δ����)", 
                    "��������(δ����)", 
                    "������(δ����)", 
                    "��ӥ(δ����)"
                    }

--ʵ���ܻ�õĽ���
local item = {
	 --��Ʒ������������������ռ������أ��Ƿ���ʾ��̽�������У�1Ϊ��ʾ��0����ʾ������Ʒͼ����
        {"��Ԫ��", 1, 172269, 1, 1990130007}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"���ﾭ�鵤", 2, 38282, 1, 1990135356}, 
        {"ѭ��ħ��", 1, 45938, 1, 1990135255}, 
        {"���", 1, 68907, 1, 1990100019}, 
        {"���鵤", 1, 68907, 1, 1990135239}, 
        {"9��õ�廨", 1, 38282, 1, 1990135279}, 
        {"��ɽ�Ǵ��;�(5��)", 1, 34453, 1, 1990125000}, 
        {"���Ǵ���ʯ(5��)", 1, 34453, 1, 1990125001}, 
        {"�����ر�ͼ", 1, 34453, 1, 1990125010}, 
        {"��λʯ", 1, 34453, 1, 1990125002}, 
        {"���ĵ�", 1, 34453, 1, 1990120028}, 
        {"1.5���������", 1, 34453, 1, 1990120053}, 
        {"ף����ˮ", 1, 34453, 1, 1990130006}, 
        {"�������", 1, 34453, 1, 1990135297}, 
        {"�������(10��)", 1, 34453, 1, 1990135284}, 
        {"������", 1, 34453, 1, 1990135238}, 
        {"�����ر�ͼ", 1, 34453, 1, 1990135252}, 
        {"���ﻹ�굤", 1, 34453, 1, 1990135357}, 
        {"Ǯ��(2��)", 1, 34453, 1, 1990145002}, 
        {"Ǯ��(2��)", 1, 34453, 1, 1990145002}, 
        {"Ǯ��(2��)", 1, 34453, 1, 1990145002}, 
        {"Ǯ��(2��)", 1, 34453, 1, 1990145002}, 
        {"Ǯ��(2��)", 1, 34453, 1, 1990145002}, 
        {"�������ﾭ�鵤", 1, 22969, 1, 1990135356}, 
        {"˫���������", 1, 17226, 1, 1990120029}, 
        {"�޸���ˮ", 1, 17226, 1, 1990135043}, 
        {"�����ر�ͼ", 1, 17226, 1, 1990135240}, 
        {"Ǯ��(5��)", 1, 17226, 1, 1990145002}, 
        {"Ǯ��(10��)", 1, 17226, 1, 1990145002}, 
        {"�������ﾭ�鵤", 1, 11484, 1, 1990135356}, 
        {"ս����", 1, 6890, 1, 1990120026}, 
        {"3���������", 1, 6890, 1, 1990120030}, 
        {"���;��鵤", 1, 6890, 1, 1990135239}, 
        {"�м��ر�ͼ", 1, 6890, 1, 1990135241}, 
        {"Ǯ��(50��)", 1, 6890, 1, 1990145002}, 
        {"������(10��)", 1, 4593, 1, 1990145005}, 
        {"99��õ�廨", 1, 3480, 1, 1990135280}, 
        {"��ң����", 1, 3445, 1, 1990120081}, 
        {"��Ԫ��", 1, 114846, 1, 1990130007}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"���ﾭ�鵤", 3, 38282, 1, 1990135356}, 
        {"���", 1, 68907, 1, 1990100019}, 
        {"���鵤", 1, 68907, 1, 1990135239}, 
        {"9��õ�廨", 1, 38282, 1, 1990135279}, 
        {"��ɽ�Ǵ���", 1, 34453, 1, 1990125000}, 
        {"���Ǵ���", 1, 34453, 1, 1990125001}, 
        {"�м��ر�ͼ", 1, 34453, 1, 1990125010}, 
        {"��λʯ", 1, 34453, 1, 1990125002}, 
        {"���ĵ�", 1, 34453, 1, 1990120028}, 
        {"1.5���������", 1, 34453, 1, 1990120053}, 
        {"ף����ˮ", 1, 34453, 1, 1990130006}, 
        {"�������", 1, 34453, 1, 1990135297}, 
        {"�������(10��)", 1, 34453, 1, 1990135284}, 
        {"������", 1, 34453, 1, 1990135238}, 
        {"���ﻹ�굤", 1, 34453, 1, 1990135357}, 
        {"Ǯ��(2��)", 1, 34453, 1, 1990145002}, 
        {"Ǯ��(2��)", 1, 34453, 1, 1990145002}, 
        {"Ǯ��(2��)", 1, 34453, 1, 1990145002}, 
        {"Ǯ��(2��)", 1, 34453, 1, 1990145002}, 
        {"Ǯ��(2��)", 1, 34453, 1, 1990145002}, 
        {"�������ﾭ�鵤", 1, 22969, 1, 1990135356}, 
        {"˫���������", 1, 17226, 1, 1990120029}, 
        {"�޸���ˮ", 1, 17226, 1, 1990135043}, 
        {"�����ر�ͼ", 1, 17226, 1, 1990135240}, 
        {"Ǯ��(5��)", 1, 17226, 1, 1990145002}, 
        {"Ǯ��(10��)", 1, 17226, 1, 1990145002}, 
        {"�������ﾭ�鵤", 1, 11484, 1, 1990135356}, 
        {"ս����", 1, 6890, 1, 1990120026}, 
        {"3���������", 1, 6890, 1, 1990120030}, 
        {"���;��鵤", 1, 6890, 1, 1990135239}, 
        {"�м��ر�ͼ", 1, 6890, 1, 1990135241}, 
        {"Ǯ��(50��)", 1, 6890, 1, 1990145002}, 
        {"������(10��)", 1, 4593, 1, 1990145005}, 
        {"99��õ�廨", 1, 3480, 1, 1990135280}, 
        {"��ң����", 1, 3445, 1, 1990120081}, 
        {"��ң��(10��)", 1, 3445, 1, 1990125003}, 
        {"��ң��(20��)", 1, 3445, 1, 1990125003}, 
        {"��λʯ", 1, 3445, 1, 1990125002}, 
        {"�������(50��)", 1, 3445, 1, 1990135284}, 
        {"����", 1, 3445, 1, 1990165504}, 
        {"�������ﾭ�鵤", 1, 2296, 1, 1990135356}, 
        {"������(20��)", 1, 2296, 1, 1990145005}, 
        {"Ǭ����(10��)", 1, 1722, 1, 1990145004}, 
        {"��ң��(50��)", 1, 68, 1, 1990125003}, 
        {"�߼��ر�ͼ", 1, 68, 1, 1990135242}, 
        {"Ǭ����(20��)", 1, 57, 1, 1990145004}, 
        {"999��õ�廨", 1, 34, 1, 1990135281}, 
        {"Ǭ����(30��)", 1, 34, 1, 1990145004}, 
        {"Ǭ����(40��)", 1, 17, 1, 1990145004}, 
        {"�ͼ��﹥������", 1, 17226, 1, 1990120056}, 
        {"�м��﹥������", 1, 5742, 1, 1990120056}, 
        {"�߼��﹥������", 1, 2026, 1, 1990120056}, 
        {"�ͼ�ħ��������", 1, 17226, 1, 1990120059}, 
        {"�м�ħ��������", 1, 5742, 1, 1990120059}, 
        {"�߼�ħ��������", 1, 2026, 1, 1990120059}, 
        {"�ͼ�����������", 1, 17226, 1, 1990120062}, 
        {"�м�����������", 1, 5742, 1, 1990120062}, 
        {"�߼�����������", 1, 2026, 1, 1990120062}, 
        {"�ͼ����������", 1, 17226, 1, 1990120065}, 
        {"�м����������", 1, 5742, 1, 1990120065}, 
        {"�߼����������", 1, 2026, 1, 1990120065}, 
        {"�ͼ�ħ��������", 1, 17226, 1, 1990120068}, 
        {"�м�ħ��������", 1, 5742, 1, 1990120068}, 
        {"�߼�ħ��������", 1, 2026, 1, 1990120068}, 
        {"�ͼ�HP������", 1, 17226, 1, 1990120071}, 
        {"�м�HP������", 1, 5742, 1, 1990120071}, 
        {"�߼�HP������", 1, 2026, 1, 1990120071}, 
        {"�ͼ�MP������", 1, 17226, 1, 1990120074}, 
        {"�м�MP������", 1, 5742, 1, 1990120074}, 
        {"�߼�MP������", 1, 2026, 1, 1990120074}, 
        {"��Ԫ����", 10, 34453, 1, 1990135351}, 
        {"������", 1, 34453, 1, 1990130008}, 
        {"��ӡ������", 1, 34453, 1, 1990130025}, 
        {"��ħʯ", 1, 68, 1, 1990135305}, 
        {"����ӡ", 1, 34453, 1, 1990135336}, 
        {"�ͼ���Ԫ����", 1, 34453, 1, 1990135351}, 
        {"�м���Ԫ����", 1, 11484, 1, 1990135352}, 
        {"�߼���Ԫ����", 1, 3445, 1, 1990135353}, 
        {"������", 1, 34453, 1, 1990120443}, 
        {"��Ԫ��", 1, 114846, 1, 1990130007}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"Ǯ��(1��)", 1, 68907, 1, 1990145002}, 
        {"���ﾭ�鵤", 3, 38282, 1, 1990135356}, 
        {"���", 1, 68907, 1, 1990100019}, 
        {"���鵤", 1, 68907, 1, 1990135239}, 
        {"9��õ�廨", 1, 38282, 1, 1990135279}, 
        {"��ɽ�Ǵ���ʯ", 1, 34453, 1, 1990125000}, 
        {"���Ǵ���ʯ", 1, 34453, 1, 1990125001}, 
        {"�߼��ر�ͼ", 1, 34453, 1, 1990125010}, 
        {"��λʯ", 1, 34453, 1, 1990125002}, 
        {"���ĵ�", 1, 34453, 1, 1990120028}, 
        {"1.5���������", 1, 34453, 1, 1990120053}, 
        {"ף����ˮ", 1, 34453, 1, 1990130006}, 
        {"�������", 1, 34453, 1, 1990135297}, 
        {"�������(50��)", 1, 34453, 1, 1990135284}, 
        {"������", 1, 34453, 1, 1990135238}, 
        {"���ﻹ�굤", 1, 34453, 1, 1990135357}, 
        {"Ǯ��(2��)", 1, 34453, 1, 1990145002}, 
        {"Ǯ��(2��)", 1, 34453, 1, 1990145002}, 
        {"Ǯ��(2��)", 1, 34453, 1, 1990145002}, 
        {"Ǯ��(2��)", 1, 34453, 1, 1990145002}, 
        {"Ǯ��(2��)", 1, 34453, 1, 1990145002}, 
        {"�������ﾭ�鵤", 1, 22969, 1, 1990135356}, 
        {"˫���������", 1, 17226, 1, 1990120029}, 
        {"�޸���ˮ", 1, 17226, 1, 1990135043}, 
        {"�����ر�ͼ", 1, 17226, 1, 1990135240}, 
        {"Ǯ��(5��)", 1, 17226, 1, 1990145002}, 
        {"Ǯ��(10��)", 1, 17226, 1, 1990145002}, 
        {"�������ﾭ�鵤", 1, 11484, 1, 1990135356}, 
        {"ս����", 1, 6890, 1, 1990120026}, 
        {"3���������", 1, 6890, 1, 1990120030}, 
        {"���;��鵤", 1, 6890, 1, 1990135239}, 
        {"�м��ر�ͼ", 1, 6890, 1, 1990135241}, 
        {"Ǯ��(50��)", 1, 6890, 1, 1990145002}, 
        {"������(10��)", 1, 4593, 1, 1990145005}, 
        {"99��õ�廨", 1, 3480, 1, 1990135280}, 
        {"��ң����", 1, 3445, 1, 1990120081}, 
        {"��ң��(10��)", 1, 3445, 1, 1990125003}, 
        {"��ң��(20��)", 1, 3445, 1, 1990125003}, 
        {"��λʯ(100��)", 1, 3445, 1, 1990125002}, 
        {"�������(50��)", 1, 3445, 1, 1990135284}, 
        {"����", 1, 3445, 1, 1990165504}, 
        {"�������ﾭ�鵤", 1, 2296, 1, 1990135356}, 
        {"������(20��)", 1, 2296, 1, 1990145005}, 
        {"Ǭ����(10��)", 1, 1722, 1, 1990145004}, 
        {"��ң��(500��)", 1, 68, 1, 1990125003}, 
        {"�߼��ر�ͼ", 1, 68, 1, 1990135242}, 
        {"Ǭ����(20��)", 1, 57, 1, 1990145004}, 
        {"999��õ�廨", 1, 34, 1, 1990135281}, 
        {"Ǭ����(30��)", 1, 34, 1, 1990145004}, 
        {"Ǭ����(40��)", 1, 17, 1, 1990145004}, 
        {"�ͼ��﹥������", 1, 17226, 1, 1990120056}, 
        {"�м��﹥������", 1, 5742, 1, 1990120056}, 
        {"�߼��﹥������", 1, 2026, 1, 1990120056}, 
        {"�ͼ�ħ��������", 1, 17226, 1, 1990120059}, 
        {"�м�ħ��������", 1, 5742, 1, 1990120059}, 
        {"�߼�ħ��������", 1, 2026, 1, 1990120059}, 
        {"�ͼ�����������", 1, 17226, 1, 1990120062}, 
        {"�м�����������", 1, 5742, 1, 1990120062}, 
        {"�߼�����������", 1, 2026, 1, 1990120062}, 
        {"�ͼ����������", 1, 17226, 1, 1990120065}, 
        {"�м����������", 1, 5742, 1, 1990120065}, 
        {"�߼����������", 1, 2026, 1, 1990120065}, 
        {"�ͼ�ħ��������", 1, 17226, 1, 1990120068}, 
        {"�м�ħ��������", 1, 5742, 1, 1990120068}, 
        {"�߼�ħ��������", 1, 2026, 1, 1990120068}, 
        {"�ͼ�HP������", 1, 17226, 1, 1990120071}, 
        {"�м�HP������", 1, 5742, 1, 1990120071}, 
        {"�߼�HP������", 1, 2026, 1, 1990120071}, 
        {"�ͼ�MP������", 1, 17226, 1, 1990120074}, 
        {"�м�MP������", 1, 5742, 1, 1990120074}, 
        {"�߼�MP������", 1, 2026, 1, 1990120074}, 
        {"��Ԫ����", 10, 34453, 1, 1990135351}, 
        {"������", 1, 34453, 1, 1990130008}, 
        {"��ӡ������", 1, 34453, 1, 1990130025}, 
        {"��ħʯ", 1, 68, 1, 1990135305}, 
        {"����ӡ", 1, 34453, 1, 1990135336}, 
        {"�ͼ���Ԫ����", 1, 34453, 1, 1990135351}, 
        {"�м���Ԫ����", 1, 11484, 1, 1990135352}, 
        {"�߼���Ԫ����", 1, 3445, 1, 1990135353}, 
        {"������", 1, 34453, 1, 1990120443}, 
        {"������(δ����)", 1, 68, 1, 1990120194}, 
        {"������(δ����)", 1, 57, 1, 1990120195}, 
        {"ѩ������(δ����)", 1, 49, 1, 1990120198}, 
        {"������(δ����)", 1, 43, 1, 1990120199}, 
        {"����ħʨ(δ����)", 1, 38, 1, 1990120200}, 
        {"����(δ����)", 1, 11, 1, 1990120214}, 
        {"��������(δ����)", 1, 68, 1, 1990120353}, 
        {"������(δ����)", 1, 11, 1, 1990120201}, 
        {"��ӥ(δ����)", 1, 11, 1, 1990120204}, 
}


-----------------------ͼ����ʾ-----------------------------
function tanbao_xianshi(player)	
	ShowTimeCount2(player, 0, 1903800050, "��Ѩ̽��",0,"") --��ʾ��Ѩ̽��ͼ��
end

-------------------ͼ�걻���-----------------------
function tanbao(player,huode)
	ShowTimeCount2(player, 0, 1903800050, "��Ѩ̽��",0,"") --��ʾ��Ѩ̽��ͼ��

	local cangku = {}
	if lualib:GetStr(player,"tanbao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"tanbao_cangku")) --ȡ��̽���ֿ�table
	end
	
	local msg = "#POS<X:380>##POS<Y:30>##IMAGE<ID:1902700031>#<@tanbaocangku#1 *01*̽���ֿ�> ����:"..#cangku.."/"..cangku_rongliang
		
	msg = msg .. "#POS<X:0>##POS<Y:0>#��Ѩ̽���л����ã�#COLORCOLOR_ORANGE#Ǯ����#COLOREND##COLORCOLOR_BLUE#������#COLOREND##COLORCOLOR_GREENG#ϡ�е���#COLOREND#  ʣ���ң�#COLORCOLOR_BLUE#"..lualib:GetGold(player).."#COLOREND#  <@web *01*���ٳ�ֵ>\n\n"
	
	msg = msg .. "#POS<X:0>##POS<Y:150>##IMAGE1902700037#<@jinxingtanbao#1 *01*̽��1��>(5���һ�Ѱ��ͼ1��)    #IMAGE1902700037#<@jinxingtanbao#2 *01*100Ԫ������Ѱ��ͼ>    #IMAGE1902700037#<@jinxingtanbao#3 *01*1000���ִ���Ѱ��ͼ>\n\n"	

	--��ʾ��̽������
--[[	msg = msg .. "#COLORCOLOR_BLUE#��̽�����桿#COLOREND#\n"
	local gonggao = {}
	if lualib:GetStr("0","tanbao_gonggao") ~= "" then
		gonggao = json.decode(lualib:GetStr("0","tanbao_gonggao")) --ȡ��̽������table
	end
	for k,v in pairs(gonggao) do
		msg = msg .. v .."\n"
	end]]

	--̽�������ʾ
	if huode ~= nil then
		msg = msg .. "#COLORCOLOR_ORANGE#��̽����á�#COLOREND#  "
		for k,v in pairs(huode) do
			msg = msg .. "#COLORCOLOR_GREENG#"..v.."#COLOREND#  "
		end
		lualib:RunClientScript(player, "ItemEffect", "choujiang", 0 .."#".. 200)
	end
	
	local str = [[<form default_parent="NpcTalk,Container">]]
	local x = 0
	local y = 30
	for i=1,#item_xianshi do
		str = str .. "<itemctrl id="..i.." x="..x.." y="..y.." w=35 h=35 init_item="..item_xianshi[i].." count=1 is_bound=false use_back=true />"
		x = x + 40
		if i == 9 then
			x = 0
			y = 70
			str = str .. "\n"
		elseif i == 18 then
			x = 0
			y = 110
			str = str .. "\n"
		elseif i == 27 then
			str = str .. "\n"
		end
	end
	msg = str .. "<text><![CDATA["..msg.."]]></text></form>"
	lualib:NPCTalkDetail(player, msg, 600, 240)
	return ""
end

function web(player)
    local name = lualib:Player_GetStrProp(player, lua_role_user_name)
    local userid = lualib:Player_GetAccountID(player)
    local grpid = lualib:GetGroupId()
    local msg = "http://pay.hzyotoy.com/index.do?mod=pay&groupid=" .. grpid
    lualib:SysMsg_SendWebPage(player, msg)
    return ""
end

--------------------����̽��----------------------------
function jinxingtanbao(player,types)
	local cishu = 1
	local types = tonumber(types)
	local jiage = 0
	if types == 1 then
		if lualib:ItemCountByKey(player, "Ѱ��ͼ", true, false, false, 2) >= 1 then
		else
			jiage = 50000
			if lualib:Player_IsGoldEnough(player,jiage,false) == false then
				lualib:SysMsg_SendPromptMsg(player,"��Ľ�Ҳ���,�޷�Ѱ����")
				--lualib:SysMsg_SendMsgDlg(player,1,"Ԫ�����㣡�Ƿ���ٳ�ֵ��#BUTTON0#���ٳ�ֵ#BUTTONEND##BUTTON0#�رմ���#BUTTONEND#", 100, "chongzhiqueren", "")
				tanbao(player)
				return ""
			end
		end
	elseif types == 2 then
		jiage = 100
		if lualib:Player_IsIngotEnough(player,jiage,false) == false then
			lualib:SysMsg_SendMsgDlg(player,1,"Ԫ�����㣡�Ƿ���ٳ�ֵ��#BUTTON0#���ٳ�ֵ#BUTTONEND##BUTTON0#�رմ���#BUTTONEND#", 100, "chongzhiqueren", "")
			tanbao(player)
			return ""
		end
	elseif types == 3 then
		jiage = 1000
		if lualib:Player_IsIntegralEnough(player, jiage) == false then
			lualib:SysMsg_SendPromptMsg(player,"��Ļ��ֲ���,�޷�Ѱ����")
			tanbao(player)
			return ""
		end
	end

	local cangku = {}
	if lualib:GetStr(player,"tanbao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"tanbao_cangku")) --ȡ��̽���ֿ�table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"tanbao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"tanbao_cangku_number")) --ȡ��̽���ֿ�����table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"tanbao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"tanbao_cangku_icon")) --ȡ��̽���ֿ�ͼ��table
	end
	
	local gonggao = {}
	if lualib:GetStr("0","tanbao_gonggao") ~= "" then
		gonggao = json.decode(lualib:GetStr("0","tanbao_gonggao")) --ȡ��̽������table
	end

	local huode = {} --������ű��λ�ý�����Ϣ��table
	
	if cishu + #cangku > cangku_rongliang then
		lualib:SysMsg_SendMsgDlg(player,1,"̽���ֿ��λ���㣬��ȡ���ֿ��еĵ��߻��߼���̽���������ԡ�#BUTTON0#�رմ���#BUTTONEND#", 100, "guanbi", "")
		tanbao(player)
		return ""
	end
	
	if types == 1 then
		if cishu == 1 and lualib:ItemCountByKey(player, "Ѱ��ͼ", true, false, false, 2) >= 1 then
			if not lualib:DelItem(player, "Ѱ��ͼ", 1, 2, "��Ѩ̽��", player) then --ɾ����
				return "�۳�����ʧ��"
			end
		else
			if lualib:Player_SubGold(player,jiage,false,"��Ѩ̽��",player) == false then --��Ԫ��
				lualib:SysMsg_SendWarnMsg(player,"�۳����ʧ�ܣ�")
				return ""
			end
		end
	elseif types == 2 then
		if lualib:Player_SubIngot(player,jiage,false,"��Ѩ̽��",player) == false then --��Ԫ��
			lualib:SysMsg_SendWarnMsg(player,"�۳�Ԫ��ʧ�ܣ�")
			return ""
		end
	elseif types == 3 then
		if lualib:Player_SubIntegral(player,jiage,"��Ѩ̽��",player) == false then --��Ԫ��
			lualib:SysMsg_SendWarnMsg(player,"�۳�����ʧ�ܣ�")
			return ""
		end
	end
	
	local suiji_zongzhi = 0  --�����ֵ
	local suiji = 0 --���ֵ
	
	--���Ȼ�������ֵ
	for k,v in pairs(item) do
		suiji_zongzhi = suiji_zongzhi + v[3]
	end
	
	--����̽������ѭ�����
	for i=1,cishu do
		suiji = math.random(suiji_zongzhi) --������ֵ
		local suiji_1 = 0
		--��ʼ�������ֵ��Ӧ�ĸ���Ʒ
		for k,v in pairs(item) do
			local suiji_2 = suiji_1 + v[3]
			if suiji >= suiji_1 and  suiji < suiji_2 then
				cangku[#cangku+1] = v[1] --������Ʒ��̽���ֿ�
				cangku_number[#cangku_number+1] = v[2] --��¼��Ʒ������̽���ֿ�
				cangku_icon[#cangku_icon+1] = v[5] --��¼��Ʒͼ�굽̽���ֿ�
				if v[4] == 1 then
					table.insert(gonggao,1,lualib:Time2Str("%Y-%m-%d %H:%M:%S",0).."  #COLORCOLOR_ORANGE#"..lualib:KeyName(player).."#COLOREND#��̽���л�ã�#COLORCOLOR_GREENG#"..v[1] .. "*" .. v[2].."#COLOREND#") --��¼��̽��������
					if #gonggao > 10 then
						table.remove(gonggao,11)
					end
				end
				huode[#huode+1] = "#COLORCOLOR_GREENG#".. v[1] .. "*" .. v[2] .. "#COLOREND#" --��¼����̽����ʾ��Ϣ
				break
			else
				suiji_1 = suiji_1 + v[3]
			end
		end
	end

	lualib:SetStr(player,"tanbao_cangku",json.encode(cangku)) --��̽���ֿ�table�����ַ�������
	lualib:SetStr(player,"tanbao_cangku_number",json.encode(cangku_number)) --��̽���ֿ�table�����ַ�������
	lualib:SetStr(player,"tanbao_cangku_icon",json.encode(cangku_icon)) --��̽���ֿ�table�����ַ�������
	lualib:SetStr("0","tanbao_gonggao",json.encode(gonggao)) --������table�����ַ�������
	local player_name = lualib:KeyName(player)
	lualib:SysMsg_SendCenterMsg(1,"��"..player_name.."�������� "..cishu.." ����Ѩ̽������ô����䱦��","") --��Ļ�м���ʾ
	tanbao(player,huode) --���ص�����tanbao��ʾ������̽�������Ʒ��Ϣ
	return ""
end

function chongzhiqueren(id,player,xuanzhe)
	if xuanzhe == 0 then
		web(player)
	end
end

function guanbi()
	return ""
end

--------------------------̽���ֿ�-------------------------------
function tanbaocangku(player,qizhiweizhi)
	qizhiweizhi = tonumber(qizhiweizhi)
	local cangku = {}
	if lualib:GetStr(player,"tanbao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"tanbao_cangku")) --ȡ��̽���ֿ�table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"tanbao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"tanbao_cangku_number")) --ȡ��̽���ֿ�����table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"tanbao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"tanbao_cangku_icon")) --ȡ��̽���ֿ�ͼ��table
	end

	if qizhiweizhi < 1 then
		qizhiweizhi = 1
	elseif qizhiweizhi > cangku_rongliang then
		qizhiweizhi = qizhiweizhi - 20
	end
	
	local yeshu = math.modf(qizhiweizhi/20) + 1 --��ǰҳ��
	
	--���ݲֿ���������ܹ�ҳ��
	local p1,p2 = math.modf(cangku_rongliang/20)
	if p2 > 0 then
		p1 = p1 + 1
	end
	
	local msg = "#COLORCOLOR_ORANGE#��̽���ֿ⡿#COLOREND# ����:"..#cangku.."/"..cangku_rongliang.."  #COLORCOLOR_BLUE#<@tanbaocangku#"..qizhiweizhi-20 .." *01*����һҳ��> "..yeshu.."/"..p1.." <@tanbaocangku#"..qizhiweizhi+20 .." *01*����һҳ��>#COLOREND#  <@tanbaocangku_quanbuquchu#"..qizhiweizhi.." *01*��ȫ��ȡ����>  <@tanbao *01*������̽����>\n\n"

	if cangku[qizhiweizhi] == nil then
		return msg
	end
	
	--��ʾ�ֿ���Ʒ��Ϣ
	local jieshuweizhi = qizhiweizhi+19
	
	if jieshuweizhi > #cangku then
		jieshuweizhi = #cangku
	end

	local p = 0 --��¼��Ʒ����Ϊ�ڼ���
	local str = [[<form default_parent="NpcTalk,Container">]]
	
	for i=qizhiweizhi,jieshuweizhi do
		p = p + 1
		--��ʾ��Ʒͼ��
		local yushu = p%4
		local x = 139 --���ȼ��
		local y = 50 --�߶ȼ��
		
		if yushu == 0 then
			yushu = 4
		end
		
		y = math.modf((p-1)/4) * y + 30
		if yushu == 1 then
			x = 0
		else
			x = (yushu-1) * x
		end
		msg = msg .. "#POS<X:".. x .. ">##POS<Y:"..y..">#"
		
		str = str .. "<itemctrl id="..i.." x="..x.." y="..y.." w=35 h=35 init_item="..cangku[i].." count="..cangku_number[i].." is_bound=false use_back=true />"
		
		msg = msg .. "#POS<X:".. x+40 .. ">##POS<Y:"..y+20 ..">#<@tanbaocangku_quwu#"..i.." *01*ȡ����Ʒ>\n"
		
		--��ʾ����
		local yushu = p%4
		local x = 139 --���ȼ��
		local y = 50 --�߶ȼ��
		if yushu == 0 then
			yushu = 4
		end
		
		y = math.modf((p-1)/4) * y + 30
		
		if yushu == 1 then
			x = 34
		else
			x = (yushu-1) * x + 34
		end
		
		msg = msg .. "#POS<X:".. x .. ">##POS<Y:"..y..">##COLORCOLOR_GREENG#"..cangku[i].."*"..cangku_number[i].."#COLOREND#\n"
	end
	msg = msg .. "\n"
	msg = str .. "<text><![CDATA["..msg.."]]></text></form>"
	lualib:SetPanelSize(player, 600, 300)
	return msg
end

-----------------̽���ֿ���Ʒȫ��ȡ��----------------------
function tanbaocangku_quanbuquchu(player,weizhi)
	local msg = ""
	local cangku = {}
	if lualib:GetStr(player,"tanbao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"tanbao_cangku")) --ȡ��̽���ֿ�table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"tanbao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"tanbao_cangku_number")) --ȡ��̽���ֿ�����table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"tanbao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"tanbao_cangku_icon")) --ȡ��̽���ֿ�����table
	end
	
	if #cangku > 0 then
	else
		lualib:SysMsg_SendMsgDlg(player,1,"û����Ʒ����ȡ�����Ƿ����̽����ã�#BUTTON0#����̽��#BUTTONEND##BUTTON0#�رմ���#BUTTONEND#", 100, "tanbaocangku_quanbuquchu1", "")
		return ""
	end

	local qizhiweizhi =math.modf((weizhi-1)/20) * 20 + 1
	if qizhiweizhi < 1 or qizhiweizhi > cangku_rongliang then
		qizhiweizhi = 1
	end
	
	local shuliang = 0
	for k,v in pairs(cangku_number) do
		shuliang = shuliang + v
	end
	
	if lualib:Player_GetBagFree(player) < shuliang then
		return "������λ����"..shuliang.."���������Ժ�������\n\n<@tanbaocangku#"..qizhiweizhi.." *01*����>\n"
	end
	
	for k,v in pairs(cangku) do
		lualib:AddItem(player,v,cangku_number[k],false,"̽��ȡ��Ʒ", player) --����Ʒ
		lualib:SysMsg_SendWarnMsg(player,"��̽���ֿ�ȡ����"..v.."*"..cangku_number[k])
		cangku[k] = nil
		cangku_number[k] = nil
		cangku_icon[k] = nil
	end
	lualib:SetStr(player,"tanbao_cangku",json.encode(cangku)) --��̽���ֿ�table�����ַ�������
	lualib:SetStr(player,"tanbao_cangku_number",json.encode(cangku_number)) --��̽���ֿ�table�����ַ�������
	lualib:SetStr(player,"tanbao_cangku_icon",json.encode(cangku_icon)) --��̽���ֿ�table�����ַ�������
	tanbaocangku(player,1)
	lualib:SetPanelSize(player, 600, 300)
	return msg
end

-----------------��ʾ�Ƿ����̽��----------------------
function tanbaocangku_quanbuquchu1(id,player,xuanzhe)

	if xuanzhe == 0 then
		tanbao(player)
	end
	return ""
end

-----------------̽���ֿ�ȡ��----------------------
function tanbaocangku_quwu(player,weizhi)
	local msg = ""
	weizhi = tonumber(weizhi)
	local cangku = {}
	if lualib:GetStr(player,"tanbao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"tanbao_cangku")) --ȡ��̽���ֿ�table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"tanbao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"tanbao_cangku_number")) --ȡ��̽���ֿ�����table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"tanbao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"tanbao_cangku_icon")) --ȡ��̽���ֿ�ͼ��table
	end
	
	local qizhiweizhi =math.modf((weizhi-1)/20) * 20 + 1
	
	if qizhiweizhi < 1 or qizhiweizhi > cangku_rongliang then
		qizhiweizhi = 1
	end

	if lualib:Player_GetBagFree(player) < cangku_number[weizhi] then
		return "������λ����"..cangku_number[weizhi].."���������Ժ�������\n\n<@tanbaocangku#"..qizhiweizhi.." *01*����>\n"
	end
	
	lualib:AddItem(player,cangku[weizhi],cangku_number[weizhi],false,"̽��ȡ��Ʒ", player) --����Ʒ
	lualib:SysMsg_SendWarnMsg(player,"��̽���ֿ�ȡ����"..cangku[weizhi].."*"..cangku_number[weizhi])
	table.remove(cangku,weizhi)
	table.remove(cangku_number,weizhi)
	table.remove(cangku_icon,weizhi)
	lualib:SetStr(player,"tanbao_cangku",json.encode(cangku)) --��̽���ֿ�table�����ַ�������
	lualib:SetStr(player,"tanbao_cangku_number",json.encode(cangku_number)) --��̽���ֿ�table�����ַ�������
	lualib:SetStr(player,"tanbao_cangku_icon",json.encode(cangku_icon)) --��̽���ֿ�table�����ַ�������
	lualib:SetPanelSize(player, 600, 300)
	return 	tanbaocangku(player,qizhiweizhi)
end