 

function main(npc,player)
	local msg = ""
	msg = msg .."     战技是战士强大的根源！但是，只有经过无数次坚韧的血战，才能将战技的威力提升到最大！\n \n"	
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@func_0 *01*进入战斗副本！>\n"	
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@likai *01*离开！>\n"
	return msg
end

--[[
function func_0(npc,player)

	if lualib:Player_HasDgnTicket(player, "战斗副本") == true then 
		local dgn = lualib:Player_GetDgnByTicket(player, "战斗副本")
		if dgn == "" then return "副本不存在！" else lualib:Player_EnterDgn(player, "战斗副本", 65, 65, 2) end	
	
	else
		if lualib:HasQuest(player, 5096) == true or lualib:HasQuest(player, 5098) == true then
			local dgn = lualib:Map_CreateDgn("战斗副本", false, 1200)
			if dgn == "" then return "副本创建失败！" end
			lualib:Player_SetDgnTicket(player, dgn);
			if not lualib:Player_EnterDgn(player, "战斗副本", 65, 65, 2) then return "进入副本失败！\n \n" end	
		
		elseif lualib:HasQuest(player, 5099) == true then 		
			local dgn = lualib:Map_CreateDgn("守护副本", false, 1200)
			lualib:Player_SetDgnTicket(player, dgn);		
			if not lualib:Player_EnterDgn(player, "守护副本", 65, 65, 2) then return "进入副本失败！\n \n" end 
			if not lualib:HasBuff(player, "随机BUFF14") then lualib:AddBuff(player, "随机BUFF14", 600000) end
		else return "接取相关职业任务方可进入！\n \n"
		end

	end
	return ""
end]]

function likai(npc,player)
	return ""
end


function func_0(npc,player)
	if lualib:HasQuest(player, 5096) == true or lualib:HasQuest(player, 5098) == true then 
		if lualib:Player_HasDgnTicket(player, "战斗副本") == true then 
			local dgn = lualib:Player_GetDgnByTicket(player, "战斗副本")
			if dgn == "" then return "副本不存在！" else lualib:Player_EnterDgn(player, "战斗副本", 65, 65, 2) end
		else
			local dgn = lualib:Map_CreateDgn("战斗副本", false, 1200)
			if dgn == "" then return "副本创建失败！" end
			lualib:Player_SetDgnTicket(player, dgn);
			if not lualib:Player_EnterDgn(player, "战斗副本", 65, 65, 2) then return "进入副本失败！\n \n" end
		
		end
	elseif lualib:HasQuest(player, 5099) == true then
		if not lualib:HasBuff(player, "随机BUFF14") then lualib:AddBuff(player, "随机BUFF14", 600000) end
		
		if lualib:Player_HasDgnTicket(player, "守护副本") == true then
			local dgn = lualib:Player_GetDgnByTicket(player, "守护副本")
			if dgn == "" then return "副本不存在！" else lualib:Player_EnterDgn(player, "守护副本", 65, 65, 2) end
		
		else 
			local dgn = lualib:Map_CreateDgn("守护副本", false, 1200)
			lualib:Player_SetDgnTicket(player, dgn);		
			if not lualib:Player_EnterDgn(player, "守护副本", 65, 65, 2) then return "进入副本失败！\n \n" end
		end
	else return "接取相关职业任务方可进入！\n \n"
	end	
	
	return ""
end
