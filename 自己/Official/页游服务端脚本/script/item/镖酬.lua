local award_table =
			{
				["镖酬(普)"] =
				{
                    ["items"] = 
                    {
                           --keyname 数量 绑定 删/加
                        {"神丹", 1, 0, 0},
                        {"镖酬(普)", 1, 2, 1},
                    },
                    ["exp"] = 4000,    --经验计算倍率
                    ["gold"] = 100,    --金币计算倍率
                    ["bind_gold"] = 10000    --绑定金币数量
				},
				["镖酬(极)"] =
				{
                    ["items"] = 
                    {
                        {"神丹", 2, 0, 0},
                        {"镖酬(极)", 1, 2, 1},
                    },
                    ["exp"] = 8000,
                    ["gold"] = 200, 
                    ["bind_gold"] = 20000
				},
				["镖酬(珍)"] =
				{
                    ["items"] = 
                    {
                        {"神丹", 5, 0, 0},
                        {"镖酬(珍)", 1, 2, 1},
                    },
                    ["exp"] = 12000,
                    ["gold"] = 300, 
                    ["bind_gold"] = 30000
				},
				["镖酬(绝)"] =
				{
                    ["items"] = 
                    {
                        {"神丹", 10, 0, 0},
                        {"镖酬(绝)", 1, 2, 1},
                    },
                    ["exp"] = 20000,
                    ["gold"] = 400, 
                    ["bind_gold"] = 50000
				},
                ["镖酬(神)"] =
				{
                    ["items"] = 
                    {
                        {"神丹", 20, 0, 0},
                        {"镖酬(神)", 1, 2, 1},
                    },
                    ["exp"] = 32000,
                    ["gold"] = 500, 
                    ["bind_gold"] = 80000
				}
			}
            
local item_detail = 
{
    ["神丹"] = 
    {
        "怒攻神丹",
        "怒法神丹",
        "怒道神丹",
        "力盾神丹",
        "法盾神丹",
        "怒血神丹",
        "怒魔神丹",
        "恢复神丹",
    }
}

local money_table = 
{
    {1, 0,       [[<@main1#1#0 *01*不花费金币获得基础奖励>         ]],      }, 
    {2, 100000,  [[<@main1#2#100000 *01*花费100000金币获得双倍经验奖励> ]],      }, 
    {3, 200000,  [[<@main1#3#200000 *01*花费200000金币获得三倍经验奖励> ]],      }, 
    {4, 500000,  [[<@main1#4#500000 *01*花费500000金币获得四倍经验奖励> ]],      }, 
    {5, 1000000, [[<@main1#5#1000000 *01*花费1000000金币获得5倍经验奖励> ]],    }, 
}
function main(player, item)
    local keyname = lualib:KeyName(item)
    local lv = lualib:Level(player)
    local msg = "花费金币可以使镖酬奖励翻倍，请选择：\n\n"
    for i = 1, #money_table do
        msg = msg .. string.gsub(money_table[i][3], "@main1#", "@main1#" .. keyname .. "#") .. "经验为" ..money_table[i][1] * lv * award_table[keyname].exp.. "\n"
    end

    msg= msg .. "<@likai *01*离开 >\n"
    lualib:NPCTalk(player, msg)
    return true
    
end


function main1(player, keyname, beil, gold_cost)
    local beil = tonumber(beil)
    local gold_cost = tonumber(gold_cost)
    local lv = lualib:Level(player)
	

	if award_table[keyname] == nil then
		lualib:SysMsg_SendWarnMsg(player, "道具与脚本不区配！")
		return ""
	end
    if lualib:BagFree(player, true, false, false) < 1 then
        return "包裹空间不足，至少需要1个包裹!"
    end
    if lualib:Player_IsGoldEnough(player, gold_cost, false) == false then
        return "金币不足！请重新选择！\n\n\n\n<@likai *01*关闭>"
    end
    if lualib:Player_SubGold(player, gold_cost, false, "镖酬奖励翻倍", player) == false then
        return "扣除金币失败！请重新选择！\n\n\n\n<@likai *01*返回>"
    end
	local name_table = {}
    local count_table = {}
    local bind_table = {}
    local opr_table = {}
	for k, v in pairs(award_table[keyname].items) do

        if item_detail[v[1]] == nil then
            name_table[k] = v[1]
        else
            name_table[k] = item_detail[v[1]][lualib:GenRandom(1, #item_detail[v[1]])]
        end
            count_table[k] = v[2]
            bind_table[k] = v[3]
            opr_table[k] = v[4]
	end

	if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "事务操作：镖酬礼包奖励", keyname) then
        lualib:SysMsg_SendWarnMsg(player, keyname.."使用失败，背包已满，或物品删除失败！")
        return ""
    end
    
    lualib:Player_AddExp(player, beil * lv * award_table[keyname].exp, "加经验：事务操作：镖酬礼包奖励", keyname)
    lualib:Player_AddGold(player, award_table[keyname].bind_gold, true, "加绑定金币：事务操作：镖酬礼包奖励", keyname)
	if lv >= 42 then
		lualib:Player_AddGold(player, lv * award_table[keyname].gold, false, "加金币：事务操作：镖酬礼包奖励", keyname)
		return ""
	end

	return ""
end

function likai()
    return ""
end

