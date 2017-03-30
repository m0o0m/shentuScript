function main(npc, player)
	msg = "     别不相信，我精通一切战斗的奥义！\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@func_0 *01*进入任务副本！>\n"	
	msg = msg.."<@likai *01*「离开」>\n"
	return msg
end

function likai(npc,player)
	return ""
end

local x = 34
local y = 48


function func_0(npc, player)
	--首先判断副本门票是否存在，如果存在，直接传送至副本
	if lualib:Player_HasDgnTicket(player, "任务副本1") == true then
		local dgn = lualib:Player_GetDgnByTicket(player, "任务副本1")
		if dgn == "" then
			return "副本不存在！" 
		else 
			lualib:Player_EnterDgn(player, "任务副本1", x, y, 2) 
		end
	
	end	
	
	--其次判断是否拥有队伍
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
			return "你没有接取相关任务！"
		end
		local team = lualib:Player_GetTeamGuid(player)

		if team ~= "" then
			if lualib:Player_IsTeamLeader(player) == false then
				return "你不是队长，请由队长开启副本！"
			end
			
			local team_all = lualib:Player_GetTeamList(player)			
			for i = 1, #team_all do
				if lualib:HasQuest(team_all[i], quest_id) == false then
					enter = 1
				end
			end
			
			if enter == 1 then
				return "您队伍中有队员没有接受相关任务！"
			else
				local dgn = lualib:Map_CreateDgn("任务副本1", false, 720)							
					if dgn == "" then return "副本创建失败！" end
					for k = 1, #team_all do
						lualib:Player_SetDgnTicket(team_all[k], dgn);
						if not lualib:Player_EnterDgn(team_all[k], "任务副本1", x, y, 2) then return "进入副本失败！\n \n" end	
					end
			end
		
		else
			for i = 1, #quest do
				if lualib:HasQuest(player, quest[i]) == true then
					enter = 2 
				end				
			end		

			if enter == 2 then
				local dgn = lualib:Map_CreateDgn("任务副本1", false, 720)							
				if dgn == "" then return "副本创建失败！" end	
				lualib:Player_SetDgnTicket(player, dgn);
				if not lualib:Player_EnterDgn(player, "任务副本1", x, y, 2) then return "进入副本失败！\n \n" end
			
			else return "接取相关任务，方可以进入副本！"				
			end	
		end
	return ""	
end


