local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, family_name)
    local my_family_name = lualib:Player_GetStrProp(player,  lua_role_guild)
    if lualib:Player_GetGuidProp(player,  lua_role_guild_id) == "" then
        return "你没有行会！"
    end

    if lualib:IsInFamily(player, family_name) == true then
        return "不能向自己行会宣战。"
    end

    if lualib:HasFamily(family_name) == false then
        return "输入的行会名称不存在。"
    end

    if lualib:IsInFamily(player, family_name) == true then
        return "不能向同盟行会宣战。"
    end

    if lualib:Player_IsGuildLeader(player) == false then
        return "你不是会长。"
    end

    if lualib:Player_IsGoldEnough(player, 500000, false)  == true then
		if lualib:Player_SubGold(player, 500000, false, "扣金币：行会战申请表单", player) == false then
			return "扣除金币失败"
		end
		
		if lualib:StartFamilyWar(my_family_name, family_name) == false then
			return "行会战创建失败，系统忙。"
		end
        local text = string.format("%s行会与%s行会的行会战开始了", my_family_name, family_name)
        local text1 = string.format("%s行会与%s行会的行会战开始了", my_family_name, family_name)
		lualib:SysMsg_SendTopMsg(1, text)
		lualib:SysMsg_SendBroadcastColor(text1, "", 1, 12)
	else
		 local require_item = "讨伐令"
		if lualib:Player_GetItemCount(player, require_item) < 1 then
			return "开启行会战需要"..require_item.."！或者50万金币！"
		else
			if lualib:Player_DestroyItem(player, require_item, 1, "扣道具：行会战消耗", "行会管理员") == true then
				if lualib:StartFamilyWar(my_family_name, family_name) == false then
					return "行会战创建失败，系统忙。"
				end
				local text = string.format("%s行会与%s行会的行会战开始了", my_family_name, family_name)
				local text1 = string.format("%s行会与%s行会的行会战开始了", my_family_name, family_name)
				lualib:SysMsg_SendTopMsg(1, text)
				lualib:SysMsg_SendBroadcastColor(text1, "", 1, 12)			
			else
				return "上缴物品"..require_item.."失败！"
			end
		end
		
    end

   

    

    

    

    return ""
end
