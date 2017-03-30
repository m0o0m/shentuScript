function main(player, item)
    local present_table = {
                            ["1号礼包"] = {{"金砖小", 1}},
                            ["2号礼包"] = {{"金砖中", 1}},
                            ["3号礼包"] = {{"金砖中", 1}, {"转生神殿卷", 1}},
                            ["4号礼包"] = {{"金砖大", 1}, {"转生神殿卷", 1}},
                            ["每日礼包"] = {{"绑钱袋(5万)", 1}, {"经验丹", 1}}
                          }

    local item_name = lualib:Item_GetKeyName(player, item)
    if item_name == "" then
        lualib:SysMsg_SendWarnMsg(player, "取得道具名字失败！")
        return false
    end

    if present_table[item_name] == nil then
        lualib:SysMsg_SendWarnMsg(player, "道具不存在！")
        return false
    end

    local name_table = {}
    local count_table = {}
    local bind_table = {}
    local opr_table = {}
    for i = 1, table.getn(present_table[item_name]) do
        name_table[i] = present_table[item_name][i][1]
        count_table[i] = present_table[item_name][i][2]
		if item_name == "每日礼包" and i == 1 then
			bind_table[i] = 1
		else
			bind_table[i] = 1
		end
        opr_table[i] = 0
    end

    if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "事务操作：在线礼包", player) then
        lualib:SysMsg_SendWarnMsg(player, "背包已满！")
        return false
    end

    return true
end