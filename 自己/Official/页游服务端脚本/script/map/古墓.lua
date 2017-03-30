local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("form/MarsWnd_s")

--[[
	local award = 
	{
	[1] = {200,900};
	[2] = {1000,99};
	[3] = {2000,1};
	}
	local award_num = 0
	local randomNum = math.random(0, 1000)
	if randomNum <= 1 then
		award_num = 200
	elseif randomNum <= 100 then 
		award_num = 1000
	elseif randomNum <= 1000 then
		award_num = 2000
	end
	--]]
	
--[[
	local award_table = 
	{--[1]��Ʒkeyname��		[2]Ȩ�أ�[3]�������������[4]���θ�����Ʒ������[5]��Ʒ����1�ǵ��ߣ�2�Ǳ�����3��Ԫ����4��Ԫ����5�󶨽�ң�6����
		{"Ԫ��50",          200, 		999999, 			50, 			    	3},
		{"��Ԫ��200",		200, 		9999999,			200,					4},
		{"Ԫ��100",       	100, 		9999999, 			100, 					3},
		{"��Ԫ��500", 	200, 		9999999, 			500,					4},
		{"�󶨽��1��",		6000, 		9999999, 			10000, 					5},
		{"boss_points", 	1500,		999999, 			2000, 					2},--BOSS����
		{"ach_score", 		1500, 		999999, 			2000, 					2},--��ѫ
		{"Ach_jifen", 		1500, 		999999, 			2000, 					2},--�ɾ�
		{"����",			 6000, 		999999, 			60000, 					6},
	} 


	local int_to_name = 
	{
		["boss_points"] = "BOSS����",
		["ach_score"] = "��ѫ",
		["Ach_jifen"] = "�ɾ�",
	}

	local map = lualib:MapGuid(player)
	local rate_t = {}
	for i = 1, #award_table do 
		rate_t[i] = award_table[i][2]
	end
	local key = get_table_key(rate_t)
	local item = award_table[key][1]
	local str = ''
	--1�ǵ��ߣ�2�Ǳ�����3��Ԫ����4��Ԫ����5�󶨽�ң�6����
	if award_table[key][5] == 1 then
		if lualib:AddItem(player, item, award_table[key][4], false, "", "") then

		end
	elseif award_table[key][5] == 2 then
		lualib:SetInt(player, item, lualib:GetInt(player, item) + award_table[key][4])
		if int_to_name[item] ~= nil then
			str = "\"".."���"..int_to_name[item]..award_table[key][4].."�㣡" .."\""
			lualib:ShowFormWithContent(player, "�ű���", "bottom_msg_tip("..str..");")
		end
	elseif award_table[key][5] == 3 then
		if lualib:Player_AddIngot(player, award_table[key][4], false, "", player) then
			str = "\"".."���Ԫ��"..award_table[key][4].."\""
			lualib:ShowFormWithContent(player, "�ű���", "bottom_msg_tip("..str..");")
		end
	elseif award_table[key][5] == 4 then
		if lualib:Player_AddIngot(player, award_table[key][4], true, "����ӡ�ı���", player) then
			str = "\"".."��ð�Ԫ��"..award_table[key][4].."\""
			lualib:ShowFormWithContent(player, "�ű���", "bottom_msg_tip("..str..");")
		end
	elseif award_table[key][5] == 5 then
		if lualib:Player_AddGold(player, award_table[key][4], true, "����ӡ�ı���", player) then
			str = "\"".."��ð󶨽��"..award_table[key][4].."\""
			lualib:ShowFormWithContent(player, "�ű���", "bottom_msg_tip("..str..");")
		end
	elseif award_table[key][5] == 6 then
		if lualib:Player_AddExp(player, award_table[key][4], "����ӡ�ı���", player) then
			str = "\"".."��þ���"..award_table[key][4].."\""
			lualib:ShowFormWithContent(player, "�ű���", "bottom_msg_tip("..str..");")
		end
	end
	--]]
local require_item = "����ӡ�ı���"
local require_monster = {"�ᱦħ��", 43, 50}




--��ȡȨ��ѡ��
function get_table_key(t_rate)
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
	
	return key
