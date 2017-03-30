local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("map/�غ���ӡ����")
require("system/logic_def_lua")
require("system/log_action")
require("npc/�ؾ��ػ��߳���")

local time_talbe = 
	{
		{1, 3000, 1, "maptalk"},
		{2, 4000, 1, "gen_monster"},
		{3, 3500000, 1, "maptalk"},  --10���Ӿ���
		{4, 3590000, 1, "maptalk"},  --1���Ӿ���
		{5, 3600000, 1, "destroy"},
		{11, 3590000, 1, "maptalk"},
		{12, 3591000, 1, "maptalk"},
		{13, 3592000, 1, "maptalk"},
		{14, 3593000, 1, "maptalk"},
		{15, 3594000, 1, "maptalk"},
		{16, 3595000, 1, "maptalk"},
		{17, 3596000, 1, "maptalk"},
		{18, 3597000, 1, "maptalk"},
		{19, 3598000, 1, "maptalk"},
		{20, 3599000, 1, "maptalk"},
		{21, 15000, 1, "monster_bron"},
		{22, 60000, 1, "monster_bron"}, --1����
		{23, 120000, 1, "monster_bron"}, --2����
		{24, 180000, 1, "monster_bron"}, --3����
		{25, 210000, 1, "monster_bron"}, --3.5����
		{26, 240000, 1, "monster_bron"}, --4����
		{27, 270000, 1, "monster_bron"}, --4.5����
		{28, 300000, 1, "monster_bron"}, --5����
		--{29, 3000, 1000, "pohuai"}, --3�� ����ƻ��ߺ���ʯ����
	}
	--����˵��
local jz_maptalk_talbe =
{
	"��[�غ���ӡ]����������ӡ����ʿ����һ��Ҫ��ֹ�����߳���ӡ���ڹ������ǰ������10��ʱ����������һ����ӡ��ʿ",
	"�غ���ӡ����ʮ���Ӻ����������λ������ʿץ��ʱ������",
	"�غ���ӡ����һ���Ӻ����������λ������ʿ�����뿪�������������⣡",
	"�غ���ӡ����10������������λ������ʿ�����뿪�������������⣡",
	"�غ���ӡ����9������������λ������ʿ�����뿪�������������⣡",
	"�غ���ӡ����8������������λ������ʿ�����뿪�������������⣡",
	"�غ���ӡ����7������������λ������ʿ�����뿪�������������⣡",
	"�غ���ӡ����6������������λ������ʿ�����뿪�������������⣡",
	"�غ���ӡ����5������������λ������ʿ�����뿪�������������⣡",
	"�غ���ӡ����4������������λ������ʿ�����뿪�������������⣡",
	"�غ���ӡ����3������������λ������ʿ�����뿪�������������⣡",
	"�غ���ӡ����2������������λ������ʿ�����뿪�������������⣡",
	"�غ���ӡ����1������������λ������ʿ�����뿪�������������⣡"
}



function on_map_create(map)
    lualib:Debug("�غ���ӡ��ͼ�����ص���")
	for i = 1 ,#time_talbe do
		if not lualib:AddTimerEx(map, time_talbe[i][1], time_talbe[i][2], time_talbe[i][3], time_talbe[i][4], "") then
			lualib:Error("��ʱ�����ʧ�ܣ�")
		end 
	end
	lualib:Map_GenNpc(map, "�ؾ��ػ��߳���2", 29, 84, 0, 4)
	lualib:AddTimer(map, 29, 10000, -1, "pohuai")
    --�������뿪��ͼ�Ĵ�����
    lualib:AddTrigger(map,  lua_trigger_enter_map, "on_trigger_enter_map")
	lualib:AddTrigger(map,  lua_trigger_leave_map, "on_trigger_leave_map")
	lualib:AddTrigger(map, lua_trigger_post_die, "on_post_die")
end

function on_map_destroy(map)
	local playerguid = lualib:GetStr(map, "playerguid")
	local L_V = lualib:GetInt(playerguid, "L_V")
    local count = lualib:ItemCountByKey(playerguid, "�ٻ�ʯ", true, true, true, 1)
    if L_V < 35 then
        lualib:DelItem(playerguid, "�ٻ�ʯ", count, 1, "�����غ���ӡ����", "�����غ���ӡ") 
    end
	lualib:ClearTrigger(map)
end

