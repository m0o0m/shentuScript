local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local coustom_pos_tone_map = "coustom_pos_tone_map"   --��λʯ����λ�ĵ�ͼ
local coustom_pos_tone_x   = "coustom_pos_tone_x"     --��λʯ����λ�ĵ�ͼX���� 
local coustom_pos_tone_y   = "coustom_pos_tone_y"     --��λʯ����λ�ĵ�ͼY����
local coustom_pos_tone_map_key = "coustom_pos_tone_map_key"--��λʯ����λ�ĵ�ͼkeyname

local disallow_map = {}
	disallow_map["��Ӣ������-16��8"] = 1
	disallow_map["��Ӣ������-4��2"] = 1
	disallow_map["��Ӣ������-8��4"] = 1
	disallow_map["��Ӣ������-���Ǿ���"] = 1
	disallow_map["��Ӣ������-������"] = 1
	disallow_map["��Ӣ������-Ⱥ����¹"] = 1
	disallow_map["��Ӣ������-��Ϣ��"] = 1
	disallow_map["��Ӣ������-�����"] = 1
	disallow_map["���׽���"] = 1
	disallow_map["���ǻʹ�"] = 1
	disallow_map["��ħ���"] = 1
	disallow_map["�����ܵ�"] = 1
	disallow_map["ľ����"] = 1
	disallow_map["ľ����2"] = 1
	disallow_map["ľ����3"] = 1
	disallow_map["��ս��1"] = 1
	disallow_map["��ս��2"] = 1
	disallow_map["��ս��3"] = 1
	disallow_map["���̵Ĳؽ���"] = 1
	disallow_map["������Ԩ1"] = 1
	disallow_map["������Ԩ2"] = 1
	disallow_map["������Ԩ3"] = 1
	disallow_map["��Ĺ"] = 1
	disallow_map["��̨"] = 1
	disallow_map["�غ���ӡ"] = 1
	disallow_map["��Ϣ��"] = 1
	disallow_map["������"] = 1
	disallow_map["��ɽ��Ѩ5"] = 1
	disallow_map["��ɽ��Ѩ8"] = 1
	disallow_map["��ɽ��Ѩboss"] = 1
	disallow_map["������"] = 1
	disallow_map["������"] = 1
	disallow_map["������þ�"] = 1
	disallow_map["�䱦��"] = 1
	disallow_map["�м�������"] = 1
	disallow_map["ʬ�����"] = 1
	disallow_map["������ս��1"] = 1
	disallow_map["������ս��2"] = 1
	disallow_map["������ս��3"] = 1
	disallow_map["Ư����"] = 1
	disallow_map["�����6"] = 1
	disallow_map["�����7-1"] = 1
	disallow_map["�����7-2"] = 1
	disallow_map["�����7-3"] = 1
	disallow_map["�����7-4"] = 1
	disallow_map["�����7-5"] = 1
	disallow_map["�����7-6"] = 1
	disallow_map["�����7-7"] = 1
	disallow_map["�����7-8"] = 1
	disallow_map["�����7-9"] = 1
	disallow_map["�����boss"] = 1
	disallow_map["��ħ��"] = 1
	disallow_map["��Ĺ���"] = 1
	disallow_map["��ħʯ��4"] = 1
	disallow_map["���µ�һս��"] = 1
	disallow_map["�������"] = 1
	disallow_map["а��7-1"] = 1
	disallow_map["а��7-2"] = 1
	disallow_map["а��7-3"] = 1
	disallow_map["а��boss"] = 1
	disallow_map["�߼�������"] = 1
	disallow_map["��ħ��"] = 1
	disallow_map["����������"] = 1
	disallow_map["���������ض�"] = 1
	disallow_map["�ٲ���"] = 1
	disallow_map["�ؾ�¥"] = 1
	disallow_map["����������"] = 1
	disallow_map["��ɽ"] = 1
	disallow_map["��Ԫ�ؾ�1"] = 1
	disallow_map["��Ԫ�ؾ�2"] = 1
	disallow_map["��Ԫ�ؾ�3"] = 1
	disallow_map["����4"] = 1
	disallow_map["����ڣboss"] = 1
	disallow_map["����ڣ����"] = 1
	disallow_map["��·��boss"] = 1
	disallow_map["����4Ұ��"] = 1
	disallow_map["����5"] = 1
	disallow_map["����3Ұ��"] = 1
	disallow_map["����3"] = 1
	disallow_map["���ײ���1"] = 1
	disallow_map["���ײ���2"] = 1
	disallow_map["���ײ���3"] = 1
	disallow_map["���ײ������"] = 1
	disallow_map["������4"] = 1
	disallow_map["������5"] = 1
	disallow_map["������6"] = 1
	disallow_map["��ħ�ص�1"] = 1
	disallow_map["��ħ�ص�2"] = 1
	disallow_map["��ħ����10"] = 1
	disallow_map["��ħ����11"] = 1
	disallow_map["��ħ����12"] = 1
	disallow_map["����"] = 1
	disallow_map["ǧ����"] = 1
	disallow_map["�ػ�����"] = 1
	disallow_map["��·��3"] = 1
	disallow_map["��ħʯ��3"] = 1
	disallow_map["��ħʯ��boss"] = 1
	disallow_map["�䶷��"] = 1
	disallow_map["а��6-1"] = 1
	disallow_map["а��6-10"] = 1
	disallow_map["а��6-11"] = 1
	disallow_map["а��6-12"] = 1
	disallow_map["а��6-13"] = 1
	disallow_map["а��6-14"] = 1
	disallow_map["а��6-15"] = 1
	disallow_map["а��6-16"] = 1
	disallow_map["а��6-2"] = 1
	disallow_map["а��6-3"] = 1
	disallow_map["а��6-4"] = 1
	disallow_map["а��6-5"] = 1
	disallow_map["а��6-6"] = 1
	disallow_map["а��6-7"] = 1
	disallow_map["а��6-8"] = 1
	disallow_map["а��6-9"] = 1
	disallow_map["��ħ̨"] = 1
	disallow_map["�ᱦ����"] = 1
	disallow_map["���³�"] = 1
	disallow_map["����3����1"] = 1
	disallow_map["����1����1"] = 1
	disallow_map["����1����2"] = 1
	disallow_map["����1����3"] = 1
	disallow_map["����1����4"] = 1
	disallow_map["����1����5"] = 1
	disallow_map["����1����6"] = 1
	disallow_map["����1����7"] = 1
	disallow_map["����2"] = 1
	disallow_map["����2����1"] = 1
	disallow_map["����2����2"] = 1
	disallow_map["����2����3"] = 1
	disallow_map["����2����4"] = 1
	disallow_map["����2����5"] = 1
	disallow_map["����2����6"] = 1
	disallow_map["����ڣ3"] = 1
	disallow_map["����4����1"] = 1
	disallow_map["����4����2"] = 1
	disallow_map["���ϸ�"] = 1
	disallow_map["��ħ��"] = 1
	disallow_map["ս������"] = 1
	
