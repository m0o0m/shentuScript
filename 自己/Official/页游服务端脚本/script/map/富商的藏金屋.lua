local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("monster/����")


local yd_item_keyname_6 = {"1Ԫ��", "2Ԫ��", "5Ԫ��", "10Ԫ��",  "20Ԫ��", "50Ԫ��"} 

local ed_item_keyname_6 = {"10Ԫ��", "20Ԫ��", "50Ԫ��", "100Ԫ��",  "200Ԫ��", "500Ԫ��"} 

local sd_item_keyname_6 = {"100Ԫ��", "200Ԫ��", "500Ԫ��", "1000Ԫ��",  "2000Ԫ��", "5000Ԫ��"} 

function on_map_create(map)

    if not lualib:AddTimer(map, 1, 3000, 6, "on_timer_gen_yuanbao") then
        lualib:Error("��ͼ��ʱ�����ʧ�ܣ�")
    end
	
	 lualib:AddTrigger(map,  lua_trigger_leave_map, "on_trigger_leave_map")
end

function on_map_destroy(map)
end

function on_timer_gen_yuanbao(map, timer_id)
	local playerlist = lualib:Map_GetRegionPlayers(map, 17, 25, 100, true)
	
	fushang_yuanbao = lualib:GetInt(playerlist[1], "fushang_yuanbao")

	if fushang_yuanbao == nil then
		lualib:SysMsg_SendMapMsg(map, "���ź����˴�Ͷ��Ѫ���޹飡")
		lualib:Map_DestroyDgn(map)
	end
	
	if 		fushang_yuanbao == 100 then
		local yuanbao = lualib:Map_GenItemRnd(map, 16, 25, 5, yd_item_keyname_6[lualib:GenRandom(1, 6)], 1, false, 3)
		
		if yuanbao == nil then
			lualib:SysMsg_SendMapMsg(map, "���ź����˴�Ͷ��Ѫ���޹飡")
		end
		
	elseif 	fushang_yuanbao == 1000  then
		local yuanbao = lualib:Map_GenItemRnd(map, 16, 25, 5, ed_item_keyname_6[lualib:GenRandom(1, 6)], 1, false, 3)
		
		if yuanbao == nil then
			lualib:SysMsg_SendMapMsg(map, "���ź����˴�Ͷ��Ѫ���޹飡")
		end
	elseif 	fushang_yuanbao == 10000  then
		local yuanbao = lualib:Map_GenItemRnd(map, 16, 25, 5, sd_item_keyname_6[lualib:GenRandom(1, 6)], 1, false, 3)
		
		if yuanbao == nil then
			lualib:SysMsg_SendMapMsg(map, "���ź����˴�Ͷ��Ѫ���޹飡")
		end	
	end
	
end

function on_timer_des_map(map, timer_id)
    lualib:Map_DestroyDgn(map)
end

function on_trigger_leave_map(player)

	local map = lualib:MapGuid(player)
	lualib:Map_DestroyDgn(map)
end
