function main(npc, player)
	local msg = "你既然来这里找我，那我就告诉你，这附近有一个无人知晓的山洞…… 山洞里的世界跟外面的世界是不同的，你想进去试一下吗？?\n\n"
	msg = msg.."#IMAGE1902700015#<@MapMoveA#未知暗殿 *01*进入未知暗殿>\n"
	msg = msg.."#IMAGE1902700034#<@Leave *01*「离开」>\n"
	return msg
end

function MapMoveA(npc, player, keyname)
	if not lualib:Player_MapMove(player, keyname) then
		return "跳地图失败.\n\n<@Leave *01*离开>"
    end
	
	return "";
end

function Leave(npc, player)
	return ""
end

