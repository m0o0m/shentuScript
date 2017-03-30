local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, family_name)
    local my_family_name = lualib:Player_GetStrProp(player,  lua_role_guild)
    if lualib:Player_GetGuidProp(player,  lua_role_guild_id) == "" then
        return "��û���лᣡ"
    end

    if lualib:IsInFamily(player, family_name) == true then
        return "�������Լ��л���ս��"
    end

    if lualib:HasFamily(family_name) == false then
        return "������л����Ʋ����ڡ�"
    end

    if lualib:IsInFamily(player, family_name) == true then
        return "������ͬ���л���ս��"
    end

    if lualib:Player_IsGuildLeader(player) == false then
        return "�㲻�ǻ᳤��"
    end

    if lualib:Player_IsGoldEnough(player, 500000, false)  == true then
		if lualib:Player_SubGold(player, 500000, false, "�۽�ң��л�ս�����", player) == false then
			return "�۳����ʧ��"
		end
		
		if lualib:StartFamilyWar(my_family_name, family_name) == false then
			return "�л�ս����ʧ�ܣ�ϵͳæ��"
		end
        local text = string.format("%s�л���%s�л���л�ս��ʼ��", my_family_name, family_name)
        local text1 = string.format("%s�л���%s�л���л�ս��ʼ��", my_family_name, family_name)
		lualib:SysMsg_SendTopMsg(1, text)
		lualib:SysMsg_SendBroadcastColor(text1, "", 1, 12)
	else
		 local require_item = "�ַ���"
		if lualib:Player_GetItemCount(player, require_item) < 1 then
			return "�����л�ս��Ҫ"..require_item.."������50���ң�"
		else
			if lualib:Player_DestroyItem(player, require_item, 1, "�۵��ߣ��л�ս����", "�л����Ա") == true then
				if lualib:StartFamilyWar(my_family_name, family_name) == false then
					return "�л�ս����ʧ�ܣ�ϵͳæ��"
				end
				local text = string.format("%s�л���%s�л���л�ս��ʼ��", my_family_name, family_name)
				local text1 = string.format("%s�л���%s�л���л�ս��ʼ��", my_family_name, family_name)
				lualib:SysMsg_SendTopMsg(1, text)
				lualib:SysMsg_SendBroadcastColor(text1, "", 1, 12)			
			else
				return "�Ͻ���Ʒ"..require_item.."ʧ�ܣ�"
			end
		end
		
    end

   

    

    

    

    return ""
end
