


function main(monster, player)
    --判断距离
	local catch_distance = 2 --距离
	local catch_wait_time = 2100    --进度条时间   
	if lualib:Distance(monster, player) > catch_distance then
        lualib:SysPromptMsg(player, "离"..lualib:Name(monster).."太远，无法采集！")
        return ""
    end
    
    --开启进度条
    if lualib:ProgressBarStart(player, catch_wait_time, "采集", "catch_complete", "catch_abort", monster) == false then
	    lualib:SysPromptMsg(player, "无法开启采集")
        return ""
	end	
	return ""
end


function catch_complete(player, params)		--进度条成功
	local x = lualib:X(player)
	local y = lualib:Y(player)
	local map = lualib:MapGuid(player) 
	local in_monster = {"植木精怪", "植木精怪", "植木精怪", "植木精怪", "植木精怪精英"}	
	local rand = lualib:GenRandom(1, 150)
	local catch_rand = 100 --成功率:rand 在[1，100]间时采集成功，[101，150]时惊动植木精怪
	
		if rand <= catch_rand then
		   lualib:AddItem(player, lualib:KeyName(params), 1, true, "采集", "")
		   lualib:SysPromptMsg(player, "成功获得"..lualib:Name(params))
		   return

		else
			lualib:Map_GenSingleMonster(map, x, y, 2, 5, in_monster[lualib:GenRandom(1, #in_monster)], false)
			lualib:SysPromptMsg(player, "太不小心了，你惊动植木精怪！如果实力不敌，请两分钟后再来！")
		end 
		return
end

	
function catch_abort(player, params)   --进度条失败
    lualib:SysPromptMsg(player, "采集"..lualib:Name(params).."被打断！")
end