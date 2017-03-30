--���һ�
local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/����ϵͳ")

-- ���
local chib =
{
    {"�ƿ���(40��)", {"�ƿ���Lv1", "�ƿ���Lv2", "�ƿ���Lv3"}}, 
	{"�ι�֮��(40��)", {"�ι�֮��Lv1", "�ι�֮��Lv2", "�ι�֮��Lv3"}}, 
	{"��ݺ֮��(40��)", {"��ݺ֮��Lv1", "��ݺ֮��Lv2", "��ݺ֮��Lv3"}}, 
	{"���֮��(40��)", {"���֮��Lv1", "���֮��Lv2", "���֮��Lv3"}}, 
	{"����֮��(40��)",{"����֮��Lv1", "����֮��Lv2", "����֮��Lv3"}}, 
	{"���֮��(40��)", {"���֮��Lv1", "���֮��Lv2", "���֮��Lv3"}}, 
    {"аħ��(40��)", {"аħ��Lv1", "аħ��Lv2", "аħ��Lv3"}}, 
    {"ħ��֮��(40��)", {"ħ��֮��Lv1", "ħ��֮��Lv2", "ħ��֮��Lv3"}}, 


}


local chibJob =
{
    ["�ƿ���(40��)"] = " ------ ͨ��",
	["�ι�֮��(40��)"] = " ---- ͨ��",
	["��ݺ֮��(40��)"] = " ---- սʿ",
    ["���֮��(40��)"] = " ---- սʿ",
    ["����֮��(40��)"] = " ---- ��ʦ",
    ["���֮��(40��)"] = " ---- ��ʦ",
	["аħ��(40��)"] = " ------ ��ʿ",
    ["ħ��֮��(40��)"] = " ---- ��ʿ",
}

-- �һ������Ҫ����������
local chib_num =
{
	["�ƿ���Lv1"]	= 50,       --ͨ��
	["�ƿ���Lv2"]   = 100,      --ͨ��
	["�ƿ���Lv3"]   = 250,      --ͨ��
    ["����֮��Lv1"]	= 1500,     --��ʿ
	["����֮��Lv2"] = 2250,     --��ʿ
	["����֮��Lv3"] = 4500,     --��ʿ
    ["аħ��Lv1"]	= 500,      --��ʿ
	["аħ��Lv2"]   = 750,      --��ʿ
	["аħ��Lv3"]   = 1500,     --��ʿ
    ["�ι�֮��Lv1"]	= 100,      --ͨ��
	["�ι�֮��Lv2"] = 200,      --ͨ��
	["�ι�֮��Lv3"] = 500,      --ͨ��
    ["���֮��Lv1"]	= 500,      --��ʦ
	["���֮��Lv2"] = 750,      --��ʦ
	["���֮��Lv3"] = 1500,     --��ʦ
    ["ħ��֮��Lv1"]	= 1500,     --��ʦ
	["ħ��֮��Lv2"] = 2250,     --��ʦ
	["ħ��֮��Lv3"] = 4500,     --��ʦ
    ["��ݺ֮��Lv1"]	= 500,      --սʿ
	["��ݺ֮��Lv2"] = 750,      --սʿ
	["��ݺ֮��Lv3"] = 1500,     --սʿ
    ["���֮��Lv1"]	= 1500,     --սʿ
	["���֮��Lv2"] = 2250,     --սʿ
	["���֮��Lv3"] = 4500,     --սʿ
}
-- ���һ�������Ի�����������
local chib_num_fan =
{
	["�ƿ���Lv1"]	= 10,
	["�ƿ���Lv2"] = 20,
	["�ƿ���Lv3"] = 50, 
    ["����֮��Lv1"]	= 300,
	["����֮��Lv2"] = 450,
	["����֮��Lv3"] = 900, 
    ["аħ��Lv1"]	= 100,
	["аħ��Lv2"] = 150,
	["аħ��Lv3"] = 300, 
    ["�ι�֮��Lv1"]	= 20,
	["�ι�֮��Lv2"] = 40,
	["�ι�֮��Lv3"] = 100, 
    ["���֮��Lv1"]	= 100,
	["���֮��Lv2"] = 150,
	["���֮��Lv3"] = 300, 
    ["ħ��֮��Lv1"]	= 300,
	["ħ��֮��Lv2"] = 450,
	["ħ��֮��Lv3"] = 900, 
    ["��ݺ֮��Lv1"]	= 100,
	["��ݺ֮��Lv2"] = 150,
	["��ݺ֮��Lv3"] = 300, 
    ["���֮��Lv1"]	= 300,
	["���֮��Lv2"] = 450,
	["���֮��Lv3"] = 900, 	
}


