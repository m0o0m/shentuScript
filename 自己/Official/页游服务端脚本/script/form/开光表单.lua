local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/horse")
--[[
坐骑分为：普通、稀有、极品、珍贵、绝世；对应颜色为：白、绿、蓝、紫、金

第一条属性按品质随机附加值
	4.1.普通品质：移动速度在5%~10%之间随机
	4.2.稀有品质：移动速度在10%~15%之间随机
	4.3.极品品质：移动速度在15%~20%之间随机
	4.4珍贵品质：移动速度在20%~30%之间随机
	4.4绝世品质：移动速度在25%~35%之间随机

--]]




function process_one(player, item, material)
    if lualib:BagFree(player, true, false, false) <= 0 then
        return "背包已满"
    end

    local horse_t =
    {
        ["独角兽(未开光)"] = "独角兽", 
        ["梦魇兽(未开光)"] = "梦魇兽", 
        ["赤甲蝎(未开光)"] = "赤甲蝎", 
        ["绒球兽(未开光)"] = "绒球兽", 
        ["雪域天狼(未开光)"] = "雪域天狼", 
        ["吼天兽(未开光)"] = "吼天兽", 
        ["裂天魔狮(未开光)"] = "裂天魔狮", 
        ["不死鸟(未开光)"] = "不死鸟", 
        ["陆行鸟(未开光)"] = "陆行鸟", 
        ["神翼天鹅(未开光)"] = "神翼天鹅", 
        ["龙鹰(未开光)"] = "龙鹰", 
        ["狮鹫(未开光)"] = "狮鹫", 
        ["游天符(未开光)"] = "游天符", 
        ["混天轮(未开光)"] = "混天轮", 
        ["风羽剑(未开光)"] = "风羽剑", 
        ["玄火轮(未开光)"] = "玄火轮", 
        ["腾云(未开光)"] = "腾云", 
        ["风火扇(未开光)"] = "风火扇", 
        ["梭云兽(未开光)"] = "梭云兽", 
        ["鬼车(未开光)"] = "鬼车", 
        ["神兽(未开光)"] = "神兽", 
        ["霸下玄龟(未开光)"] = "霸下玄龟", 
        ["海兽(未开光)"] = "海兽", 
        ["汗血(未开光)"] = "汗血宝马", 
        ["火麒麟(未开光)"] = "火麒麟", 
        ["幽冥狼(未开光)"] = "幽冥狼", 
        ["地煞瞳兽(未开光)"] = "地煞瞳兽", 
        ["震空翼(未开光)"] = "震空翼", 
        ["绝影(未开光)"] = "绝影", 
        ["疾风(未开光)"] = "疾风", 
    }

    local is_bind = lualib:Item_IsBind(player, item)
    local item_name = lualib:Item_GetName(player, item)
    local item_key_name = lualib:Item_GetKeyName(player, item)
    local dst_key_name = horse_t[item_key_name]
	local cl_isbind = lualib:Item_IsBind(player, material)

    --对应坐骑keyname
    if dst_key_name == nil then
        return "["..item_name.."]对应开光物品不存在"
    end

    local is_gold_bind = false
    local gold_cost = 100000
    if not lualib:Player_IsGoldEnough(player, gold_cost, is_gold_bind) then
        return "金币不足"
    end

    local material_cost = 1
    local material_amount = lualib:Item_GetAmount(player, material)
    if material_amount < material_cost then
        return "开光印数量不足"
    end

    if not lualib:Player_SubGold(player, gold_cost, is_gold_bind, "坐骑开光", player) then
        return "扣金币失败"
    end

    lualib:Item_SetAmount(player, material, material_amount - material_cost)
    local player_name = lualib:Name(player)

    --开光概率：【失败：1000】【普通：7527】【稀有：1000】【极品：333】【珍贵：100】【绝世：40】

	local gailv_tb =
					{
					{0, 1000},  --开光失败权重
					{1, 4650},  --普
					{2, 2320},	--极
					{3, 1160},	--珍
					{4, 580},	--绝
					{5, 290}	--神
					}

	local max,qujian = 0,0

	for k = 1, table.getn(gailv_tb) do
		max = max + gailv_tb[k][2]
	end
    local r = lualib:GenRandom(1, max)

	if r <= gailv_tb[1][2] then
        lualib:Log(player_name, item_key_name, item, 0, 0, "开光失败", "系统")
        return "开光失败！"
	end

    for _, v in pairs(gailv_tb) do
		qujian = qujian + v[2]
        if r <= qujian then
            h_type = v[1]
			if not lualib:Item_Destroy(player, item, "开光删除物品", item_key_name) then
				return "扣除道具失败"
			end

			local first_free_slot = lualib:FindFirstBagFreeSlot(player)
			if first_free_slot <= 0 then
				return "背包已满"
			end
			
			local result = lualib:GiveOneItem(player, dst_key_name, 1, "", "")
			if cl_isbind == true or is_bind == true then
				lualib:Item_SetBind(player, result, true)
				if result == "" then
					return "创建开光物品失败"
				end
			else
				lualib:Item_SetBind(player, result, false)
				if result == "" then
					return "创建开光物品失败"
				end
			end

			local dst_item = lualib:Item_GetBySite(player, first_free_slot)
			if dst_item == "" then
				return "获取对应开光物品失败"
			end

			local dst_item_name = lualib:Item_GetName(player, dst_item)

			-- 初始化所有变量
			set_horse_type(player, dst_item, h_type)
			set_horse_level(player, dst_item, 1)
			set_horse_cur_exp(player, dst_item, 0)
			local new_max_exp = horse_level_up_t[h_type][1][1]
			set_horse_max_exp(player, dst_item, new_max_exp)

			local att1_t =
			{
				--第一条属性移动速度表
				--下限 上限
				{5, 10},
				{10, 15},
				{15, 20},
				{20, 25},
				{25, 35},
			}

			--role_move_speed_pct
			local att_name = 109
			local att_value = lualib:GenRandom(att1_t[h_type][1], att1_t[h_type][2])
			lualib:Equip_SetExtProp(player, dst_item, 0, att_name, att_value)

			lualib:Item_NotifyUpdate(player, dst_item)

			local display_name_t =
			{
				"普",
				"极",
				"珍",
				"绝",
				"神",
			}

			local msg = "开光获得: "..dst_item_name.."("..display_name_t[h_type]..")"
			lualib:SysMsg_SendWarnMsg(player, msg)

			local s = "["..player_name.."]".."使用开光印得到【"..dst_item_name..display_name_t[h_type].."】！"
			if h_type >= 3 then
				lualib:SysMsg_SendCenterMsg(1, s, "")
			else
				lualib:SysMsg_SendPromptMsg(player, s)
			end
			local newSite = tostring(lualib:Item_GetSite(player, result))
			lualib:ShowFormWithContent(player, "开光成功表单", newSite)
			lualib:Log(lualib:KeyName(player), item_key_name,
				item, 0, 0, "开光成功", "系统")

			lualib:OnGloryTrigger(player, lua_glory_trigger_horse_kaiguang, item, h_type, "" ,"")
			if lualib:HasQuest(player, 4037) then lualib:SetInt(player, "4037", 1) end--开光成功后，检测是否接受任务4037，是，则设玩家4037变量为1
			 return ""
        end
    end



    return ""
