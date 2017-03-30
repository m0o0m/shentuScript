local target_info={}

target_info["野马"]="汗血宝马"


local catch_distance = 2 --抓马距离
local catch_wait_time = 5000    --抓马进度条时间
local catch_rand = 30 --抓马成功率

function main(monster, player)
    --判断距离
    if lualib:Distance(monster, player) > catch_distance then
        lualib:SysPromptMsg(player, "离"..lualib:Name(monster).."太远，无法抓捕！")
        return ""
    end
    --判断是否有绳索
    if lualib:ItemCountByKey(player, "套索", true, false, false, 2) <= 0 then
        lualib:SysPromptMsg(player, "没有套索，无法抓捕！")
        return ""
    end
    

    
    --开启抓马进度条
    if lualib:ProgressBarStart(player, catch_wait_time, "抓捕", "catch_complete", "catch_abort", monster) == false then
	    lualib:SysPromptMsg(player, "无法开启抓捕"..lualib:Name(monster).."进度条！")
        return ""
	end
	
	return ""
end

function catch_complete(player, params)		--进度条成功
	if not lualib:DelItem(player, "套索", 1, 2, "抓马消耗", "套索") then
        lualib:SysPromptMsg(player, "使用套索失败！")
        return ""
    end
	
    local rand = lualib:GenRandom(1, 100)
    --lualib:SysPromptMsg(player, "rand= "..rand)
    if rand > catch_rand then
        lualib:SysPromptMsg(player, lualib:Name(params).."抓捕失败！")
        return 
		end
    
    local key_name = lualib:KeyName(params)
    --判断猎物是否还存在,存在则删除
    if not lualib:Monster_Remove(params) then
        lualib:SysPromptMsg(player, lualib:Name(monster).."不存在，抓捕失败！")
        return
    end
    
    if not lualib:Player_GiveItemUnbind(player, target_info[key_name], 1, "抓马", target_info[key_name]) then
        lualib:SysPromptMsg(player, "添加猎物失败！")
    end
end

function catch_abort(player, params)   --进度条失败
    lualib:SysPromptMsg(player, "抓捕"..lualib:Name(params).."被打断！")
end