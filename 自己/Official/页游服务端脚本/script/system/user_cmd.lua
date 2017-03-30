local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/master")

function trim(s)
    return (string.gsub(s, "^%s*(.-)%s*$", "%1"))
end

-------------------------------------------------------
-- ����:���ָ���ַ���,�ָ��ַ�
-- ����:�Ӵ���.(���пմ�)
function lua_string_split(str, split_char)
    local sub_str_tab = {};
    while (true) do
        local pos = string.find(str, split_char);
        if (not pos) then
            sub_str_tab[#sub_str_tab + 1] = str;
            break;
        end
        local sub_str = string.sub(str, 1, pos - 1);
        sub_str_tab[#sub_str_tab + 1] = sub_str;
        str = string.sub(str, pos + 1, #str);
    end

    return sub_str_tab;
end

function split(str,delim)  
    local i,j,k  
    local t = {}  
    k = 1  
    while true do  
        i,j = string.find(str,delim,k)  
        if i == nil then  
            table.insert(t,string.sub(str,k))  
            return t  
        end  
        table.insert(t,string.sub(str,k,i - 1))  
        k = j + 1  
    end  
end  

--�û�ָ������
function refine(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	
    local item = lualib:Item_GetBySite(player, 22)
    if item == nil then
        lualib:SysMsg_SendPromptMsg(player, "��Ʒ������")
        return false
    end

    if lualib:Item_GetType(player, item) ~= 1 then
        return false
    end
	
    local p = split(trim(param), " ")
   
    if table.getn(p) ~= 3 then
        lualib:SysMsg_SendPromptMsg(player, "��ʽ��@refine �ȼ� ������ ����ֵ");
		return true
    end
 
    local level = tonumber(p[1])
    local attr_name = tonumber(p[2])
    local attr_value  = tonumber(p[3])
    
    lualib:Equip_SetRefineLevel(player, item, level)
    lualib:Equip_SetRefineProp(player, item, attr_name, attr_value)

    lualib:Item_NotifyUpdate(player, item)
        
    return true
end

function identify(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

    local item = lualib:Item_GetBySite(player, 22)
    if item == nil then
        lualib:SysMsg_SendPromptMsg(player, "��Ʒ������")
        return false
    end

    if lualib:Item_GetType(player, item) ~= 1 then
        return false
    end
	
    local p = split(trim(param), " ")
   
    if table.getn(p) ~= 6 then
        lualib:SysMsg_SendPromptMsg(player, "��ʽ��@identify ������1, ����ֵ1, ������2, ����ֵ2, ������3, ����ֵ3");
		return true
    end
 
    if not lualib:Equip_SetIdentifyProp(player, item, tonumber(p[1]), tonumber(p[2]), tonumber(p[3]), tonumber(p[4]), tonumber(p[5]), tonumber(p[6])) then
        lualib:SysMsg_SendPromptMsg(player, "װ������ʧ��")
        return false
    end
    
    lualib:Item_NotifyUpdate(player, item)

    return true
end

function set_lc(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

    local item = lualib:Item_GetBySite(player, 22)
    if item == nil then
        lualib:SysMsg_SendPromptMsg(player, "��Ʒ������")
        return false
    end

    if lualib:Item_GetType(player, item) ~= 1 then
        return "����װ�����ɾ���"
    end
	
    local p = split(trim(param), " ")
   
    if table.getn(p) ~= 1 then
        lualib:SysMsg_SendPromptMsg(player, "��ʽ��@set_lc ����ֵ")
		return true
    end

    lualib:Equip_SetLuckCurse(player, item, tonumber(p[1]))
    lualib:Item_NotifyUpdate(player, item)

    return true
end
--�û�ָ������
function cur_pos(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	
    local cur_map = lualib:Player_GetStrProp(player,  lua_role_current_map)
    if cur_map == "" then return false end

    local cur_posx = lualib:Player_GetPosX(player)
    local cur_posy = lualib:Player_GetPosY(player)
    if cur_posx == -1 or cur_posy == -1 then return false end

    lualib:SysMsg_SendPromptMsg(player, "��ǰ��ͼ��"..cur_map.." [x, y] = ".."["..cur_posx..", "..cur_posy.."]")
    return true
end

function gonggao(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	lualib:SysMsg_SendBroadcastMsg(param, "");

	return true;
end

function sw(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	local shengwang = tonumber(param)
    lualib:Player_SetCustomVarInt(player, "shengwang", shengwang)
    lualib:Player_NotifyCustomParam(player, "shengwang")
	
	return true
end

function info(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	param = trim(param);

	if param == "" then
		lualib:SysMsg_SendPromptMsg(player, "��ʽ��@item_count ��ɫ���� ��Ʒ����");

		return true;
	end

	local guid = lualib:Player_GetGuid(param);

	local job_map = {"ս", "��", "��"}

	if guid ~= "" then
		local str_info = string.format("%s(%s) ����Ϣ ��¼�ʺ�:%s IP: %s ��ͼ:%s[%d:%d] �ȼ�: %d ְҵ:%s ����:%d-%d ħ��:%d-%d ����:%d-%d ����:%d-%d ħ��:%d-%d ����:%d�ƶ��ٶ�:%d �����ٶ�:%d ����:%d ����:%d PK: %d ���: %d/%d Ԫ��: %d/%d",
			param, guid, lualib:Player_GetStrProp(guid,  lua_role_account_name), lualib:Player_GetStrProp(guid, lua_role_ip),
			lualib:Player_GetStrProp(guid,  lua_role_current_map_key), lualib:Player_GetPosX(guid), lualib:Player_GetPosX(guid),
			lualib:Player_GetIntProp(guid,  lua_role_level), job_map[lualib:Player_GetIntProp(guid,  lua_role_job)],
			lualib:Player_GetIntProp(guid,  lua_role_min_phy_atk), lualib:Player_GetIntProp(guid,  lua_role_max_phy_atk),
			lualib:Player_GetIntProp(guid,  lua_role_min_mag_atk), lualib:Player_GetIntProp(guid,  lua_role_max_mag_atk),
			lualib:Player_GetIntProp(guid,  lua_role_min_tao_atk), lualib:Player_GetIntProp(guid,  lua_role_max_tao_atk),
			lualib:Player_GetIntProp(guid,  lua_role_min_phy_def), lualib:Player_GetIntProp(guid,  lua_role_max_phy_def),
			lualib:Player_GetIntProp(guid,  lua_role_min_mag_def), lualib:Player_GetIntProp(guid,  lua_role_max_mag_def),
			lualib:Player_GetIntProp(guid,  lua_role_luck_curse), lualib:Player_GetIntProp(guid,  lua_role_move_speed),  lualib:Player_GetIntProp(guid,

 lua_role_attack_speed),
			lualib:Player_GetIntProp(guid,  lua_role_hit), lualib:Player_GetIntProp(guid,  lua_role_miss),
			lualib:Player_GetIntProp(guid,  lua_role_pk),
			lualib:Player_GetIntProp(guid,  lua_role_bind_gold),lualib:Player_GetIntProp(guid,  lua_role_gold),
			lualib:Player_GetIntProp(guid,  lua_role_bind_ingot),lualib:Player_GetIntProp(guid,  lua_role_ingot)
			);

		lualib:SysMsg_SendPromptMsg(player, str_info);
	else
		lualib:SysMsg_SendPromptMsg(player, "�޷����ҵ���ң� " .. param .. " �������������߻��ڵ�ǰGS");
	end

	return true;
end

function uvar(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	local ipos = string.find(param, " ");

	local target = "";
	local var_name = "";

	if ipos ~= nil then
		target = trim(string.sub(param, 1, ipos));
		var_name = trim(string.sub(param, ipos + 1));
	else
		target = trim(param);
		var_name = "";
	end

	if (target == "") or (var_name == "") then
		lualib:SysMsg_SendPromptMsg(player, "��ʽ��@item_count ��ɫ���� ��Ʒ����");

		return true;
	end

	local guid = lualib:Player_GetGuid(target);

	if guid ~= "" then
		local str_info = string.format("INT_VAR: %d STR_VAR: %s",
							lualib:Player_GetCustomVarInt(guid, var_name), lualib:Player_GetCustomVarStr(guid, var_name)
						 );

		lualib:SysMsg_SendPromptMsg(player, str_info);
	else
		lualib:SysMsg_SendPromptMsg(player, "�޷����ҵ���ң� " .. target .. " �������������߻��ڵ�ǰGS");
	end

	return true;
end


function item_count(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	param = trim(param);

	if param == "" then
		lualib:SysMsg_SendPromptMsg(player, "��ʽ��@item_count ��ɫ���� ��Ʒ����");

		return true;
	end

	local ipos = string.find(param, " ");

	local target = "";
	local item_name = "";

	if ipos ~= nil then
		target = trim(string.sub(param, 1, ipos));
		item_name = trim(string.sub(param, ipos + 1));
	else
		target = trim(param);
		item_name = "none";
	end

	local guid = lualib:Player_GetGuid(target);

	if guid ~= "" then
		local str_info = string.format("%s(%s) ������ %s ������%d �ֿ���������%d", target, guid, item_name,
						lualib:Player_GetItemCount(guid, item_name),
						lualib:Player_GetWarehouseItemCount(guid, item_name));

		lualib:SysMsg_SendPromptMsg(player, str_info);
	else
		lualib:SysMsg_SendPromptMsg(player, "�޷����ҵ���ң� " .. param .. " �������������߻��ڵ�ǰGS");
	end

	return true;
end

function side(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	local range = tonumber(trim(param));

	local player_table = lualib:Map_GetRegionPlayers(lualib:Player_GetGuidProp(player,  lua_role_current_map_id), 
	lualib:Player_GetPosX(player), lualib:Player_GetPosY(player),range, true);

	if player_table == nil then
		lualib:SysMsg_SendPromptMsg(player, "�Ա�û���κ����");

		return true;
	end

	local total = table.getn(player_table)

	local msg = "";

	local guid = ""
	local i = 1;

	for i = 1,total do
		guid = tostring(player_table[i]);

		if guid ~= "" and guid ~= nil then
			msg = msg .. lualib:Player_GetStrProp(guid,  lua_role_user_name) .. "(" .. guid .. "),";
			--msg = msg .. guid;

			if i % 3 == 0 then
				lualib:SysMsg_SendPromptMsg(player, msg);
				msg = "";
			end

			if i % 9 == 0 then
				lualib:SysMsg_SendPromptMsg(player, msg);
				msg = "";
			end
		end
	end

	if msg ~= "" then
		lualib:SysMsg_SendPromptMsg(player, msg);
	end

	msg = "�ܱ�" .. range .. "���������: " .. total;
	lualib:SysMsg_SendPromptMsg(player, msg);

	return true;
end

function sidem(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	local range = tonumber(trim(param));

	local monster_table = lualib:Map_GetRegionMonsters(lualib:Player_GetGuidProp(player,  lua_role_current_map_id), "", lualib:Player_GetPosX(player), 
	lualib:Player_GetPosY(player),range, true, false);

	if monster_table == nil then
		lualib:SysMsg_SendPromptMsg(player, "�Ա�û���κι���");

		return true;
	end

	local total = table.getn(monster_table)

	local msg = "";

	local guid = ""
	local i = 1;

	for i = 1,total do
		guid = tostring(monster_table[i]);

		if guid ~= "" and guid ~= nil then
			msg = msg .. lualib:Monster_GetKeyName(guid) .. "(" .. guid .. "),";
			--msg = msg .. guid;

			if i % 3 == 0 then
				lualib:SysMsg_SendPromptMsg(player, msg);
				msg = "";
			end

			if i % 9 == 0 then
				lualib:SysMsg_SendPromptMsg(player, msg);
				msg = "";
			end
		end
	end

	msg = "�ܱ�" .. range .. "���������: " .. total;
	lualib:SysMsg_SendPromptMsg(player, msg);

	return true;
end

function StartCastleWarEx(player, param)
	local castle_var = "����_atk_familys"

    if not lualib:Player_IsGM(player) then
        lualib:SysMsg_SendWarnMsg(player, "�㲻��GM����Ȩִ�и�ָ�")
        return false
    end
    
    local familys = lualib:GetAllFamilys()
    if familys == nil then 
        lualib:SysMsg_SendWarnMsg(player, "��������û���лᣡ")
        return true
    end
    
    local familys_str = ""
    for _, v in pairs(familys) do
        familys_str = familys_str..v.."&"
    end
    
    if not lualib:StartCastleWar("����", familys_str, param, 7200) == false then
		lualib:SysMsg_SendWarnMsg(player, "���𹥳�ʧ��")
        return false
    end
    
    for _, v in pairs(familys) do
        lualib:SysMsg_SendPromptMsg(player, "���𹥳�ս�ɹ��������л�Ϊ��"..v)
    end
	
	lualib:IO_SetCustomVarStr(castle_var, param)
	return true
end

function StopCastleWarEx(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	
    if not lualib:StopCastleWar("����") then
        lualib:SysMsg_SendWarnMsg(player, "ֹͣ����սʧ�ܣ�")
        return false
    end
    
    lualib:SysMsg_SendWarnMsg(player, "ֹͣ����ս�ɹ���")
    return true
end


function t_j(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	
	local born_pos = {"��ɽ��", 502, 691, "��", 50}
	local map = lualib:Map_GetMapGuid(born_pos[1])
	if map == "" or not lualib:Map_IsInGS(born_pos[1]) then
		lualib:SysMsg_SendWarnMsg(player, "�㲻��ˢ�ֵ�ͼ�ķ������ϣ�������ˢ�֣�")
		lualib:Player_MapMove(player, born_pos[1])
		return false
	end
	if not lualib:Map_GenMonster(map, born_pos[2], born_pos[3], 15, lualib:GenRandom(0, 7),
								born_pos[4], 50, false) then
		lualib:SysMsg_SendWarnMsg(player, "ˢ��ʧ�ܣ�")
		return false
	end
	lualib:SysMsg_SendWarnMsg(player, "ˢ�ֳɹ���")
	return true
end

function t_l(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	local born_pos = {"��ɽ��", 478, 694, "¹", 50}
	local map = lualib:Map_GetMapGuid(born_pos[1])
	if map == "" or not lualib:Map_IsInGS(born_pos[1]) then
		lualib:SysMsg_SendWarnMsg(player, "�㲻��ˢ�ֵ�ͼ�ķ������ϣ�������ˢ�֣�")
		lualib:Player_MapMove(player, born_pos[1])
		return false
	end
	if not lualib:Map_GenMonster(map, born_pos[2], born_pos[3], 15, lualib:GenRandom(0, 7),
								born_pos[4], 50, false) then
		lualib:SysMsg_SendWarnMsg(player, "ˢ��ʧ�ܣ�")
		return false
	end
	lualib:SysMsg_SendWarnMsg(player, "ˢ�ֳɹ���")
	return true
end

function t_b(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	local born_pos = {"��ɽ��", 470, 612, "��é��", 50}
	local map = lualib:Map_GetMapGuid(born_pos[1])
	if map == "" or not lualib:Map_IsInGS(born_pos[1]) then
		lualib:SysMsg_SendWarnMsg(player, "�㲻��ˢ�ֵ�ͼ�ķ������ϣ�������ˢ�֣�")
		lualib:Player_MapMove(player, born_pos[1])
		return false
	end
	if not lualib:Map_GenMonster(map, born_pos[2], born_pos[3], 15, lualib:GenRandom(0, 7),
								born_pos[4], 50, false) then
		lualib:SysMsg_SendWarnMsg(player, "ˢ��ʧ�ܣ�")
		return false
	end
	lualib:SysMsg_SendWarnMsg(player, "ˢ�ֳɹ���")
	return true
end

function p_j(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	
	local born_pos = {"��ɽ��", 194, 677, "��", 50}
	local map = lualib:Map_GetMapGuid(born_pos[1])
	if map == "" or not lualib:Map_IsInGS(born_pos[1]) then
		lualib:SysMsg_SendWarnMsg(player, "�㲻��ˢ�ֵ�ͼ�ķ������ϣ�������ˢ�֣�")
		lualib:Player_MapMove(player, born_pos[1])
		return false
	end
	if not lualib:Map_GenMonster(map, born_pos[2], born_pos[3], 15, lualib:GenRandom(0, 7),
								born_pos[4], 50, false) then
		lualib:SysMsg_SendWarnMsg(player, "ˢ��ʧ�ܣ�")
		return false
	end
	lualib:SysMsg_SendWarnMsg(player, "ˢ�ֳɹ���")
	return true
end

function p_l(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	local born_pos = {"��ɽ��", 153, 631, "¹", 50}
	local map = lualib:Map_GetMapGuid(born_pos[1])
	if map == "" or not lualib:Map_IsInGS(born_pos[1]) then
		lualib:SysMsg_SendWarnMsg(player, "�㲻��ˢ�ֵ�ͼ�ķ������ϣ�������ˢ�֣�")
		lualib:Player_MapMove(player, born_pos[1])
		return false
	end
	if not lualib:Map_GenMonster(map, born_pos[2], born_pos[3], 15, lualib:GenRandom(0, 7),
								born_pos[4], 50, false) then
		lualib:SysMsg_SendWarnMsg(player, "ˢ��ʧ�ܣ�")
		return false
	end
	lualib:SysMsg_SendWarnMsg(player, "ˢ�ֳɹ���")
	return true
end

function p_b(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	local born_pos = {"��ɽ��", 156, 611, "��é��", 50}
	local map = lualib:Map_GetMapGuid(born_pos[1])
	if map == "" or not lualib:Map_IsInGS(born_pos[1]) then
		lualib:SysMsg_SendWarnMsg(player, "�㲻��ˢ�ֵ�ͼ�ķ������ϣ�������ˢ�֣�")
		lualib:Player_MapMove(player, born_pos[1])
		return false
	end
	if not lualib:Map_GenMonster(map, born_pos[2], born_pos[3], 15, lualib:GenRandom(0, 7),
								born_pos[4], 50, false) then
		lualib:SysMsg_SendWarnMsg(player, "ˢ��ʧ�ܣ�")
		return false
	end
	lualib:SysMsg_SendWarnMsg(player, "ˢ�ֳɹ���")
	return true
end

function lua_test(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

	local players = lualib:Map_GetRegionPlayers(lualib:Player_GetGuidProp(player,  lua_role_current_map_id),
								lualib:Player_GetPosX(player), lualib:Player_GetPosY(player), 5, true)
	if players == nil then return true end
	for _, v in pairs(players) do
		lualib:SysMsg_SendPromptMsg(player, lualib:Player_GetStrProp(v,  lua_role_user_name))
	end
	
	lualib:Player_Summon(player, "����", 1)
	return true
end

--���������װ��
function DisableEquip(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	
    local name_t = lualib:StrSplit(param, "#")
    if #name_t < 2 then
        lualib:SysMsg_SendWarnMsg(player, "ָ���ʽ��@DisableEquip Ŀ���ɫ����#װ��keyname1#...#װ��keynameN")
        return false 
    end
    
    local other = lualib:Name2Guid(name_t[1])
    if other == "" then
        lualib:SysMsg_SendWarnMsg(player, "Ŀ���ɫ"..name_t[1].."�����ߣ������޷����У�")
        return false
    end
    
    if not lualib:Player_IsInGS(other) then
        lualib:SysMsg_SendWarnMsg(player, "Ŀ���ɫ"..name_t[1].."���㲻��ͬһ��GS�ϣ����������Ա���ִ�в�����")
        return false
    end
    
    for i = 2, #name_t do
        if lualib:DisableEquip(other, name_t[i]) then
            lualib:SysMsg_SendWarnMsg(player, "Ŀ���ɫ"..name_t[1].."�ѵ�װ��"..name_t[i].."�ɹ���")
        else
            lualib:SysMsg_SendWarnMsg(player, "Ŀ���ɫ"..name_t[1].."�ѵ�װ��"..name_t[i].."ʧ�ܣ��ý�ɫû��װ��������ߣ�")
        end
    end

    return true
end

--ȫ������ѱ�
function DisableEquipEx(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	
    if param == "" then
        lualib:SysMsg_SendWarnMsg(player, "ָ���ʽ��@DisableEquipEx װ��keyname1&...&װ��keynameN")
        return false 
    end
    
    lualib:GSRunScript("DisableEquipImpl", param)
    return true
end

--�ű��ص��ã��û����ܵ�
function DisableEquipImpl(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end

    local name_t = lualib:StrSplit(param, "&")
    for i = 1, #name_t do
        if lualib:DisableEquip(player, name_t[i]) then
            lualib:SysMsg_SendWarnMsg(player, "�ѵ�װ��"..name_t[i].."�ɹ���")
        else
            lualib:SysMsg_SendWarnMsg(player, "�ѵ�װ��"..name_t[i].."ʧ�ܣ��ý�ɫû��װ��������ߣ�")
        end
    end
end

--����Ҿ������������
function PearlExp(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	
    if param == "" then
        lualib:SysMsg_SendWarnMsg(player, "ָ���ʽ��@PearlExp ��ɫ��")
        return false 
    end
    
    local other = lualib:Name2Guid(param)
    if other == "" then
        lualib:SysMsg_SendWarnMsg(player, "Ŀ���ɫ"..param.."�����ߣ������޷����У�")
        return false
    end
    
    if not lualib:Player_IsInGS(other) then
        lualib:SysMsg_SendWarnMsg(player, "Ŀ���ɫ"..param.."���㲻��ͬһ��GS�ϣ����������Ա���ִ�в�����")
        return false
    end
    
    local item_n_t = {"������(С)", "������(��)", "������(��)"}
    for _, v in pairs(item_n_t) do
        local item_t = lualib:GetItemsByKeys(other, v, false, true, false, false)
        if item_t ~= nil then
            for _, _v in pairs(item_t) do
                lualib:SetInt(_v, "cur_exp", lualib:GetInt(_v, "max_exp"))
                lualib:NotifyVar(_v, "cur_exp")
                lualib:SysMsg_SendPromptMsg(player, "Ŀ���ɫ"..param..v.."���ܳɹ�����������"..lualib:Item_GetSite(other, _v).."��")
            end
        end
    end
    
    return true
end
--���﹥��
function monsterattack(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	if (param == "1") then
		require("campaign/���﹥��1")
		siege();
	elseif (param == "2") then
		require("campaign/���﹥��2")
		siege();
	elseif (param == "3") then
		require("campaign/���﹥��3")
		siege();
	end
	return true;
end

--[[
function jump(player, param)
    local map_t = 
    {
        "��ɽ��",
        "����",
        "��·��",
        "��·��",
        "������1",
        "������2",
        "������3",
        "������4",
        "������5",
        "������6",
        "����ڣ1",
        "����ڣ2",
        "����ڣ3",
        "����ڣboss",
        "����ڣ����",
        "��ɽ��Ѩ1",
        "��ɽ��Ѩ2",
        "��ɽ��Ѩ3",
        "��ɽ��Ѩ4",
        "��ɽ��Ѩ5",
        "��ɽ��Ѩ6",
        "��ɽ��Ѩ7",
        "��ɽ��Ѩ8",
        "��ɽ��Ѩboss",
        "а��1",
        "а��2",
        "а��3",
        "а��4",
        "а��5",
        "а��6-1",
        "а��6-2",
        "а��6-3",
        "а��6-4",
        "а��6-5",
        "а��6-6",
        "а��6-7",
        "а��6-8",
        "а��6-9",
        "а��6-10",
        "а��6-11",
        "а��6-12",
        "а��6-13",
        "а��6-14",
        "а��6-15",
        "а��6-16",
        "а��7-1",
        "а��7-2",
        "а��7-3",
        "а��boss",
        "�����1",
        "�����2",
        "�����3",
        "�����4",
        "�����5",
        "�����6",
        "�����7-1",
        "�����7-2",
        "�����7-3",
        "�����7-4",
        "�����7-5",
        "�����7-6",
        "�����7-7",
        "�����7-8",
        "�����7-9",
        "�����boss",
        "��·��1",
        "��·��2",
        "��·��3",
        "��·��boss",
        "���ǻʹ�",
        "����",
        "�����ܵ�",
        "������",
        "��װ��",
        "���",
        "������",
        "ҩ��",
        "���ε�",
        "���Ƿ�װ��",
        "�������",
        "����������",
        "����ҩ��",
        "�������ε�",
        "ʬ�����",
        "��Ĺ���",
        "���������ض�",
        "���µ�һս��",
        "Ư����",
        "����������",
        "�м�������",
        "�߼�������",
        "������ս��1",
        "������ս��2",
        "������ս��3",
        "��ħ��",
        "������",
        "�������",
        "��ɽ",
        "������þ�",
        "��ħ��",
        "��Ĺ",
        "�ᱦ����",
        "���³�",
        "�䶷��",
        "���ϸ�",
        "��ħ̨",
        "С����",
    }
    
    lualib:Player_MapMove(player, map_t[lualib:GenRandom(1, #map_t)])
end

function JUMP(player, param)
    lualib:GSRunScript("jump", player)
end
]]


function tiyankaiqi(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	local map_guid = lualib:Map_GetMapGuid("��ɽ��")
	if param == "����" then
		if map_guid ~= "" then
			lualib:SetInt(map_guid, "experience", 1)
		end
		return true
	elseif param == "�ر�" then
		if map_guid ~= "" then
			lualib:SetInt(map_guid, "experience", 0)
		end
		return true
	else
		lualib:SysMsg_SendPromptMsg(player, "��ʽ��@tiyankaiqi ����/�ر�")
	end
	return false
end

function jiechumima(player, name)
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	
	local guid = lualib:Name2Guid(name)
	if guid == nil or guid == "" then
		return false
	end
	
	lualib:SetStr(guid, "_lock_pwd", "")
	lualib:SetInt(guid, "set_lock_pwd", 1)
	
	return true
end

function start_active(player, script)
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	
	local active_t = {
					["����֮���淨"] = 1,
					["�޾���Ԩ"] = 1,
					["Ԫ�����껪�淨"] = 1,
					["ÿ�նᱦ�淨"] = 1,
					["˭�������淨"] = 1,
					["ҹϮ��ɽ���淨"] = 1,
					["ħ�������淨"] = 1,
					["��ħ�����淨"] = 1,
					["Ĥ�ݳ����淨"] = 1

				}
	if active_t[script] ~= 1 then
		return false
	end
	
	require("campaign/"..script.."")
	local map = lualib:Map_GetMapGuid("��ɽ��")
	on_start_decl(1, map, 0)
	return true
end

function end_active(player, script)
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	
	local active_t = {
					["����֮���淨"] = 1,
					["�޾���Ԩ"] = 1,
					["Ԫ�����껪�淨"] = 1,
					["ÿ�նᱦ�淨"] = 1,
					["˭�������淨"] = 1,
					["ҹϮ��ɽ���淨"] = 1,
					["ħ�������淨"] = 1,
					["��ħ�����淨"] = 1,
					["Ĥ�ݳ����淨"] = 1

				}
	if active_t[script] ~= 1 then
		return false
	end
	
	require("campaign/"..script.."")
	local map = lualib:Map_GetMapGuid("��ɽ��")
	on_end_decl(1, map, 0)
	return true
end

function abcde(player)
		local t_map = lualib:Map_GetMapGuid("����")
		lualib:Map_GenCampMonster(t_map, 86, 143, 1, 8, "Ԫ��BOSS", 1, false, 0)
return true
end

function rcs(player, script)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	lualib:ShowFormWithContent(player, "form�ļ���", ""..script)
	return true
end

function add_buff(player, param)
	
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	local p = split(trim(param), " ")
	local role_guid = p[1]
    local keyname = p[2]
	if not lualib:HasBuff(role_guid, keyname) then 
		lualib:AddBuff(role_guid, keyname, 0);
	end
	return true
end

function add_magic(player, param)
	
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	local p = split(trim(param), " ")
	local id = p[1]
	local x = p[2]
    local y = p[3]
	local map = lualib:MapGuid(player);
	lualib:RunClientScript(map, "mapeffect", "texiao", id.."#"..x.."#"..y.."#150#2000");
	return true
end


function mobx(player, param)
	
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	--local p = split(trim(param), " ")
    --local x = tonumber(p[2])
    --local y  = tonumber(p[3])
	local num = tonumber(param)
	local map = lualib:MapGuid(player)
	local x, y = lualib:X(player), lualib:Y(player);
	local TABLE = 
	{
		"��","��é��","ľ����","��֩��","���","ɽ������","�ɶ�","������","�๳è","����","�������ó�ǹ��","����","����ս��","����սʿ","��ʬ1","��ʬ1","ʬ��1",
		"��ʬ2","��ʬ2","ʬ��2","��ʬ","��֫��ʬ","ĹѨ��ʬ","Ы��","ţħ����","����������ʿ","��������ս��","�������껤��","������������","ţħ����","����","����1",
		"��Ԩ����","����","����2","����3","����4","����5","��ҹŮ��","ѩ����������","ѩ����ʿ����","ѩ��ս������","ѩ����ʿ����","ѩ���콫����","����1","����1",
		"ɳʯħ2","ɳʯħ3","ɳʯħ4","ɳʯħ5","��ɮ1","��é����","��éа��","��֩��","ţħսʿ","�ú�","�����","ʳ�˻�","�ױ�Գ��","����","����","������Թ�",
		"����","������1","ţħ��","¹","����","ħ��","ħ��","ħԳ","��ħū��2","��ħū��˵��1","��ħū��˵��2","��ħū��˵��3","��ħū��˵��4","��ħ��̽",
		"ţħ��˾","ţħ��ʦ","����ʬ��","���齩ʬ","ʬ��","�����ָ���2","�����ָ���3","�����ָ���4","����ţħ����","����ţħ��˾","����ţħսʿ","�����ħЫ��",
		"������齩ʬ","�������ʬ��","����������ʿ","�������깭����","�����������","�����������","����������ʿ","��������ս��","�������õ�����","��֮˫ͷ���",
		"��֮��Ȫ����","��֮ʬ��","��֮���þ���","��֮ţħ��","��֮�������","��֮��ħ����","���","��ɫ����","ʳ������","ʳ�˶�ħ","ʳ��Ы��","ʳ�˶���","��ɫ����",
		"����ӱ�","���սʿ","�����ʿ","�����ʿ","���ս��","��Ļ���","��Ķ�ͳ","�������","��򼸱��","�����丱��","������渱��","ǯ�渱��","а��ǯ�渱��",
		"�����񸱱�","ʳ����������","ʳ�˶�ħ����","ʳ��Ы�߸���","��ɫ������","����ħ���޶�","�������","���깭����","������ʿ","�������Ӭ","��Ӭ","��ħ����",
		"��ħ����","ǧ������","��ħ����","��ħЫ��","����սʿ��1","����սʿ��2","����սʿ��3","����սʿ��4","�غ�","���","�ں�","���½ǳ�","���»���","��β�ں���",
		"��צ�����","�����غ���","���Ȼ�����","����֩��","����֩��","ʥ����ʿ","��������","ѩ������","ѩ����ʿ","ѩ��ս��","ѩ����ʿ","ѩ���콫","ѩ��ħ��",
		"�������","��ħ����","�����ػ���","������","������","������","��ͷ����","������","ħ������","��������","��Ӱ����","��������","�з","��Ϻ����","����",
		"��ͷ����1","���ħ","���ĺ���","������","����֩��","��ħ֩��","��������֩��","����֩��","��Ӱ֩��","����֩��","а�����","Ѫ����","˫ͷ���","˫ͷѪħ",
		"���¶�ħ","�����ָ���1","��������","����������","����ս��","��������","��������","��֮������","����ս��","���ô���","���õ�����","���ù�����","���ó�ǹ��",
		"ţͷħ","��Ȫ����","��������","��Ľ�������","��֮�������","�����������","������ħ֩��","��������֩��","����˫ͷѪħ","����˫ͷ���","����ţħ����",
		"����ţħսʿ","����ţħ����","����ţħ��˾","����ħ����ʿ","�����������","�������깭����","����������ʿ","��������ͽ�Ӭ","����������ʿ","����ţħ��ʦ",
		"����֩��","����","ħ������","ħ��Ѫ��","ħ������","ħ���Ƽױ�","ħ��а��","ħ���޶�","ħ����ʿ","ħ��ս��","ħ������","ħ������","�������",
		"��ͨ�һ�ħ����ʿ","������������1","��ͨ�һ�������ʿ","��ͨ�һ�ʥ����ʿ","��ͨ�һ�ţͷħ","��ͨ�һ�ħ��Ѫ��","��ͨ�һ�������ʿ","��ͨ�һ�ħ��ս��",
		"ħ��������ʿ","ħ��������ʿ","ħ�����껤��","����ħ��","������ħ","��Ѫħ��","��ɫ����","��ɫ����","����֩��","����1��","����2��","����3��","����4��",
		"�������Բ���","���Լ�","������ħ����","ԭ����ħ���޶�","����������","ת����������1","ת����������Ĺ��","ת����������2","ת����������3",
		"ת����������4","ת����������5","ת����������6","ת����������7","ת����������8","��������","���巨��","��ѣ���ܲ���Ա","�������1","�������2",
		"�������3","�������4","�������","�������6","�������7","�������8","�������9","�������10","�������11","�������12","�������13","�������14",
		"�������16","�������17","�������18","�������19","�������20","������һ��BOSS","�������5","�������15","�������21","�������22","�������23",
		"����������BOSS","����������BOSS","�������Ĳ�BOSS","���������BOSS","����������BOSS","�������߲�BOSS","�������˲�BOSS","�������Ų�BOSS","������ʮ��BOSS",
		"������ʮһ��BOSS","������ʮ����BOSS","������ʮ����BOSS","����ͳ��","����һ��ɫ����","����һ�������","����һ�������","����һ���¶�ħ","ҹϮ��ɽ�ǹ���",
		"������","����¹","������","��������","����ɳ��","�������","�������","����ǯ��","����а��ǯ��","�������齩ʬ","����ţħսʿ","����ţħ��ʦ","����ţħ��˾",
		"�������ó�ǹ��","����ţħ����1","����������ʿ","�������깭����","�����������","������ɫ����","����ţħ��","������������","����ħ������","���ĺ��޲���",
		"ħ�����ֻ���","���¶�ħ����","ħ�����ֹ���","ħ�������������","ħ�������������","ħ�����ֳ��¶�ħ","ħ�����ֻ�Ȫ����","ħ��������������","ħ������ţħ��",
		"��������","ħ����������","ţħ������","�ʹ���3","�ʹ���2","�ʹ���1","�Ǳ���","�Ǳ���2","�Ǳ���3","��ħ����ţħ��","��ħ������ħ����","��ħ�������ħ",
		"��ħ�������ĺ���","��ħ����������ħ","�ڿ�","�̶�����","������","Ԫ��BOSS","�������","������","а��ǯ��","ǯ��","������1","������2","������3","�����",
		"а����ʹ","��ʹ����","���þ���","����֮��","������Գ","����","����","��ڤʬ��","ţħ����1","ǧ����ħ","��ʬ��","��ʬ��","��ħ��","��ħ","����������",
		"������","��������","ʬ��","������������","ҹ��","����ʦ","����","�ڳ�����","�ڳ�����","�ڳ�����","�ڳ�����","�ڳ�����","�ᱦħ��","��������","����",
		"����","Ĭ�ϱ���","����С��",
	};
	if num then 
		
		for i = 1, num do 
			local ran = math.random(1, #TABLE);
			if not lualib:Map_GenMonster(map, x, y, 10, 0, TABLE[ran], 1, false) then
				lualib:SysMsg_SendWarnMsg(player, "ˢ��ʧ�ܣ�")
				return false
			end
		end
	end
	--[[
	local kind = math.floor(num/10);
	for i = 1, kind do 
		local ran = math.random(1, #TABLE);
		if not lualib:Map_GenMonster(map, x, y, 20, 0, TABLE[ran], 10, false) then
			lualib:SysMsg_SendWarnMsg(player, "ˢ��ʧ�ܣ�")
			return false
		end
	end
	local ran = math.random(1, #TABLE);
	local rest = num%10;
	if not lualib:Map_GenMonster(map, x, y, 20, 0, TABLE[ran], rest, false) then
		lualib:SysMsg_SendWarnMsg(player, "ˢ��ʧ�ܣ�")
		return false
	end
	--]]
	lualib:SysMsg_SendWarnMsg(player, "ˢ�ֳɹ���")
	return true
end


function AddTitle(player, id)
	
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	id = tonumber(id)
	if not lualib:HasTitle(player, id) then 
		lualib:AddTitle(player, id) 
	end
	lualib:ApplyTitle(player, id) 
	return true
end

function SetVip(player, level)
	
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	lualib:SetVipLevel(player,tonumber(level))
	return true
end

function DeletTitle(player, id)
	if lualib:Player_IsGM(player) ~= true then
		return false
	end
	id = tonumber(id)
	if lualib:HasTitle(player, id) then
		lualib:RemoveTitle(player, id) 
		return true
	else
		lualib:SysMsg_SendPromptMsg(player, "���û�����"..id.."�ƺ�")
		return false
	end 
end



function setdbnum(player, param)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	lualib:SysMsg_SendWarnMsg(player, "setdbnum")
	local varName = p[1]
    local num = tonumber(p[2])
	if not num then 
		local old = lualib:GetDBNum(varName)
		lualib:SysMsg_SendWarnMsg(player, varName.."ֵΪ"..old)
		return true
	end  
	lualib:SetDBNum(player, varName, num)
	lualib:SysMsg_SendWarnMsg(player, "�޸ĳɹ�")
	return true
end

--[[
function becomegod(player)
	lualib:God(player)
	return true
end
--]]

function test_mob(player)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	local x = lualib:X(player)
	local y = lualib:Y(player)
	local map = lualib:MapGuid(player)
	lualib:Map_GenMonster(map, x+2, y, 0, 0, "�Ǳ���", 1, false) 
	lualib:Map_GenMonster(map, x+4, y, 0, 2, "�Ǳ���", 1, false) 
	lualib:Map_GenMonster(map, x+6, y, 0, 4, "�Ǳ���", 1, false) 
	lualib:Map_GenMonster(map, x+8, y, 0, 6, "�Ǳ���", 1, false) 
	lualib:SysMsg_SendWarnMsg(player, "ˢ�ֳɹ���")
	return true
end

function zhanglaoban(player)
	if lualib:Player_IsGM(player) ~= true then
		return false;
	end
	local guid = lualib:Name2Guid("ɭ�ϰ�����")
	lualib:Player_ChangeName(guid, "���ϰ��ɸ�����")
	lualib:Player_Kick(guid)
	return true
end

function abcdefg(player)
	--local g = lualib:Player_GetServantList(player)
	--lualib:SysMsg_SendBroadcastMsg("״̬:"..lualib:GetServantState(g[1]), "")
	return ""
end