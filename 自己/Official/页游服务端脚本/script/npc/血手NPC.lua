function on_create(npc)
	lualib:AddTimerEx(npc, 1, 40000, 1, "sc_npc", "")
end
	
function main(npc, player)
    local msg = "а���ߵ���������а�����Ϊʲô���Ƕ���������ǣ���\n \n \n \n \n \n \n \n \n \n \n"
	msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@likai *01*���뿪��>\n"
    return msg
end

function sc_npc(npc)
	lualib:Npc_Remove(npc)
end