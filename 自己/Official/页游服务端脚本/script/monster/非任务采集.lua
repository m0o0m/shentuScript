local target_info={}

target_info["奇怪的牧草"]="牧草"
target_info["星灵花"]="星灵花"
target_info["珍珠"]="珍珠"
target_info["生生草"]="生生草"
target_info["海底陶罐"]="海底陶罐"
target_info["幽暗之花"]="幽暗之花"
target_info["海水精华"]="海水精华"

local target_info1={}

target_info1["奇怪的牧草"]="奇怪的牧草"
target_info1["星灵花"]="星灵花"
target_info1["珍珠"]="珍珠"
target_info1["生生草"]="生生草"
target_info1["海底陶罐"]="海底陶罐"
target_info1["幽暗之花"]="幽暗之花"
target_info1["海水精华"]="海水精华"

local catch_distance = 2 --距离
local catch_wait_time = 1000    --进度条时间
local catch_rand = 100 --成功率

function main(monster, player)
    --判断距离
    if lualib:Distance(monster, player) > catch_distance then
        lualib:SysWarnMsg(player, "离"..lualib:Name(monster).."太远，无法采集！")
        return ""
    end
	
    --开启进度条
    if lualib:ProgressBarStart(player, catch_wait_time, "采集", "catch_complete", "catch_abort", monster) == false then
	    lualib:SysWarnMsg(player, "无法开启采集"..lualib:Name(monster).."进度条！")
        return ""
	end
	
	return ""
end

function catch_complete(player, params)		--进度条成功
    local rand = lualib:GenRandom(1, 100)
	local x = lualib:X(params)
	local y = lualib:Y(params)
	local map = lualib:MapGuid(params)
	
    --lualib:SysWarnMsg(player, "rand= "..rand)
    if rand > catch_rand then
        lualib:SysWarnMsg(player, lualib:Name(params).."采集失败！")
        return 
    end
    
    local key_name = lualib:KeyName(params)
    --判断采集物是否还存在,存在则删除
	
	local rx = lualib:GenRandom(-50,50)
	local ry = lualib:GenRandom(-50,50)
	re_x = x + rx
	re_y = y + ry
	
   if not lualib:Monster_Remove(params) then
        lualib:SysWarnMsg(player, lualib:Name(params).."不存在，采集失败！")
        return
    end
	
	local timeid = lualib:GenTimerId(map)
	
	lualib:AddTimerEx(map, timeid, 10000, 1, "caijireborn", target_info1[key_name])	
    
    if not lualib:Player_GiveItemUnbind(player, target_info[key_name], 1, "采集", target_info[key_name]) then
        lualib:SysWarnMsg(player, "添加牧草失败！")
    end
end

function catch_abort(player, params)   --进度条失败
    lualib:SysWarnMsg(player, "采集"..lualib:Name(params).."被打断！")
end

function caijireborn(map, timerid, param)	
	lualib:Map_GenMonster(map, re_x, re_y, 100, 4, param, 1, true)	
end