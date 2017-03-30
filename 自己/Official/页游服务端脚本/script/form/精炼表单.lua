local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--[[
    1.	只有设定为可精炼的装备可以通过精炼系统进行精炼
2.	精炼时需要选择相应的属性进行精炼
3.	精炼一共分为12级，每提升一个等级，都会有相应的属性加成
4.	精炼需要消耗灵元珠，精炼失败后精炼等级-1， 表可配置X级精炼失败是否失败
5.	精炼需要消耗金币，不同等级消耗不同数量
6.	根据精炼的等级，为装备增加所精炼类型的属性百分比，若原有装备属性与本次装备属性不相同，则直接将原有属性替换为新的精炼类型属性
7.	精炼至6级以上，将全服公告，（[playerName]在精炼大师处[巫山城199:319]将[itemName]精炼到X级！！！）
8.	装备精炼可自动精炼，放入装备材料后，选择精炼等级，点击自动精炼，精炼至玩家设定等级停止，若在精炼循环过程中材料不足，也停止。
9.	不同装备的所能精炼的属性不同
武器*1―物攻、魔法、道术
戒指*2―物攻、魔法、道术
项链*1―血上限、蓝上限
手镯*2―血上限、蓝上限
头盔*1―物防、魔防
衣服*1―物防、魔防
靴子*1―物防、魔防
10.	携带全套7、8、9级精炼装备有附加属性(需要文案取一个附加属性名称)
--]]

local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/refine")

--精炼概率 灵元珠数量 金币
t = {
{10000, 1, 5000},
{7000, 2, 5000},
{6000, 4, 5000},
{5000, 6, 5000},
{4000, 8, 5000},
{3300, 10, 5000},
{2500, 12, 5000},
{1000, 14, 5000},
{500, 16, 5000}
}