function on_trigger_enter_map(player)
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n \n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.�ƻ��ߺܿ�����ƻ���ӡ�����Ѹ��ʹ���ٻ�ʯ�������ٻ��������з��أ����������λ�ý����ٻ���\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.�ٻ�ʯ��������ء����䡢��ҩʦ�ﶼ�в�����\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.ͨ�غ���Խ��з��Ƴ齱����ϡ������͸�ħʯ��ϡ����ƷŶ������^_^#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 335)
	local map = lualib:MapGuid(player)
	lualib:SetStr(map, "playerguid", player)
	--�������Ϊ��Ӫ1
	lualib:SetCamp(player, 1)
end



--����뿪��ͼ�Ĵ���������ʱ���ظ�0��Ӫ��ɾ�����ٻ�ʯ
function on_trigger_leave_map(player)

    --����һظ�Ϊ0��Ӫ
	local map = lualib:MapGuid(player)
    lualib:SetCamp(player, 0)
	local L_V = lualib:GetInt(player, "L_V")
	if L_V <= 35 then
		local count = lualib:ItemCountByKey(player, "�ٻ�ʯ", true, true, true, 1)
		if not lualib:DelItem(player, "�ٻ�ʯ", count, 1, "�뿪�����غ���ӡ", "�غ���ӡ") then
			lualib:SysMsg_SendTriggerMsg(player,"�۳���Ʒʧ��")
			return
		end
	end
	
	lualib:Map_DestroyDgn(map)
end

function destroy(map, tierid)
	lualib:Map_DestroyDgn(map)
    --��������ת�Ƶ�����Ĵ�������
    --local player_table = lualib:Map_GetRegionPlayers(map, 29, 84, 100, true)
	--lualib:SetCamp(player_table[1], 0)  -- ����һָ�Ϊ0��Ӫ
    --local lv = lualib:Level(player_table[1])
    --local count = lualib:ItemCountByKey(player_table[1], "�ٻ�ʯ", true, true, true, 1)
    --if lv <45 then
    --    lualib:DelItem(player_table[1], "�ٻ�ʯ", count, 1, "�����غ���ӡ����", "�����غ���ӡ")
    --end
end

-- ��ͼ˵��
function maptalk(map, tierid)
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002062#74#36#0#99999000")
		if tierid == 1	then		
			for i = 1, 5 do
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[1])
			end
		elseif  tierid == 3 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[2])
		elseif  tierid == 4 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[3])
		elseif  tierid == 11 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[4])
		elseif  tierid == 12 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[5])
		elseif  tierid == 13 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[6])
		elseif  tierid == 14 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[7])
		elseif  tierid == 15 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[8])
		elseif  tierid == 16 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[9])
		elseif  tierid == 17 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[10])
		elseif  tierid == 18 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[11])
		elseif  tierid == 19 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[12])
		elseif  tierid == 20 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[13])
		end
		
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#30#81#0#99999000")		
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#34#77#0#99999000")		
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#38#73#0#99999000")	
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#42#69#0#99999000")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#46#65#0#99999000")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#50#61#0#99999000")	
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#54#57#0#99999000")	
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#58#53#0#99999000")	
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#62#49#0#99999000")	
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#66#45#0#99999000")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#70#41#0#99999000")

	return true
end

--TDԭ��̬������ˢ��
function gen_monster(map, tierid)
	local playerguid = lualib:GetStr(map, "playerguid")
	local player_table = lualib:Map_GetRegionPlayers(map, 29, 84, 100, true)
	local lv = lualib:Level(playerguid)
	--�������Ϊ��Ӫ1
	lualib:SetCamp(playerguid, 1)


	-- TDԭ��̬������
		for i = 1, #TD_monster do
			local monsterguid = lualib:Map_GenSingleCampMonster(map, TD_monster[i][1], TD_monster[i][2], TD_monster[i][3], 4, TD_monster[i][4], false, 2)
			lualib:AddBuff(monsterguid, "���۱��", 0)
		end 
		
	if lv < 35 then
		lualib:SysMsg_SendBoardMsg(playerguid, "�ٻ�ʯ", "�ƻ��ߺܿ�����ƻ���ӡ�����Ѹ��ʹ�ð�������ٻ�ʯ�������ٻ��������з��أ����������λ�ý����ٻ���", 10000)
		lualib:AddItem(playerguid, "�ٻ�ʯ", 300, true, "��������غ���ӡ���ٻ�ʯ", "�����غ���ӡ")
	end	
		
	return true
				
end


