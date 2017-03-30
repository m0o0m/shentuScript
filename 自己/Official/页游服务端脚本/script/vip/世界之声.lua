function main(player, vipLevel)
	local VIP19_day = lualib:GetAllDays(0)
	local VIP19_today = lualib:GetInt(player, "VIP19_daybl")
	local VIP19_today_gonggao = lualib:GetInt(player, "VIP19_todaygonggao")
	
	if VIP19_today ~= VIP19_day then
		lualib:SetInt(player, "VIP19_daybl", VIP19_day)
		lualib:SetInt(player, "VIP19_todaygonggao", 0)
	end
	
	if lualib:Player_IsIntegralEnough(player, 1000) == false then
		lualib:SysMsg_SendPromptMsg(player, "你的积分不足1000点，不能留下世界之声！")
	else
		lualib:SysMsg_SendInputDlg(player, 1001, "请输入你要在公告板上留下的世界之声：", 45, 60, "EnterHot", "")
	end

	return true
	end
	
function EnterHot(id,player,player_msg)
	local VIP19_day = lualib:GetAllDays(0)
	local VIP19_today = lualib:GetInt(player, "VIP19_daybl")
	local VIP19_today_gonggao = lualib:GetInt(player, "VIP19_todaygonggao")
	local VIP19_worldcount = 1
	
	if VIP19_today ~= VIP19_day then
		lualib:SetInt(player, "VIP19_daybl", VIP19_day)
		lualib:SetInt(player, "VIP19_todaygonggao", 0)
	end
	
	if VIP19_today_gonggao < VIP19_worldcount then
		lualib:SetInt(player, "VIP19_todaygonggao", VIP19_today_gonggao + 1)
		
		if lualib:Player_SubIntegral(player, 1000, "发活动公告扣积分", player) == true then
			local name = "玩家-"..lualib:Name(player)..":"
			lualib:SysMsg_SendBoardMsg("0", name, name..player_msg, 5000)
		else
			lualib:SysMsg_SendPromptMsg(player, "积分扣除异常，不能留下世界之声！")
		end
	else
		lualib:SysMsg_SendPromptMsg(player, "你今日已经超过可留下世界之声的次数了！")
	end
	


	
	
	return true
end
	
	