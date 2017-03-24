function main(player,npc)
	local msg = "\n    »¶Ó­Ç°Íù°×»¢¶´Ñ¨²Î¹Û£¡\n\n\n\n\n"
	msg = msg.."#OFFSET<X:150,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:0>#<@jump# *01*°×»¢¶´Ñ¨Ò»²ã>\n\n"
	return msg
end

function jump(npc,player)
	local ret = lualib:Player_MapMoveXY(player,"°×»¢¶´Ñ¨1",36,38,0)
	
	if ret ~= true then
		return "ÌøµØÍ¼Ê§°Ü"
	end
	return ""
end