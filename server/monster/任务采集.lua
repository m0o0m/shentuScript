local target_info={}

target_info["忘情花"]="药草"--target_info[怪物] = 道具
target_info["天女木兰"]="药草"
target_info["虞美人"]="药草"
target_info["七星海棠"]="药草"
target_info["守月兰"]="药草"
target_info["迷心兰"]="药草"
target_info["草药"]="药草"
target_info["天材"]="天材"
target_info["地宝"]="地宝"
target_info["灵药"]="灵药"

local target_info1={}--

target_info1["药草"]="忘情花"--target_info1[道具] = 怪物
target_info1["药草"]="天女木兰"
target_info1["药草"]="虞美人"
target_info1["药草"]="七星海棠"
target_info1["药草"]="守月兰"
target_info1["药草"]="迷心兰"
target_info1["药草"]="草药"

local catch_distance = 2 --距离
local catch_wait_time = 1000    --进度条时间
local catch_rand = 100 --成功率
local catch_relive = 1800 --怪物刷新时间[秒]

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
	
	local rx = lualib:GenRandom(-1,1)
	local ry = lualib:GenRandom(-1,1)
	local re_x = x + rx
	local re_y = y + ry
	
   if not lualib:Monster_Remove(params) then
        lualib:SysWarnMsg(player, lualib:Name(params).."不存在，采集失败！")
        return
    end
	
	local timeid = lualib:GenTimerId(map)
	
	lualib:AddTimerEx(map, timeid, catch_relive * 1000, 1, "caijireborn", key_name.."&"..re_x.."&"..re_y)	
    
    if not lualib:Player_GiveItemUnbind(player, target_info[key_name], 1, "采集", target_info[key_name]) then
        lualib:SysWarnMsg(player, "草药采集失败！")
    end
end

function catch_abort(player, params)   --进度条失败
    lualib:SysWarnMsg(player, "采集"..lualib:Name(params).."被打断！")
end

function caijireborn(map, timerid, param)
	local tab = string.split(param, "&")
	lualib:Map_GenMonster(map, tonumber(tab[2]), tonumber(tab[3]), 1, 8, tab[1], 1, true)
end