end

--item_site: 未开光物品所在格子  material_site: 精炼材料所在格子
function main(player, item_site, material_site)
    local item = lualib:Item_GetBySite(player, tonumber(item_site))
    local material = lualib:Item_GetBySite(player, tonumber(material_site))
    if lualib:Item_GetKeyName(player, material) ~= "开光印" then
        return "需要正确的材料"
    end

    return process_one(player, item, material)
end



---已开光坐骑重新开光
function process_one2(player, item, material)
	laopinji = lualib:Item_GetCustomVarInt(player, item, "h_type")
	laolevel = lualib:Item_GetCustomVarInt(player, item, "h_level")
	
    if lualib:BagFree(player, true, false, false) <= 0 then
        return "背包已满"
    end

    local horse_t =
    {
        ["独角兽"] = "独角兽", 
        ["梦魇兽"] = "梦魇兽", 
        ["赤甲蝎"] = "赤甲蝎", 
        ["绒球兽"] = "绒球兽", 
        ["雪域天狼"] = "雪域天狼", 
        ["吼天兽"] = "吼天兽", 
        ["裂天魔狮"] = "裂天魔狮", 
        ["不死鸟"] = "不死鸟", 
        ["陆行鸟"] = "陆行鸟", 
        ["神翼天鹅"] = "神翼天鹅", 
        ["龙鹰"] = "龙鹰", 
        ["狮鹫"] = "狮鹫", 
        ["游天符"] = "游天符", 
        ["混天轮"] = "混天轮", 
        ["风羽剑"] = "风羽剑", 
        ["玄火轮"] = "玄火轮", 
        ["腾云"] = "腾云", 
        ["风火扇"] = "风火扇", 
        ["梭云兽"] = "梭云兽", 
        ["鬼车"] = "鬼车", 
        ["神兽"] = "神兽", 
        ["霸下玄龟"] = "霸下玄龟", 
        ["海兽"] = "海兽", 
        ["汗血宝马"] = "汗血宝马", 
        ["火麒麟"] = "火麒麟", 
        ["幽冥狼"] = "幽冥狼", 
        ["地煞瞳兽"] = "地煞瞳兽", 
        ["震空翼"] = "震空翼", 
        ["绝影"] = "绝影", 
        ["疾风"] = "疾风", 
    }

    local is_bind = lualib:Item_IsBind(player, item)
    local item_name = lualib:Item_GetName(player, item)
    local item_key_name = lualib:Item_GetKeyName(player, item)
    local dst_key_name = horse_t[item_key_name]
	local cl_isbind = lualib:Item_IsBind(player, material)

    --对应坐骑keyname
    if dst_key_name == nil then
        return "["..item_name.."]对应开光物品不存在"
    end

    local is_gold_bind = false
    local gold_cost = 100000
    if not lualib:Player_IsGoldEnough(player, gold_cost, is_gold_bind) then
        return "金币不足"
    end

    local material_cost = 1
    local material_amount = lualib:Item_GetAmount(player, material)
    if material_amount < material_cost then
        return "开光印数量不足"
    end

    if not lualib:Player_SubGold(player, gold_cost, is_gold_bind, "坐骑开光", "非绑") then
        return "扣金币失败"
    end

    lualib:Item_SetAmount(player, material, material_amount - material_cost)
    local player_name = lualib:Name(player)

    --开光概率：【失败：1000】【普通：7527】【稀有：1000】【极品：333】【珍贵：100】【绝世：40】

	local gailv_tb =
					{
					{0, 1000},  --开光失败权重
					{1, 4650},  --普
					{2, 2320},	--极
					{3, 1160},	--珍
					{4, 580},	--绝
					{5, 290}	--神
					}

	local max,qujian = 0,0

	for k = 1, table.getn(gailv_tb) do
		max = max + gailv_tb[k][2]
	end
    local r = lualib:GenRandom(1, max)

	if r <= gailv_tb[1][2] then
        lualib:Log(player_name, item_key_name, item, 0, 0, "开光失败", "系统")
        return "开光失败！"
	end

    for _, v in pairs(gailv_tb) do
		qujian = qujian + v[2]
        if r <= qujian then
            h_type = v[1]
