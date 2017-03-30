
    
local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local award_table =
			{
				["仲秋套装·7天"] =
				{
					{
						{"仲秋神元宝刃·7天", "仲秋衣服(男)·7天"},
						{"仲秋神元神杖·7天", "仲秋衣服(男)·7天"},
						{"仲秋神元道剑·7天", "仲秋衣服(男)·7天"}
					},
					{
						{"仲秋神元宝刃·7天", "仲秋衣服(女)·7天"},
						{"仲秋神元神杖·7天", "仲秋衣服(女)·7天"},
						{"仲秋神元道剑·7天", "仲秋衣服(女)·7天"}
					}
				},
				["国庆套装·7天"] =
				{
					{
						{"庆国祈福宝刃·7天", "庆国衣服(男)·7天"},
						{"庆国祈福神杖·7天", "庆国衣服(男)·7天"},
						{"庆国祈福宝剑·7天", "庆国衣服(男)·7天"}
					},
					{
						{"庆国祈福宝刃·7天", "庆国衣服(女)·7天"},
						{"庆国祈福神杖·7天", "庆国衣服(女)·7天"},
						{"庆国祈福宝剑·7天", "庆国衣服(女)·7天"}
					}
				},
				["仲秋套装"] =
				{
					{
						{"仲秋神元宝刃", "仲秋神元铠甲(男)"},
						{"仲秋神元神杖", "仲秋神元铠甲(男)"},
						{"仲秋神元道剑", "仲秋神元铠甲(男)"}
					},
					{
						{"仲秋神元宝刃", "仲秋神元铠甲(女)"},
						{"仲秋神元宝刃", "仲秋神元铠甲(女)"},
						{"仲秋神元宝刃", "仲秋神元铠甲(女)"}
					}
				},
				["国庆套装"] =
				{
					{
						{"庆国祈福宝刃", "庆国祈福铠甲(男)"},
						{"庆国祈福神杖", "庆国祈福铠甲(男)"},
						{"庆国祈福宝剑", "庆国祈福铠甲(男)"}
					},
					{
						{"庆国祈福宝刃", "庆国祈福铠甲(女)"},
						{"庆国祈福神杖", "庆国祈福铠甲(女)"},
						{"庆国祈福宝剑", "庆国祈福铠甲(女)"}
					}
				}
			}

local level_table =
			{
				["仲秋套装·7天"] = 1,
				["国庆套装·7天"] = 1,
				["仲秋套装"] = 1,
				["国庆套装"] = 1,
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
		bind_table[k] = 0
		opr_table[k] = 0
	end

	if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "事务操作：新手礼包奖励", keyname) then
        lualib:SysMsg_SendWarnMsg(player, keyname.."使用失败，奖励物品不存在或背包已满！")
        return false
    end

	return true
end

