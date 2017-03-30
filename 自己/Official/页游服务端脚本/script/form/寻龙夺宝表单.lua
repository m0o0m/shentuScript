function enter(player)
	local level = lualib:Level(player)
	if level < 50 or level >= 200 then 
		local str = "xldb_NPCShow.msg('你的等级不符合要求!')"
		lualib:ShowFormWithContent(player, "脚本表单", str)
		return "" 
	end
	
	
	local dgn_id = lualib:GetStr("0", "xldb_existing_dgn")
	if dgn_id == "" then 
		local str = "xldb_NPCShow.msg('活动尚未开启，请留意系统公告！')"
		lualib:ShowFormWithContent(player, "脚本表单", str)
		return ''
	end
	--[[
	local endTime = lualib:GetInt(dgn_id, "endTime")
	local now   = lualib:GetAllTime()
	if now >= endTime then 
		local str = "xldb_NPCShow.msg('活动已结束，明天可以继续参与！')"
		lualib:ShowFormWithContent(player, "脚本表单", str)
		return ''
	end
	--]]
	if lualib:Player_SetDgnTicket(player, dgn_id) == false then
		local str = "xldb_NPCShow.msg('您不被许可进入地图寻龙夺宝！')"
		lualib:ShowFormWithContent(player, "脚本表单", str)
		return ''
    end
	
    if lualib:Player_EnterDgn(player, "寻龙夺宝", 0, 0, 0) == false then
		local str = "xldb_NPCShow.msg('进入地图寻龙夺宝失败！')"
		lualib:ShowFormWithContent(player, "脚本表单", str)
		return ''
    end	
	local playerCounts = lualib:GetInt(dgn_id, "playerCounts")
	for i = 1 , playerCounts do  
		local playerGuid = lualib:GetStr(dgn_id, "player"..i)
		if playerGuid == player then 
			return ""
		end
	end
	lualib:SetInt(dgn_id, "playerCounts", playerCounts + 1)
	lualib:SetStr(dgn_id, "player"..lualib:GetInt(dgn_id, "playerCounts"), player)
	return ""
end

function LeaveCurrentMap(player)
	lualib:Player_MapMoveXY(player, "土城" , 105 , 128 , 6 )
	return ""
end
