function main(npc, player)
	local msg = "想要离开副本了吗？\n\n"
	msg = msg .. "<@likaifuben *01*离开副本>\n"
	msg = msg .. "<@guanbi *01*关闭>"
    return msg
end

function guanbi()
	return ""
end

function likaifuben(npc, player)
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")

	lualib:Player_GoHome(player)

	mapguid = lualib:MapGuid(player)
	player_x = lualib:X(player)
	player_y = lualib:Y(player)
	
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001671#"..player_x.."#"..player_y.."#0#0")
    return ""
end