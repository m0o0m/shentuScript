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

--当前exp
function get_item_cur_exp(player, item)
    local cur_exp = lualib:Item_GetCustomVarInt(player, item, "cur_exp")
    return cur_exp
end

--设置当前exp
function set_item_cur_exp(player, item, cur_exp)
    lualib:Item_SetCustomVarInt(player, item, "cur_exp", cur_exp)
    lualib:Item_NotifyCustomParam(player, item, "cur_exp")
end

--当前exp上限
function get_item_max_exp(player, item)
    local max_exp = lualib:Item_GetCustomVarInt(player, item, "max_exp")
    return max_exp
end

--设置exp上限
function set_item_max_exp(player, item, max_exp)
    lualib:Item_SetCustomVarInt(player, item, "max_exp", max_exp)
    lualib:Item_NotifyCustomParam(player, item, "max_exp")
end

--in_pct
function get_item_in_pct(player, item)
    local in_pct = lualib:Item_GetCustomVarInt(player, item, "in_pct")
    return in_pct
end

--设置当前in_pct
function set_item_in_pct(player, item, in_pct)
    lualib:Item_SetCustomVarInt(player, item, "in_pct", in_pct)
    lualib:Item_NotifyCustomParam(player, item, "in_pct")
end

--out_pct
function get_item_out_pct(player, item)
    local out_pct = lualib:Item_GetCustomVarInt(player, item, "out_pct")
    return out_pct
end

--设置out_pct
function set_item_out_pct(player, item, out_pct)
    lualib:Item_SetCustomVarInt(player, item, "out_pct", out_pct)
    lualib:Item_NotifyCustomParam(player, item, "out_pct")
end

--slz_amount
function get_item_slz_amount(player, item)
    local slz_amount = lualib:Item_GetCustomVarInt(player, item, "slz_amount")
    return slz_amount
end

--设置slz_amount
function set_item_slz_amount(player, item, slz_amount)
    lualib:Item_SetCustomVarInt(player, item, "slz_amount", slz_amount)
    lualib:Item_NotifyCustomParam(player, item, "slz_amount")
end
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--经验增加触发
function process_item_add_exp(player, exp_addtion)
--[[
名称	        存储上限	存入倍数	取出倍数	使用消耗释灵珠数量
聚灵珠(小)	    80000	    200	        200	        2
聚灵珠(中)	    225000	    300	        200	        4
聚灵珠(大)	    600000	    400	        200	        8
超级聚灵珠	    1325000	    500	        200	        14
--]]

    local t =
    {
    ["聚灵珠(小)"] = {200000,     100, 100, 1},
    ["聚灵珠(中)"] = {600000,     100, 100, 2},
    ["聚灵珠(大)"] = {1600000,    100, 100, 4},
    ["超级聚灵珠"] = {4500000,    100, 100, 8},
    ["神级聚灵珠"] = {14000000,   100, 100, 16},
    ["坐骑聚灵珠(小)"] = {200000, 100, 100, 0},
    ["坐骑聚灵珠(中)"] = {400000, 100, 100, 0},
    ["坐骑聚灵珠(大)"] = {800000, 100, 100, 0},
    }
    
    local keys = ""
    for k, _ in pairs(t) do
        keys = keys..k.."#"
    end
    
    local items = lualib:GetItemsByKeys(player, keys, false, true, false, false)

    local select_item = ""
    local tmp_cur_exp_max = 0
	if items ~= nil then
		for k, v in pairs(items) do
			local key = lualib:ItemKeyName(player, v)  
            
            if get_item_max_exp(player, v) ~= t[key][1] then
				set_item_max_exp(player, v, t[key][1])
			end
            
			if get_item_max_exp(player, v) == 0 then
				set_item_cur_exp(player, v, 0)
				set_item_max_exp(player, v, t[key][1])
				set_item_in_pct(player, v, t[key][2])
				set_item_out_pct(player, v, t[key][3])
				set_item_slz_amount(player, v, t[key][4])
			end
			
			local cur_exp = get_item_cur_exp(player, v)
			local max_exp = get_item_max_exp(player, v)
			if cur_exp ~= max_exp then
				if cur_exp >= tmp_cur_exp_max then
					tmp_cur_exp_max = cur_exp
					select_item = v
				end
			end
			
		end
	end
    if select_item == "" then
        return
    end
    
    local sel_item_key_name = lualib:ItemKeyName(player, select_item)
    local sel_item_cur_exp  = get_item_cur_exp(player, select_item)
    local sel_item_max_exp  = t[sel_item_key_name][1]
    local sel_item_in_pct   = t[sel_item_key_name][2]
    
    local ref_exp           = math.floor(exp_addtion * sel_item_in_pct / 100)
    
    sel_item_cur_exp        = sel_item_cur_exp + ref_exp
    if sel_item_cur_exp > sel_item_max_exp then
        sel_item_cur_exp = sel_item_max_exp
    end
    
    set_item_cur_exp(player, select_item, sel_item_cur_exp)
    
    --- 测试代码
    lualib:SysMsg_SendTipsMsg(player, "物品:"..sel_item_key_name.." 获得经验: "..ref_exp)
end
