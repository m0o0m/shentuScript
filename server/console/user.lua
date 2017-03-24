function SetLevel(player)
    local guid = lualib:Player_GetGuid(player);
    
    if guid == "" then
        return "没有这个玩家"
    end

    lualib:SetLevel(guid, 100)
    return ""
end

function Kickout(player)
    local guid = lualib:Player_GetGuid(player);
    
    if guid == "" then
        return "没有这个玩家"
    end

    lualib:Player_Kick(guid)
    return player.."已经被踢下线"
end

function ReloadConfig(table)
    if lualib:ReloadConfig(table) == true then
        return "重载"..table.."成功"
    end
    
    return "重载"..table.."失败"
end

function ReloadGMList()
    lualib:ReloadGMList()
    return "刷新GM列表成功"
end

objType_table = { ["npc"] = 3,
            ["monster"] = 2,
            ["map"] = 5,
            ["form"] = 15,
            ["system"] = 10,
            ["item"] = 4,
}
 
function ReloadScript(objType)
    if objType_table[objType] == nil then
        return objType.."脚本不存在"
    end
    
    if lualib:ReloadScript(objType_table[objType]) == true then
        return "已完成"..objType.."脚本的重载"
    end
    
    return objType.."脚本重载失败"
end