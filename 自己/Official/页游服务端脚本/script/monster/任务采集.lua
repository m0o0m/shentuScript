local target_info={}


target_info["星灵花"]="星灵花"
target_info["珍珠"]="珍珠"
target_info["生生草"]="生生草"
target_info["海底陶罐"]="海底陶罐"
target_info["幽暗之花"]="幽暗之花"
target_info["海水精华"]="海水精华"
target_info["星辰碎片"]="星辰碎片"
target_info["坟茔上的小花"]="坟茔上的小花"
target_info["苦海兰"]="苦海兰"


local target_info1={}


target_info1["星灵花"]="星灵花"
target_info1["珍珠"]="珍珠"
target_info1["生生草"]="生生草"
target_info1["海底陶罐"]="海底陶罐"
target_info1["幽暗之花"]="幽暗之花"
target_info1["海水精华"]="海水精华"
target_info1["星辰碎片"]="星辰碎片"
target_info1["坟茔上的小花"]="坟茔上的小花"
target_info1["苦海兰"]="苦海兰"

local catch_distance = 2 --距离
local catch_wait_time = 1000    --进度条时间
local catch_rand = 100 --成功率

function main(monster, player)
    --判断距离
    if lualib:Distance(monster, player) > catch_distance then
        lualib:SysPromptMsg(player, "离"..lualib:Name(monster).."太远，无法采集！")
        return ""
    end

    

    
    --开启进度条
    if lualib:ProgressBarStart(player, catch_wait_time, "采集", "catch_complete", "catch_abort", monster) == false then
	    lualib:SysPromptMsg(player, "无法开启采集"..lualib:Name(monster).."进度条！")
        return ""
	end
	
	return ""
end

function catch_complete(player, params)		--进度条成功
    local rand = lualib:GenRandom(1, 100)
	local x = lualib:X(params)
	local y = lualib:Y(params)
	local map = lualib:MapGuid(params)
	
    --lualib:SysPromptMsg(player, "rand= "..rand)
    if rand > catch_rand then
        lualib:SysPromptMsg(player, lualib:Name(params).."采集失败！")
        return 
    end
    
    local key_name = lualib:KeyName(params)

    if not lualib:Player_GiveItemUnbind(player, target_info[key_name], 1, "采集", target_info[key_name]) then
        lualib:SysPromptMsg(player, "添加牧草失败！")
    end
end

function catch_abort(player, params)   --进度条失败
    lualib:SysPromptMsg(player, "采集"..lualib:Name(params).."被打断！")
end