function process_one(player, item, material, refine_level, att_name)
	local src_refine_level = refine_level
    local is_gold_bind = false
    local gold_cost = t[refine_level + 1][3]

    if not lualib:Player_IsGoldEnough(player, gold_cost, is_gold_bind) then
        return "金币不足"
    end

    local material_amount = lualib:Item_GetAmount(player, material)
    if material_amount < t[refine_level + 1][2] then
        return "灵元珠数量不足"
    end

    if not lualib:Player_SubGold(player, gold_cost, is_gold_bind, "精炼", "非绑") then
        return "系统错误"
    end

    lualib:Item_SetAmount(player, material, material_amount - t[refine_level + 1][2])

    local user_name = lualib:Player_GetStrProp(player,  lua_role_user_name)
    local item_name = lualib:Item_GetName(player, item)

    if lualib:GenRandom(0, 10000) > t[refine_level + 1][1] then

		if refine_level >= 2 then
            refine_level = refine_level - 1
        end
		--"此处含义为当初始等级为x级以上时失败后降低1级"

        if not update_item(player, item, refine_level - 0, att_name) then
            lualib:SysMsg_SendPromptMsg(player, "系统错误")
        end

        lualib:Item_NotifyUpdate(player, item)

        local new_refine_level = lualib:Equip_GetRefineLevel(player, item)
        lualib:SysMsg_SendPromptMsg(player, "精练失败，["..item_name.."]当前精练等级为"..new_refine_level.."级！")

        lualib:Log(lualib:KeyName(player), lualib:ItemKeyName(player, item),
            item, src_refine_level, new_refine_level, "精炼失败", "系统")

        return ""
    end

    if not update_item(player, item, refine_level + 1, att_name) then
        lualib:SysMsg_SendPromptMsg(player, "系统错误")
    end

    lualib:Item_NotifyUpdate(player, item)

    local new_refine_level = lualib:Equip_GetRefineLevel(player, item)

	local play_m = lualib:MapGuid(player)
	local map_Name = lualib:Name(play_m)
	local play_x = lualib:X(player)
	local play_y = lualib:Y(player)
    local s = "["..user_name.."]".."在["..map_Name..play_x..":"..play_y.."]将["..item_name.."]精炼到"..new_refine_level.."级！！！"
    if new_refine_level >= 3 then
        lualib:SysMsg_SendCenterMsg(1, s, "")
    else
        lualib:SysMsg_SendPromptMsg(player, s)
    end

    --[[
        void LogFull(const std::string &role_name,      /// 角色的名字
        int action,                                 /// 动作                                 /// y
        const std::string &item_key_name,           /// 物品名称
        const std::string &s_item_guid,             /// 物品guid
        INT32 src_value,                            /// 原数据
        INT32 ref_value,                            /// 改变量
        const std::string &descript,                /// 描述
        const std::string &target_name              /// 目标名称
    --]]
    lualib:Log(lualib:KeyName(player), lualib:ItemKeyName(player, item),
        item, src_refine_level, new_refine_level, "精炼成功", "系统")

	lualib:OnGloryTrigger(player, lua_glory_trigger_jinglian, item, 0, "" ,"")
	mubiao_jinglianpanduan(player,new_refine_level)
    return ""
end

--enhance_item_site: 精炼物品所在格子  material_site: 精炼材料所在格子  att_name: 精炼属性
function main(player, enhance_item_site, material_site, att_name)
    local item = lualib:Item_GetBySite(player, tonumber(enhance_item_site))
    if lualib:Item_GetType(player, item) ~= 1 then
        return "不是装备不可精炼"
    end

    local material = lualib:Item_GetBySite(player, tonumber(material_site))
    if lualib:Item_GetKeyName(player, material) ~= "灵元珠" then
        return "需要正确的材料"
    end

    local refine_level = lualib:Equip_GetRefineLevel(player, item)
    if refine_level >= 9 then
        return "已经强化到最高等级"
    end

    --refine_valid_item_att
    local sub_type = lualib:Item_GetSubType(player, item)
    local find = false
    for _, v in pairs(refine_valid_item_att[sub_type]) do
        if v == tonumber(att_name) then
            find = true
        end
    end

    if not find then
        return "装备不能强化该属性"
    end

    return process_one(player, item, material, refine_level, tonumber(att_name))
end


function mubiao_jinglianpanduan(player,new_refine_level)
	new_refine_level = tonumber(new_refine_level)
	
	--目标系统：将任意装备精练到12
	if new_refine_level >= 12 and lualib:GetInt(player,"mubiao_zhuangbei_3") == 0 then
		lualib:SetInt(player,"mubiao_zhuangbei_3",1)
		lualib:SetInt(player,"mubiao_zhuangbei",lualib:GetInt(player,"mubiao_zhuangbei")+1)
		lualib:SysMsg_SendBoardMsg(player, "目标追求", "”将任意装备精练到12“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！", 15000)
		lualib:SysMsg_SendWarnMsg(player,"“将任意装备精练到12“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！")
	end
	
	--目标系统：将任意装备精练到9
	if new_refine_level >= 9 and lualib:GetInt(player,"mubiao_zhuangbei_2") == 0 then
		lualib:SetInt(player,"mubiao_zhuangbei_2",1)
		lualib:SetInt(player,"mubiao_zhuangbei",lualib:GetInt(player,"mubiao_zhuangbei")+1)
		lualib:SysMsg_SendBoardMsg(player, "目标追求", "”将任意装备精练到9“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！", 15000)
		lualib:SysMsg_SendWarnMsg(player,"“将任意装备精练到9“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！")
	end
	
	--目标系统：将任意装备精练到6
	if new_refine_level >= 6 and lualib:GetInt(player,"mubiao_zhuangbei_1") == 0 then
		lualib:SetInt(player,"mubiao_zhuangbei_1",1)
		lualib:SetInt(player,"mubiao_zhuangbei",lualib:GetInt(player,"mubiao_zhuangbei")+1)
		lualib:SysMsg_SendBoardMsg(player, "目标追求", "”将任意装备精练到6“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！", 15000)
		lualib:SysMsg_SendWarnMsg(player,"“将任意装备精练到6“已达成，请打开#COLORCOLOR_GREENG#目标面板#COLOREND#领取奖励吧！")
	end
end