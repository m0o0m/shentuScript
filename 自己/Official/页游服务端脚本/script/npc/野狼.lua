function main(npc,player)
	local msg = ""
	msg = msg .."\n     �ҾͿ����羰��\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@check *01*ʹ��������ᣡ>\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@likai *01*�뿪��>\n"
	return msg
end

function likai(npc,player)
	return ""
end

function check(npc,player)
	local a = lualib:Player_GetItemCount(player, "�������")
	if a == 0 then return "��Ҫ��Ʒ��������ᣡ"
	else
		if lualib:DelItem(player, "�������", 1, 2, "����", player) == true then
		lualib:ProgressBarStart(player, 2000, "����", "catch_complete", "catch_abort", npc) end
		lualib:SysWarnMsg(player, "ʹ��������ᡣ")
	end	

	return true

end

function catch_complete(player, params)
	
	local map = lualib:MapGuid(params)
	local x = lualib:X(params)
	local y = lualib:Y(params)

	if lualib:Map_GenSingleMonster(map, x, y, 3, 1, lualib:KeyName(params), false) then
		lualib:SysWarnMsg(player, "���ֶ�ħͷĿ̽�ӣ�") 
	end
	return true
end

function catch_abort(player)

	return "ʹ��������ᱻ��ϣ�"
end