local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/marry")

function main(player, boyfriend_name, result)
    -- �ж��Լ��Ա�Ӧ��ĸ���Ů��
    local gender = lualib:Player_GetIntProp(player,  lua_role_gender)
    if gender ~=  lua_gender_female then
        return "���˺����ˡ���"
    end
    
    -- �ж��Լ����
    if lualib:Player_GetCustomVarStr(player, "��żGUID") ~= "" then
        return "�ػ���Ƿ����ġ�"
    end
    
    -- �ж϶Է��Ƿ�����
    local boyfriend = lualib:Player_GetGuid(boyfriend_name)
    if boyfriend == "" then
        return "�ף���û����"..boyfriend_name.."�����ﰡ��"
    end
    
    -- �ж϶Է��Ƿ����Լ������
    local player_name = lualib:Player_GetStrProp(player,  lua_role_user_name)
    local propose_name = lualib:Player_GetCustomVarStr(boyfriend, "������")
    if propose_name ~= player_name then
        return "�Է������Ѿ���������������ˡ�"
    end
    
    -- �Ƿ�ͬ�����
    if result ~= 1 then
        lualib:SysMsg_SendTriggerMsg(boyfriend, player_name.."�ܾ���������")
        return "��ܾ���"..boyfriend_name.."�����"
    end
    
    -- �ж϶Է��Ա���Ҳ���޳�����
    if lualib:Player_GetIntProp(boyfriend,  lua_role_gender) ==  lua_gender_female then
        return "��������������ô����"
    end
    
    -- �ж϶Է����
    if lualib:Player_GetCustomVarStr(boyfriend, "��żGUID") ~= "" then
        return "�۾��������������������"
    end

	-- �ж��������Ƿ��г��з�
    if not lualib:Player_IsGoldEnough(boyfriend, 100000, false) then
        return "�������ѽ������������ˡ�"
    end

    if lualib:Player_GetItemCount(boyfriend, "����ָ") < 1 then
        return "��������ò�ưѽ���ָ�㶪�ˡ�"
    end

    -- �������ϣ����
    lualib:Player_SetCustomVarStr(player, "��żGUID", boyfriend)
    lualib:Player_SetCustomVarStr(boyfriend, "��żGUID", player)
    lualib:Player_SetCustomVarStr(player, "��ż����", boyfriend_name)
    lualib:Player_SetCustomVarStr(boyfriend, "��ż����", player_name)
    marry_load(player)
    marry_load(boyfriend)
    
    -- ռ�������ѵĳ���
    if lualib:Player_SubGold(boyfriend, 100000, false, "�۷ǰ��ң�����", player) == false then
		return "�۳����ʧ��"
	end
	
    lualib:Player_DestroyItem(boyfriend, "����ָ", 1, "ɾ��Ʒ������", player)
    lualib:Player_SetCustomVarStr(boyfriend, "������", "")
    
    lualib:SysMsg_SendPromptMsg(player, "ף���ǰ�ͷ���ϣ�")
    lualib:SysMsg_SendPromptMsg(boyfriend, "ף���ǰ�ͷ���ϣ�")
    lualib:Player_NotifyCustomParam(player, "��ż����")
    lualib:Player_NotifyCustomParam(boyfriend, "��ż����")
    return ""
end
