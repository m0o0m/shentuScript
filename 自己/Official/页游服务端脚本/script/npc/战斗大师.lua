function main(npc, player)
	msg = "     �����ţ��Ҿ�ͨһ��ս���İ��壡\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@func_0 *01*�������񸱱���>\n"	
	msg = msg.."<@likai *01*���뿪��>\n"
	return msg
end

function likai(npc,player)
	return ""
end

local x = 34
local y = 48


function func_0(npc, player)
	--�����жϸ�����Ʊ�Ƿ���ڣ�������ڣ�ֱ�Ӵ���������
	if lualib:Player_HasDgnTicket(player, "���񸱱�1") == true then
		local dgn = lualib:Player_GetDgnByTicket(player, "���񸱱�1")
		if dgn == "" then
			return "���������ڣ�" 
		else 
			lualib:Player_EnterDgn(player, "���񸱱�1", x, y, 2) 
		end
	
	end	
	
	--����ж��Ƿ�ӵ�ж���
		local quest = {5133, 5134, 5135}
		local quest_id = nil
		local leader = nil
		local enter = nil
		
		for i = 1, #quest do
			if lualib:HasQuest(player, quest[i]) == true then
				leader = 1
				quest_id = quest[i]
			end
		end			
		
		if leader ~= 1 then
			return "��û�н�ȡ�������"
		end
		local team = lualib:Player_GetTeamGuid(player)

		if team ~= "" then
			if lualib:Player_IsTeamLeader(player) == false then
				return "�㲻�Ƕӳ������ɶӳ�����������"
			end
			
			local team_all = lualib:Player_GetTeamList(player)			
			for i = 1, #team_all do
				if lualib:HasQuest(team_all[i], quest_id) == false then
					enter = 1
				end
			end
			
			if enter == 1 then
				return "���������ж�Աû�н����������"
			else
				local dgn = lualib:Map_CreateDgn("���񸱱�1", false, 720)							
					if dgn == "" then return "��������ʧ�ܣ�" end
					for k = 1, #team_all do
						lualib:Player_SetDgnTicket(team_all[k], dgn);
						if not lualib:Player_EnterDgn(team_all[k], "���񸱱�1", x, y, 2) then return "���븱��ʧ�ܣ�\n \n" end	
					end
			end
		
		else
			for i = 1, #quest do
				if lualib:HasQuest(player, quest[i]) == true then
					enter = 2 
				end				
			end		

			if enter == 2 then
				local dgn = lualib:Map_CreateDgn("���񸱱�1", false, 720)							
				if dgn == "" then return "��������ʧ�ܣ�" end	
				lualib:Player_SetDgnTicket(player, dgn);
				if not lualib:Player_EnterDgn(player, "���񸱱�1", x, y, 2) then return "���븱��ʧ�ܣ�\n \n" end
			
			else return "��ȡ������񣬷����Խ��븱����"				
			end	
		end
	return ""	
end


