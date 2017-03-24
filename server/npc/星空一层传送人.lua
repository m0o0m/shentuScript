function main(player,npc)
	local msg = "\n    »¶Ó­Ç°ÍùĞÇ¿ÕÒ»²ã²Î¹Û£¡\n\n\n\n\n"
	msg = msg.."#OFFSET<X:150,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:0>#<@jump# *01*ĞÇ¿ÕÒ»²ã>\n\n"
	return msg
end

function jump(npc,player)
	local ret = lualib:Player_MapMoveXY(player,"ĞÇ¿Õ1²ã",46,142,0)
	
	if ret ~= true then
		return "ÌøµØÍ¼Ê§°Ü"
	end
	return ""
end