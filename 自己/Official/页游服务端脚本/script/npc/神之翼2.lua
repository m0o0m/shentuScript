--���һ�
local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/����ϵͳ")

local wing_table = 
    {
    {"������1��", "аħ��",   50,  0}, 
    {"������2��", "��Ӱ֮��", 100, 1000000}, 
    {"������3��", "����֮��", 200, 2000000}, 
    {"������4��", "���֮��", 400, 4000000}, 
    {"������5��", "����֮��", 800, 8000000}, 
    {"������6��", "�ι�֮��", 1600,16000000}, 
    {"������7��", "ħ��֮��", 3200,32000000}, 
    }


local wing_to_shenyu = 
{
    ["аħ��"] = 
        {
        {"аħ��",    "������1��", 50}, 
        {"аħ��Lv1", "аħ��Lv1",   500}, 
        {"аħ��Lv2", "аħ��Lv2",   750}, 
        {"аħ��Lv3", "аħ��Lv3",   1500}, 
        }, 
    ["�ƿ���"] = 
        {
        {"�ƿ���Lv1", "�ƿ���Lv1",   50}, 
        {"�ƿ���Lv2", "�ƿ���Lv2",   100}, 
        {"�ƿ���Lv3", "�ƿ���Lv3",   250}, 
        }, 
    ["����֮��"] = 
        {
        {"����֮��Lv1", "����֮��Lv1",   1500}, 
        {"����֮��Lv2", "����֮��Lv2",   2250}, 
        {"����֮��Lv3", "����֮��Lv3",   4500}, 
        }, 
    ["�ι�֮��"] = 
        {
        {"�ι�֮��",    "������6��",  1600}, 
        {"�ι�֮��Lv1", "�ι�֮��Lv1",   100}, 
        {"�ι�֮��Lv2", "�ι�֮��Lv2",   200}, 
        {"�ι�֮��Lv3", "�ι�֮��Lv3",   500}, 
        }, 
    ["���֮��"] = 
        {
        {"���֮��",    "������4��",   400}, 
        {"���֮��Lv1", "���֮��Lv1",   500}, 
        {"���֮��Lv2", "���֮��Lv2",   750}, 
        {"���֮��Lv3", "���֮��Lv3",   1500}, 
        }, 
    ["ħ��֮��"] = 
        {
        {"ħ��֮��",    "������7��",   3200}, 
        {"ħ��֮��Lv1", "ħ��֮��Lv1",   1500}, 
        {"ħ��֮��Lv2", "ħ��֮��Lv2",   2250}, 
        {"ħ��֮��Lv3", "ħ��֮��Lv3",   4500}, 
        }, 
    ["��ݺ֮��"] = 
        {
        {"��ݺ֮��Lv1", "��ݺ֮��Lv1",   500}, 
        {"��ݺ֮��Lv2", "��ݺ֮��Lv2",   750}, 
        {"��ݺ֮��Lv3", "��ݺ֮��Lv3",   1500}, 
        }, 
    ["���֮��"] = 
        {
        {"���֮��Lv1", "���֮��Lv1",   1500}, 
        {"���֮��Lv2", "���֮��Lv2",   2250}, 
        {"���֮��Lv3", "���֮��Lv3",   4500}, 
        }, 
    ["��Ӱ֮��"] = 
        {
        {"��Ӱ֮��", "������2��",   100}, 
        }, 
    ["����֮��"] = 
        {
        {"����֮��", "������3��",   200}, 
        }, 
    ["����֮��"] = 
        {
        {"����֮��", "������5��",   800}, 
        }, 
}

local wing_recover_table = 
{
    "аħ��  ", 
    "��Ӱ֮��", 
    "����֮��", 
    "���֮��", 
    "����֮��", 
    "�ι�֮��", 
    "ħ��֮��", 
    "�ƿ���", 
    "����֮��", 
    "��ݺ֮��", 
    "���֮��", 
    }


function main(npc,player)
    local msg = "    ��Ľӵ�г��Ļ������ͷ������������һֱ���������ร������������Ǳ�ȥ�ռ�#COLORCOLOR_GOLD#����#COLOREND#�ɣ��󲿷ֹ�������ʱ�������Ŷ\n"
    msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n"
    msg = msg.."  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@wing_exchange *01*������һ�����>\n \n"
    --msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@wing_recover *01*�������ա�>\n"
    msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n"
	msg = msg.."��������������������������������������������#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���뿪��>\n"
    return msg
end

function leave(npc, player)
	return""
end

function wing_exchange(npc, player)
    local msg = ""
    msg = msg.."#OFFSET<X:0,Y:-5>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:-5>#Ŀǰ���������������������ȡ���³��������ѡ��\n"
	msg = msg.."#OFFSET<X:0,Y:-5>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	for i = 1,#wing_table do
        if wing_table[i][2] == "аħ��" then
            msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@duihuan#"..wing_table[i][1].."#"..wing_table[i][2].."#"..wing_table[i][3].."#"..wing_table[i][4].." *01*"..wing_table[i][2]..">      ��Ҫ "..wing_table[i][3].."������ �� "..wing_table[i][4].."��ң�\n"
        else
            msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@duihuan#"..wing_table[i][1].."#"..wing_table[i][2].."#"..wing_table[i][3].."#"..wing_table[i][4].." *01*"..wing_table[i][2]..">    ��Ҫ "..wing_table[i][3].."������ �� "..wing_table[i][4].."��ң�\n"
        end
	end
	msg = msg.."#OFFSET<X:0,Y:-5>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"

    return msg;