function monster_bron(map, tierid)
	local playerguid = lualib:GetStr(map, "playerguid")
	local L_V = lualib:GetInt(playerguid, "L_V")

    if L_V >=35 then
        TD_mbron_1 = TD_mbron_1_2
        TD_mbron_2 = TD_mbron_2_2
        TD_mbron_3 = TD_mbron_3_2
        TD_mbron_4 = TD_mbron_4_2
        TD_mbron_5 = TD_mbron_5_2
        TD_mbron_6 = TD_mbron_6_2
        TD_mbron_7 = TD_mbron_7_2
        TD_mbron_8 = TD_mbron_8_2
    else
        TD_mbron_1 = TD_mbron_1_1
        TD_mbron_2 = TD_mbron_2_1
        TD_mbron_3 = TD_mbron_3_1
        TD_mbron_4 = TD_mbron_4_1
        TD_mbron_5 = TD_mbron_5_1
        TD_mbron_6 = TD_mbron_6_1
        TD_mbron_7 = TD_mbron_7_1
        TD_mbron_8 = TD_mbron_8_1
    end
    
	-- TD�������
	if tierid == 21	then	
		lualib:SysMsg_SendMapMsg(map, "��һ����������ʯ��ȥ����Ͻ������������������ڶ����ֽ���45�����֣�������׼����")
		lualib:SysMsg_SendBoardMsg(playerguid, "�غ���ӡ", "��һ����������ʯ��ȥ����Ͻ������������������ڶ����ֽ���45�����֣�������׼����", 10000)
		for i = 1, #TD_mbron_1 do
			local monsterguid = lualib:Map_GenSingleCampMonster(map, TD_mbron_1[i][1], TD_mbron_1[i][2], TD_mbron_1[i][3], 4, TD_mbron_1[i][4], false, 2)
			lualib:Monster_SetSeeker(monsterguid, path, 0, true)
		end  
	-- TD2�������
	elseif tierid == 22 then
		lualib:SysMsg_SendMapMsg(map, "�ڶ�����������ʯ��ȥ����Ͻ������������������������ֽ���1���Ӻ���֣�������׼����")
		lualib:SysMsg_SendBoardMsg(playerguid, "�غ���ӡ", "�ڶ�����������ʯ��ȥ����Ͻ������������������������ֽ���1���Ӻ���֣�������׼����", 10000)
		for i = 1, #TD_mbron_2 do
			local monsterguid = lualib:Map_GenSingleCampMonster(map, TD_mbron_2[i][1], TD_mbron_2[i][2], TD_mbron_2[i][3], 4, TD_mbron_2[i][4], false, 2)
			lualib:Monster_SetSeeker(monsterguid, path, 0, true)
		end  	
	-- TD3�������
	elseif tierid == 23 then
		lualib:SysMsg_SendMapMsg(map, "��������������ʯ��ȥ����Ͻ��������������������Ĳ��ֽ���1���Ӻ���֣�������׼����")
		lualib:SysMsg_SendBoardMsg(playerguid, "�غ���ӡ", "��������������ʯ��ȥ����Ͻ��������������������Ĳ��ֽ���1���Ӻ���֣�������׼����", 10000)
		for i = 1, #TD_mbron_3 do
			local monsterguid = lualib:Map_GenSingleCampMonster(map, TD_mbron_3[i][1], TD_mbron_3[i][2], TD_mbron_3[i][3], 4, TD_mbron_3[i][4], false, 2)
			lualib:Monster_SetSeeker(monsterguid, path, 0, true)
		end  	
	-- TD4�������
	elseif tierid == 24 then
		lualib:SysMsg_SendMapMsg(map, "���Ĳ���������ʯ��ȥ����Ͻ��������������������岨�ֽ���30�����֣�������׼����")
		lualib:SysMsg_SendBoardMsg(playerguid, "�غ���ӡ", "���Ĳ���������ʯ��ȥ����Ͻ��������������������岨�ֽ���30�����֣�������׼����", 10000)
		for i = 1, #TD_mbron_4 do
			local monsterguid = lualib:Map_GenSingleCampMonster(map, TD_mbron_4[i][1], TD_mbron_4[i][2], TD_mbron_4[i][3], 4, TD_mbron_4[i][4], false, 2)
			lualib:Monster_SetSeeker(monsterguid, path, 0, true)
		end  	
	-- TD5�������
	elseif tierid == 25 then
		lualib:SysMsg_SendMapMsg(map, "���岨��������ʯ��ȥ����Ͻ����������������������ֽ���30�����֣���׼���û�ȡ�����ɣ�")
		lualib:SysMsg_SendBoardMsg(playerguid, "�غ���ӡ", "���岨��������ʯ��ȥ����Ͻ����������������������ֽ���30�����֣���׼���û�ȡ�����ɣ�", 10000)
		for i = 1, #TD_mbron_5 do
			local monsterguid = lualib:Map_GenSingleCampMonster(map, TD_mbron_5[i][1], TD_mbron_5[i][2], TD_mbron_5[i][3], 4, TD_mbron_5[i][4], false, 2)
			lualib:Monster_SetSeeker(monsterguid, path, 0, true)
		end  	
	-- TD6�������
	elseif tierid == 26 then
		lualib:SysMsg_SendMapMsg(map, "������������ʯ��ȥ����Ͻ��������������������߲�ͷĿ�ֽ���30�����֣�������׼����")
		lualib:SysMsg_SendBoardMsg(playerguid, "�غ���ӡ", "������������ʯ��ȥ����Ͻ��������������������߲�ͷĿ�ֽ���30�����֣�������׼����", 10000)
		for i = 1, #TD_mbron_6 do
			local monsterguid = lualib:Map_GenSingleCampMonster(map, TD_mbron_6[i][1], TD_mbron_6[i][2], TD_mbron_6[i][3], 4, TD_mbron_6[i][4], false, 2)
			lualib:Monster_SetSeeker(monsterguid, path, 0, true)
		end  	
	-- TD7�������
	elseif tierid == 27 then
		lualib:SysMsg_SendMapMsg(map, "ͷĿ��������ʯ��ȥ����Ͻ�����������������BOSS����30�����֣�������׼����")
		lualib:SysMsg_SendBoardMsg(playerguid, "�غ���ӡ", "ͷĿ��������ʯ��ȥ����Ͻ�����������������BOSS����30�����֣�������׼����", 10000)
		for i = 1, #TD_mbron_7 do
			local monsterguid = lualib:Map_GenSingleCampMonster(map, TD_mbron_7[i][1], TD_mbron_7[i][2], TD_mbron_7[i][3], 4, TD_mbron_7[i][4], false, 2)
			lualib:Monster_SetSeeker(monsterguid, path, 0, true)
		end  
	elseif tierid == 28 then
		lualib:SysMsg_SendMapMsg(map, "BOSS�����ˣ�����BOSS����ͨ�أ���Ҽ��ͣ�")
		lualib:SysMsg_SendBoardMsg(playerguid, "�غ���ӡ", "BOSS�����ˣ�����BOSS����ͨ�أ���Ҽ��ͣ�", 10000)
		for i = 1, #TD_mbron_8 do
			local monsterguid = lualib:Map_GenSingleCampMonster(map, TD_mbron_8[i][1], TD_mbron_8[i][2], TD_mbron_8[i][3], 4, TD_mbron_8[i][4], false, 2)
			lualib:Monster_SetSeeker(monsterguid, path, 0, true)
		end  	
	
	end

	local player_name = lualib:Name(playerguid)
		--��¼�Զ���log
	lualib:LogWithId(player_name, fun_map_action, "", "", 0, 1, "�غ���ӡͨ��", "")	

	return true
		

				
