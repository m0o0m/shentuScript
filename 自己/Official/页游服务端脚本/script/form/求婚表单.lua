local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, girlfriend_name)
    -- �ж��Լ��Ա������ܸ����е�
    local gender = lualib:Player_GetIntProp(player,  lua_role_gender)
    if gender ~=  lua_gender_male then
        return "������¶���Ů����������ֵ�á�"
    end
        
    -- �ж��Լ����
    if lualib:Player_GetCustomVarStr(player, "��żGUID") ~= "" then
        return "�ػ���Ƿ����ġ�"
    end
        
    -- �ж϶Է��Ƿ�����
    local girlfriend = lualib:Player_GetGuid(girlfriend_name)
    if girlfriend == "" or lualib:Map_GetDistance(lualib:Player_GetPosX(player), lualib:Player_GetPosY(player), lualib:Player_GetPosX(girlfriend), lualib:Player_GetPosY(girlfriend)) > 10 then
        return "�ף���û����"..girlfriend_name.."�����ﰡ��"
    end
    
    -- �ж϶Է��Ա��۲��޳ɻ���
    if lualib:Player_GetIntProp(girlfriend,  lua_role_gender) ==  lua_gender_male then
        return "�ֵܵ�Ʒζ�ܶ��ذ���"
    end
    
    -- �ж϶Է����
    if lualib:Player_GetCustomVarStr(girlfriend, "��żGUID") ~= "" then
        return "��������׷Ů���ó��簡��"
    end

	-- �ж��Ƿ��г��з�
    if not lualib:Player_IsGoldEnough(player, 10000, false) then
        return "��Ľ�Ҳ��㡣"
    end

    if lualib:Player_GetItemCount(player, "����ָ") < 1 then
       return "����ָ��û׼���þ�����飿"
    end
    
	--�������ϣ�ѯ�ʽ������Ƿ�ͬ��
    lualib:Player_SetCustomVarStr(player, "������", girlfriend_name)
    
    local player_name = lualib:Player_GetStrProp(player,  lua_role_user_name)
    lualib:ShowFormWithContent(girlfriend, "����", player_name)
    
    return ""
end
