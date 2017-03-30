local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

local t_Normal_Reward = {
--装备等级段Max		返还道具	道具数量
	{
		11,
		{
			{"灵石精华小", 1},
			{"灵石精华小", 2},
			{"灵石精华小", 3},
			{"灵石精华小", 4},
			{"灵石精华小", 5},
			{"灵石精华小", 6},
			{"灵石精华中", 1},
		}
	},
	{
		21,
		{
			{"灵石精华小", 1},
			{"灵石精华小", 2},
			{"灵石精华小", 3},
			{"灵石精华小", 4},
			{"灵石精华小", 5},
			{"灵石精华小", 6},
			{"灵石精华中", 1},
		}
	},
	{
		31,
		{
			{"灵石精华小", 1},
			{"灵石精华小", 2},
			{"灵石精华小", 3},
			{"灵石精华小", 4},
			{"灵石精华小", 5},
			{"灵石精华小", 6},
			{"灵石精华中", 1},
		}
	},
	{
		41,
		{
			{"灵石精华小", 1},
			{"灵石精华小", 2},
			{"灵石精华小", 3},
			{"灵石精华小", 4},
			{"灵石精华小", 5},
			{"灵石精华小", 6},
			{"灵石精华中", 1},
		}
	},
	{
		51,
		{
			{"灵石精华小", 1},
			{"灵石精华小", 2},
			{"灵石精华小", 3},
			{"灵石精华小", 4},
			{"灵石精华小", 5},
			{"灵石精华小", 6},
			{"灵石精华中", 1},
		}
	},
	{
		101,
		{
			{"灵石精华小", 1},
			{"灵石精华小", 2},
			{"灵石精华小", 3},
			{"灵石精华小", 4},
			{"灵石精华小", 5},
			{"灵石精华小", 6},
			{"灵石精华中", 1},
		}
	}
}
local t_Extra_Reward = {
	--装备等级Max	强化等级	回收返还
	--------金币数量     经验丹小数量
	{
		11,
		{
			{11, 2},
			{12, 3},
			{13, 4},
			{14, 5},
			{15, 6},
			{16, 7},
			{17, 8},
			{18, 9},
			{19, 10},
			{20, 11},
			{21, 12},
			{22, 13},
			{23, 14},
			{24, 15},
			{25, 16},
			{26, 17},
			{27, 18},
			{28, 19},
			{29, 20},
			{30, 21}
		}
	},
	{
		21,
		{
			{21, 12},
			{22, 13},
			{23, 14},
			{24, 15},
			{25, 16},
			{26, 17},
			{27, 18},
			{28, 19},
			{29, 20},
			{30, 21},
			{31, 22},
			{32, 23},
			{33, 24},
			{34, 25},
			{35, 26},
			{36, 27},
			{37, 28},
			{38, 29},
			{39, 30},
			{40, 31}
		}
	},
	{
		31,
		{
			{31, 22},
			{32, 23},
			{33, 24},
			{34, 25},
			{35, 26},
			{36, 27},
			{37, 28},
			{38, 29},
			{39, 30},
			{40, 31},
			{41, 32},
			{42, 33},
			{43, 34},
			{44, 35},
			{45, 36},
			{46, 37},
			{47, 38},
			{48, 39},
			{49, 40},
			{50, 41}
		}
	},
	{
		41,
		{
			{41, 32},
			{42, 33},
			{43, 34},
			{44, 35},
			{45, 36},
			{46, 37},
			{47, 38},
			{48, 39},
			{49, 40},
			{50, 41},
			{51, 42},
			{52, 43},
			{53, 44},
			{54, 45},
			{55, 46},
			{56, 47},
			{57, 48},
			{58, 49},
			{59, 50},
			{60, 51}
		}
	},
	{
		51,
		{
			{51, 42},
			{52, 43},
			{53, 44},
			{54, 45},
			{55, 46},
			{56, 47},
			{57, 48},
			{58, 49},
			{59, 50},
			{60, 51},
			{61, 52},
			{62, 53},
			{63, 54},
			{64, 55},
			{65, 56},
			{66, 57},
			{67, 58},
			{68, 59},
			{69, 60},
			{70, 61}
		}
	},
	{
		61,
		{
			{61, 52},
			{62, 53},
			{63, 54},
			{64, 55},
			{65, 56},
			{66, 57},
			{67, 58},
			{68, 59},
			{69, 60},
			{70, 61},
			{71, 62},
			{72, 63},
			{73, 64},
			{74, 65},
			{75, 66},
			{76, 67},
			{77, 68},
			{78, 69},
			{79, 70},
			{80, 71}
		}
	},
	{
		71,
		{
			{71, 62},
			{72, 63},
			{73, 64},
			{74, 65},
			{75, 66},
			{76, 67},
			{77, 68},
			{78, 69},
			{79, 70},
			{80, 71},
			{81, 72},
			{82, 73},
			{83, 74},
			{84, 75},
			{85, 76},
			{86, 77},
			{87, 78},
			{88, 79},
			{89, 80},
			{90, 81}
		}
	},
	{
		81,
		{
			{81, 72},
			{82, 73},
			{83, 74},
			{84, 75},
			{85, 76},
			{86, 77},
			{87, 78},
			{88, 79},
			{89, 80},
			{90, 81},
			{91, 82},
			{92, 83},
			{93, 84},
			{94, 85},
			{95, 86},
			{96, 87},
			{97, 88},
			{98, 89},
			{99, 90},
			{100, 91}
		}
	},
	{
		91,
		{
			{91, 82},
			{92, 83},
			{93, 84},
			{94, 85},
			{95, 86},
			{96, 87},
			{97, 88},
			{98, 89},
			{99, 90},
			{100, 91},
			{101, 92},
			{102, 93},
			{103, 94},
			{104, 95},
			{105, 96},
			{106, 97},
			{107, 98},
			{108, 99},
			{109, 100},
			{110, 101},
		}
	},
	{
		101,
		{
			{101, 92},
			{102, 93},
			{103, 94},
			{104, 95},
			{105, 96},
			{106, 97},
			{107, 98},
			{108, 99},
			{109, 100},
			{110, 101},
			{111, 102},
			{112, 103},
			{113, 104},
			{114, 105},
			{115, 106},
			{116, 107},
			{117, 108},
			{118, 109},
			{119, 110},
			{120, 111},
		}
	}
}

