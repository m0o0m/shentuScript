function main(player, item)
    local map = lualib:MapGuid(player)
    if "��֮��" == lualib:KeyName(map) then return true end
    return false
end