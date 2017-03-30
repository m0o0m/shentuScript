local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/荣耀装备兑换")
require("system/serializer")


function rongyaoduihuan(player, ye, param)
    local keys = { "战士", "法师", "道士"}
    local key = keys[tonumber(ye)]
    local content = serialize(rongyao_item[key])
    lualib:ShowFormWithContent(player, "荣耀装备兑换内容表单", param..content)
    return ""
end


function querenduihuan(player, ye, focus_item, item_pos)
    if tonumber(ye) < 1 or tonumber(ye) > 3 then 
        return "物品类型错误！" 
    end
    local keys = { "战士", "法师", "道士"}
    local item_table = rongyao_item[keys[tonumber(ye)]]
    --合成装备以及需求装备table
    local focus_item_table = {}
    for k, v in pairs(item_table) do
        if v[4] == focus_item then
            focus_item_table = v
        break end
    end
    if focus_item_table == nil then
        return "请先选择要兑换的装备！" 
    end
    --需求装备table
    local require_item_table = {}
    for i =5, #focus_item_table do
        table.insert(require_item_table, focus_item_table[i])
    end
    --客户端发来的物品位置table
    local item_pos_table = deserialize(item_pos)
    local item_guid_tabe = {}
    local item_keyname_table = {}
    local item_count_table = {}
    
    if #item_pos_table ~= #require_item_table then
        return "需求物品数量不正确！"
    end
    
    for i = 1, #item_pos_table do
        item_guid_tabe[i] = lualib:Player_GetItemGuid(player, item_pos_table[i])
        item_keyname_table[i] = lualib:KeyName(item_guid_tabe[i])
        item_count_table[i] = lualib:Item_GetAmount(player, item_guid_tabe[i])
    end
    
    
    for i = 1, #require_item_table do
        if require_item_table[i][1] ~= item_keyname_table[i] then
            return "放入物品不正确！"
        end
    end
    for i = 1, #require_item_table do
        if item_count_table[i] < require_item_table[i][2] then
            return "物品数量不足！"
        end
    end
    
    if lualib:GetInt(player, "jjc_rongyao") < focus_item_table[3] then
        return "荣耀值不足！"
    end
    if lualib:Player_IsGoldEnough(player, focus_item_table[2], false) == false then
        return "金币不足！"
    end
    
    --删除需求道具
    for i = 1, #item_guid_tabe do
        if lualib:Item_SetAmount(player, item_guid_tabe[i], lualib:Item_GetAmount(player, item_guid_tabe[i]) - require_item_table[i][2]) == false then
            return "删除物品失败！"
        end
    end
    if lualib:Player_SubGold(player, focus_item_table[2], false, "装备合成非绑金币", "装备合成") == false then
		return "扣除金币失败！"
	end
    if lualib:SetInt(player, "jjc_rongyao", lualib:GetInt(player, "jjc_rongyao") - focus_item_table[3]) == false then
		return "扣除荣耀值失败！"
	end
    --给装备
    if lualib:AddSingleItem(player, focus_item_table[4], 1, 0, "兑换荣耀装备", player) == nil then
        return "添加道具失败！"
    end
    return "[兑换荣耀装备成功！]"
end
