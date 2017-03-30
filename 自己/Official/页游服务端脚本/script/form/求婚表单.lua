local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, girlfriend_name)
    -- 判断自己性别，求婚的总该是男的
    local gender = lualib:Player_GetIntProp(player,  lua_role_gender)
    if gender ~=  lua_gender_male then
        return "求婚这事儿，女孩儿还是矜持点好。"
    end
        
    -- 判断自己婚否
    if lualib:Player_GetCustomVarStr(player, "配偶GUID") ~= "" then
        return "重婚可是犯法的。"
    end
        
    -- 判断对方是否在线
    local girlfriend = lualib:Player_GetGuid(girlfriend_name)
    if girlfriend == "" or lualib:Map_GetDistance(lualib:Player_GetPosX(player), lualib:Player_GetPosY(player), lualib:Player_GetPosX(girlfriend), lualib:Player_GetPosY(girlfriend)) > 10 then
        return "咦，我没看到"..girlfriend_name.."在这里啊。"
    end
    
    -- 判断对方性别，咱不赞成基情
    if lualib:Player_GetIntProp(girlfriend,  lua_role_gender) ==  lua_gender_male then
        return "兄弟的品味很独特啊。"
    end
    
    -- 判断对方婚否
    if lualib:Player_GetCustomVarStr(girlfriend, "配偶GUID") ~= "" then
        return "晚啦，想追女孩得趁早啊！"
    end

	-- 判断是否有车有房
    if not lualib:Player_IsGoldEnough(player, 10000, false) then
        return "你的金币不足。"
    end

    if lualib:Player_GetItemCount(player, "结婚戒指") < 1 then
       return "结婚戒指都没准备好就想求婚？"
    end
    
	--条件符合，询问结婚对象是否同意
    lualib:Player_SetCustomVarStr(player, "求婚对象", girlfriend_name)
    
    local player_name = lualib:Player_GetStrProp(player,  lua_role_user_name)
    lualib:ShowFormWithContent(girlfriend, "结婚表单", player_name)
    
    return ""
end
