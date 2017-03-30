local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


local avatar_table = {20000, 20001, 20002, 20003, 20004, 20005, 20006, 20007, 20008, 20009, 20010, 20011, 20012, 20013, 20014, 20015, 20016, 20017, 20018, 20019, 20020, 20021, 20022, 20023, 20024, 20025, 20026, 20027, 20028, 20029, 20030, 20031, 20032, 20033, 20034, 20035, 20036, 20037, 20038, 20039, 20040, 20042, 20043, 20044, 20045, 20046, 20047, 20048, 20049, 20050, 20051, 20052, 20053, 20054, 20055, 20056, 20057, 20058, 20059, 20060, 20061, 20062, 20063, 20064, 20065, 20066, 20067, 20068, 20069, 20070, 20071, 20072, 20073, 20074, 20075, 20076, 20077, 20078, 20079, 20080, 20081, 20082, 20083, 20084, 20085, 20086, 20087, 20089, 20092, 20093, 20094, 20095, 20096, 20097, 20098, 20099, 20100, 20101, 20102, 20103, 20104, 20105, 20106, 20107, 20108, 20109, 20110, 20118, 20119, 20120, 20121, 20122, 20123, 20124, 20125, 20126, 30000, 30001, 30002, 30003, 30004, 30005, 30006, 30007, 30008, 30009, 30010, 30011, 30012, 30013, 30014, 30015, 30016, 30017, 30018, 30019, 30020, 30021, 30022, 30023, 30024, 30025, 30026, 30027, 30028, 30029, 30030, 30031, 30032, 30033, 30034, 30035, 30036, 30037, 30038, 30039, 30040, 30041, 30042, 30043, 30044, 30045}


function on_map_create(map)
	lualib:Debug("�䶷�������ص���")
	lualib:AddTrigger(map, lua_trigger_enter_map, "on_trigger_enter_map")

	lualib:AddTrigger(map, lua_trigger_player_relive, "on_trigger_player_relive")
	local timer_item_t = {{1000, 11}, {600000, 12}, {1200000, 13}}
	local timer_equip_t = {{300000, 21}, {900000, 22}, {1500000, 23}}
	local timer_declare_t = {120000, 31}
	local timer_exp_t = {5000, 41}
	local timer_dis_reli_t = {1750000, 51}
	local npc_t = {"�䶷��ʹ�߳���", 36, 44}

	for _, v in pairs(timer_item_t) do
		if not lualib:AddTimer(map, v[2], v[1], 1, "on_timer_item") then
			lualib:Error("��;�䶷�����ˢ��Ʒ��ʱ������")
			return
		end
	end

	for _, v in pairs(timer_equip_t) do
		if not lualib:AddTimer(map, v[2], v[1], 1, "on_timer_equip") then
			lualib:Error("��;�䶷�����ˢװ����ʱ������")
			return
		end
	end

	if not lualib:AddTimer(map, timer_declare_t[2], timer_declare_t[1], 1, "on_timer_declare") then
		lualib:Error("��;�䶷��������涨ʱ������")
		return
	end

	if not lualib:AddTimer(map, timer_exp_t[2], timer_exp_t[1], -1, "on_timer_exp") then
		lualib:Error("��;�䶷����Ӿ��鶨ʱ������")
		return
	end

	if not lualib:AddTimer(map, timer_dis_reli_t[2], timer_dis_reli_t[1], 1, "on_timer_disa_reli") then
		lualib:Error("��;�䶷��ȡ�����������ʱ������")
		return
	end

	if "" == lualib:Map_GenNpc(map, npc_t[1], npc_t[2], npc_t[3], 6, 3) then
		lualib:Error("��;�䶷����ӳ���NPC����")
	end

end

