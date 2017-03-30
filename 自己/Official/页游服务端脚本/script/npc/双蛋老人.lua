local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/level_gold_exp")
local player_var = "blm"



function main(npc,player)
    local msg = "#COLORCOLOR_BROWN#              ������������������������������������������������������������������#COLOREND#\n"
	msg = msg.."              ʥ�������ˣ�Ԫ���ò�Զ�˰ɣ�Ϊ�˸����������գ��㿴�ҵ��ȶ���ϸ��!\n"
    msg = msg.."#COLORCOLOR_BROWN#              ������������������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:200,Y:0>##IMAGE1902700031#<@jingyan *01*[��ȡ˫������BUFF]>\n\n"
    msg = msg.."#OFFSET<X:130,Y:0>##IMAGE1902700031#<@shuangdan *01*[���ضһ�]>"
    msg = msg.."#OFFSET<X:120,Y:0>##IMAGE1902700031#<@caidan *01*[�������˲ʵ�]>\n"
    msg = msg.."#COLORCOLOR_BROWN#              ������������������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:430,Y:0>##IMAGE1902700034#<@likai *01*[�뿪]>\n"
	return msg
end

--40��������ȡ˫����40����������ȡ1.5��
function jingyan(npc,player)
	local lv = lualib:Level(player)
    local cur_days = lualib:GetAllDays(0)
    local days = lualib:Player_GetCustomVarInt(player, player_var)

    if cur_days == days then
        return "������Ѿ���ȡ��˫������BUFF��\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    elseif cur_days < days then
        return "ϵͳ����\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end
	
	
	if lv > 39 then
		if lualib:HasBuff(player, "˫��˫������") == true then
			return "              ���Ѿ�ӵ��˫������BUFF˫��Ч����������ȷ�����滻Ϊ1.5������BUFF��ȷ����\n \n \n \n \n \n#OFFSET<X:0,Y:-5>##IMAGE1902700033##OFFSET<X:0,Y:-2>#<@shuangbei *01*[ȷ��]>\n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
		else
		lualib:AddBuff(player, "˫��1.5������", 0)
		end
	else
		lualib:AddBuff(player, "˫��˫������", 0)
	end
	lualib:Player_SetCustomVarInt(player, player_var, cur_days)
	return "              ��ȡ˫������BUFF�ɹ���\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
end

function shuangbei(npc, player)
    local cur_days = lualib:GetAllDays(0)
	
	lualib:DelBuff(player, "˫��˫������")
	lualib:AddBuff(player, "˫��1.5������", 0)
	lualib:Player_SetCustomVarInt(player, player_var, cur_days)
	return "              ��ȡ˫������BUFF�ɹ���\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
end

function likai(npc,player)
	return ""
end

function shuangdan(npc,player)
    local msg = "#COLORCOLOR_BROWN#              ����������������������������������������������������������#COLOREND#\n"
	msg = msg .. "              10��ʥ��֮�ǿ��Զһ�һ��ʥ�����࣡�Ƿ�Ҫ�һ���\n"
    msg = msg .. "#COLORCOLOR_BROWN#              ����������������������������������������������������������#COLOREND#\n"
    msg = msg .. "#OFFSET<X:90,Y:0>##IMAGE1902700031#<@duihuan#1#ʥ������ *01*[�һ�һ��ʥ������]> ��Ҫ10��ʥ��֮��\n"
    msg = msg .. "#OFFSET<X:90,Y:0>##IMAGE1902700031#<@duihuan#10#ʥ������ *01*[�һ�ʮ��ʥ������]> ��Ҫ100��ʥ��֮��\n"
    msg = msg .. "#OFFSET<X:90,Y:0>##IMAGE1902700031#<@duihuan#1#Ԫ����� *01*[�һ�һ��Ԫ�����]> ��Ҫ10��Ԫ��֮��\n"
    msg = msg .. "#OFFSET<X:90,Y:0>##IMAGE1902700031#<@duihuan#10#Ԫ����� *01*[�һ�ʮ��Ԫ�����]> ��Ҫ100��Ԫ��֮��\n"
    msg = msg .. "#OFFSET<X:90,Y:0>##IMAGE1902700031#<@duihuan#1#˫��ף�� *01*[�һ�˫��ף��]>     ��Ҫ10��ʥ��֮�Ǻ�10��Ԫ��֮��\n"
    msg = msg .. "#COLORCOLOR_BROWN#              ����������������������������������������������������������#COLOREND#\n"
    msg = msg .. "#OFFSET<X:400,Y:0>##IMAGE1902700019#<@main *01*[����]>"
	return msg
