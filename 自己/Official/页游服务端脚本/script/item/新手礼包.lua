local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local award_table =
			{
				["新手1级礼包"] =
				{
					{
						{"绑钱袋(1万)", "新手12级礼包"},
						{"绑钱袋(1万)", "新手12级礼包"},
						{"绑钱袋(1万)", "新手12级礼包"}
					},
					{
						{"绑钱袋(1万)", "新手12级礼包"},
						{"绑钱袋(1万)", "新手12级礼包"},
						{"绑钱袋(1万)", "新手12级礼包"}
					}
				},
				["新手12级礼包"] =
				{
					{
						{"魔法头盔", "战术手镯", "战术手镯", "轻便铠甲(男)", "布鞋", "新手20级礼包"},
						{"魔法头盔", "法术手镯", "法术手镯", "见习法师袍(男)", "布鞋", "新手20级礼包", "退拒之环", "夺心诱惑"},
						{"魔法头盔", "道术手镯", "道术手镯", "乾坤道衣(男)", "布鞋", "新手20级礼包", "明镜止水", "蛊毒咒"}
					},
					{
						{"魔法头盔", "战术手镯", "战术手镯", "轻便铠甲(女)", "布鞋", "新手20级礼包"},
						{"魔法头盔", "法术手镯", "法术手镯", "见习法师袍(女)", "布鞋", "新手20级礼包", "退拒之环", "夺心诱惑"},
						{"魔法头盔", "道术手镯", "道术手镯", "乾坤道衣(女)", "布鞋", "新手20级礼包", "明镜止水", "蛊毒咒"}
					}
				},
				["新手20级礼包"] =
				{
					{
						{"斩魄刀", "元灵铠甲(男)", "牛皮鞋", "虎牙项链", "猛禽戒指" , "猛禽戒指" , "新手23级礼包", "攻心斩", "龙城传送石", "巫山城传送石"},
						{"邀月法杖", "紫绸长袍(男)", "牛皮鞋", "白金项链", "真金戒指", "真金戒指", "新手23级礼包", "天雷术", "冰箭术", "瞬息灵动", "龙城传送石", "巫山城传送石"},
						{"镇魔剑", "天心道衣(男)", "牛皮鞋" ,"明珠项链", "品德戒指", "品德戒指", "新手23级礼包", "神魂火符", "地府之唤", "隐形咒", "龙城传送石", "巫山城传送石"}
					},
					{
						{"斩魄刀", "元灵铠甲(女)", "牛皮鞋", "虎牙项链", "猛禽戒指" , "猛禽戒指" , "新手23级礼包", "攻心斩", "龙城传送石", "巫山城传送石"},
						{"邀月法杖", "紫绸长袍(女)", "牛皮鞋", "白金项链", "真金戒指", "真金戒指", "新手23级礼包", "天雷术", "冰箭术", "瞬息灵动", "龙城传送石", "巫山城传送石"},
						{"镇魔剑", "天心道衣(女)", "牛皮鞋" ,"明珠项链", "品德戒指", "品德戒指", "新手23级礼包", "神魂火符", "地府之唤", "隐形咒", "龙城传送石", "巫山城传送石"}
					}
				},
				["新手23级礼包"] =
				{
					{
						{"鬼噬", "精钢手镯", "精钢手镯", "蓝宝石项链", "紫霞靴", "逍遥游(100次)", "随机传送(10次)", "灵元珠", "灵元珠", "灵元珠", "新手31级礼包"},
						{"魔灵法杖", "魔王手镯","魔王手镯", "增幅镜", "紫霞靴", "逍遥游(100次)", "随机传送(10次)", "灵元珠", "灵元珠", "灵元珠", "新手31级礼包"},
						{"天玄剑", "灵石手镯","灵石手镯", "追魂之笛", "紫霞靴", "逍遥游(100次)", "随机传送(10次)", "灵元珠", "灵元珠", "灵元珠", "新手31级礼包"}
					},
					{
						{"鬼噬", "精钢手镯", "精钢手镯", "蓝宝石项链", "紫霞靴", "逍遥游(100次)", "随机传送(10次)", "灵元珠", "灵元珠", "灵元珠", "新手31级礼包"},
						{"魔灵法杖", "魔王手镯","魔王手镯", "增幅镜", "紫霞靴", "逍遥游(100次)", "随机传送(10次)", "灵元珠", "灵元珠", "灵元珠", "新手31级礼包"},
						{"天玄剑", "灵石手镯","灵石手镯", "追魂之笛", "紫霞靴", "逍遥游(100次)", "随机传送(10次)", "灵元珠", "灵元珠", "灵元珠", "新手31级礼包"}
					}
				}
			}

local level_table =
			{
				["新手1级礼包"] = 1,
				["新手12级礼包"] = 12,
				["新手20级礼包"] = 20,
				["新手23级礼包"] = 23,
			}

function main(player, item)
	local keyname = lualib:Item_GetKeyName(player, item)
	if award_table[keyname] == nil or level_table[keyname] == nil then
		lualib:SysMsg_SendWarnMsg(player, "道具与脚本不区配！")
		return false
	end

	if lualib:Player_GetIntProp(player,  lua_role_level) < level_table[keyname] then
		lualib:SysMsg_SendWarnMsg(player, "你的等级不够，无法打开礼包！")
		return false
	end

	local gender = lualib:Player_GetIntProp(player,  lua_role_gender)
	local job = lualib:Player_GetIntProp(player,  lua_role_job)
	if award_table[keyname][gender][job] == nil then
		lualib:SysMsg_SendWarnMsg(player, "奖励与物品职业性别不符！")
		return false
	end

	local name_table = {}
    local count_table = {}
    local bind_table = {}
    local opr_table = {}
	for k, v in pairs(award_table[keyname][gender][job]) do
		name_table[k] = v
		count_table[k] = 1
		bind_table[k] = 1
		opr_table[k] = 0
	end

	if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "事务操作：新手礼包奖励", keyname) then
        lualib:SysMsg_SendWarnMsg(player, keyname.."使用失败，奖励物品不存在或背包已满！")
        return false
    end

	return true
end

