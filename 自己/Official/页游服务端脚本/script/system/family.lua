local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function family_on_login(player)
    if lualib:Player_GetTimeProp(player,  lua_role_last_login) - lualib:Player_GetTimeProp(player,  lua_role_last_logout) < 60 then
        return
    end
    
    local title = lualib:GetFamilyTitle(player)
    if title == "" then
        return
    end
    
    local family_guid = lualib:Player_GetGuidProp(player,  lua_role_guild_id)
    local msg = ""
	
    if lualib:HasBuff(player, "����֮��") then
		
		if not lualib:Player_IsGuildLeader(player) then
			if not lualib:DelBuff(player, "����֮��") then
				lualib:Error("ɾ������BUFF����֮������")
			end
		end
		local castles = lualib:GetFamilyCastles(family_guid)
        if castles == "" then
            if not lualib:DelBuff(player, "����֮��") then
				lualib:Error("ɾ������BUFF����֮������")
			end
        end
	end
	
    if lualib:Player_IsGuildLeader(player) then
        local castles = lualib:GetFamilyCastles(family_guid)
        if castles ~= "" then
            msg = "#COLORCOLOR_BROWN#["..castles.."] #COLORCOLOR_YELLOW#����#COLORCOLOR_BROWN#��"..lualib:Player_GetStrProp(player,  lua_role_user_name).."�� #COLORCOLOR_YELLOW#�����ˡ�"
			lualib:SysMsg_SendTopColor(1, msg, 11, 2);
			lualib:SysMsg_SendBroadcastColor(msg, "", 1, 11)
			
        else
            msg = title.."��"..lualib:Player_GetStrProp(player,  lua_role_user_name).."�������ˡ�"
            lualib:SysMsg_SendGuildMsg(family_guid, msg)
        end
    else
        msg = title.."��"..lualib:Player_GetStrProp(player,  lua_role_user_name).."�������ˡ�"
        lualib:SysMsg_SendGuildMsg(family_guid, msg)
    end
    
end