local tColor = {["WHITE"] = 1,["GREENG"] = 2, ["BLUE"] = 3,["PURPLE"] = 4,["ORANGE"] = 5,["RED"] = 6}

function recycleALL(player, tbl)
	if tbl == nil then
		return ""
	end

	tbl = deserialize(tbl)

	for i = 1, #tbl do
		lualib:SysPromptMsg(player, "tbl["..i.."] = "..tostring(tbl[i]))
	end
	local tItemGUID = {}
	local reward = {{"灵石精华小", "灵石精华中","经验丹小"}, {0, 0, 0}, {1, 1, 1}, {0, 0, 0}}
	local gold = 0
	local tDelItem = {}
	local lingshi1 = 0
	local lingshi2 = 0
	local jingyan = 0
	--根据颜色分类装备
	tItemGUID = getTargetEquip(player, tbl)

	if tItemGUID ~= nil then
		lualib:SysPromptMsg(player, "tItemGUID ~= nil")
		for k,v in pairs(tItemGUID) do
			if v ~= nil then
				--普通奖励
				lingshi1 = 0
				lingshi2 = 0
				jingyan = 0
				gold = 0
				for i = 1, #v do
					lingshi1 = lingshi1 +recycleCalculate_Normal1(player, k, v[i])
					if k == "RED" then
						lingshi2 = lingshi2 + recycleCalculate_Normal2(player, k, v[i])
					end
					local tRet = recycleCalculate_Extra(player, k, v[i])
					jingyan = jingyan + tRet[1]
					gold = gold + tRet[2] 
					tDelItem[#tDelItem + 1] = v[i]
				end
				reward[2][1] = lingshi1 + reward[2][1]
				reward[2][2] = lingshi2 + reward[2][2]
				reward[2][3] = jingyan + reward[2][3]
			end
		end
		--删除装备 给奖励
		if #tDelItem ~= 0 then
			if lualib:DelItemsBatch(player, tDelItem, "装备回收", player) then
				lualib:Player_ItemRequest(player, reward[1], reward[2], reward[3], reward[4], "装备回收", player)
				if gold ~= 0 then
					lualib:AddBindGold(player, gold, "装备回收奖励", player)
				end
			end
			--通知客户端刷新界面
			lualib:ShowFormWithContent(player, "脚本表单", "Recycle.reGenerate()")
		end
	end
	return ""
end

function recycleCalculate_Normal1(player, color, itemGUID)
	--非红色装备普通奖励
	local tReward = {}
	local num = 0
	local level = lualib:Item_GetLevel(itemGUID)
	for j = 1, #t_Normal_Reward do
		if level < t_Normal_Reward[j][1] then
			num = t_Normal_Reward[j][2][tColor[color]][2]
			return num
		end
	end
end

function recycleCalculate_Normal2(player, color, itemGUID)
	--红色装备普通奖励
	local tReward = {}
	local num = 0
	local level = lualib:Item_GetLevel(itemGUID)
	for j = 1, #t_Normal_Reward do
		if level < t_Normal_Reward[j][1] then
			num = t_Normal_Reward[j][2][7][2]
			return num
		end
	end
end

function recycleCalculate_Extra(player, color, itemGUID)
	--装备有精炼等级的奖励
	local level = lualib:Item_GetLevel(itemGUID)
	local num = 0
	local gold = 0
	local jl_level = lualib:Equip_GetRefineLevel(player, itemGUID)
	if jl_level ~= 0 then
		for i = 1, #t_Extra_Reward do
			if level < t_Extra_Reward[i][1] then
				num = t_Extra_Reward[i][2][jl_level][2]
				gold = t_Extra_Reward[i][2][jl_level][1]
				break
			end
		end
	end
	local ret = {num, gold}
	return ret
end

function getTargetEquip(player, tbl) --获取包裹中所有的装备并根据颜色分组
	lualib:SysPromptMsg(player, "getTargetEquip")
	local ItemTble = lualib:BagItemList(player, true, false, false)
	local tab = {}
	local color_need = {}
	local enum = {"WHITE","GREENG", "BLUE","PURPLE","ORANGE","RED"}
	for k,v in pairs(tbl) do
		if v then 
			color_need[#color_need + 1] = enum[k]
			tab[enum[k]] = {}
		end
	end
	for i = 1,#ItemTble do
		--找出可回收的装备 并按颜色分组
		local item_type = lualib:Item_GetType(player,ItemTble[i]) 
		local item_subtype = lualib:Item_GetSubType(player, ItemTble[i])
		local key_name = lualib:KeyName(ItemTble[i])
		if item_type == 1 and item_subtype < 10 and item_subtype ~= 5 and item_subtype ~= 12 and item_subtype ~= 15 then
			local baoshi = lualib:GetStr(ItemTble[i], "EquipHole1")
			local zhul_lv = lualib:GetInt(ItemTble[i], "zhul_level")
			if not string.find(key_name, "霸业") and not string.find(baoshi, "级") and zhul_lv == 0 then
				for j = 1, #color_need do
					local temp = lualib:Item_DataRow(lualib:KeyName(ItemTble[i]))
					if color_need ~= nil then
						if color_need[j] == temp["Color"] then
							tab[temp["Color"]][#tab[temp["Color"]] + 1] = ItemTble[i]
						end
					end
				end
			end
		end
	end
	return tab
end

--回收选择的装备
function recycle_SelectEquip(player, tbl)
	lualib:SysPromptMsg(player, "recycle_SelectEquip")
	tbl = deserialize(tbl) --客户端发来的要回收的装备GUID表
	local tEquip = {} --可回收的装备GUID表 key就是GUID
	local ItemTble = lualib:BagItemList(player, true, false, false)
	local reward = {{"灵石精华小", "灵石精华中","经验丹小"}, {0, 0, 0}, {1, 1, 1}, {0, 0, 0}}
	for i = 1,#ItemTble do
		local item_type = lualib:Item_GetType(player,ItemTble[i]) 
		local item_subtype = lualib:Item_GetSubType(player, ItemTble[i])
		local key_name = lualib:KeyName(ItemTble[i])
		if item_type == 1 and item_subtype < 10 and item_subtype ~= 5 and item_subtype ~= 12 and item_subtype ~= 15 then
			local baoshi = lualib:GetStr(ItemTble[i], "EquipHole1")
			local yunhun = lualib:GetStr(ItemTble[i], "yunhun_keyname")
			if not string.find(key_name, "霸业") and not string.find(baoshi, "级") and yunhun == "" then
				tEquip[ItemTble[i]] = 1
			end
		end
	end
	for i = 1, #tbl do
		if tEquip[tbl[i]] ~= nil then
			--包裹里有这个装备
			local temp = lualib:Item_DataRow(lualib:KeyName(tbl[i]))
			local color = temp["Color"]
			local lingshi = 0
			local jingyan = 0
			local gold = 0
			if color == "RED" then
				reward[2][2] = recycleCalculate_Normal2(player, color, tbl[i])
			else
				reward[2][1] = recycleCalculate_Normal1(player, color, tbl[i])
			end
			local tRet = recycleCalculate_Extra(player, color, tbl[i])
			reward[2][3] = tRet[1]
			gold = tRet[2]

			--删除装备 给奖励
			if lualib:Item_Destroy(player, tbl[i], "装备回收", player) then
				lualib:Player_ItemRequest(player, reward[1], reward[2], reward[3], reward[4], "装备回收", player)
				if gold ~= 0 then
					lualib:AddBindGold(player, gold, "装备回收奖励", player)
				end
			end
		end
	end
	--通知客户端刷新界面
	lualib:ShowFormWithContent(player, "脚本表单", "Recycle.reGenerate()")
	return ""
end