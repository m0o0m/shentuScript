local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--[[
--------------------------------------------------------------------------------
--计划任务玩法的外部接口
--------------------------------------------------------------------------------
--时间格式：1： %Y-%m-%d %h:%m:%s 指定时间执行
--          2： %m-%d %h:%m:%s    每年执行
--          3： %d %h:%m:%s       每月执行
--          4： %w %h:%m:%s       每周执行
--          5： %h:%m:%s          每天执行
--------------------------------------------------------------------------------
function SetScheduled_10003(param)
    local Scheduled_ID_10003 = 10003
    local Schedule_Name_10003 = "天下第一战玩法"
    local Scheduled_Type_10003 = 4
    local Scheduled_CallBack_10003 = "天下第一战玩法:on_scheduled_timer"
	local time_table = {"1 18:50:00", "2 18:50:00", "3 18:50:00", "4 18:50:00"}
	if lualib:AddScheduled(Scheduled_ID_10003, Schedule_Name_10003, Scheduled_Type_10003, 
                           time_table, Scheduled_CallBack_10003, param) == false then
		lualib:Print("添加计划任务天下第一战玩法失败！")
	else
		lualib:Print("添加计划任务天下第一战玩法成功！")
	end
end]]

local wsc_bx_npc_gen_times = 1000 * 9000
local wsc_bx_npc_gen_count = 3
local wsc_bx_npc_gen_name = "巫山城宝箱"
local wsc_bx_npc_guid = {}

function on_map_create(map_code)
    --[[SetScheduled_10003(map_code)
	
	---------------------------------------------------------------------------
	local campaign_10010 = campaign_impl:new()
      campaign_10010.cur.id = 11000
    campaign_10010.cur.name = "武斗场玩法"
    campaign_10010.cur.type = 5
    campaign_10010.cur.time_table = {"13:25:00", "15:25:00", "16:25:00", "19:25:00", "20:55:00"}
    campaign_10010.cur.callback = "武斗场玩法:on_scheduled_timer"
    campaign_10010.cur.begin_declare_timer_table = {{5, 1000}, {3, 120000}, {2, 180000}, {1, 240000}}
    campaign_10010.cur.begin_declare_timer_callback = "武斗场玩法:on_timer_campaign_begin_declare"
    campaign_10010.cur.begin_timer = {6, 300000}
    campaign_10010.cur.begin_callback = "武斗场玩法:on_timer_campaign_begin"
    campaign_10010.cur.end_declare_timer_table = {{3, 1920000}, {2, 1980000}, {1, 2040000}}
    campaign_10010.cur.end_declare_timer_callback = "武斗场玩法:on_timer_campaign_end_declare"
    campaign_10010.cur.end_timer = {4, 2100000}
    campaign_10010.cur.end_callback = "武斗场玩法:on_timer_campaign_end"
    campaign_10010:set_campaign_hook(map_code)]]
	---------------------------------------------------------------------------

	--刷新巫山城宝箱NPC
	--[[ for i = 1, wsc_bx_npc_gen_count do
		wsc_bx_npc_guid[i] = lualib:Map_GenNpcRnd(map_code, wsc_bx_npc_gen_name)
        lualib:Print("巫山城宝箱：[x,y] = ["..lualib:Npc_GetPosX(wsc_bx_npc_guid[i])
                    ..", "..lualib:Npc_GetPosY(wsc_bx_npc_guid[i]).."]")
		--wsc_bx_npc_guid[i] = lualib:Map_GenNpc(map_code, wsc_bx_npc_gen_name, 504, 696, 5, 3)
	end

	--巫山城宝箱NPC定时器
	local ret = lualib:AddTimer(map_code,  lua_wsc_map_bx_npc_timer, wsc_bx_npc_gen_times, -1, "on_timer")
	if ret == false then
        lualib:Print("巫山城宝箱刷新定时器添加失败！")
		return
	end
    lualib:Print("巫山城宝箱刷新定时器添加成功！")]]
end

function on_map_destroy()
end

--地图定时器回调函数
function on_timer(mapcode, timer_id)

	--宝箱NPC定时器回调
	if timer_id ==  lua_wsc_map_bx_npc_timer then

		--如果NPC存在，则销毁原先NPC，重新刷新
		for i = 1, wsc_bx_npc_gen_count do
			if wsc_bx_npc_guid[i] ~= nil and lualib:Npc_IsExist(wsc_bx_npc_guid[i]) then
				lualib:Npc_Remove(wsc_bx_npc_guid[i])
			end
			wsc_bx_npc_guid[i] = lualib:Map_GenNpcRnd(mapcode, wsc_bx_npc_gen_name)
            lualib:Print("巫山城宝箱：[x,y] = ["..lualib:Npc_GetPosX(wsc_bx_npc_guid[i])
                        ..", "..lualib:Npc_GetPosY(wsc_bx_npc_guid[i]).."]")
			--[i] = lualib:Map_GenNpc(mapcode, wsc_bx_npc_gen_name, 504, 696, 5, 3)
		end
		lualib:SysMsg_SendMapMsg(mapcode, "小道消息，巫山城出现了神秘的宝箱！寻宝的勇士们迅速前往……")
	end
end