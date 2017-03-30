function main(npc,player)
	local msg = ""
	msg = msg .."\n     粮食越来越少了，我们又不可能像魔物一样什么都吃！！啊，龙城的人真可恶！\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@likai *01*离开！>\n"
	return msg
end

function likai(npc,player)
	return ""
end
