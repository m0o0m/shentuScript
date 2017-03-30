function main(player, item)
    local map = lualib:MapGuid(player)
    if "Æí¸£Ö®µØ" == lualib:KeyName(map) then return true end
    return false
end