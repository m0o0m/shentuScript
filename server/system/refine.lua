refine_valid_item_att = {
{ lua_role_max_phy_atk_pct,  lua_role_max_mag_atk_pct,  lua_role_max_tao_atk_pct},
{ lua_role_max_phy_def_pct,  lua_role_max_mag_def_pct},
{ lua_role_max_hp_pct,  lua_role_max_mp_pct},
{ lua_role_max_phy_def_pct,  lua_role_max_mag_def_pct},
{},
{ lua_role_max_phy_def_pct,  lua_role_max_mag_def_pct},
{},
{ lua_role_max_hp_pct,  lua_role_max_mp_pct},
{ lua_role_max_phy_atk_pct,  lua_role_max_mag_atk_pct,  lua_role_max_tao_atk_pct},
{},
{},
{},
{},
{ lua_role_max_hp_pct, lua_role_max_mp_pct},
}

refine_att_addtion = {
{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15},
{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15},
{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15},
{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15},
{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15},
{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15},
{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15},
{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15},
{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15},
{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15},
{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15},
{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15},
{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15},
{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15},
}


randAtt = {
                   --等级，    {属性值1，属性值2}，{}
				{"RefineAtt_level_1",  {0, 1, 2, 3}, {9000, 10000, 10000, 10000}},
				{"RefineAtt_level_2",  {0, 1, 2, 3}, {8500, 10000, 10000, 10000}},
				{"RefineAtt_level_3",  {0, 1, 2, 3}, {8000, 10000, 10000, 10000}},
				{"RefineAtt_level_4",  {0, 1, 2, 3}, {7500, 10000, 10000, 10000}},
				{"RefineAtt_level_5",  {0, 1, 2, 3}, {7000, 10000, 10000, 10000}},
				{"RefineAtt_level_6",  {0, 1, 2, 3}, {6500, 10000, 10000, 10000}},
				{"RefineAtt_level_7",  {0, 1, 2, 3}, {6000, 10000, 10000, 10000}},
				{"RefineAtt_level_8",  {0, 1, 2, 3}, {5500, 10000, 10000, 10000}},
				{"RefineAtt_level_9",  {0, 1, 2, 3}, {5500, 8200,  10000, 10000}},
				{"RefineAtt_level_10", {0, 1, 2, 3}, {4500, 7500,  10000, 10000}},
				{"RefineAtt_level_11", {0, 1, 2, 3}, {4000, 7300,  10000, 10000}},
				{"RefineAtt_level_12", {0, 1, 2, 3}, {0,    5500,  8200,  10000}},
				{"RefineAtt_level_13", {0, 1, 2, 3}, {0,    4500,  7500,  10000}},
				{"RefineAtt_level_14", {0, 1, 2, 3}, {0,    4000,  7300,  10000}},
				{"RefineAtt_level_15", {0, 1, 2, 3}, {0,    0,     6000,  10000}},					
			}

function update_item(player, item, refine_next_level, att_name)
    local sub_type = lualib:Item_GetSubType(player, item)
	local refine_level = lualib:Equip_GetRefineLevel(player, item)
	if refine_next_level > refine_level then
		local a = math.random(1,10000)
		local key = 1
		for i = 1, #randAtt[refine_next_level][3] do
			if randAtt[refine_next_level][3][i] < a then
				key = i + 1
			end
		end
		lualib:SetInt(item, "RefineAtt_level_"..refine_next_level, randAtt[refine_next_level][2][key])
	end
	
	
    if not lualib:Equip_SetRefineLevel(player, item, refine_next_level) then
        return false
    end

    local new_att_name = 0
    local new_attr_value = 0

    if refine_next_level > 0 then
        new_att_name = att_name
        new_attr_value = refine_att_addtion[sub_type][refine_next_level]
    end
	
	--随机值附加
	local randAtt = 0

	for i = 1, refine_next_level do
		local strName = tostring("RefineAtt_level_"..i)
		local refine_rand =lualib:GetInt(item, strName)
		randAtt = randAtt + refine_rand
	end
	
    if not lualib:Equip_SetRefineProp(player, item, new_att_name, new_attr_value + randAtt) then
        return false
    end

    return true
end

--item: 精炼物品 new_refine_level: 精炼等级 att_name: 精炼属性
function refine_item(player, item, new_refine_level, att_name)
    if lualib:Item_GetType(player, item) ~= 1 then
        return "不是装备不可精炼"
    end

    local refine_level = lualib:Equip_GetRefineLevel(player, item)
    if refine_level >= 15 then
        return "已经强化到最高等级"
    end

    --refine_valid_item_att
    local sub_type = lualib:Item_GetSubType(player, item)
    local find = false
    for _, v in pairs(refine_valid_item_att[sub_type]) do
        if v == att_name then
            find = true
        end
    end

    if not find then
        return "装备不能强化该属性"
    end

    if not update_item(player, item, new_refine_level, att_name) then
        return "系统错误"
    end

    lualib:Item_NotifyUpdate(player, item)
    lualib:OnGloryTrigger(player, lua_glory_trigger_jinglian, item, 0, "精炼", "")

    return ""
end