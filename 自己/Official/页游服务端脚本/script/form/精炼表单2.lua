local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/refine")

local rate = {
				{10000, 0,  1},
				{8000,  5000,  2},
				{6000,  10000,  4},
				{5500,  20000,  6},
				{5000,  40000,  8},
				{4000,  80000,  10},
				{3500,  100000, 12},
				{3000,  120000, 14},
				{2500,  140000, 16},
				{2000,  160000, 18},
				{1000,  180000, 20},
				{750,  200000, 22},
				{500,  200000, 24},
				{300,  200000, 26},
				{150,  200000, 28},
				}

function main(player, equip, a_item, b_item, att_name)
	local equip_guid, a_item_guid = lualib:Item_GetBySite(player, tonumber(equip)), lualib:Item_GetBySite(player, tonumber(a_item))
	
	if lualib:Item_GetType(player, equip_guid) ~= 1 then
        return "不是装备不可精炼"
    end
	
	if lualib:Item_GetKeyName(player, a_item_guid) ~= "灵元珠" then
        return "需要正确的材料"
    end
	
	local refine_level = lualib:Equip_GetRefineLevel(player, equip_guid)
    if refine_level >= 15 then
        return "已经强化到最高等级"
    end
	
	local sub_type = lualib:Item_GetSubType(player, equip_guid)
    local find = false
    for _, v in pairs(refine_valid_item_att[sub_type]) do
        if v == tonumber(att_name) then
            find = true
        end
    end

    if not find then
        return "装备不能强化该属性"
    end
	
	local b_item = tonumber(b_item)
	local b_item_guid = ""
	if  b_item ~= nil and b_item ~= "" then
		b_item_guid = lualib:Item_GetBySite(player, b_item)
	end
	
	if b_item_guid == "" then
		return process_one(player, equip_guid, a_item_guid, refine_level, tonumber(att_name))
	else
		return process_one(player, equip_guid, a_item_guid, refine_level, tonumber(att_name), b_item_guid)
	end
end

function process_one(player, equip, a_item, refine_level, att_name, b_item_guid)
	
	local b_item_key = ""
	if b_item_guid ~= nil then
		b_item_key = lualib:KeyName(b_item_guid)
	end
	
	
	local addRate = 0
	local delItem = true
	if b_item_key ~= "" and b_item_key ~= "护炼符" and b_item_key ~= "幸运星" and b_item_key ~= "鸿运星" and b_item_key ~= "幻梦星" then
		return "放入辅助材料不正确，请放入护炼符或者幸运星！"
	elseif b_item_key == "幸运星" then
        addRate = 1000
	elseif b_item_key == "鸿运星" then
		addRate = 2000
	elseif b_item_key == "幻梦星" then
		addRate = 3000
	elseif b_item_key == "护炼符" then
		delItem = false
	end
	
	
    local gold_cost = rate[refine_level + 1][2]
    if not lualib:Player_IsGoldEnough(player, gold_cost, false) then
        return "金币不足"
    end
	
	local a_item_amount = lualib:Item_GetAmount(player, a_item)
    if a_item_amount < rate[refine_level + 1][3] then
        return "灵元珠数量不足"
    end
	
	if not lualib:Player_SubGold(player, gold_cost, false, "精炼扣金币", "系统") then
        return "系统错误"
    end
	
	
	local material_amount = lualib:Item_GetAmount(player, a_item)
	lualib:Item_SetAmount(player, a_item, material_amount - rate[refine_level + 1][3])
	if b_item_guid ~= nil then
		local item_fuzhu = lualib:Item_GetAmount(player, b_item_guid)
		lualib:Item_SetAmount(player, b_item_guid, item_fuzhu - 1)
	end
	
	local user_name = lualib:Player_GetStrProp(player,  lua_role_user_name)
    local item_name = lualib:Item_GetName(player, equip)
	
	local safetyLevel = 3
	local coustLevel = 0
	
	if delItem == false and refine_level > 0 then
		coustLevel = 0
	elseif refine_level > 0 then
		coustLevel = 0
	end
	
	if lualib:GenRandom(0, 10000) > (rate[refine_level + 1][1] + addRate) then
	
		if not update_item(player, equip, refine_level - coustLevel, att_name) then
			lualib:SysMsg_SendPromptMsg(player, "系统错误")
		end
		
		lualib:Item_NotifyUpdate(player, equip)
		
		local new_refine_level = lualib:Equip_GetRefineLevel(player, equip)
		
		lualib:SysMsg_SendPromptMsg(player, "精练失败，["..item_name.."]当前精练等级为"..new_refine_level.."级！")
		
		lualib:Log(lualib:KeyName(player), lualib:ItemKeyName(player, equip),
				equip, refine_level, new_refine_level, "精炼失败", "系统")
		
	    return ""
    end
	
	
	
	if not update_item(player, equip, refine_level + 1, att_name) then
        lualib:SysMsg_SendPromptMsg(player, "系统错误")
    end

    lualib:Item_NotifyUpdate(player, equip)

    local new_refine_level = lualib:Equip_GetRefineLevel(player, equip)
	
	local play_m = lualib:MapGuid(player)
	local map_Name = lualib:Name(play_m)
	local play_x = lualib:X(player)
	local play_y = lualib:Y(player)
    local s = "["..user_name.."]".."在["..map_Name..play_x..":"..play_y.."]将["..item_name.."]精炼到"..new_refine_level.."级！！！"
    if new_refine_level >= 7 then
		lualib:SysMsg_SendPromptMsg(player, s)
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
	]]
    lualib:Log(lualib:KeyName(player), lualib:KeyName(equip),
        equip, refine_level, new_refine_level, "精炼成功", "系统")

	lualib:OnGloryTrigger(player, lua_glory_trigger_jinglian, equip, 0, "" ,"")
	mubiao_jinglianpanduan(player,new_refine_level)
    return ""
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