function main(player,npc)
	local msg = "\n    »¶Ó­Ç°Íù»ğÁú¶´²Î¹Û£¡\n\n\n\n\n"
	msg = msg.."#OFFSET<X:150,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:0>#<@jump# *01*»ğÁú¶´1²ã>\n\n"
	return msg
end

function jump(npc,player)
	local ret = lualib:Player_MapMoveXY(player,"»ğÁú¶´1²ã",30,84,2)
	
	if ret ~= true then
		return "ÌøµØÍ¼Ê§°Ü"
	end
	return ""
end