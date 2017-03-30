local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")

--[[
拜师：
师父条件：
1.	大于等于35级。
2.	当前徒弟数量未达到上限。（传奇为5个）


徒弟条件：
1.	大于等于1级，小于等于35级。
2.	还没有师父。


角色A（未来的师父）和角色B（未来的徒弟）在NPC（师徒管理员）处，徒弟点击NPC选择拜师---弹出输入框---输入要师父的名字---确定。


收入拜师请求的玩家，弹出确认框，您是否愿意收XXX为徒弟，点击同意，则拜师成功（师徒必须在NPC附近，一屏范围），点击拒绝则回复请求方，XXX拒绝了你的拜师请求。
--]]

function main(player, master_name)
    local LIMIT_LEVEL = 45
    if lualib:Player_GetCustomVarStr(player, "master_guid") ~= "" then
        return "你已经有师傅了。"
    end
    
    if lualib:Player_GetIntProp(player,  lua_role_level) >= LIMIT_LEVEL then
        return "你已经过了拜师的等级。"
    end
    
    local master_guid = lualib:Player_GetGuid(master_name)
    if master_guid == "" then
        return "咦，我没看到"..master_name.."在这里啊。"
    end

    if lualib:Player_GetIntProp(master_guid,  lua_role_level) < LIMIT_LEVEL then
        return "对方等级不到"..LIMIT_LEVEL
    end
    
    local app_t = {}
    local apprentices = lualib:Player_GetCustomVarStr(player, "apprentices")
    if apprentices == "" then
        apprentices = serialize(app_t)
        lualib:Player_SetCustomVarStr(player, "apprentices", apprentices)
    else
        app_t = deserialize(apprentices)
    end
    
    local count = 0
    for k, v in pairs(app_t) do
        count = count + 1
    end
    
    if count >= 5 then
        return "师傅徒弟已满。"
    end

    lualib:Player_SetCustomVarStr(player, "拜师对象", master_name)
    
    local player_name = lualib:Player_GetStrProp(player,  lua_role_user_name)
    lualib:ShowFormWithContent(master_name, "师徒表单", player_name)
    
    return ""
end
