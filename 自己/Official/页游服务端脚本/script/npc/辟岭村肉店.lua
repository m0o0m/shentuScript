
function main(npc, player)
	k1 = "肉" 
	k2 = "熟鹿肉"
	if lualib:HasQuest(player, 5115) == true then
	k1 = "鸡肉"
	k2 = "熟鸡腿"
	end

	msg = "不管鸡肉、鹿肉、牛肉、猪肉、BOSS肉，我这里都有；生肉、熟肉也能找到！偷偷地告诉你，我的厨艺还非常不错，经过烹饪过的肉类，那味道……哈哈！\n \n"
	msg = msg.."#IMAGE1902700030# <@duihuan#1 *01*兑换熟肉>\n"
	msg = msg.."#IMAGE1902700030# <@tourou#1 *01*偷取熟肉>\n\n\n"
	msg = msg.."接取相关任务后，可以从杀鸡中获得鸡肉，从杀鹿中获得肉，此后来我这里兑换熟食。当然，要收取一点点费用！"
	return msg
end


function duihuan(npc, player)
	
		if lualib:Player_IsGoldEnough(player, 2000, false) == false then return "不足2000金币，你付不起价钱，不能兑换！\n\n\n\n\n\n#IMAGE1902700030# <@main *01*返回>\n" end
		
		local a = lualib:Player_GetItemCount(player, k1)
		if a == 0 then return "你没有该材料！\n\n\n\n\n\n#IMAGE1902700030# <@main *01*返回>\n" end
		if a ~= 0  then 
			if lualib:DelItem(player, k1, 1, 2, "兑换", player) == true then 
				if not lualib:Player_SubGold(player, 2000, false, "兑换一只"..k2, player) then
					return "扣除金币失败\n\n\n\n\n\n#IMAGE1902700030# <@main *01*返回>\n"
				end
			end 
			lualib:AddItem(player, k2, 1, true, "兑换", player)	
			return "成功兑换一"..k2.."，花费2000金币！\n\n\n\n\n\n#IMAGE1902700030# <@main *01*返回>\n"
		end
	
	return "兑换成功！\n\n\n\n\n\n#IMAGE1902700030# <@main *01*返回>\n"
end

function tourou(npc, player)

    --判断距离
	local catch_distance = 2
	local catch_wait_time = 2100    --进度条时间   
	if lualib:Distance(npc, player) > catch_distance then
        lualib:SysPromptMsg(player, "离"..lualib:Name(npc).."太远，无法偷取！")
        return ""
    end
    
    --开启进度条
    if lualib:ProgressBarStart(player, catch_wait_time, "偷取", "catch_complete", "catch_abort", npc) == false then
	    lualib:SysPromptMsg(player, "无法偷取！")
        return ""
	end		
	return ""
end

function catch_complete(player)
		local x = lualib:X(player)
		local y = lualib:Y(player)
		local map = lualib:MapGuid(player) 
		local in_monster = {"普通守卫", "普通守卫", "普通守卫", "普通守卫", "精英守卫"}	
		local rand = lualib:GenRandom(1, 100)
		local catch_rand = 50 
		
			if rand <= catch_rand then		   
			   lualib:AddItem(player, k2, 1, true, "兑换", player)
			   lualib:SysPromptMsg(player, "成功偷取一只"..k2.."	")
			   return ""

			else
				lualib:Map_GenSingleMonster(map, x, y, 2, 5, in_monster[lualib:GenRandom(1, #in_monster)], false)
				lualib:SysPromptMsg(player, "守卫出现，危险！如果实力不敌，可以两分钟后再来！")
				return ""
			end
		
	return ""	

end

	
function catch_abort(player)   --进度条失败
    lualib:SysPromptMsg(player, "你的偷盗行动被打断！")
end