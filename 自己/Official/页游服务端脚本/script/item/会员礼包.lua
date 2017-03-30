local award_table1 =
			{
				["一级神途会员礼包"] =
				{
                    ["items"] = 
                    {
                           --keyname 数量 绑定
                        {"灵元珠", 1, 1}, 
                        {"绑钱袋(1万)", 1, 1}, 
                        {"聚灵珠(大)", 1, 0}, 
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,
				},
				["二级神途会员礼包"] =
				{
                    ["items"] = 
                    {
                        {"灵元珠", 2, 1}, 
                        {"绑钱袋(2万)", 1, 1}, 
                        {"聚灵珠(大)", 2, 0}, 
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                    
				},
				["三级神途会员礼包"] =
				{
                    ["items"] = 
                    {
                        {"灵元珠", 3, 1}, 
                        {"绑钱袋(2万)", 2, 1}, 
                        {"聚灵珠(大)", 3, 0}
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                         
				},
				["四级神途会员礼包"] =
				{
                    ["items"] = 
                    {
                        {"灵元珠", 4, 1}, 
                        {"绑钱袋(5万)", 1, 1}, 
                        {"聚灵珠(大)", 4, 0}
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                        
				},
                ["五级神途会员礼包"] =
				{
                    ["items"] = 
                    {
                        {"灵元珠", 5, 1}, 
                        {"绑钱袋(10万)", 1, 1}, 
                        {"聚灵珠(大)", 5, 0}
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                    
				}, 
                ["六级神途会员礼包"] =
				{
                    ["items"] = 
                    {
                        {"灵元珠", 7, 1}, 
                        {"绑钱袋(20万)", 1, 1}, 
                        {"超级聚灵珠", 6, 0}
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                    
				}, 
                ["七级神途会员礼包"] =
				{
                    ["items"] = 
                    {
                        {"灵元珠", 10, 1}, 
                        {"绑钱袋(50万)", 1, 1}, 
                        {"超级聚灵珠", 7, 0}
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                    
				}
            } 
local award_table2 =
			{
				["一级神途会员礼包"] =
				{
                    ["items"] = 
                    {
                           --keyname 数量 绑定
                        {"灵元珠", 1, 1}, 
                        {"绑钱袋(1万)", 1, 1}, 
                        {"聚灵珠(大)", 1, 0}, 
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,
				},
				["二级神途会员礼包"] =
				{
                    ["items"] = 
                    {
                        {"灵元珠", 2, 1}, 
                        {"绑钱袋(2万)", 1, 1}, 
                        {"聚灵珠(大)", 2, 0}, 
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                    
				},
				["三级神途会员礼包"] =
				{
                    ["items"] = 
                    {
                        {"灵元珠", 3, 1}, 
                        {"绑钱袋(2万)", 2, 1}, 
                        {"聚灵珠(大)", 3, 0}
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                         
				},
				["四级神途会员礼包"] =
				{
                    ["items"] = 
                    {
                        {"灵元珠", 4, 1}, 
                        {"绑钱袋(5万)", 1, 1}, 
                        {"聚灵珠(大)", 4, 0}
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                        
				},
                ["五级神途会员礼包"] =
				{
                    ["items"] = 
                    {
                        {"灵元珠", 5, 1}, 
                        {"绑钱袋(10万)", 1, 1}, 
                        {"聚灵珠(大)", 5, 0}
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                    
				}, 
                ["六级神途会员礼包"] =
				{
                    ["items"] = 
                    {
                        {"灵元珠", 7, 1}, 
                        {"绑钱袋(20万)", 1, 1}, 
                        {"超级聚灵珠", 6, 0}
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                    
				}, 
                ["七级神途会员礼包"] =
				{
                    ["items"] = 
                    {
                        {"灵元珠", 10, 1}, 
                        {"绑钱袋(50万)", 1, 1}, 
                        {"超级聚灵珠", 7, 0}
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                    
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

function main(player, item)
    local award_table = {}
    local prob = lualib:GenRandom(1,10000)
    if prob <= 1200 then
        award_table = award_table1
    else 
        award_table = award_table2
    end
    
	local keyname = lualib:KeyName(item)
	if award_table[keyname] == nil then
		lualib:SysMsg_SendWarnMsg(player, "道具与脚本不区配！")
		return false
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
            opr_table[k] = 0
	end
    
	if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "事务操作：镖酬礼包奖励", keyname) then
        lualib:SysMsg_SendWarnMsg(player, keyname.."使用失败，背包已满！")
        return false
    end
    
    lualib:Player_AddExp(player, award_table[keyname].exp, "加经验：事务操作：镖酬礼包奖励", keyname)
    lualib:Player_AddGold(player, award_table[keyname].gold, false, "加金币：事务操作：镖酬礼包奖励", keyname)

	return true
end

