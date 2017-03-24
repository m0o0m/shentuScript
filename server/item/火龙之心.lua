function on_apply_on_item(player, item, target_item)
    lualib:SysWarnMsg(player, "Item:" .. lualib:Name(item) .. ", target_item:" .. lualib:Name(target_item))
end