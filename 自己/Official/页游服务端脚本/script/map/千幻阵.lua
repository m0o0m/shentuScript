local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("map/千幻阵数据")
require("system/logic_def_lua")

local time_talbe = 
	{	
		{1, 3000, 1, "maptalk"},
		{2, 4000, 1, "gen_monster"},
		{3, 3500000, 1, "maptalk"},  --10分钟警告
		{4, 3590000, 1, "maptalk"},  --1分钟警告
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
		{21, 30000, -1, "kou_item"}
	}
	--剑阵说话
local jz_maptalk_talbe =
{
	"【千幻阵——[羽扇阵]】开启！闯阵的勇士们，请尽快找到阵眼，通往下一阵！",
	"千幻阵将在十分钟后崩塌，请诸位闯阵勇士抓紧时间破阵！",
	"千幻阵将在一分钟后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！",
	"千幻阵将在10秒后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！",
	"千幻阵将在9秒后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！",
	"千幻阵将在8秒后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！",
	"千幻阵将在7秒后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！",
	"千幻阵将在6秒后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！",
	"千幻阵将在5秒后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！",
	"千幻阵将在4秒后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！",
	"千幻阵将在3秒后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！",
	"千幻阵将在2秒后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！",
	"千幻阵将在1秒后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！"
}



function on_map_create(map)
    lualib:Debug("千幻阵地图建创回调！")
	for i = 1 ,#time_talbe do
		if not lualib:AddTimerEx(map, time_talbe[i][1], time_talbe[i][2], time_talbe[i][3], time_talbe[i][4], "") then
			lualib:Error("定时器添加失败！")
		end 
	end
	
	lualib:AddTrigger(map,  lua_trigger_leave_map, "on_trigger_leave_map")
end

--玩家离开地图的触发器触发时，，删除绑定千幻阵
function on_trigger_leave_map(player)
	local map = lualib:MapGuid(player)
    local count = lualib:ItemCountByKey(player, "秘海精元", true, true, true, 1)
    if not lualib:DelItem(player, "秘海精元", count, 1, "离开初级千幻阵", "千幻阵") then
		lualib:SysMsg_SendTriggerMsg(player,"扣除物品失败")
		return
	end
	lualib:Map_DestroyDgn(map)
end

function on_map_destroy(map)

end


function destroy(map, tierid)
	lualib:Map_DestroyDgn(map)
end

-- 地图说话
function maptalk(map, tierid)
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
end

--羽扇阵刷怪
function gen_monster(map, timerid)
		

		lualib:Debug("map:" .. map);

		-- 羽扇阵阵型
		for i = 1, #ys_zhenx do
			lualib:Map_GenMonster(map, ys_zhenx[i][1], ys_zhenx[i][2], ys_zhenx[i][3], 4, ys_zjmonster[lualib:GenRandom(1, 2)], ys_zhenx[i][4], false)
		end  
		
		ys_zzy_num = lualib:Map_GetMonsterCount(map, ys_zjmonster[1], true, true)--获取整个地图羽扇真阵眼的数量
		if not lualib:SetInt(map, "ys_zzy", ys_zzy_num) then
			lualib:SysMsg_SendMapMsg(map, "变量没有设进去，请联系客服！")
		end
		
		local ys_zzy = lualib:GetInt(map, "ys_zzy")    --羽扇阵真阵眼数量
		
		
		
				
end

function kou_item(map, timerid)
	local player_table = lualib:Map_GetRegionPlayers(map, 63, 67, 100, true)
	local jy_num = lualib:ItemCount(player_table[1], "秘海精元")
	if jy_num >= 1 then
		if not lualib:DelItem(player_table[1], "秘海精元", 1, 2, "定时器自动删除", map) then
			lualib:SysMsg_SendTriggerMsg(player,"扣除物品失败")
			return
		end
		--lualib:SysMsg_SendMapMsg(map, "自动扣除秘海精元")
	else
		lualib:SysMsg_SendMapMsg(map, "你的秘海精元不够了，不足以支撑千幻阵的存在！3秒后千幻阵将崩塌，你将被自动传出千幻阵！")
		lualib:AddTimerEx(map, 100, 3000, 1, "destroy", "")
	end
	
	
	
end
