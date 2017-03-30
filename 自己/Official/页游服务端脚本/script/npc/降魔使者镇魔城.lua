

function main(npc,player)
	local msg = "#COLORCOLOR_BROWN#	��������רΪ��ѹаħ����ħ�ǣ�ǿ��ĳ���һ�弰���ֱ���аħ������ѹ�ڴˡ���ˣ�����ÿ���������ϴ�Ƿǳ���Ҫ�ģ�#COLOREND#\n"
	msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n \n "
	msg = msg.."��#COLORCOLOR_GRAY#��#COLOREND#<@kill_map *01*ÿ����ħ>#OFFSET<X:-2,Y:0>#"
	msg = msg.."  ��������#COLORCOLOR_GRAY#��#COLOREND#<@accomplish_task *02*�ύ��ħ����>#OFFSET<X:7,Y:0>#\n\n"
	msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n "	
	msg = msg.."#COLORCOLOR_SKYBLUE#���ѣ�ͬһ����ÿ���������10�Σ���ʹ��ѭ��ħ��ֱ���������1ħ�䣽30ֻ�֣���ÿ���һ�����񣬶��л��ʻ�ö�������������#COLOREND#��\n\n"	
	msg = msg.."����������������������������������������#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@likai *01*�뿪��>\n"
	return msg
end

function likai(npc,player)
	return ""
end

local accept_quest = 
{
	{15, 28, 4060,  "#IMAGE1902700018#<@accept#4060 *01*����������ħ�ǳ���30ֻ����>",   "�����飺15000",   15000,   1},
	{20, 33, 4061,  "#IMAGE1902700018#<@accept#4061 *01*������ħ����ǰ����30ֻ����>",   "�����飺26000",   26000,   1},
	{28, 40, 4062,  "#IMAGE1902700018#<@accept#4062 *01*������ħ���ص��Ĳ�30ֻ����>",   "�����飺88000",   88000,   1},
	{33, 200, 4064, "#IMAGE1902700018#<@accept#4064 *01*������ħ���ص�����30ֻ����>",   "�����飺225000",  225000,  1},
	{15, 28, 4070,  "#IMAGE1902700018#<@accept#4070 *01*����������ħ�ǳ���60ֻ����>",   "�����飺30000",   30000,   2},
	{20, 33, 4071,  "#IMAGE1902700018#<@accept#4071 *01*������ħ����ǰ����60ֻ����>",   "�����飺52000",   52000,   2},
	{28, 40, 4072,  "#IMAGE1902700018#<@accept#4072 *01*������ħ���ص��Ĳ�60ֻ����>",   "�����飺176000",  176000,  2},
	{33, 200, 4074, "#IMAGE1902700018#<@accept#4074 *01*������ħ���ص�����60ֻ����>",   "�����飺450000",  450000,  2}	

}
--һ��λ��Ϊ�������ƣ���ΪID�������ڶ���Ϊ�����飬������һΪ�۳�ѭ��ħ�������

function kill_map(npc,player)
	
	for i = 1, #accept_quest do
		if lualib:HasQuest(player, accept_quest[i][3]) == true then
			return "���Ѿ���������������"
		end
	end
				
	local level = lualib:Level(player)
	local msg = "\n \n#COLORCOLOR_YELLOW#����������������������ÿ����������������������������#COLOREND#\n \n"
	if level < 20 then		
		return "��ﵽ20����������"
	else	
		for i = 1, #accept_quest do
			if (level >= accept_quest[i][1] and level < accept_quest[i][2]) then
				msg = msg..accept_quest[i][4]						
				msg = msg.."����"..accept_quest[i][5].."\n" 						
			end		
		end
		msg = msg.."\n��������������������������������������������#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@main *01*���أ�>\n"
	end	
		return msg		
end

function accept(npc, player, j)
	local j = tonumber(j)
	lualib:AcceptQuest(player, j)
	return ""		

end


local rewards ={{"ѭ��ħ��", 1, true}, {"�ٻ�ʯ", 20, false}, {"�ٻ�ʯ", 10, false}}
local v = 85

function accomplish_task(npc,player)

	for i = 1, #accept_quest do
		if lualib:HasQuest(player, accept_quest[i][3]) == true then
			if lualib:CanAccomplishQuest(player, accept_quest[i][3]) == true then
			lualib:DropQuest(player, accept_quest[i][3])
			lualib:Player_AddExp(player, accept_quest[i][6], "�������", player)
			lualib:SysPromptMsg(player, "������񣬻�þ��飺"..accept_quest[i][6])
				
				local r = lualib:GenRandom(1, 100)
                local n = lualib:GenRandom(1, #rewards)
                local reward_item = rewards[n][1]
                local reward_item_count = rewards[n][2]
                local reward_item_bind = rewards[n][3]
				if r < v then return ""
				else 
					lualib:AddItem(player, reward_item, reward_item_count, reward_item_bind, "���������������", player)
					lualib:SysPromptMsg(player, "��������񣬻�����������"..reward_item)
				end	
			else
				local msg = "\n#COLORCOLOR_BROWN#	������������δ��ɣ��Ƿ�ʹ��ѭ��ħ��ֱ���������#COLOREND#\n"
				msg = msg.."\n	����	����	����	����	����<@mozou *01*ȷ��>#OFFSET<X:0,Y:0>#\n\n"
				msg = msg.."����������������������������������������#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@likai *01*�뿪��>\n"			
				return msg
			end
		end
	end
	return ""
end

function mozou(npc,player)
	local count = lualib:Player_GetItemCount(player, "ѭ��ħ��")	
	
	for i = 1, #accept_quest do
		if lualib:HasQuest(player, accept_quest[i][3]) == true then
			if count < accept_quest[i][7] then return "��Ҫ"..accept_quest[i][7].."��ħ�䣡"

			else
				if lualib:DelItem(player, "ѭ��ħ��", accept_quest[i][7], 2, "�������", player) then					
				lualib:DropQuest(player, accept_quest[i][3])
				lualib:Player_AddExp(player, accept_quest[i][6], "�������", player)
				lualib:SysPromptMsg(player, "ʹ��"..accept_quest[i][7].."��ѭ��ħ��ֱ��������񣬻�þ��飺"..accept_quest[i][6])						
					
						local r = lualib:GenRandom(1, 100)
                        local n = lualib:GenRandom(1, #rewards)
                        local reward_item = rewards[n][1]
                        local reward_item_count = rewards[n][2]
                        local reward_item_bind = rewards[n][3]
					if r < v then return ""
					else 
						lualib:AddItem(player, reward_item, reward_item_count, reward_item_bind, "���������������", player)
						lualib:SysPromptMsg(player, "��������񣬻�����������"..reward_item.."*"..reward_item_count.."��")
					end		
				end
			end
		end
	end
	
	return ""
end


