function main(npc, player)
	local msg = "���Ȼ���������ң����Ҿ͸����㣬�⸽����һ������֪����ɽ������ ɽ��������������������ǲ�ͬ�ģ������ȥ��һ����?\n\n"
	msg = msg.."#IMAGE1902700015#<@MapMoveA#δ֪���� *01*����δ֪����>\n"
	msg = msg.."#IMAGE1902700034#<@Leave *01*���뿪��>\n"
	return msg
end

function MapMoveA(npc, player, keyname)
	if not lualib:Player_MapMove(player, keyname) then
		return "����ͼʧ��.\n\n<@Leave *01*�뿪>"
    end
	
	return "";
end

function Leave(npc, player)
	return ""
end

