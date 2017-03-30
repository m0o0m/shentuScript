

function main(npc,player)
	local msg = "#COLORCOLOR_BROWN#	　　这是专为镇压邪魔的镇魔城，强大的赤炎一族及各种变异邪魔都被镇压于此。因此，保持每天持续的清洗是非常必要的！#COLOREND#\n"
	msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n \n "
	msg = msg.."　#COLORCOLOR_GRAY#│#COLOREND#<@kill_map *01*每日镇魔>#OFFSET<X:-2,Y:0>#"
	msg = msg.."  　　　　#COLORCOLOR_GRAY#│#COLOREND#<@accomplish_task *02*提交镇魔任务>#OFFSET<X:7,Y:0>#\n\n"
	msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n "	
	msg = msg.."#COLORCOLOR_SKYBLUE#提醒：同一任务每日最多可完成10次；可使用循环魔咒直接完成任务（1魔咒＝30只怪）！每完成一次任务，都有机率获得额外的随机奖励！#COLOREND#　\n\n"	
	msg = msg.."　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@likai *01*离开！>\n"
	return msg
end

function likai(npc,player)
	return ""
end

local accept_quest = 
{
	{15, 28, 4060,  "#IMAGE1902700018#<@accept#4060 *01*清理清理镇魔城城外30只怪物>",   "任务经验：15000",   15000,   1},
	{20, 33, 4061,  "#IMAGE1902700018#<@accept#4061 *01*清理镇魔禁地前三层30只怪物>",   "任务经验：26000",   26000,   1},
	{28, 40, 4062,  "#IMAGE1902700018#<@accept#4062 *01*清理镇魔禁地第四层30只怪物>",   "任务经验：88000",   88000,   1},
	{33, 200, 4064, "#IMAGE1902700018#<@accept#4064 *01*清理镇魔禁地第六层30只怪物>",   "任务经验：225000",  225000,  1},
	{15, 28, 4070,  "#IMAGE1902700018#<@accept#4070 *01*清理清理镇魔城城外60只怪物>",   "任务经验：30000",   30000,   2},
	{20, 33, 4071,  "#IMAGE1902700018#<@accept#4071 *01*清理镇魔禁地前三层60只怪物>",   "任务经验：52000",   52000,   2},
	{28, 40, 4072,  "#IMAGE1902700018#<@accept#4072 *01*清理镇魔禁地第四层60只怪物>",   "任务经验：176000",  176000,  2},
	{33, 200, 4074, "#IMAGE1902700018#<@accept#4074 *01*清理镇魔禁地第六层60只怪物>",   "任务经验：450000",  450000,  2}	

}
--一二位置为级别限制，三为ID，倒数第二个为任务经验，倒数第一为扣除循环魔咒的数量

function kill_map(npc,player)
	
	for i = 1, #accept_quest do
		if lualib:HasQuest(player, accept_quest[i][3]) == true then
			return "你已经有任务在身上了"
		end
	end
				
	local level = lualib:Level(player)
	local msg = "\n \n#COLORCOLOR_YELLOW#━━━━━━━━━━━每日清理━━━━━━━━━━━━#COLOREND#\n \n"
	if level < 20 then		
		return "请达到20级后再来！"
	else	
		for i = 1, #accept_quest do
			if (level >= accept_quest[i][1] and level < accept_quest[i][2]) then
				msg = msg..accept_quest[i][4]						
				msg = msg.."　　"..accept_quest[i][5].."\n" 						
			end		
		end
		msg = msg.."\n　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@main *01*返回！>\n"
	end	
		return msg		
end

function accept(npc, player, j)
	local j = tonumber(j)
	lualib:AcceptQuest(player, j)
	return ""		

end


local rewards ={{"循环魔咒", 1, true}, {"召唤石", 20, false}, {"召唤石", 10, false}}
local v = 85

function accomplish_task(npc,player)

	for i = 1, #accept_quest do
		if lualib:HasQuest(player, accept_quest[i][3]) == true then
			if lualib:CanAccomplishQuest(player, accept_quest[i][3]) == true then
			lualib:DropQuest(player, accept_quest[i][3])
			lualib:Player_AddExp(player, accept_quest[i][6], "完成任务", player)
			lualib:SysPromptMsg(player, "完成任务，获得经验："..accept_quest[i][6])
				
				local r = lualib:GenRandom(1, 100)
                local n = lualib:GenRandom(1, #rewards)
                local reward_item = rewards[n][1]
                local reward_item_count = rewards[n][2]
                local reward_item_bind = rewards[n][3]
				if r < v then return ""
				else 
					lualib:AddItem(player, reward_item, reward_item_count, reward_item_bind, "完成任务后随机奖励", player)
					lualib:SysPromptMsg(player, "你完成任务，获得随机奖励："..reward_item)
				end	
			else
				local msg = "\n#COLORCOLOR_BROWN#	　　任务条件未达成，是否使用循环魔咒直接完成任务？#COLOREND#\n"
				msg = msg.."\n	　　	　　	　　	　　	　　<@mozou *01*确定>#OFFSET<X:0,Y:0>#\n\n"
				msg = msg.."　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@likai *01*离开！>\n"			
				return msg
			end
		end
	end
	return ""
end

function mozou(npc,player)
	local count = lualib:Player_GetItemCount(player, "循环魔咒")	
	
	for i = 1, #accept_quest do
		if lualib:HasQuest(player, accept_quest[i][3]) == true then
			if count < accept_quest[i][7] then return "需要"..accept_quest[i][7].."个魔咒！"

			else
				if lualib:DelItem(player, "循环魔咒", accept_quest[i][7], 2, "完成任务", player) then					
				lualib:DropQuest(player, accept_quest[i][3])
				lualib:Player_AddExp(player, accept_quest[i][6], "完成任务", player)
				lualib:SysPromptMsg(player, "使用"..accept_quest[i][7].."个循环魔咒直接完成任务，获得经验："..accept_quest[i][6])						
					
						local r = lualib:GenRandom(1, 100)
                        local n = lualib:GenRandom(1, #rewards)
                        local reward_item = rewards[n][1]
                        local reward_item_count = rewards[n][2]
                        local reward_item_bind = rewards[n][3]
					if r < v then return ""
					else 
						lualib:AddItem(player, reward_item, reward_item_count, reward_item_bind, "完成任务后随机奖励", player)
						lualib:SysPromptMsg(player, "你完成任务，获得随机奖励："..reward_item.."*"..reward_item_count.."！")
					end		
				end
			end
		end
	end
	
	return ""
end


