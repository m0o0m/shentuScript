local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/marry")

function main(player, boyfriend_name, result)
    -- 判断自己性别，应婚的该是女的
    local gender = lualib:Player_GetIntProp(player,  lua_role_gender)
    if gender ~=  lua_gender_female then
        return "男人和男人……"
    end
    
    -- 判断自己婚否
    if lualib:Player_GetCustomVarStr(player, "配偶GUID") ~= "" then
        return "重婚可是犯法的。"
    end
    
    -- 判断对方是否在线
    local boyfriend = lualib:Player_GetGuid(boyfriend_name)
    if boyfriend == "" then
        return "咦，我没看到"..boyfriend_name.."在这里啊。"
    end
    
    -- 判断对方是否向自己求过婚
    local player_name = lualib:Player_GetStrProp(player,  lua_role_user_name)
    local propose_name = lualib:Player_GetCustomVarStr(boyfriend, "求婚对象")
    if propose_name ~= player_name then
        return "对方现在已经不打算向你求婚了。"
    end
    
    -- 是否同意求婚
    if result ~= 1 then
        lualib:SysMsg_SendTriggerMsg(boyfriend, player_name.."拒绝了你的求婚")
        return "你拒绝了"..boyfriend_name.."的求婚"
    end
    
    -- 判断对方性别，咱也不赞成拉拉
    if lualib:Player_GetIntProp(boyfriend,  lua_role_gender) ==  lua_gender_female then
        return "姐姐你很讨厌男人么……"
    end
    
    -- 判断对方婚否
    if lualib:Player_GetCustomVarStr(boyfriend, "配偶GUID") ~= "" then
        return "眼睛看清楚，名草已有主！"
    end

	-- 判断男朋友是否有车有房
    if not lualib:Player_IsGoldEnough(boyfriend, 100000, false) then
        return "你男朋友交不起手续费了。"
    end

    if lualib:Player_GetItemCount(boyfriend, "结婚戒指") < 1 then
        return "你男朋友貌似把结婚戒指搞丢了。"
    end

    -- 条件符合，结婚
    lualib:Player_SetCustomVarStr(player, "配偶GUID", boyfriend)
    lualib:Player_SetCustomVarStr(boyfriend, "配偶GUID", player)
    lualib:Player_SetCustomVarStr(player, "配偶姓名", boyfriend_name)
    lualib:Player_SetCustomVarStr(boyfriend, "配偶姓名", player_name)
    marry_load(player)
    marry_load(boyfriend)
    
    -- 占有男朋友的车房
    if lualib:Player_SubGold(boyfriend, 100000, false, "扣非绑金币：结婚表单", player) == false then
		return "扣除金币失败"
	end
	
    lualib:Player_DestroyItem(boyfriend, "结婚戒指", 1, "删物品：结婚表单", player)
    lualib:Player_SetCustomVarStr(boyfriend, "求婚对象", "")
    
    lualib:SysMsg_SendPromptMsg(player, "祝你们白头偕老！")
    lualib:SysMsg_SendPromptMsg(boyfriend, "祝你们白头偕老！")
    lualib:Player_NotifyCustomParam(player, "配偶姓名")
    lualib:Player_NotifyCustomParam(boyfriend, "配偶姓名")
    return ""
end
