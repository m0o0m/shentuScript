 

function main(npc,player)
	local msg = ""
	msg = msg .."     ս����սʿǿ��ĸ�Դ�����ǣ�ֻ�о��������μ��͵�Ѫս�����ܽ�ս�����������������\n \n"	
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@func_0 *01*����ս��������>\n"	
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@likai *01*�뿪��>\n"
	return msg
end

--[[
function func_0(npc,player)

	if lualib:Player_HasDgnTicket(player, "ս������") == true then 
		local dgn = lualib:Player_GetDgnByTicket(player, "ս������")
		if dgn == "" then return "���������ڣ�" else lualib:Player_EnterDgn(player, "ս������", 65, 65, 2) end	
	
	else
		if lualib:HasQuest(player, 5096) == true or lualib:HasQuest(player, 5098) == true then
			local dgn = lualib:Map_CreateDgn("ս������", false, 1200)
			if dgn == "" then return "��������ʧ�ܣ�" end
			lualib:Player_SetDgnTicket(player, dgn);
			if not lualib:Player_EnterDgn(player, "ս������", 65, 65, 2) then return "���븱��ʧ�ܣ�\n \n" end	
		
		elseif lualib:HasQuest(player, 5099) == true then 		
			local dgn = lualib:Map_CreateDgn("�ػ�����", false, 1200)
			lualib:Player_SetDgnTicket(player, dgn);		
			if not lualib:Player_EnterDgn(player, "�ػ�����", 65, 65, 2) then return "���븱��ʧ�ܣ�\n \n" end 
			if not lualib:HasBuff(player, "���BUFF14") then lualib:AddBuff(player, "���BUFF14", 600000) end
		else return "��ȡ���ְҵ���񷽿ɽ��룡\n \n"
		end

	end
	return ""
end]]

function likai(npc,player)
	return ""
end


function func_0(npc,player)
	if lualib:HasQuest(player, 5096) == true or lualib:HasQuest(player, 5098) == true then 
		if lualib:Player_HasDgnTicket(player, "ս������") == true then 
			local dgn = lualib:Player_GetDgnByTicket(player, "ս������")
			if dgn == "" then return "���������ڣ�" else lualib:Player_EnterDgn(player, "ս������", 65, 65, 2) end
		else
			local dgn = lualib:Map_CreateDgn("ս������", false, 1200)
			if dgn == "" then return "��������ʧ�ܣ�" end
			lualib:Player_SetDgnTicket(player, dgn);
			if not lualib:Player_EnterDgn(player, "ս������", 65, 65, 2) then return "���븱��ʧ�ܣ�\n \n" end
		
		end
	elseif lualib:HasQuest(player, 5099) == true then
		if not lualib:HasBuff(player, "���BUFF14") then lualib:AddBuff(player, "���BUFF14", 600000) end
		
		if lualib:Player_HasDgnTicket(player, "�ػ�����") == true then
			local dgn = lualib:Player_GetDgnByTicket(player, "�ػ�����")
			if dgn == "" then return "���������ڣ�" else lualib:Player_EnterDgn(player, "�ػ�����", 65, 65, 2) end
		
		else 
			local dgn = lualib:Map_CreateDgn("�ػ�����", false, 1200)
			lualib:Player_SetDgnTicket(player, dgn);		
			if not lualib:Player_EnterDgn(player, "�ػ�����", 65, 65, 2) then return "���븱��ʧ�ܣ�\n \n" end
		end
	else return "��ȡ���ְҵ���񷽿ɽ��룡\n \n"
	end	
	
	return ""
end