end


local monster_pohuai = {"�ؾ��ƻ���1", "�ؾ��ƻ���2", "�ؾ��ƻ���3", "�ؾ��ƻ���4", "�ؾ��ƻ���5", "�ؾ��ƻ���6", "�ؾ��ƻ���7", "�ؾ��ƻ���8", "�ؾ�Ѱ����1", "��ӡ�ƻ���1", "��ӡ�ƻ���2", "��ӡ�ƻ���3", "��ӡ�ƻ���4", "��ӡ�ƻ���5", "��ӡ�ƻ���7", "��ӡ�ƻ���8", "��ӡѰ����1"}
local monster_shenshi = {"�ؾ���ʯ"}
local hurt = {-20, -30, -50, -100, -200, 0, -200, -300, -1, -1, -2, -3, -4, -5, -10, -20, -1}
local buff_key = "����ţħ��Ѫ"
local buff_time = 1

function pohuai(map, tierid)
	local shenshi = lualib:Map_GetRegionMonsters(map, "�ؾ���ʯ", 74, 37, 1, true, true)
	
	if	shenshi[1] == nil then
		for i = 1, 5 do
			lualib:SysMsg_SendMapMsg(map, "������ʯ���ƻ����������ر�")
			lualib:Map_DestroyDgn(map)
		end
		return
	end

	local pohuaizhe = lualib:Map_GetRegionMonsters(map, "", 70, 41, 1, true, true)

	for i = 1, #pohuaizhe do	
		local keyname = lualib:KeyName(pohuaizhe[i])
		for i = 1, #monster_pohuai do
			if keyname == monster_pohuai[i] then
				lualib:AddBuffEx(shenshi[1], buff_key, buff_time, hurt[i])
				lualib:Map_ClearMonster(map, 70, 41, 1, keyname, true, true)
			end
		end
	end

	
	return true
