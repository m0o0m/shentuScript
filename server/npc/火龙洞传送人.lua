function main(player,npc)
	local msg = "\n    ��ӭǰ���������ιۣ�\n\n\n\n\n"
	msg = msg.."#OFFSET<X:150,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:0>#<@jump# *01*������1��>\n\n"
	return msg
end

function jump(npc,player)
	local ret = lualib:Player_MapMoveXY(player,"������1��",30,84,2)
	
	if ret ~= true then
		return "����ͼʧ��"
	end
	return ""
end