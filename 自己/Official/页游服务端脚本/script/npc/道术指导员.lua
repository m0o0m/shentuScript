 

function main(npc,player)
	local msg = ""
	msg = msg .."     �����ǵ�ʿǿ��ĸ�Դ�����ǣ�ֻ�о��������μ��͵�Ѫս�����ܽ��������������������\n \n"	
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@func_0 *01*����ս��������>\n"	
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@likai *01*�뿪��>\n"
	return msg
end



function func_0(npc,player)

	if lualib:Player_HasDgnTicket(player, "ս������") == true then 
		local dgn = lualib:Player_GetDgnByTicket(player, "ս������")
		if dgn == "" then return "���������ڣ�" else lualib:Player_EnterDgn(player, "ս������", 65, 65, 2) end	
	
	else
		local quest = {5121, 5124}	
		local dgn = lualib:Map_CreateDgn("ս������", false, 1200) 
		local jianyan = 0
		for i = 1,#quest do
			if lualib:HasQuest(player, quest[i]) == true then jianyan = 1
			else jianyan = jianyan
			end
		end
		if jianyan == 1 then
			if dgn == "" then return "��������ʧ�ܣ�" end
			lualib:Player_SetDgnTicket(player, dgn);
			if not lualib:Player_EnterDgn(player, "ս������", 65, 65, 2) then return "���븱��ʧ�ܣ�\n \n" end
		else return "��ȡ���ְҵ���񷽿ɽ��룡\n \n"
		end			
	end
	return ""
end

function likai(npc,player)
	return ""
end