function on_trigger_enter_map(player)
	if lualib:HasBuff(player, "���BUFF14") == true then
		lualib:DelBuff(player, "���BUFF14")
	end
	local i = lualib:GenRandom(1, #avatar_table)
	local avatar = avatar_table[i]
	lualib:AddAvataBuff(player, avatar, "�䶷������", "��ħ����", 0)
	
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n \n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.�䶷��ÿ��һ��ʱ��ͻ�ˢ��װ����ҩƷ�������ĵȴ�\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.ÿ5����ܻ��һ�δ������飬��������Խ�٣�����Խ��!\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.�䶷���ڵĹ��ﶼ����ұ���ģ���Ҫ����С��^_^#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 310)
end

function on_trigger_player_relive(player)
	lualib:ProgressBarStart(player, 10000, "������...", "on_relive_complete", "on_relive_abort", "")
	
	
	
	
	return false
end

function on_relive_complete(player, param)
	local map = lualib:Player_GetGuidProp(player, lua_role_current_map_id)
	local i = lualib:GenRandom(1, #avatar_table)
	local avatar = avatar_table[i]
	if "" == map then return end
	local width = lualib:Map_GetWidth(map)
	local height = lualib:Map_GetHeight(map)
	local x = lualib:GenRandom(15, 59);
	local y = lualib:GenRandom(24, 71);
	lualib:Player_Relive(player, "", x, y, 12, 50)
	lualib:AddAvataBuff(player, avatar, "�䶷������", "��ħ����", 0)
end

function on_relive_abort(player, param)
end

function on_timer_disa_reli(map, timer_id)
	lualib:RemoveTrigger(map, lua_trigger_player_relive, "on_trigger_player_relive")
end

function on_map_destroy(map)
	lualib:ClearTrigger(map)
	local timer_exp_t = {120000, 41}
	lualib:DisableTimer(map, timer_exp_t[2])
end

function on_timer_item(map, timer_id)
	local item_t = {{"̫��ˮ", 15}, {"ǿЧ̫��ˮ", 15}, {"ǿЧ��ҩ", 30}, {"ǿЧħ��ҩ", 30}, {"ǿЧħ��ҩ��", 5}, {"ǿЧ��ҩ��", 5}}
	local stack, rep, rem
	for _, v in pairs(item_t) do
		stack = lualib:Item_GetStack(v[1])
		if stack == 0 then
			lualib:Error("��;�䶷�������ڳ����Σ�գ�")
			return
		end

		rep = math.floor(v[2] / stack)
		rem = lualib:Mod(v[2], stack)
		for i = 1, rep do
			if "" ==  lualib:Map_GenItemRnd(map, 36, 44, 10, v[1], stack, true, 120) then
				lualib:Error("��;�䶷��ˢ��Ʒʧ�ܣ�")
				return
			end
		end

		if rem > 0 then
			if "" ==  lualib:Map_GenItemRnd(map, 36, 44, 10, v[1], rem, true, 120) then
				lualib:Error("��;�䶷��ˢ��Ʒʧ�ܣ�")
				return
			end
		end
	end
	lualib:Debug("��;�䶷��ˢ��Ʒ�ɹ���")
end

function on_timer_equip(map, timer_id)
	local equip_t = 	{
        {"��ս����", 208}, 
        {"��ս��ָ", 416}, 
        {"��սͷ��", 624}, 
        {"��ħ����", 832}, 
        {"��ħ��ָ", 1040}, 
        {"��ħͷ��", 1248}, 
        {"��������", 1456}, 
        {"������ָ", 1664}, 
        {"����ͷ��", 1872}, 
        {"��ս����", 1975}, 
        {"��ս��ָ", 2078}, 
        {"��սѥ��", 2181}, 
        {"�ۻ껤��", 2284}, 
        {"�ۻ��ָ", 2387}, 
        {"�ۻ�ѥ��", 2490}, 
        {"���⻤��", 2593}, 
        {"�����ָ", 2696}, 
        {"����ѥ��", 2799}, 
        {"�ƽ�����(��)", 3007}, 
        {"�ƽ�����(Ů)", 3215}, 
        {"ħ������(��)", 3423}, 
        {"ħ������(Ů)", 3631}, 
        {"��ħ����(��)", 3839}, 
        {"��ħ����(Ů)", 4047}, 
        {"��ʿ����(��)", 4098}, 
        {"��ʿ����(Ů)", 4149}, 
        {"��귨��(��)", 4200}, 
        {"��귨��(Ů)", 4251}, 
        {"�������(��)", 4302}, 
        {"�������(Ů)", 4353}, 
        {"��ʥ֮��", 4562}, 
        {"���ս�ָ", 4771}, 
        {"��������", 4980}, 
        {"���ƽ�ָ", 5189}, 
        {"ӫ������", 5398}, 
        {"�ƽ�����", 5607}, 
        {"��ʿͷ��", 5816}, 
        {"��������", 6025}, 
        {"���껤��", 6234}, 
        {"�ƽ�ͷ��", 6337}, 
        {"��ħͷ��", 6440}, 
        {"ħ�����", 6543}, 
        {"��������", 6646}, 
        {"��������", 6749}, 
        {"�ƻ���ָ", 6852}, 
        {"����ָ", 6955}, 
        {"��������", 7058}, 
        {"��ħ����", 7161}, 
        {"��Ԫ��ָ", 7264}, 
        {"��а����", 7367}, 
        {"���ʯ����", 7470}, 
        {"����", 7677}, 
        {"������", 7884}, 
        {"ħ�鷨��", 8091}, 
        {"����", 8194}, 
        {"����", 8297}, 
        {"����", 8400}, 
        {"ʮɱ", 8469}, 
        {"��Ԩ", 8538}, 
        {"����", 8607}, 
        {"ɱ����", 8816}, 
        {"�»��䵶", 9025}, 
        {"��������", 9234}, 
        {"������", 9443}, 
        {"�ش���", 9652}, 
        {"��������", 9722}, 
        {"�������", 9792}, 
        {"���⻤��", 9862}, 
        {"��֮ͥ��", 9931}, 
        {"����ն", 10000}, 
						}

	for i = 1, 10 do
		local rnd = lualib:GenRandom(1, 10000)
		for _, v in pairs(equip_t) do
			if rnd <= v[2] then
				if not lualib:Map_GenItemRnd(map, 36, 44, 10, v[1], 1, true, 120) then
					lualib:Error("��;�䶷��ˢװ��ʧ�ܣ�")
					return
				end
				lualib:Debug("��;�䶷��ˢװ���ɹ���")
				break
			end
		end
	end
end

function on_timer_declare(map, timer_id)
	lualib:SysMsg_SendMapMsg(map, "�䶷����ÿ5���ӻ�ˢ��һ�����������Ŀ�Դ�������")
end

function on_timer_exp(map, timer_id)
	local add_exp = 88888

	local players = lualib:Map_GetMapPlayers(map, false)
	local player_num = lualib:Map_GetPlayerCount(map, true)
	player_num = math.ceil(player_num)
	
	local wdc_exp = math.ceil(add_exp / player_num)
	
	if players == nil then return end
	for _, v in pairs(players) do
		lualib:Player_AddExp(v, wdc_exp, "�Ӿ��飺��;�䶷���", "��;�䶷��")
		lualib:SysMsg_SendTriggerMsg(v, "�䶷����ħ�þ���Ϊ���������飺"..wdc_exp.."��".."���ڻ��ŵ��˺�����Խ�٣����齫Խ�࣡���ս���ɣ�")
		local player_level = lualib:Level(v)
		if player_level >= 35 then
			lualib:Player_MapMoveXY(v, "��ɽ��", 248, 310, 1)
		end
	end

end