end


local gold_exp_table = 
    {
		["��ӡ�ƻ���1"]	= {1000, 1500,     50000},                --��ӡ�ƻ���1
		["��ӡ�ƻ���2"]	= {1000, 1500,     80000},                --��ӡ�ƻ���2
		["��ӡ�ƻ���3"]	= {1000, 1500,     100000},                --��ӡ�ƻ���3
		["��ӡ�ƻ���4"]	= {1000, 1500,     120000},                --��ӡ�ƻ���4
		["��ӡ�ƻ���5"]	= {1000, 1500,     150000},                --��ӡ�ƻ���5
		["��ӡѰ����1"]	= {1000, 2000,     500000},                  --��ӡѰ����1(�������)
		["��ӡ�ƻ���7"]	= {1000, 2000,     400000},              --��ӡ�ƻ���7(ͷĿ��)
		["��ӡ�ƻ���8"]	= {2000, 3000,     500000},             --��ӡ�ƻ���8(BOSS��)
		["�ؾ��ƻ���1"]	= {10000, 30000,   50000},              --�ؾ��ƻ���1
		["�ؾ��ƻ���2"]	= {20000, 30000,   80000},             --�ؾ��ƻ���2
		["�ؾ��ƻ���3"]	= {20000, 40000,   100000},             --�ؾ��ƻ���3
		["�ؾ��ƻ���4"]	= {25000, 50000,   120000},             --�ؾ��ƻ���4
		["�ؾ��ƻ���5"]	= {30000, 60000,   150000},             --�ؾ��ƻ���5
		["�ؾ��ƻ���6"]	= {30000, 60000,   150000},             --�ؾ��ƻ���6
		["�ؾ��ƻ���7"]	= {70000, 120000,  400000},           --�ؾ��ƻ���7(ͷĿ��)
		["�ؾ��ƻ���8"]	= {100000, 150000, 500000},          --�ؾ��ƻ���8(BOSS��)
		["�ؾ�Ѱ����1"]	= {50000, 100000,  500000},           --�ؾ�Ѱ����1
    }	

function on_post_die(monster, killer)
	local mapguid = lualib:MapGuid(monster)
	local playerguid = lualib:GetStr(mapguid, "playerguid")
	local mons_key = lualib:KeyName(monster)
	local keyname = lualib:KeyName(monster)
	local x = lualib:Monster_GetPosX(monster)
    local y = lualib:Monster_GetPosY(monster)

	
	local mk = (string.find(keyname, "��ӡ"))
	
	if playerguid ~= nil then
		lualib:Player_AddExp(playerguid, gold_exp_table[mons_key][3], "�غ���ӡ������ҵľ���", playerguid)
	end

    if 2 == 2 then
		lualib:Map_GenGold(mapguid, x, y, gold_exp_table[mons_key][lualib:GenRandom(1,2)], false, 0, 6, killer)
    end
	
	
	
	if keyname == "�ؾ��ƻ���8" or keyname == "��ӡ�ƻ���8" then
		lualib:SysMsg_SendMapMsg(mapguid, "��ϲ�������ƻ��ߵ�BOSS���Ͽ��������ڵķ���NPC��ȡ������")
		local player_x = lualib:X(playerguid)
		local player_y = lualib:Y(playerguid)
		lualib:Map_GenNpc(mapguid, "�ؾ��ػ��߳���", player_x, player_y, 2, 4)
		
		if	keyname == "��ӡ�ƻ���8" or keyname == "�ؾ��ƻ���8" then
			lualib:Player_AddExp(playerguid, 150000, "�غ���ӡ������ҵľ���", playerguid)
		end
		
		
		
	end
	
	if keyname == "��ӡѰ����1" or keyname == "�ؾ�Ѱ����1" then
		if playerguid ~= nil then
			lualib:Player_AddExp(playerguid, 50000, "�غ���ӡ������ҵľ���", playerguid)
		end
	end
	

	
	--������ʱ�������������
	lualib:ClearTrigger(monster)
	lualib:DisableTimer(monster, 1)
end
