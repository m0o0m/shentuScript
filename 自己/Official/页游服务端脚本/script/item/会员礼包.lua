local award_table1 =
			{
				["һ����;��Ա���"] =
				{
                    ["items"] = 
                    {
                           --keyname ���� ��
                        {"��Ԫ��", 1, 1}, 
                        {"��Ǯ��(1��)", 1, 1}, 
                        {"������(��)", 1, 0}, 
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,
				},
				["������;��Ա���"] =
				{
                    ["items"] = 
                    {
                        {"��Ԫ��", 2, 1}, 
                        {"��Ǯ��(2��)", 1, 1}, 
                        {"������(��)", 2, 0}, 
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                    
				},
				["������;��Ա���"] =
				{
                    ["items"] = 
                    {
                        {"��Ԫ��", 3, 1}, 
                        {"��Ǯ��(2��)", 2, 1}, 
                        {"������(��)", 3, 0}
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                         
				},
				["�ļ���;��Ա���"] =
				{
                    ["items"] = 
                    {
                        {"��Ԫ��", 4, 1}, 
                        {"��Ǯ��(5��)", 1, 1}, 
                        {"������(��)", 4, 0}
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                        
				},
                ["�弶��;��Ա���"] =
				{
                    ["items"] = 
                    {
                        {"��Ԫ��", 5, 1}, 
                        {"��Ǯ��(10��)", 1, 1}, 
                        {"������(��)", 5, 0}
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                    
				}, 
                ["������;��Ա���"] =
				{
                    ["items"] = 
                    {
                        {"��Ԫ��", 7, 1}, 
                        {"��Ǯ��(20��)", 1, 1}, 
                        {"����������", 6, 0}
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                    
				}, 
                ["�߼���;��Ա���"] =
				{
                    ["items"] = 
                    {
                        {"��Ԫ��", 10, 1}, 
                        {"��Ǯ��(50��)", 1, 1}, 
                        {"����������", 7, 0}
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                    
				}
            } 
local award_table2 =
			{
				["һ����;��Ա���"] =
				{
                    ["items"] = 
                    {
                           --keyname ���� ��
                        {"��Ԫ��", 1, 1}, 
                        {"��Ǯ��(1��)", 1, 1}, 
                        {"������(��)", 1, 0}, 
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,
				},
				["������;��Ա���"] =
				{
                    ["items"] = 
                    {
                        {"��Ԫ��", 2, 1}, 
                        {"��Ǯ��(2��)", 1, 1}, 
                        {"������(��)", 2, 0}, 
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                    
				},
				["������;��Ա���"] =
				{
                    ["items"] = 
                    {
                        {"��Ԫ��", 3, 1}, 
                        {"��Ǯ��(2��)", 2, 1}, 
                        {"������(��)", 3, 0}
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                         
				},
				["�ļ���;��Ա���"] =
				{
                    ["items"] = 
                    {
                        {"��Ԫ��", 4, 1}, 
                        {"��Ǯ��(5��)", 1, 1}, 
                        {"������(��)", 4, 0}
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                        
				},
                ["�弶��;��Ա���"] =
				{
                    ["items"] = 
                    {
                        {"��Ԫ��", 5, 1}, 
                        {"��Ǯ��(10��)", 1, 1}, 
                        {"������(��)", 5, 0}
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                    
				}, 
                ["������;��Ա���"] =
				{
                    ["items"] = 
                    {
                        {"��Ԫ��", 7, 1}, 
                        {"��Ǯ��(20��)", 1, 1}, 
                        {"����������", 6, 0}
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                    
				}, 
                ["�߼���;��Ա���"] =
				{
                    ["items"] = 
                    {
                        {"��Ԫ��", 10, 1}, 
                        {"��Ǯ��(50��)", 1, 1}, 
                        {"����������", 7, 0}
                    },
                    ["exp"] = 0,
                    ["gold"] = 0,                    
				}
            } 
            
local item_detail = 
{
    ["��"] = 
    {
        "ŭ����",
        "ŭ����",
        "ŭ����",
        "������",
        "������",
        "ŭѪ��",
        "ŭħ��",
        "�ָ���",
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
		lualib:SysMsg_SendWarnMsg(player, "������ű������䣡")
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
    
	if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "����������ڳ��������", keyname) then
        lualib:SysMsg_SendWarnMsg(player, keyname.."ʹ��ʧ�ܣ�����������")
        return false
    end
    
    lualib:Player_AddExp(player, award_table[keyname].exp, "�Ӿ��飺����������ڳ��������", keyname)
    lualib:Player_AddGold(player, award_table[keyname].gold, false, "�ӽ�ң�����������ڳ��������", keyname)

	return true
end

