local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/装备合成2")
require("system/serializer")
require("system/refine")
require("form/精炼转移表单")

function zhuangbei_hecheng(player, specie, sub_specie, param)
    local t = { "极", "珍", "绝", "神" }
    local key = t[tonumber(sub_specie)]
    if tonumber(specie) == 1 then
        local content = serialize(wuqi_table[key])
        lualib:ShowFormWithContent(player, "装备合成内容表单", param..content)
    elseif tonumber(specie) == 2 then
        local content = serialize(yifu_table[key])
        lualib:ShowFormWithContent(player, "装备合成内容表单", param..content)
    end
    
	return ""
end

function querenhecheng(player, specie, sub_specie, focus_item, item_pos)
    if specie ~= "1" and specie ~= "2" then return "" end
    
    if tonumber(sub_specie) < 1 or tonumber(sub_specie) > 4 then return "" end
    --t存储此武器(衣服)下此品阶(极珍绝神)的所有装备table
    local keys = { "极", "珍", "绝", "神" }
    local t = {}
    if specie == "1" then
        t = wuqi_table[keys[tonumber(sub_specie)]]
    else
        t = yifu_table[keys[tonumber(sub_specie)]]
    end
    
    --t1是根据目标装备，将各种条件全部集中的一行
    local t1 = {}
    for k, v in pairs(t) do
        if v[4] == focus_item then
            t1 = v
        break end
    end
    
    if nil == t1 then return "请先选择要合成的装备！" end
    
    --将需要的材料转移到t2中来
    local t2 = {}
    for i =5, #t1 do
        table.insert(t2, t1[i])
    end
    
    --t3存储客户端发来的物品所在包裹位置
    local t3 = deserialize(item_pos)
    if #t3 ~= #t2 then return "" end
    
    --t4存储根据t3获取到的item的guid
    --t5存储根据t4获取到的item的KeyName
    --t6存储根据t3获取到的item的绑定类型
    local t4 = {}
    local t5 = {}
    local t6 = {}
    local t7 = {}
    for i = 1, #t3 do
        t4[i] = lualib:Player_GetItemGuid(player, t3[i])
        t5[i] = lualib:KeyName(t4[i])
        t6[i] = lualib:Item_IsBind(player, t4[i])
        t7[i] = lualib:Equip_GetRefineLevel(player, t4[i])
    end
    
    --判断最大精炼等级
    local max_refine_level = 0
    local basic_item_guid = ""
    for i = 1, #t7 do
        if max_refine_level <= t7[i] then
            max_refine_level = t7[i]
        end
    end
    

    
    --找到最大精炼等级的物品guid以及精炼属性以及物品的自定义变量
    for i = 1, #t7 do
        if t7[i] == max_refine_level then basic_item_guid = t4[i] break end
    end
    local refine_att_table = lualib:Equip_GetRefineProp(player, basic_item_guid)
    local randAtt_table = {}
    for i = 1, #randAtt do
        randAtt_table[i] = lualib:GetInt(basic_item_guid, randAtt[i][1])
    end
    local att_name = 0
    local att_value = 0
    for k, v in pairs(refine_att_table) do
        att_name = k
        att_value = v
    end
    
    
    --判断材料是否绑定
    for i = 1, #t6 do
        if t6[i] == true then return "绑定装备不可合成！" end
    end
    
    --判断物品与其他所消耗道具(金币元宝等)是否与table内一致
    for i = 1, #t2 do
        if t2[i] ~= t5[i] then return "放入物品不正确！" end
    end
    if lualib:Player_IsGoldEnough(player, t1[2], false) == false then return "金币不足！" end
    if lualib:Player_IsIngotEnough(player, t1[3], false) == false then return "元宝不足！" end


    --删除需求道具
    for i = 1, #t4 do
        if lualib:Item_Destroy(player, t4[i], "装备合成", "装备合成") == false then
            return "删除物品失败！"
        end
    end
    lualib:Player_SubGold(player, t1[2], false, "装备合成非绑金币", "装备合成")
    lualib:Player_SubIngot(player, t1[3], false, "装备合成非绑金币", "装备合成")

    
    --给物品
    
    result_item = lualib:AddSingleItem(player, t1[4], 1, 0, "装备合成", "装备合成")
    local item_subtype = lualib:Item_GetSubType(player, result_item)
    local att_name_table = refine_valid_item_att[item_subtype]
    --设置装备的精炼等级和精炼属性
    if not lualib:Equip_SetRefineLevel(player, result_item, max_refine_level) then return "设置精炼等级失败！" end
    if not lualib:Equip_SetRefineProp(player, result_item, att_name, att_value) then return "设置精炼属性失败！" end
    for i = 1, #randAtt do
		lualib:SetInt(result_item, randAtt[i][1], randAtt_table[i])
	end
    lualib:Item_NotifyUpdate(player, result_item)
    return "[装备合成成功！]"
end