local all_wings =
{
        --��һ������������
        --Keyname               Rate         ��Ҫ��������        �Ƿ�ɶһ�      ����һ�������
        {    "����",              9800,        0,                  0,               0},
        {    "�ƿ���Lv1",          50,          60,                 1,               12},
        {    "�ƿ���Lv2",          3,           150,                 1,               30},
        {    "�ƿ���Lv3",          2,           500,                1,               100},
        {    "�ι�֮��Lv1",       50,          100,                 1,               20},
        {    "�ι�֮��Lv2",       3,           250,                 1,               50},
        {    "�ι�֮��Lv3",       2,           800,                1,               160},		
        {    "���֮��Lv1",       50,          200,                 1,               40},
        {    "���֮��Lv2",       3,           500,                 1,               100},
        {    "���֮��Lv3",       2,           1500,                1,               300},			
};

local talk_t = {"�����Ҫ�������������ϳɡ�", "��Ҳ���԰ѳ��ֽ������Ŷ��", "��򲻵����ۣ���ӵ�з�ͬһ�������Ŷ��"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 270000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc,player)
    local keyname = lualib:Player_GetCustomVarStr(player, "�����ȡ_δ����Ʒ")
    if keyname ~= "" then
        msg = "<@get_wing *01*��ȡ�ϴν���>\n"
        return msg
    end

       local msg = "    ��Ľӵ�г��Ļ������ͷ������������һֱ���������ร������������Ǳ�ȥ�ռ�#COLORCOLOR_GOLD#����#COLOREND#�ɣ��󲿷ֹ�������ʱ�������Ŷ\n"
        msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n"
        msg = msg.."  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@convert_prompt *01*������һ�����>               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@convert_back_prompt *01*������һ�����>\n"
        msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n"
		msg = msg.."��������������������������������������������#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���뿪��>\n"
	-- #OFFSET<X:0,Y:9>#<@search_prompt *01*���˽�����̽����> 
    return msg
end

function search_prompt(npc, player)
	local spirit = lualib:Player_GetCustomVarInt(player, "����ϵͳ_����")
       local msg = "#COLORCOLOR_RED#�ţ�#COLOREND#ϵͳ��Ϊ���ÿ���Զ�����80�����ֵ\n"
	msg = msg.."#COLORCOLOR_RED#�ƣ�#COLOREND#30�����ϵ���ң�ÿ����һСʱϵͳ�Զ�����10�����ֵ\n"
	msg = msg.."#COLORCOLOR_RED#�ǣ�#COLOREND#���û���ֵ�������������ȡ���Ŷ\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."�㵱ǰ����Ϊ��"..spirit.."����\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."  <@search_wing *01*����ʼ����̽����>   #COLORCOLOR_RED#��ʾ��#COLOREND#̽��һ����Ҫ����80�����ֵ\n"
        msg = msg.."                                                   <@main *01*�����ء�>\n"

    return msg
end

