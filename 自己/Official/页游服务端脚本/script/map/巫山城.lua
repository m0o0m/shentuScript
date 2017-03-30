local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--[[
--------------------------------------------------------------------------------
--�ƻ������淨���ⲿ�ӿ�
--------------------------------------------------------------------------------
--ʱ���ʽ��1�� %Y-%m-%d %h:%m:%s ָ��ʱ��ִ��
--          2�� %m-%d %h:%m:%s    ÿ��ִ��
--          3�� %d %h:%m:%s       ÿ��ִ��
--          4�� %w %h:%m:%s       ÿ��ִ��
--          5�� %h:%m:%s          ÿ��ִ��
--------------------------------------------------------------------------------
function SetScheduled_10003(param)
    local Scheduled_ID_10003 = 10003
    local Schedule_Name_10003 = "���µ�һս�淨"
    local Scheduled_Type_10003 = 4
    local Scheduled_CallBack_10003 = "���µ�һս�淨:on_scheduled_timer"
	local time_table = {"1 18:50:00", "2 18:50:00", "3 18:50:00", "4 18:50:00"}
	if lualib:AddScheduled(Scheduled_ID_10003, Schedule_Name_10003, Scheduled_Type_10003, 
                           time_table, Scheduled_CallBack_10003, param) == false then
		lualib:Print("��Ӽƻ��������µ�һս�淨ʧ�ܣ�")
	else
		lualib:Print("��Ӽƻ��������µ�һս�淨�ɹ���")
	end
end]]

local wsc_bx_npc_gen_times = 1000 * 9000
local wsc_bx_npc_gen_count = 3
local wsc_bx_npc_gen_name = "��ɽ�Ǳ���"
local wsc_bx_npc_guid = {}

function on_map_create(map_code)
    --[[SetScheduled_10003(map_code)
	
	---------------------------------------------------------------------------
	local campaign_10010 = campaign_impl:new()
      campaign_10010.cur.id = 11000
    campaign_10010.cur.name = "�䶷���淨"
    campaign_10010.cur.type = 5
    campaign_10010.cur.time_table = {"13:25:00", "15:25:00", "16:25:00", "19:25:00", "20:55:00"}
    campaign_10010.cur.callback = "�䶷���淨:on_scheduled_timer"
    campaign_10010.cur.begin_declare_timer_table = {{5, 1000}, {3, 120000}, {2, 180000}, {1, 240000}}
    campaign_10010.cur.begin_declare_timer_callback = "�䶷���淨:on_timer_campaign_begin_declare"
    campaign_10010.cur.begin_timer = {6, 300000}
    campaign_10010.cur.begin_callback = "�䶷���淨:on_timer_campaign_begin"
    campaign_10010.cur.end_declare_timer_table = {{3, 1920000}, {2, 1980000}, {1, 2040000}}
    campaign_10010.cur.end_declare_timer_callback = "�䶷���淨:on_timer_campaign_end_declare"
    campaign_10010.cur.end_timer = {4, 2100000}
    campaign_10010.cur.end_callback = "�䶷���淨:on_timer_campaign_end"
    campaign_10010:set_campaign_hook(map_code)]]
	---------------------------------------------------------------------------

	--ˢ����ɽ�Ǳ���NPC
	--[[ for i = 1, wsc_bx_npc_gen_count do
		wsc_bx_npc_guid[i] = lualib:Map_GenNpcRnd(map_code, wsc_bx_npc_gen_name)
        lualib:Print("��ɽ�Ǳ��䣺[x,y] = ["..lualib:Npc_GetPosX(wsc_bx_npc_guid[i])
                    ..", "..lualib:Npc_GetPosY(wsc_bx_npc_guid[i]).."]")
		--wsc_bx_npc_guid[i] = lualib:Map_GenNpc(map_code, wsc_bx_npc_gen_name, 504, 696, 5, 3)
	end

	--��ɽ�Ǳ���NPC��ʱ��
	local ret = lualib:AddTimer(map_code,  lua_wsc_map_bx_npc_timer, wsc_bx_npc_gen_times, -1, "on_timer")
	if ret == false then
        lualib:Print("��ɽ�Ǳ���ˢ�¶�ʱ�����ʧ�ܣ�")
		return
	end
    lualib:Print("��ɽ�Ǳ���ˢ�¶�ʱ����ӳɹ���")]]
end

function on_map_destroy()
end

--��ͼ��ʱ���ص�����
function on_timer(mapcode, timer_id)

	--����NPC��ʱ���ص�
	if timer_id ==  lua_wsc_map_bx_npc_timer then

		--���NPC���ڣ�������ԭ��NPC������ˢ��
		for i = 1, wsc_bx_npc_gen_count do
			if wsc_bx_npc_guid[i] ~= nil and lualib:Npc_IsExist(wsc_bx_npc_guid[i]) then
				lualib:Npc_Remove(wsc_bx_npc_guid[i])
			end
			wsc_bx_npc_guid[i] = lualib:Map_GenNpcRnd(mapcode, wsc_bx_npc_gen_name)
            lualib:Print("��ɽ�Ǳ��䣺[x,y] = ["..lualib:Npc_GetPosX(wsc_bx_npc_guid[i])
                        ..", "..lualib:Npc_GetPosY(wsc_bx_npc_guid[i]).."]")
			--[i] = lualib:Map_GenNpc(mapcode, wsc_bx_npc_gen_name, 504, 696, 5, 3)
		end
		lualib:SysMsg_SendMapMsg(mapcode, "С����Ϣ����ɽ�ǳ��������صı��䣡Ѱ������ʿ��Ѹ��ǰ������")
	end
end