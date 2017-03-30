local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(npc, player)
    local msg = "    欢迎参加古阵群英大会？但是得提醒您，进入地图后要小心，因为在古镇里PK是不会增加PK值的\n \n"
    msg = msg.."<@Jump *01*传送进战场>\n"
    msg = msg.."<@Submit *01*我是会长，提交群英帖>\n"
    return msg
end

function Submit(npc, player)
    local msg = "您是否要带领行会成员参加古阵群英大会？\n \n"
    msg = msg.."<@SubmitEx *01*确认提交>\n \n \n"
    msg = msg.."<@Leave *01*「离开」>\n"
    return msg
end

function Leave(npc, player)
    return ""
end

function Jump(npc, player)
    local guild = lualib:Player_GetGuidProp(player,  lua_role_guild_id)
    if guild == "" then return "您没有行会！" end

    if lualib:Npc_GetCustomVar(npc, guild) ~= "1" then
        return "您的行会没有申请参加本次大会！"
    end

    local dgn_guid = lualib:Npc_GetCustomVar(npc, "custom_var_dgn_guid")
    if dgn_guid == "" then
        return "地图还未开放！"
    end

    if lualib:Player_SetDgnTicket(player, dgn_guid) == false then
        return "您不被许可进入地图！"
    end

    if lualib:Player_EnterDgn(player, "天荒古阵", 0, 0, 0) == false then
        return "进入地图失败！"
    end

    return ""
end


function SubmitEx(npc, player)
    local guild = lualib:Player_GetGuidProp(player,  lua_role_guild_id)
    if guild == "" then return "您没有行会！" end

    if not lualib:Player_IsGuildLeader(player) then 
        return "您不是行会会长！" 
    end

    if lualib:Npc_GetCustomVar(npc, guild) == "1" then
        return "您的行会已经申请过了！"
    end

    if lualib:Player_GetItemCount(player, "群英帖") < 1 then 
        return "您没有群英帖！" 
    end

    if not lualib:Player_DestroyItem(player, "群英帖", 1, "删物品：古阵传送使者", player) then 
        return "您没有携带群英帖！" 
    end
    
    if not lualib:Npc_SetCustomVar(npc, guild, "1") then
        return "Npc不存在！"
    end

    return "提交成功！"
end
