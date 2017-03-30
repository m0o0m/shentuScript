function active_player(player)
    active_server_player(player)
    active_group_player(player)
end

function active_server_player(player)
    local accountid = lualib:Player_GetAccountID(player)
    local serverid = lualib:GetZoneId()
    local url = "http://www.hzyotoy.com/api/activegameserver.do?accountid="..accountid.."&serverid="..serverid

    lualib:GetURL(url, "active_server_player_ack", player, 30)
end

function active_group_player(player)
    local accountid = lualib:Player_GetAccountID(player)
    local gid = lualib:GetGroupId()
    url = "http://www.hzyotoy.com/api/activegamegroup.do?accountid="..accountid.."&gid="..gid

    lualib:GetURL(url, "active_group_player_ack", player, 30)
end

function active_server_player_ack(player, errcode, result)
    if errcode ~= 0 then
        active_server_player(player)
    end
end

function active_group_player_ack(player, errcode, result)
    if errcode ~= 0 then
        active_group_player(player)
    end
end