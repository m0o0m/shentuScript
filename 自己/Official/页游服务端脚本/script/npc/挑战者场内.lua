function main(npc, player)
	local msg = "��Ҫ�뿪��������\n\n"
	msg = msg .. "<@likaifuben *01*�뿪����>\n"
	msg = msg .. "<@guanbi *01*�ر�>"
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