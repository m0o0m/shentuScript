function on_create(npc)
	lualib:AddTimerEx(npc, 1, 40000, 1, "sc_npc", "")
end
	
function main(npc, player)
    local msg = "邪恶者的力量会是邪恶的吗？为什么他们都不理解我们！？\n \n \n \n \n \n \n \n \n \n \n"
	msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@likai *01*「离开」>\n"
    return msg
end

function sc_npc(npc)
	lualib:Npc_Remove(npc)
end