function search_wing(npc, player)
    --�жϻ����Ƿ��㹻
    local spirit = lualib:Player_GetCustomVarInt(player, "����ϵͳ_����")
    if spirit < 80 then
        msg = "��Ļ����������Ƿ�ʹ��Ԫ���Զ�����\n \n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."�㵱ǰ����Ϊ��"..spirit.."����      #COLORCOLOR_GOLD#ÿ100Ԫ���ɲ���10�����#COLOREND#\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."<@recover_spirit_by_yb *01*��һ�β��䵽300�㡿>    <@recover_spirit_by_100yb *01*��һ�β���10�㡿>\n"

        return msg
    end

    --��ʼ��ȡ
    local v = {};
    local max = 0;
    for i = 1, table.getn(all_wings) do
        max = all_wings[i][2] + max
        v[i] = max
    end

    local r = lualib:GenRandom(1, max)
    local sel = table.getn(all_wings)
    for i = 1,table.getn(v) do
        if r < v[i] then
            sel = i
            break
        end
    end

    --��ȡ����
    lualib:Player_SetCustomVarInt(player, "����ϵͳ_����", spirit - 80)
    lualib:Player_SetCustomVarStr(player, "�����ȡ_δ����Ʒ", all_wings[sel][1])
    msg = "����ȡ�����ǡ�"..all_wings[sel][1].."��\n"

    if all_wings[sel][4] == 1 then
        local bmsg = lualib:Player_GetStrProp(player,  lua_role_user_name)
        bmsg = bmsg.."��ҷ�̩����̽������"..all_wings[sel][1]
        lualib:SysMsg_SendCenterMsg(1, bmsg, "")
    else
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."�����û��̽������򣬺��ź��������ռ���һ������[����]���ܵ�����������ѻ�ȡһ��Ŷ��\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    end

    if lualib:Player_GiveItemUnbind(player, all_wings[sel][1], 1, "����齱", "") then
        lualib:Player_SetCustomVarStr(player, "�����ȡ_δ����Ʒ", "")
        msg = msg.."                                                   <@search_prompt *01*�����ء�>\n"
        return msg
    end

    msg = msg.."��İ����ռ䲻�㣬�������������ȡ��\n\n"
    msg = msg.."<@get_wing *01*����ȡ��>   \n"
    return msg
end

function get_wing(npc, player)
    local keyname = lualib:Player_GetCustomVarStr(player, "�����ȡ_δ����Ʒ")
    if keyname == "" then
        return "��û��δ�����Ʒ��n\n".."<@main *01*�����ء�>   \n"
    end

    if lualib:Player_GiveItemUnbind(player, keyname, 1, "����齱", "") then
        lualib:Player_SetCustomVarStr(player, "�����ȡ_δ����Ʒ", "")
        return "��ȡ�ɹ���\n".."<@main *01*�����ء�>   \n"
    end

    msg = "��ȡ����ʧ�ܣ�������������ء�\n\n"
    msg = msg.."<@get_wing *01*����ȡ��>   \n\n".."<@main *01*�����ء�>   \n"
    return msg
end


function convert_prompt(npc, player)
       local msg = "�ռ���һ����������Ϳ����������ﻻȡ��˵�еĳ��Ŷ�������ռ��ɣ�\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."Ŀǰ���������������������ȡ���³��\n"
		msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		for i = 1,#chib do
			msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@duihuan#"..i.." *01*"..chib[i][1]..chibJob[chib[i][1]]..">\n"
		end
		msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"

    return msg;
end

function duihuan(npc, player, k)
	local k = tonumber(k)
	local msg = "��ѡ����Ҫ�һ��ĳ��\n"
		  msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		for k1, v1 in pairs(chib[k][2]) do
				msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@duihuan1#"..v1.." *01*["..v1.."]>\n"
		end
		msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@convert_prompt *01*�����ء�>\n"

	return msg
end


function duihuan1(npc, player,  v1)
	local msg = ""
	
		for k2, v2 in pairs(chib_num) do
				if v1 == k2 then
					msg = msg.."�һ�#COLORCOLOR_YELLOW#"..v1.."#COLOREND#��Ҫ#COLORCOLOR_RED#"..v2.."#COLOREND#����ȷ���һ���\n \n \n \n \n"
					msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700033>##OFFSET<X:0,Y:-2>#<@duihuan2#"..v1.."#"..v2.." *01*[ȷ���һ�]>\n \n \n \n"
					
				end
		end
		msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"

	return msg
end

