local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/refine")
require("form/精炼表单")

function on_apply_on_item(player, item, target_item)
    --所需精炼符数量
    local amount_require = 1
    --有效目标物品的最高精炼等级
    local level_valid_max = 5
    --精炼属性
    local att_name = lua_role_max_mag_atk_pct
    --附上的精炼等级区间[level_rnd_min, level_rnd_max]
    local level_rnd_min = 3
    local level_rnd_max = 5

    local new_refine_level = lualib:GenRandom(level_rnd_min, level_rnd_max)

    -- 等级,概率 键值对，概率必须递增！
    local rate = {{3,5000}, {4,3000}, {5,2000}}
	local max,qujian = 0,0
	
	for k = 1, table.getn(rate) do
		max = max + rate[k][2]
	end
    local r = lualib:GenRandom(1, max)
	
    for _, v in pairs(rate) do
		qujian = qujian + v[2]
        if r <= qujian then
            new_refine_level = v[1]
            break
        end
    end

    local item_amount = lualib:Item_GetAmount(player, item)
    if item_amount < amount_require then
        return "精炼符数量不足"
    end

    local item_key_name = lualib:ItemKeyName(player, item)

    local refine_level = lualib:Equip_GetRefineLevel(player, target_item)
    if refine_level > level_valid_max then
        lualib:SysMsg_SendWarnMsg(player, "该精炼符不可精炼高级别物品")
        return false
    end

    local result = refine_item(player, target_item, new_refine_level, att_name)
    if result ~= "" then
        lualib:SysMsg_SendWarnMsg(player, result)
        return false
    end

    lualib:Item_SetAmount(player, item, item_amount - amount_require)

    lualib:Log(lualib:KeyName(player), lualib:ItemKeyName(player, target_item),
        target_item, refine_level, new_refine_level, "精炼成功", item_key_name)
	mubiao_jinglianpanduan(player,new_refine_level) --目标精炼判断
    lualib:SysMsg_SendWarnMsg(player, "["..lualib:Name(target_item).."]精炼成功")

	local msgLevel = 3
	if new_refine_level >= msgLevel then
	lualib:SysMsg_SendCenterMsg(1, lualib:Name(player) .. "使用" .. lualib:ItemKeyName(player, item) .. "精炼" .. lualib:ItemKeyName(player, target_item) .. "到" .. new_refine_level .. "级", "")
    end
return true
end

function on_create(item)
	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
	
end

function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	
	if item_map_x < 20000 then
		if player_name == "" then
			local s = "【"..item_name.."】掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
			--lualib:SysMsg_SendCenterMsg(1, s, "")
			 --lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "【"..item_name.."】被→→→".."["..player_name.."]一个人品爆发打了出来，掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
            local s = "【"..item_name.."】掉落在"..item_map_name.."的["..item_map_x..":"..item_map_y.."]！！！"
			local s1 = "#COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#掉落在#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#的["..item_map_x..":"..item_map_y.."]！！！"
			--lualib:SysMsg_SendCenterMsg(1, s, "")
			 --lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end
