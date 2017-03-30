local target_info={}

target_info["疾风野马"]="疾风(未开光)"


local catch_distance = 2 --抓马距离
local catch_wait_time = 5000    --抓马进度条时间
local catch_rand = 30 --抓马成功率

function main(monster, player)
	-- 判断包裹是否有空位
	if lualib:BagFree(player, true, false, false) < 1 then
		lualib:SysPromptMsg(player, "包裹空格不足1格，抓捕失败！")
	end
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
	local map = lualib:MapGuid(player)
	local mapkeyname = lualib:KeyName(map)
	local playername = lualib:Name(player)	
	
	if not lualib:DelItem(player, "套索", 1, 2, "抓马消耗", "套索") then
        lualib:SysPromptMsg(player, "野性难驯，抓捕失败！下一次或许能驯服它！")
        return ""
    end
    
    if lualib:Monster_IsDie(params) == true then
        lualib:SysPromptMsg(player, "坐骑已被抓捕，抓捕失败！")
        return ""
    end
    
    local rand = lualib:GenRandom(1, 100)
    --lualib:SysPromptMsg(player, "rand= "..rand)
    if rand > catch_rand then
        lualib:SysPromptMsg(player, lualib:Name(params).."野性难驯，抓捕失败！下一次或许能驯服它！")
        return
    end

    local key_name = lualib:KeyName(params)
    --判断猎物是否还存在,存在则删除
    if not lualib:Kill(params) then
        lualib:SysPromptMsg(player, lualib:Name(monster).."不存在，抓捕失败！")
        return
    end

    if not lualib:Player_GiveItemUnbind(player, target_info[key_name], 1, "抓马", target_info[key_name]) then
        lualib:SysPromptMsg(player, "添加猎物失败！")
    end
    
    item_name = "疾风"

	lualib:SysMsg_SendCenterMsg(1, "["..playername.."]→→在["..mapkeyname.."]抓捕到了一匹"..item_name.."！高手啊！", "")
	lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BROWN#["..playername.."]#COLORCOLOR_YELLOW#→→在["..mapkeyname.."]抓捕到了一匹#COLORCOLOR_BROWN#"..item_name.."#COLORCOLOR_YELLOW#！高手啊！", "", 1, 12)
    lualib:OnGloryTrigger(player, 1006, "", 0, "", "")

end

function catch_abort(player, params)   --进度条失败
    lualib:SysPromptMsg(player, "抓捕"..lualib:Name(params).."被打断！")
end
