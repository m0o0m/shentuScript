function main(player,npc)
	local msg = "\n    欢迎前往天魔石窟参观！\n\n\n\n\n"
	msg = msg.."#OFFSET<X:150,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:0>#<@jump# *01*天魔石窟一层>\n\n"
	return msg
end

function jump(npc,player)
	local ret = lualib:Player_MapMoveXY(player,"天魔石窟1",33,209,0)
	
	if ret ~= true then
		return "跳地图失败"
	end
	return ""
end