end

function duihuan(npc, player, wing_keyname, wing_name, shenyu_request, gold_request)
    local msg = ""
	msg = msg .. "#POS<X:0>##POS<Y:0>#�һ����ߣ�\n"
	msg = msg .. "#POS<X:0>##POS<Y:60>#��Ҫ���ߣ�\n"
    msg = msg .. "#POS<X:150>##POS<Y:70>##IMAGE<ID:1902700037>#<@duihuan_Ex#"..wing_keyname.."#"..shenyu_request.."#"..gold_request.." *01* ȷ���һ�>\n\n\n\n  #OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* ������ҳ>"
	msg = msg .. "#POS<X:40>##POS<Y:100>##COLORCOLOR_GREENG# * "..shenyu_request.."#COLOREND#\n\n��Ҫ��ң�#COLORCOLOR_GREENG#"..gold_request.."#COLOREND#"
	local str = "<form default_parent=NpcTalk,Container>"
	str = str .. "<itemctrl id=�һ����� x=0 y=20 w=35 h=35 init_item="..wing_keyname.." count=1 is_bound=false use_back=true/>"
	str = str .. "<itemctrl id=��Ҫ���� x=0 y=80 w=35 h=35 init_item=���� count=1 is_bound=false use_back=true/>"
	msg = str .. "<text><![CDATA["..msg.."]]></text></form>"
	return msg
end

function duihuan_Ex(npc, player, wing_keyname, shenyu_request, gold_request)
    local shenyu_request, gold_request = tonumber(shenyu_request), tonumber(gold_request)
    local shenyu_count = lualib:ItemCountByKey(player, "����", true, false, false, 2)
    if wing_keyname == "" or wing_keyname == nil then
        return "��ѡ����Ҫ�һ��ĳ��"
    end
    
    if shenyu_count < shenyu_request then
        return "�����������㣡�޷��һ���\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* ������ҳ>"
    end
    if lualib:Player_IsGoldEnough(player, gold_request, false) == false then
        return "��Ҳ��㣬�޷��һ�����Ҫ"..gold_request.."��ң�\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* ������ҳ>"
    end
    if lualib:Player_SubGold(player, gold_request, false, "����һ����", player) == false then
        return "ɾ�����ʧ�ܣ���ȷ�ϣ�\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* ������ҳ>"
    end
    
	if lualib:DelItem(player, "����", shenyu_request, 2, "����һ�����", player) == false then
        return "ɾ����Ʒʧ�ܣ���ȷ�ϣ�\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* ������ҳ>"
    end
    local item_guid = lualib:AddSingleItem(player, wing_keyname, 1, 0, "����һ�����", player)
    if item_guid == nil or item_guid == "" then
        return "�����Ʒʧ�ܣ�\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* ������ҳ>"
    end
    
    return "�һ��ɹ���\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* ������ҳ>"
end

function wing_recover(npc, player)
    local msg = "�Ѿ��һ������������������һ�������������ԭ����ͬ��\n#COLORCOLOR_RED#�Ѿ����������Ҳ�ɶһ�������#COLOREND#\n"
    msg = msg .. "��ѡ��Ҫ���յĳ��\n"
    for i = 1, #wing_recover_table do
        if i % 2 == 0 then
            msg = msg .. "#OFFSET<X:100,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@wing_recover_Ex#"..wing_recover_table[i].." *01* "..wing_recover_table[i]..">\n"
        else
            msg = msg .. "#OFFSET<X:50,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@wing_recover_Ex#"..wing_recover_table[i].." *01* "..wing_recover_table[i]..">"
        end
    end
    msg = msg .. "\n#OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* ������ҳ>"
	return msg
end

function wing_recover_Ex(npc, player, key)
    local msg = "��ѡ��Ҫ���յĳ��\n\n\n"
    for i = 1, #wing_to_shenyu[key] do
        msg = msg .. "#IMAGE<ID:1902700037>#<@wing_recover_Ex2#"..wing_to_shenyu[key][i][1].."#"..wing_to_shenyu[key][i][2].."#"..wing_to_shenyu[key][i][3].." *01* "..wing_to_shenyu[key][i][1]..">\n"
    end
	return msg
end

function wing_recover_Ex2(npc, player, wing_name, wing_keyname, shenyu_count)
    local msg = "����#COLORCOLOR_BROWN#"..wing_name.."#COLOREND#���Եõ�#COLORCOLOR_RED#"..shenyu_count.."#COLOREND#������\n\n\n\n"
    msg = msg .. "#IMAGE<ID:1902700037>#<@wing_recover_Ex3#"..wing_name.."#"..wing_keyname.."#"..shenyu_count.." *01* ȷ������>\n\n\n\n"
    msg = msg .. "#OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* ������ҳ>"
	return msg
end

function wing_recover_Ex3(npc, player, wing_name, wing_keyname, shenyu_count)
    if wing_keyname == nil or wing_keyname == "" then
        return "��ȷ����Ҫ���յĳ��\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* ������ҳ>"
    end
    if lualib:DelItem(player, wing_keyname, 1, 0, "���ճ��", player) == false then
        return "���ճ��ʧ�ܣ�������ѡ��������еĳ��\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:0>##IMAGE<ID:1902700019>#<@main *01* ������ҳ>"
    end
    if lualib:AddItem(player, "����", tonumber(shenyu_count), false, "���ճ��", player) == true then
        return "����"..wing_name.."�ɹ��������"..shenyu_count.."������\n\n\n\n\n\n\n#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���رա�>"
    end
end