function duihuan2(npc, player,v1, v2)
	local msg = ""
	local num = lualib:ItemCount(player, "����")
	local bagfree = lualib:Player_GetBagFree(player)
	if bagfree < 1 then
		return "��İ�������1����ճ�һ����������һ���\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@convert_prompt *01*�����ء�>"
	end
	v2 = tonumber(v2)
	if num < v2 then
		return "�������"..v2.."���㣬���ܶһ��� \n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	else
		if lualib:DelItem(player, "����", v2, 2, "�һ����ɹ�ɾ������", player) == true then
			if not lualib:AddItem(player, v1, 1, false, "�һ����ɹ���", player) then
				return "�۳�����ʧ��"
			end
			return "�һ��ɹ���\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
		else
			return "ɾ������ʧ�ܣ����������ԣ�\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
		end
	end
	
	return msg
end



function convert_back_prompt(npc, player)
       local msg = "������ж��������Ҳ���Ե�������һ��������ڶһ����߼�������\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."Ŀǰ�����������������������һ�����\n"
		msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		
		for i = 1, #chib do
			msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@duihuan_fan#"..i.." *01*"..chib[i][1]..">\n"
		end
		msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"

    return msg;
end

function duihuan_fan(npc, player, k)
	local k = tonumber(k)
	local msg = "ѡ����Ҫ�һ����������\n"
		msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	
		for k1, v1 in pairs(chib[k][2]) do
				msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@duihuan_fan1#"..v1.." *01*["..v1.."]>\n"
		end
		msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@convert_back_prompt *01*�����ء�>\n"

	return msg
end


function duihuan_fan1(npc, player,  v1)
	local msg = ""
	
		for k2, v2 in pairs(chib_num_fan) do
				if v1 == k2 then
					msg = msg..v1.."���Զһ�����#COLORCOLOR_RED#"..v2.."#COLOREND#������ȷ���һ���\n \n \n \n \n"
					msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@duihuan_fan2#"..v1.."#"..v2.." *01*���һ���>\n \n \n \n"
					
				end
		end
		msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"

	return msg
end

function duihuan_fan2(npc, player, v1, v2)
	v2 = tonumber(v2)
	local chibang = lualib:ItemCountByKey(player, v1, true, false, false, 0)
	local msg = ""
	local bagfree = lualib:Player_GetBagFree(player)
	if bagfree < 1 then
		return "��İ�������1����ճ�һ����������һ���\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@duihuan_fan *01*�����ء�>"
	else
		if chibang < 1 then
			return "��û�г�򣬲��ܶһ�\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			
		else
			if lualib:DelItem(player, v1, 1, 2, "����һ�������ɾ�����", player) == true then
				lualib:AddItem(player, "����", v2, false, "�һ����ɹ���", player)
				return "�һ��ɹ���\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			else
				return "ɾ������ʧ�ܣ����������ԣ�\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			end
		end
	end

	return msg
end





function recover_spirit_by_yb(npc, player)
    local spirit = lualib:Player_GetCustomVarInt(player, "����ϵͳ_����")
    for i = 1,300 do
        if lualib:Player_SubIngot(player, 10, false, "��Ԫ���������", "") then
            spirit_add(player, 1)
            spirit = lualib:Player_GetCustomVarInt(player, "����ϵͳ_����")
            if spirit >= 300 then
                return "��Ļ����Ѿ�����!\n\n".."<@search_prompt *01*����������̽����>   \n"
            end
        else
            spirit = lualib:Player_GetCustomVarInt(player, "����ϵͳ_����")
            return "Ԫ�����㣬ֻ�ܽ��������䵽"..spirit.."��"
        end
    end
end

function recover_spirit_by_100yb(npc, player)
	if lualib:Player_IsIngotEnough(player,100,false) == true then
		if lualib:Player_SubIngot(player, 100, false, "��Ԫ���������", "") == true then
			spirit_add(player, 10)
			spirit = lualib:Player_GetCustomVarInt(player, "����ϵͳ_����")
			return "��Ļ����Ѿ�����10��!\n\n".."<@search_prompt *01*����������̽����>   \n"
		else
			return "Ԫ������!\n\n".."<@search_prompt *01*����������̽����>   \n"
		end
	end
end

function leave(npc, player)
	return""
end
