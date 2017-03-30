--------------------------------------------------------------------------------
--计划任务的定时回调（玩法逻辑部分）
--------------------------------------------------------------------------------
function on_start(id, map)
end

function on_start_decl(id, map, times)
	lualib:Error("on_start_decl map: " .. lualib:Map_GetMapKeyName(map))
	local time      = {["min"] = 15459, ["max"] = 15461}
	local day       = lualib:GetAllDays(0)
	local monOnTime = 
	{
		[15459] = {["monKey"] = "地主之王1", ["x"] = 50, ["y"] = 36, ["range"] = 2},
		[15460] = {["monKey"] = "地主之王2", ["x"] = 100, ["y"] = 100, ["range"] = 10},
		[15461] = {["monKey"] = "地主之王3", ["x"] = 100, ["y"] = 100, ["range"] = 10}
	}

	if (day < time.min) or (day > time.max) then
		return
	end
	
    times = tonumber(times)
    if times == 0 then
		if not lualib:Map_GenSingleMonster(map, monOnTime[day].x, monOnTime[day].y, monOnTime[day].range, lualib:GenRandom(0, 7), monOnTime[day].monKey, false) then
			lualib:Error("刷地主之王失败")
		else
			--lualib:SysMsg_SendBroadcastMsg("地主之王出现在绝路岭！！", "系统通知")
			lualib:SysMsg_SendBoardMsg("0", "地主之王", "地主之王出现在绝路岭！！", 15000)
		end
    else
        --lualib:SysMsg_SendBroadcastMsg("地主之王将在20:00刷新在绝路岭，消灭地主之王可以获得丰厚的奖励", "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "地主之王", "地主之王将在20:00刷新在绝路岭，消灭地主之王可以获得丰厚的奖励", 15000)
	end
end

function on_end_decl(id, map, times)
end