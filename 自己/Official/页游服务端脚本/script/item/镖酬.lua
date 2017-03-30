local award_table =
			{
				["�ڳ�(��)"] =
				{
                    ["items"] = 
                    {
                           --keyname ���� �� ɾ/��
                        {"��", 1, 0, 0},
                        {"�ڳ�(��)", 1, 2, 1},
                    },
                    ["exp"] = 4000,    --������㱶��
                    ["gold"] = 100,    --��Ҽ��㱶��
                    ["bind_gold"] = 10000    --�󶨽������
				},
				["�ڳ�(��)"] =
				{
                    ["items"] = 
                    {
                        {"��", 2, 0, 0},
                        {"�ڳ�(��)", 1, 2, 1},
                    },
                    ["exp"] = 8000,
                    ["gold"] = 200, 
                    ["bind_gold"] = 20000
				},
				["�ڳ�(��)"] =
				{
                    ["items"] = 
                    {
                        {"��", 5, 0, 0},
                        {"�ڳ�(��)", 1, 2, 1},
                    },
                    ["exp"] = 12000,
                    ["gold"] = 300, 
                    ["bind_gold"] = 30000
				},
				["�ڳ�(��)"] =
				{
                    ["items"] = 
                    {
                        {"��", 10, 0, 0},
                        {"�ڳ�(��)", 1, 2, 1},
                    },
                    ["exp"] = 20000,
                    ["gold"] = 400, 
                    ["bind_gold"] = 50000
				},
                ["�ڳ�(��)"] =
				{
                    ["items"] = 
                    {
                        {"��", 20, 0, 0},
                        {"�ڳ�(��)", 1, 2, 1},
                    },
                    ["exp"] = 32000,
                    ["gold"] = 500, 
                    ["bind_gold"] = 80000
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

local money_table = 
{
    {1, 0,       [[<@main1#1#0 *01*�����ѽ�һ�û�������>         ]],      }, 
    {2, 100000,  [[<@main1#2#100000 *01*����100000��һ��˫�����齱��> ]],      }, 
    {3, 200000,  [[<@main1#3#200000 *01*����200000��һ���������齱��> ]],      }, 
    {4, 500000,  [[<@main1#4#500000 *01*����500000��һ���ı����齱��> ]],      }, 
    {5, 1000000, [[<@main1#5#1000000 *01*����1000000��һ��5�����齱��> ]],    }, 
}
function main(player, item)
    local keyname = lualib:KeyName(item)
    local lv = lualib:Level(player)
    local msg = "���ѽ�ҿ���ʹ�ڳ꽱����������ѡ��\n\n"
    for i = 1, #money_table do
        msg = msg .. string.gsub(money_table[i][3], "@main1#", "@main1#" .. keyname .. "#") .. "����Ϊ" ..money_table[i][1] * lv * award_table[keyname].exp.. "\n"
    end

    msg= msg .. "<@likai *01*�뿪 >\n"
    lualib:NPCTalk(player, msg)
    return true
    
end


function main1(player, keyname, beil, gold_cost)
    local beil = tonumber(beil)
    local gold_cost = tonumber(gold_cost)
    local lv = lualib:Level(player)
	

	if award_table[keyname] == nil then
		lualib:SysMsg_SendWarnMsg(player, "������ű������䣡")
		return ""
	end
    if lualib:BagFree(player, true, false, false) < 1 then
        return "�����ռ䲻�㣬������Ҫ1������!"
    end
    if lualib:Player_IsGoldEnough(player, gold_cost, false) == false then
        return "��Ҳ��㣡������ѡ��\n\n\n\n<@likai *01*�ر�>"
    end
    if lualib:Player_SubGold(player, gold_cost, false, "�ڳ꽱������", player) == false then
        return "�۳����ʧ�ܣ�������ѡ��\n\n\n\n<@likai *01*����>"
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

	if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "����������ڳ��������", keyname) then
        lualib:SysMsg_SendWarnMsg(player, keyname.."ʹ��ʧ�ܣ���������������Ʒɾ��ʧ�ܣ�")
        return ""
    end
    
    lualib:Player_AddExp(player, beil * lv * award_table[keyname].exp, "�Ӿ��飺����������ڳ��������", keyname)
    lualib:Player_AddGold(player, award_table[keyname].bind_gold, true, "�Ӱ󶨽�ң�����������ڳ��������", keyname)
	if lv >= 42 then
		lualib:Player_AddGold(player, lv * award_table[keyname].gold, false, "�ӽ�ң�����������ڳ��������", keyname)
		return ""
	end

	return ""
end

function likai()
    return ""
end