end



function on_map_create(map)
    --lualib:Debug("Ѱ���ᱦ��ͼ�����ص���")
	
	lualib:SetStr("0", "xldb_existing_dgn", map)
	local startTime   = lualib:GetAllTime()
	local endTime = 15 * 60 + startTime
    lualib:SetInt(map, "endTime", endTime)
    local monster = lualib:Map_GenSingleMonster(map, require_monster[2], 
    require_monster[3], 6, 6, require_monster[1], false)
    if monster == ""  then
        lualib:Error(require_monster[1].."ˢ��ʧ�ܣ�")
        return
    end
	
	
	lualib:AddTrigger(map, lua_trigger_leave_map, "on_trigger_leave_map")
    lualib:AddTrigger(map, lua_trigger_item_appear, "on_trigger_item_appear")
    lualib:AddTrigger(map, lua_trigger_item_pickup, "on_trigger_item_pickup")
	lualib:AddTrigger(map, lua_trigger_enter_map, "on_trigger_enter_map")
	--lualib:AddTrigger(map, lua_trigger_pre_die, "on_trigger_pre_die")
	--lualib:AddTrigger(map, lua_trigger_pre_item_drop, "item_diu_chufa")
	--lualib:AddTrigger(map, lua_trigger_dungeon_end, "fuben_jieshu")
	--lualib:DelayCall(map, 15*60*1000, "CampaignEnd", "") 
end

function on_trigger_enter_map(player)
	
	--lualib:SysMsg_SendBroadcastColor("��"..lualib:Name(player).."������Ѱ���ᱦ��Ѱ���ᱦ�ɴ�����Ѱ���ᱦ����Ա������", "ϵͳ֪ͨ", 1, 0)
	--lualib:Player_ChangeAttackMode(player, 0) --������ҵĹ���ģʽΪȫ�幥��ģʽ
	--local mode = lualib:Player_GetAttackMode(player)
	
	local str = 
	[[
		GameMainBar.Taskitem(5)
		local taskWnd = GetWindow(0, "TaskWindow")
		if taskWnd ~= 0 then
			GUI:WndSetVisible(taskWnd, false)
		end
		taskWnd = GetWindow(0, "xldb_NPCShow")
		if taskWnd ~= 0 then
			GUI:WndClose(taskWnd)
		end
	]]
	lualib:ShowFormWithContent(player, "�ű���", str)
	
	local str2 = ""
	local clientType = lualib:GetClientType(player) 
	if clientType == 0 then
		str2 = [[CL:ChangeAttacMod(0)]]
	elseif clientType == 1 then 
		str2 = [[CLSetAttackMode(0)]]
	end	
	lualib:ShowFormWithContent(player, "�ű���", str2)
	local map = lualib:MapGuid(player)
	local now   = lualib:GetAllTime()
	local endTime = lualib:GetInt(map, "endTime")
	local remainderSeconds = endTime - now
	lualib:ShowFormWithContent(player, "form�ļ���", "xldb_wnd#"..remainderSeconds)
	
	local heros = lualib:GetPlayerCurrentHeroList(player)
	if #heros > 0 then 
		for i = 1, #heros do
			lualib:DestroyDummy(heros[i])
			lualib:SetInt(player, "HeroRelive", 1)
		end
	end
end


function on_trigger_item_appear(map, item, item_id, item_name, x, y)
    if item_name ~= require_item then 
		return 
	end
	--lualib:SysMsg_SendMapMsg(map, item_name.."���������꡾"..x.."��"..y.."����")
	local player = lualib:GetStr(map, "box_owner")
	if player ~= "" then 
		
		if lualib:HasBuff(player, "��Ĺ�ᱦ") then
			if not lualib:DelBuff(player, "��Ĺ�ᱦ") then
				lualib:Error("���ɾ��BUFF��Ĺ�ᱦ����")
				return false 
			end
		end
		
		local str = 
		[[
			local _handle = GetWindow(0, "xldb_timeUI")
			if _handle ~= 0 then
				xldb_timeUI.onclose(_handle)
			end
		]]
		lualib:ShowFormWithContent(player, "�ű���", str)
		local award_timer_id = lualib:GetInt(player, "award_timer_id")
		if award_timer_id ~= 0 then 
			lualib:DisableTimer(player,award_timer_id)
		end
		lualib:SetStr(map, "box_owner", "")
		
	end
