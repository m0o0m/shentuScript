local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("npc/装备合成")
require("system/refine")


--[[
设计框架
1.	精炼转移需要一把 转移目标武器，一把已精炼的武器，道具：转神石
2.	精炼转移必须为同类型的装备之间进行转移(如：武器只能对武器)
3.	精炼需要消耗一定量金币（待定）
4.	转移后将精炼武器的属性转移至目标武器上，原精炼武器消失
5.	属性转移根据精炼等级不同，所用材料也不同
1-3级：低级转神石
1-6级：中级转神石
1-9级：高级转神石
转移概率
1级：100%
2级：75%
3级：50%
4级：100%
5级：75%
6级：50%
7级：100%
8级：75%
9级：50%

6.	精炼失败后装备保留，只删除材料

--]]

--精炼转移保留原装备概率 转神石数量 金币
t = { 
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
{10000, 1, 5000},
}

--[[local table_zb = {"十杀·租赁",
"龙渊·租赁",
"天瀑·租赁",
"噬空·租赁",
"碎空·租赁",
"断空·租赁",
"赤峰战甲(男)·租赁",
"赤峰战甲(女)·租赁",
"阎罗长袍(男)·租赁",
"阎罗长袍(女)·租赁",
"光明道袍(男)·租赁",
"光明道袍(女)·租赁",
"王者之链·租赁",
"麒麟战盔·租赁",
"魔炫护腕·租赁",
"君王战戒·租赁",
"残月之坠·租赁",
"龙牙面具·租赁",
"紫炎护腕·租赁",
"星冥魔戒·租赁",
"天极项链·租赁",
"无魂头盔·租赁",
"天翼手镯·租赁",
"上清玄指·租赁",
"逐波天靴·租赁"}
]]
function update_item(player, item, refine_level, att_name, att_value)
    if not lualib:Equip_SetRefineLevel(player, item, refine_level) then
        return false
    end
    
    if not lualib:Equip_SetRefineProp(player, item, att_name, att_value) then
        return false
    end
    
    return true
end

function process_one(player, src_item, material, dst_item, refine_level)
    local is_gold_bind = false
    local gold_cost = t[refine_level][3]
    if not lualib:Player_IsGoldEnough(player, gold_cost, is_gold_bind) then
        return "金币不足"
    end
    
    local material_amount = lualib:Item_GetAmount(player, material)
    local ref_amount = t[refine_level][2]    
    if material_amount < ref_amount then
        return "转神石数量不足"
    end

    if not lualib:Player_SubGold(player, gold_cost, is_gold_bind, "精炼转移非绑", "系统") then
        return "系统错误"
    end

    local dst_refine_level = lualib:Equip_GetRefineLevel(player, dst_item)

    
    lualib:Log(lualib:KeyName(player), lualib:ItemKeyName(player, material),
        material, material_amount, ref_amount, "精炼转移消耗转神石", "系统")
	lualib:Item_SetAmount(player, material, material_amount - ref_amount)
		
    local renfine_property = lualib:Equip_GetRefineProp(player, src_item)
    local att_name = 0
    local att_value = 0
    for k, v in pairs(renfine_property) do
        att_name = k
        att_value = v
    end
    
    local user_name = lualib:Player_GetStrProp(player, lua_role_user_name)
    local src_item_name = lualib:Item_GetName(player, src_item)
    
    if lualib:GenRandom(0, 10000) > t[refine_level][1] then
        lualib:SysMsg_SendPromptMsg(player, "精练转移失败！")
        return ""
    end
	
	for i = 1, #randAtt do
		local randAtt_lv = lualib:GetInt(src_item, randAtt[i][1])
		lualib:SetInt(dst_item, randAtt[i][1], randAtt_lv)
	end
	
	
    if not lualib:Item_Destroy(player, src_item, "精炼转移成功删除物品", "系统") then
        lualib:SysMsg_SendPromptMsg(player, "系统错误")
        return ""
    end

    if not update_item(player, dst_item, refine_level, att_name, att_value) then
        lualib:SysMsg_SendPromptMsg(player, "系统错误")
    end 

    lualib:Item_NotifyUpdate(player, dst_item)

    local dst_item_name = lualib:Item_GetName(player, dst_item)
    lualib:SysMsg_SendPromptMsg(player, "精练转移成功，["..src_item_name.."]消失，["..dst_item_name.."]原精炼等级为"..dst_refine_level.."，当前精炼等级为"..refine_level.."！")
    
    --- 精炼转移成功
    lualib:Log(lualib:KeyName(player), lualib:ItemKeyName(player, dst_item),
        dst_item, dst_refine_level, refine_level, "精炼转移成功", "系统")

    return ""
end

--- src_item_site: 原精炼精炼物品所在格子  material_site: 精炼材料所在格子  dst_item_site: 目的精炼精炼物品所在格子
function main(player, src_item_site, material_site, dst_item_site)
    local src_item = lualib:Item_GetBySite(player, tonumber(src_item_site))
	local src_KeyName = lualib:KeyName(src_item)
    if lualib:Item_GetType(player, src_item) ~= 1 then
        return "不是装备不可精炼"
    end
    
    local dst_item = lualib:Item_GetBySite(player, tonumber(dst_item_site))
	local dst_KeyName = lualib:KeyName(dst_item)
    if lualib:Item_GetType(player, dst_item) ~= 1 then
        return "不是装备不可精炼"
    end
	
	if is_in_table_zb(src_KeyName,dst_KeyName) == true then 
		return "租赁装备不可精炼"
	end
	
	
    --- refine level test
    local src_refine_level = lualib:Equip_GetRefineLevel(player, src_item)
    if src_refine_level <= 0 then
        return "原物品没有精炼过"
    end
    
    local dst_refine_level = lualib:Equip_GetRefineLevel(player, dst_item)
    if src_refine_level <= dst_refine_level then
        return "目标物品精炼等级并不比原物品低"
    end
    
    if lualib:Item_GetSubType(player, src_item) ~= lualib:Item_GetSubType(player, dst_item) then
        return "同类型的装备之间才能进行转移"
    end
    
    local material = lualib:Item_GetBySite(player, tonumber(material_site))    
    local material_key_name = lualib:Item_GetKeyName(player, material)
    local b1 = material_key_name == "低级转神石"
    local b2 = material_key_name == "中级转神石"
    local b3 = material_key_name == "高级转神石"
    local b4 = material_key_name == "特级转神石"
    
    if src_refine_level <= 3 then
        if not (b1 or b2 or b3 or b4) then
            return "需要正确的材料"
        end
    elseif src_refine_level <= 6 then
        if not (b2 or b3 or b4) then
            return "需要正确的材料"
        end
    elseif src_refine_level <= 9 then
        if not (b3 or b4) then
            return "需要正确的材料"
        end
    elseif src_refine_level <= 15 then
        if not b4 then
            return "需要正确的材料"
        end
    end
    
    return process_one(player, src_item, material, dst_item, src_refine_level)
end
