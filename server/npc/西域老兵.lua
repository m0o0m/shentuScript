function main(player,npc)
	local msg = "\n    »¶Ó­»Øµ½Âù»Ä³Ç£¡\n\n\n\n\n"
	msg = msg.."#OFFSET<X:150,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:0>#<@jump# *01*Âù»Ä>\n\n"
	return msg
end

function jump(npc,player)
	local ret = lualib:Player_MapMoveXY(player,"Âù»Ä³Ç",126,158,0)
	
	if ret ~= true then
		return "ÌøµØÍ¼Ê§°Ü"
	end
	return ""
end