end

local duihuan_table = 
--Ŀ����ƷKEY = {����table������table����table������table}
{   ["ʥ������"] = {{"ʥ��֮��"}, {10}, {2}, {1}}, 
    ["Ԫ�����"] = {{"Ԫ��֮��"}, {10}, {2}, {1}}, 
    ["˫��ף��"] = {{"ʥ��֮��", "Ԫ��֮��"}, {10, 10}, {2, 2}, {1, 1}}, 
    }
    
function duihuan(npc, player, count, item_key)
    count = tonumber(count)
    item_key = tostring(item_key)
    print(count)
    local req_item_table = duihuan_table[item_key][1]
    local req_count_table = {}
    local req_bind_table = duihuan_table[item_key][3]
    local req_do_table = duihuan_table[item_key][4]
    for i = 1, #duihuan_table[item_key][1] do
        req_count_table[i] = duihuan_table[item_key][2][i] * count
    end
    if lualib:Player_ItemRequest(player, req_item_table, req_count_table, req_bind_table, req_do_table, "˫���", player) == false then
        local msg = "�����Ʒ���㣡\n"
        for i = 1, #req_item_table do
            msg = msg .. "��Ҫ"..req_count_table[i].."��"..req_item_table[i].."��\n"
        end
        return msg
    end
    if not lualib:AddItem(player, item_key, count, true, "˫���", player) then return "����Ʒʧ�ܣ�" end
    return "�һ��ɹ���\n \n \n \n #IMAGE1902700019#<@shuangdan *01* [����]>"
end

function caidan(npc, player)
    local msg = "#COLORCOLOR_BROWN#             ��������������������������������������������������������������#COLOREND#\n"
    msg = msg .. "#COLORCOLOR_GOLD#             ������������Ҹ������˵�������ʵ�������������õ���Ʒ����Щ\n             ͷ���š�ʥ�����͡�Ԫ�����Ĺ��ﶼ�����ʵ��ġ�#COLOREND#"
    msg = msg .. "#COLORCOLOR_GOLD#��Ȼ�Ҵ���Ҳ�У�\n             ������ǧ���������ܹ��������·����ţ��㶮�ã�#COLOREND#\n"
    msg = msg .. "#COLORCOLOR_BROWN#             ��������������������������������������������������������������#COLOREND#\n"
    msg = msg .. "#COLORCOLOR_RED#             ���˲ʵ����Կ���:�������1���������ǡ������ǡ����������߼�����\n             �����ѭ��ħ���#COLOREND#\n"
    msg = msg .. "#COLORCOLOR_BROWN#             ��������������������������������������������������������������#COLOREND#\n\n"
    msg = msg .. "#OFFSET<X:100,Y:0>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@goumaicaidan *01*[��Ҫ����ʵ�]>��Ҫ10����#OFFSET<X:80,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*[������ҳ]>"
    return msg
end

function goumaicaidan(npc, player)
    local item = "���˲ʵ�"
    local req_gold = 100000
    local bagfree = 1
    if lualib:BagFree(player, true, false, false) < bagfree then return "��İ����ռ䲻�㣡�������������\n\n\n\n#IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*[������ҳ]>" end
    if lualib:Player_IsGoldEnough(player, req_gold, false) == false then return "��Ľ�Ҳ���!\n\n\n\n#IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*[������ҳ]>" end
    if lualib:Player_SubGold(player, req_gold, false, "����ʵ�", player) == false then return "�۳����ʧ�ܣ�" end
    lualib:AddItem(player, item, 1, false, "����ʵ�", player)
    local msg = "����ɹ���ף�����Ŷ��\n\n\n\n"
    msg = msg .. "#IMAGE1902700031##OFFSET<X:0,Y:-2>#<@goumaicaidan *01*[��������]>"
    return msg
end