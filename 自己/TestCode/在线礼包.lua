function main(player, item)
    local present_table = {
                            ["1�����"] = {{"˫���������", 1}, {"Ǯ��(1��)", 1}, {"�سǾ���", 1}},
                            ["2�����"] = {{"˫���������", 1}, {"�鲼��", 1}, {"������Ͱ�", 2}},
                            ["3�����"] = {{"��ɽ�Ǵ���ʯ(С)", 1}, {"3���������", 1}, {"�ֿ���չ(1��)", 1}},
                            ["4�����"] = {{"������", 1}, {"3���������", 1}, {"�޸���ˮ", 1}},
                            ["ÿ�����"] = {{"��Ǯ��(5��)", 1}, {"���鵤", 1}}
                          }

    local item_name = lualib:Item_GetKeyName(player, item)
    if item_name == "" then
        lualib:SysMsg_SendWarnMsg(player, "ȡ�õ�������ʧ�ܣ�")
        return false
    end

    if present_table[item_name] == nil then
        lualib:SysMsg_SendWarnMsg(player, "���߲����ڣ�")
        return false
    end

    local name_table = {}
    local count_table = {}
    local bind_table = {}
    local opr_table = {}
    for i = 1, table.getn(present_table[item_name]) do
        name_table[i] = present_table[item_name][i][1]
        count_table[i] = present_table[item_name][i][2]
		if item_name == "ÿ�����" and i == 1 then
			bind_table[i] = 1
		else
			bind_table[i] = 1
		end
        opr_table[i] = 0
    end

    if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "����������������", player) then
        lualib:SysMsg_SendWarnMsg(player, "����������")
        return false
    end

    return true
end
