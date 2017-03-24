function SetLevel(player)
    local guid = lualib:Player_GetGuid(player);
    
    if guid == "" then
        return "û��������"
    end

    lualib:SetLevel(guid, 100)
    return ""
end

function Kickout(player)
    local guid = lualib:Player_GetGuid(player);
    
    if guid == "" then
        return "û��������"
    end

    lualib:Player_Kick(guid)
    return player.."�Ѿ���������"
end

function ReloadConfig(table)
    if lualib:ReloadConfig(table) == true then
        return "����"..table.."�ɹ�"
    end
    
    return "����"..table.."ʧ��"
end

function ReloadGMList()
    lualib:ReloadGMList()
    return "ˢ��GM�б�ɹ�"
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
        return objType.."�ű�������"
    end
    
    if lualib:ReloadScript(objType_table[objType]) == true then
        return "�����"..objType.."�ű�������"
    end
    
    return objType.."�ű�����ʧ��"
end