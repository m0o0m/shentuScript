local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/horse")


--[[
自定义变量列表
cur_exp:                    当前exp
变量类型:                   int

max_exp:                    exp上限
变量类型:                   int

in_pct:                     存入倍数
变量类型:                   int

out_pct:                    取出倍数
变量类型:                   int

slz_amount:                 释灵珠数量
变量类型:                   int
--]]

local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/refine")

function on_create(item)
    lualib:SetInt(item, "cur_exp", 0)
    lualib:SetInt(item, "max_exp", 200000)
    lualib:SetInt(item, "in_pct", 100)
    lualib:SetInt(item, "out_pct", 100)
    lualib:SetInt(item, "slz_amount", 0)
    lualib:SetInt(item, "gold_cost", 100000)
	
--	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
end

function main(player, item) 
    local old_day_mark = lualib:GetInt(player, "exp_day_mark")
    local now_day_mark = lualib:GetAllDays(0)
    if old_day_mark ~= now_day_mark then
        lualib:SetInt(player, "exp_day_mark", now_day_mark)
        lualib:SetInt(player, "exp_count", 0)
    end
    
    local exp_count = lualib:GetInt(player, "exp_count")
    local max_exp_count = 10000
    if exp_count >= max_exp_count then
        lualib:SysMsg_SendWarnMsg(player, "每天只能提取"..max_exp_count.."次");
        return false
    end
 
    local cur_exp = lualib:GetInt(item, "cur_exp")
    local max_exp = lualib:GetInt(item, "max_exp")
    local out_pct = lualib:GetInt(item, "out_pct")
    local slz_amount = lualib:GetInt(item, "slz_amount")
    local gold_cost = lualib:GetInt(item, "gold_cost")

   if cur_exp < max_exp then
        lualib:SysMsg_SendWarnMsg(player, "经验没有存满，不能提取");
        return false
    end
	
	local horse = lualib:Item_GetBySite(player,  lua_site_mount)
    if horse == "" then
		lualib:SysMsg_SendTriggerMsg(player, "没有装备坐骑")
        return false
    end
	
	if lualib:Item_GetDurability(player, horse) == 0 then
		lualib:SysMsg_SendTriggerMsg(player, "当前坐骑已经死亡,请先使用[坐骑还魂丹]复活")
        return false
    end

    if get_horse_level(player, horse) >= 50 then
		lualib:SysMsg_SendTriggerMsg(player, "当前坐骑已经达到满级！")
        return false
    end
	
	

    local is_gold_bind = false
    if gold_cost > 0 then
        if not lualib:Player_IsGoldEnough(player, gold_cost, is_gold_bind) then
            lualib:SysMsg_SendWarnMsg(player, "金币不足"..gold_cost);
            return false
        end
    end
	
    local total_amount = lualib:ItemCountByKey(player, "释灵珠", true, false, false, 2)
    if total_amount < slz_amount then
        lualib:SysMsg_SendWarnMsg(player, "释灵珠数量不足");
        return false
    end
    
    if not lualib:Player_SubGold(player, gold_cost, is_gold_bind, "提取坐骑聚灵珠", "系统") then
        lualib:SysMsg_SendWarnMsg(player, "系统错误");
        return false
    end
    
    if slz_amount > 0 then
        local item_name = lualib:Name(item)
        lualib:DelItem(player, "释灵珠", slz_amount, 2, "提取经验消耗释灵珠", item_name)
    end
	

    

    
    local exp = math.floor(max_exp * out_pct / 100 * 5)
	process_horse_add_exp(player, exp)
    if not lualib:Item_Destroy(player, item, "提取经验删除物品", lualib:KeyName(player)) then
		lualib:SysMsg_SendWarnMsg(player, "扣除道具失败");
		return ""
	end
	
	--print("exp:"..exp)

    
    exp_count = exp_count + 1
    lualib:SetInt(player, "exp_count", exp_count)
    
    return true
end


function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	if item_map_x < 20000 then
		local s = "道具【"..item_name.."】掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
		local s1 = "#COLORCOLOR_BROWN#【"..item_name.."】#COLORCOLOR_YELLOW#掉落在#COLORCOLOR_BROWN#["..item_map_name.."]的COLORCOLOR_YELLOW#["..item_map_x..":"..item_map_y.."]！"
		lualib:SysMsg_SendCenterMsg(1, s, "")
		--lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
	else	
		return
	end
end