end

function on_trigger_item_pickup(player, item, item_id, item_name)
    if not lualib:Player_IsPlayer(player) then 
		return 
	end
    if item_name ~= require_item then 
		return 
	end

    local map = lualib:MapGuid(player)
    if lualib:Name(map) ~= "Ѱ���ᱦ" then 
		return 
	end
	
	--��¼����ӵ����
	lualib:SetStr(map, "box_owner", player)
	
	lualib:AddBuff(player, "��Ĺ�ᱦ", 20*60*1000)
	--lualib:NotifyVar(
	lualib:ShowFormWithContent(player, "form�ļ���", "xldb_timeUI")
	local award_timer_id = lualib:GenTimerId(player)
	lualib:SetInt(player, "award_timer_id", award_timer_id)
	lualib:AddTimer(player, award_timer_id, 3*60*1000, 5, "on_timer_award")
	
	
	--lualib:SysMsg_SendBroadcastMsg("�����ر��С��Ѿ�����ҡ�"..lualib:Name(player).."����ã��ɹ�����10���ӽ���ÿ������е��ʸ�", "ϵͳ֪ͨ")
	--lualib:SysMsg_SendBroadcastMsg("�����ر��С��Ѿ�����ҡ�"..lualib:Name(player).."����ã��ɹ�����10���ӽ���ÿ������е��ʸ�", "ϵͳ֪ͨ")
	--lualib:SysMsg_SendBroadcastMsg("�����ر��С��Ѿ�����ҡ�"..lualib:Name(player).."����ã��ɹ�����10���ӽ���ÿ������е��ʸ�", "ϵͳ֪ͨ")
end

function on_timer_award(player, timer_id)
	local AWARD = 
	{
		{"Ach_jifen", 15000, "�ɾ�"},
		{"ach_score", 15000, "��ѫ"},
	}
	local index = math.random(1,2)
	lualib:SetInt(player, AWARD[index][1], lualib:GetInt(player, AWARD[index][1]) + AWARD[index][2])
	local award_str = "\"".."���"..AWARD[index][3]..AWARD[index][2].."�㣡" .."\""
	lualib:ShowFormWithContent(player, "�ű���", "xldb_wnd.bottom_msg_tip("..award_str..");")
	local map = lualib:MapGuid(player)
	--lualib:SysMapMsg(map, lualib:Name(player).."���б���3���ӣ������"..AWARD[index][3]..AWARD[index][2].."�㣡")
	--lualib:SysMsg_SendMapMsg(map, lualib:Name(player).."���б���3���ӣ������"..str)
	--lualib:Player_AddIngot(player, award_num, false, "��Ԫ��������ӡ�ı���", "����ӡ�ı���")
	--lualib:SysTipsMsg(player,"���"..yuanbao_num.."Ԫ��")
	local str = 
	[[
		local _handle = GetWindow(0, "xldb_timeUI")
		if _handle ~= 0 then
			xldb_timeUI.onclose(_handle)
		end
		UI:Lua_OpenWindow(0, "xldb_timeUI.lua")
	]]
	lualib:ShowFormWithContent(player, "�ű���", str)
    
end


function on_trigger_leave_map(player)
	if not lualib:Player_IsPlayer(player) then
		return ""
	end
	if lualib:GetInt(player, "HeroRelive") ~= 0 then       
		lualib:DelayCall(player, 300, "DelayFunc", "")  --�뿪��ͼ����  �˾�Ȼ���ڵ�ͼ�� orz..
	end
	lualib:SetInt(player, "HeroRelive", 0)

	
	local str = 
	[[
		xldb_wnd.RecoverTaskWindow();
		_handle = GetWindow(0, "xldb_wnd")
		if _handle ~= 0 then
			GUI:WndClose(_handle)
		end
	]]
	lualib:ShowFormWithContent(player, "�ű���", str)
	
	return true
end

function CampaignEnd(map)
	--lualib:SetInt(map, "isCampaignEnd", 1)
	local player = lualib:GetStr(map, "box_owner")
    if player ~= "" then
		
		if lualib:HasBuff(player, "��Ĺ�ᱦ") then
			if not lualib:DelBuff(player, "��Ĺ�ᱦ") then
				lualib:Error("���ɾ��BUFF��Ĺ�ᱦ����")
				return false 
			end
		end
		
		local str = 
		[[
			local _handle = GetWindow(0, "xldb_timeUI")
			if _handle ~= 0 then
				xldb_timeUI.onclose(_handle)
			end
		]]
		lualib:ShowFormWithContent(player, "�ű���", str)
		local award_timer_id = lualib:GetInt(player, "award_timer_id")
		if award_timer_id ~= 0 then 
			lualib:DisableTimer(player, award_timer_id)
		end
	end
	--[[
	lualib:SetStr("0", "xldb_existing_dgn", "")
	local player = lualib:GetStr(map, "box_owner")
    if player == "" then
		lualib:SysMsg_SendBroadcastColor("��Ѱ���ᱦ�����ڻʱ�����������ʤ����ҡ���ȱ��", "ϵͳ֪ͨ", 1, 0)
	else
		lualib:SysMsg_SendBroadcastColor("��Ѱ���ᱦ�����ڻʱ����������ر�����������ҡ�"..lualib:Name(player).."����ã�", "ϵͳ֪ͨ", 1, 0)
		lualib:DelItemEx(player, require_item, 1, 2, false, true, false, false, "Ѱ���ᱦ�����", "Ѱ���ᱦ�����")
		lualib:AddItem(player, 'Ѱ������', 1, true, "Ѱ���ᱦ�����", player)
	end
	--]]
	
	local playerList = lualib:Map_GetMapPlayers(map, true)
    if #playerList == 0 then 
		return  
	end
    for i = 1, #playerList do 
		--����ͨ���ʼ�����
		lualib:MailToPlayer("�ᱦ������뽱��", playerList[i], "��л�����뱾�ζᱦ�������������Ĳ��뽱��������գ�", 0, 0, 
		{
			"��שС",1,1,
			"��שС",1,1,
		})
	end
	lualib:Map_DestroyDgn(map);
end

function on_map_destroy(map)
	lualib:Error("on_map_destroy");
	--lualib:SetInt(map, "gumu_jieshu", 1)
	lualib:SetStr("0", "xldb_existing_dgn", "")
	local playerList = lualib:Map_GetMapPlayers(map, true)
    if #playerList == 0 then 
		return  
	end
    for i = 1, #playerList do 
		lualib:Player_MapMoveXY(playerList[i], "����", 118, 146, 6);
	end
	
end


function on_trigger_pre_die(actor, killer)
	
    if not lualib:Player_IsPlayer(actor) then 
		return true 
	end
	lualib:Player_MapMoveXY(actor, "����", 118, 146, 6)
	lualib:SetHp(actor, 1000, false)
	return false

   
end

	
function DelayFunc(player)
	HeroRelive(player)
end

--[[
function item_diu_chufa(player, item, item_id, item_name)
    if not lualib:Player_IsPlayer(player) then 
		return true 
	end
    if item_name ~= require_item then 
		return true
	end

	local map = lualib:MapGuid(player)
	if map == "" then 
		return true 
	end
	
	if lualib:Name(map) == "Ѱ���ᱦ" then
		
		if lualib:HasBuff(player, "��Ĺ�ᱦ") == true then
			if not lualib:DelBuff(player, "��Ĺ�ᱦ") then
				lualib:Error("���ɾ��BUFF��Ĺ�ᱦ����")
				return false 
			end
		end
		
		if lualib:HasBuff(player, "��Ӣ�⻷") == true then
			if not lualib:DelBuff(player, "��Ӣ�⻷") then
				lualib:Error("���ɾ��BUFF��Ӣ�⻷����")
				return false 
			end
		end
		
	end

    return true
end
--]]