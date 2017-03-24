function main(player,npc)
	local msg = "\n    卧龙山庄是一个隐秘之地，庄中有着大批高手，十分危险，此去要谨慎！\n\n\n\n\n"
	msg = msg.."#OFFSET<X:150,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:0>#<@jump# *01*卧龙山庄>\n\n"
	return msg
end

function jump(npc,player)
	local ret = lualib:Player_MapMoveXY(player,"卧龙山庄",17,224,2)
	
	if ret ~= true then
		return "跳地图失败"
	end
	return ""
end