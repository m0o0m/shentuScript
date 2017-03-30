local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local award_table =
			{
				["封测冲级礼包35级"] = {{"钱袋(10万)", 1}, {"释灵珠", 2}, {"灵元珠", 10}, {"循环魔咒", 10}, {"开光印", 1}, {"封测冲级礼包40级", 1}},
                                                                                                       
				["封测冲级礼包40级"] = {{"钱袋(20万)", 1}, {"释灵珠", 5}, {"灵元珠", 20}, {"循环魔咒", 20}, {"封测冲级礼包45级", 1}},
                                                                                                       
				["封测冲级礼包45级"] = {{"钱袋(50万)", 1}, {"释灵珠", 10}, {"灵元珠", 30}, {"循环魔咒", 30}, {"封测冲级礼包50级", 1}},
                                                                                                      
				["封测冲级礼包50级"] = {{"金条", 1}, {"释灵珠", 15}, {"灵元珠", 50}, {"循环魔咒", 50}, },
			}


local level_table =
			{
				["封测冲级礼包35级"] = 35,
				["封测冲级礼包40级"] = 40,
				["封测冲级礼包45级"] = 45,
				["封测冲级礼包50级"] = 50,
			}

function main(player, item)
	local keyname = lualib:Item_GetKeyName(player, item)
	if award_table[keyname] == nil or level_table[keyname] == nil then
        print(award_table[keyname])
		lualib:SysMsg_SendWarnMsg(player, "道具与脚本不区配！")
		return false
	end

	if lualib:Player_GetIntProp(player,  lua_role_level) < level_table[keyname] then
		lualib:SysMsg_SendWarnMsg(player, "你的等级不够，无法打开礼包！")
		return false
	end

	local name_table = {}
    local count_table = {}
    local bind_table = {}
    local opr_table = {}
	for k, v in pairs(award_table[keyname]) do
		name_table[k] = v[1]
		count_table[k] = v[2]
		bind_table[k] = 1
		opr_table[k] = 0
	end

	if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "事务操作：新手礼包奖励", keyname) then
        lualib:SysMsg_SendWarnMsg(player, keyname.."使用失败，奖励物品不存在或背包已满！")
        return false
    end

	return true
end