--[[			if laopinji > h_type then
				h_type = laopinji
			end]]
			if not lualib:Item_Destroy(player, item, "开光删除物品", item_key_name) then
				return "扣除道具失败"
			end

			local first_free_slot = lualib:FindFirstBagFreeSlot(player)
			if first_free_slot <= 0 then
				return "背包已满"
			end

			local result = lualib:GiveOneItem(player, dst_key_name, 1, "", "")
			if cl_isbind == true or is_bind == true then
				lualib:Item_SetBind(player, result, true)
				if result == "" then
					return "创建开光物品失败"
				end
			else
				lualib:Item_SetBind(player, result, false)
				if result == "" then
					return "创建开光物品失败"
				end
			end

			local dst_item = lualib:Item_GetBySite(player, first_free_slot)
			if dst_item == "" then
				return "获取对应开光物品失败"
			end

			local dst_item_name = lualib:Item_GetName(player, dst_item)

			-- 初始化所有变量
			set_horse_type(player, dst_item, h_type)
			set_horse_level(player, dst_item, 1)
			set_horse_cur_exp(player, dst_item, 0)
			local new_max_exp = horse_level_up_t[h_type][1][1]
			set_horse_max_exp(player, dst_item, new_max_exp)

			local att1_t =
			{
				--第一条属性移动速度表
				--下限 上限
				{5, 10},
				{10, 15},
				{15, 20},
				{20, 25},
				{25, 35},
			}

			--role_move_speed_pct
			local att_name = 109
			local att_value = lualib:GenRandom(att1_t[h_type][1], att1_t[h_type][2])
			lualib:Equip_SetExtProp(player, dst_item, 0, att_name, att_value)

			lualib:Item_NotifyUpdate(player, dst_item)

			local display_name_t =
			{
				"普",
				"极",
				"珍",
				"绝",
				"神",
			}

			local msg = "开光获得: "..dst_item_name.."("..display_name_t[h_type]..")"
			lualib:SysMsg_SendWarnMsg(player, msg)

			local s = "["..player_name.."]".."使用开光印得到【"..dst_item_name..display_name_t[h_type].."】！"
			if h_type >= 3 then
				lualib:SysMsg_SendCenterMsg(1, s, "")
			else
				lualib:SysMsg_SendPromptMsg(player, s)
			end
			
			local newSite = tostring(lualib:Item_GetSite(player, result))
			lualib:ShowFormWithContent(player, "开光成功表单", newSite)
			
			lualib:Log(lualib:KeyName(player), item_key_name,
				item, 0, 0, "开光成功", "系统")
			
			lualib:OnGloryTrigger(player, lua_glory_trigger_horse_kaiguang, item, h_type, "" ,"")
			if lualib:HasQuest(player, 4037) then lualib:SetInt(player, "4037", 1) end--开光成功后，检测是否接受任务4037，是，则设玩家4037变量为1
			 return ""
        end
    end



    return ""
end

--item_site: 未开光物品所在格子  material_site: 精炼材料所在格子
function main2(player, item_site, material_site)
    local item = lualib:Item_GetBySite(player, tonumber(item_site))
    local material = lualib:Item_GetBySite(player, tonumber(material_site))
    if lualib:Item_GetKeyName(player, material) ~= "开光印" then
        return "需要正确的材料"
    end

    return process_one2(player, item, material)
end



