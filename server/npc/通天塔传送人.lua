function main(player,npc)
	local msg = "\n    欢迎前往通天塔参观！\n\n\n\n\n"
	msg = msg.."#OFFSET<X:150,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:0>#<@jump# *01*通天塔>\n\n"
	return msg
end

function jump(npc,player)
	local ret = lualib:Player_MapMoveXY(player,"通天塔大厅1层",17,49,0)
	
	if ret ~= true then
		return "跳地图失败"
	end
	return ""
end