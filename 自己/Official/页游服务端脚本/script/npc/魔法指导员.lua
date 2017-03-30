 

function main(npc,player)
	local msg = ""
	msg = msg .."     魔法是法师强大的根源！但是，只有经过无数次坚韧的血战，才能将魔法的威力提升到最大！\n \n"	
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@func_0 *01*进入战斗副本！>\n"	
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@likai *01*离开！>\n"
	return msg
end



function func_0(npc,player)


	if lualib:Player_HasDgnTicket(player, "战斗副本") == true then 
		local dgn = lualib:Player_GetDgnByTicket(player, "战斗副本")
		if dgn == "" then return "副本不存在！" else lualib:Player_EnterDgn(player, "战斗副本", 65, 65, 2) end	
	
	else
		local quest = {5109, 5111, 5112, 5113}
		local dgn = lualib:Map_CreateDgn("战斗副本", false, 1200) 
		local jianyan = 0
		for i = 1,#quest do
			if lualib:HasQuest(player, quest[i]) == true then jianyan = 1
			else jianyan = jianyan
			end
		end
		if jianyan == 1 then
			if dgn == "" then return "副本创建失败！" end
			lualib:Player_SetDgnTicket(player, dgn);
			if not lualib:Player_EnterDgn(player, "战斗副本", 65, 65, 2) then return "进入副本失败！\n \n" end
		else return "接取相关职业任务方可进入！\n \n"
		end			
	end
	return ""
end

function likai(npc,player)
	return ""
end
