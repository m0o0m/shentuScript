


function main(monster, player)
    --判断距离
	local catch_distance = 2 --距离
	local catch_wait_time = 1000    --进度条时间   
	if lualib:Distance(monster, player) > catch_distance then
        lualib:SysPromptMsg(player, "离"..lualib:Name(monster).."太远，无法采集！")
        return ""
    end
    
    --开启进度条
    if lualib:ProgressBarStart(player, catch_wait_time, "偷取", "catch_complete", "catch_abort", monster) == false then
	    lualib:SysPromptMsg(player, "无法开启偷取")
        return ""
	end	
	return ""
end


function catch_complete(player, params)		--进度条成功
	local x = lualib:X(player)
	local y = lualib:Y(player)
	local map = lualib:MapGuid(player) 
	local in_monster = {"普通守卫", "普通守卫", "普通守卫", "普通守卫", "精英守卫"}	
	local rand = lualib:GenRandom(1, 160)
	local catch_rand = 100 --成功率:rand 在[1，100]间时采集成功，[101，160]时惊动守卫    --采集成功率100/160＝62.5%
	
		if rand <= catch_rand then
		   lualib:AddItem(player, lualib:KeyName(params), 1, true, "偷取", "")
		   lualib:SysPromptMsg(player, "成功获得"..lualib:Name(params))
		   return

		else
			lualib:Map_GenSingleMonster(map, x, y, 2, 5, in_monster[lualib:GenRandom(1, #in_monster)], false)
			lualib:SysPromptMsg(player, "惊动守卫，危险！如果实力不敌，可以两分钟后再来！")
		end 
		return
end

	
function catch_abort(player, params)   --进度条失败
    lualib:SysPromptMsg(player, "偷取"..lualib:Name(params).."被打断！")
end