function main(player, item)
    local msg = ""
    local map   = lualib:Item_GetCustomVarStr(player, item, coustom_pos_tone_map)
    local map_x = lualib:Item_GetCustomVarStr(player, item, coustom_pos_tone_x)
    local map_y = lualib:Item_GetCustomVarStr(player, item, coustom_pos_tone_y)
    local map_key = lualib:Item_GetCustomVarStr(player, item, coustom_pos_tone_map_key)

    if map == "" or map_x == "" or map_y == 0 or map_key == "" then
        msg = msg.."����û�н��й���λ������\n \n"
        msg = msg.."<@SetPos#"..item.." *01*��λ>\n"
    else
        msg = msg.."���ϴζ�λ��λ�ã�["..map.."] ���꣨"..map_x.."��"..map_y.."����\n \n"
        msg = msg.."��ѡ���ͻ�λ��\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."              <@SetPos#"..item.." *01*����λ��>              <@JumpPos#"..item.."#"..map_key.."#"..map_x.."#"..map_y.." *01*�����͡�>\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    end

    lualib:NPCTalk(player, msg)
    return false
end

function SetPos(player, item)
	if disallow_map[map_key] == 1 then
		lualib:SysPromptMsg(player, "�˵�ͼ��ֹ��λ")	
		return ""
	end
	
    if lualib:IsBanItem(item, lualib:MapGuid(player)) then
        return "��ǰ��ͼ��ֹʹ�øõ��ߣ�"
    end

    local map = lualib:Player_GetStrProp(player,  lua_role_current_map)
    if map == "" then return "��λʧ�ܣ�" end

    local map_x = lualib:Player_GetPosX(player)
    local map_y = lualib:Player_GetPosY(player)
    if map_x == -1 or map_y == -1 then return "��λʧ�ܣ�" end

    local map_key = lualib:Player_GetStrProp(player,  lua_role_current_map_key)
    if map_key == "" then return "��λʧ�ܣ�" end

    local ret = lualib:Item_SetCustomVarStr(player, item, coustom_pos_tone_map, map)
    ret = lualib:Item_SetCustomVarStr(player, item, coustom_pos_tone_x, tostring(map_x))
    ret = lualib:Item_SetCustomVarStr(player, item, coustom_pos_tone_y, tostring(map_y))
    ret = lualib:Item_SetCustomVarStr(player, item, coustom_pos_tone_map_key, map_key)
    if ret == false then return "��λʧ�ܣ�" end
    
    return "��λ�ɹ���"
end

function JumpPos(player, item, map_key, x, y)
	if disallow_map[map_key] == 1 then
		lualib:SysPromptMsg(player, "�˵�ͼ��ֹ����")	
		return ""
	end
	
	local itemname	= lualib:Name(item)
	local itemkeyname = lualib:KeyName(item)
	local item_num = lualib:ItemCountByKey(player, itemkeyname, true, false, false, 2)

	if item_num < 1 then
		lualib:SysTriggerMsg(player, "���ǲ��ǰ�["..itemname.."]���ű��ˣ�")
		return ""
	end
	
	
    if lualib:IsBanItem(item, lualib:MapGuid(player)) then
        return "��ǰ��ͼ��ֹʹ�øõ��ߣ�"
    end

    local count = lualib:Item_GetUsesCount(player, item)
    if count == -1 then return "����ʧ�ܣ�" end

    local _count = count - 1
    if lualib:Item_SetUsesCount(player, item, _count) == false then return "����ʧ�ܣ�" end

    if lualib:Player_MapMoveXY(player, map_key, tonumber(x), tonumber(y), 8) == false then return "����ʧ�ܣ�" end
    return ""
end


function on_create(item)
	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
	
end

function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	
    if item_name == "��λʯ(1��)" or item_name == "��λʯ(2��)" or item_name == "��λʯ(3��)" or item_name == "��λʯ(5��)" then
        return
    end
    
	if item_map_x < 20000 then
		if player_name == "" then
			local s = "��"..item_name.."��������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "��"..item_name.."����������".."["..player_name.."]һ����Ʒ�������˳�����������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
            local s = "��"..item_name.."��������"..item_map_name.."��["..item_map_x..":"..item_map_y.."]������"
			local s1 = "["..player_name.."]��Ʒ�����ˣ���"..item_map_name.."["..item_map_x..":"..item_map_y.."]�����һ��".."��"..item_name.."��������"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end
