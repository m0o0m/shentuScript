function main(player, vipLevel)
	local VIP19_day = lualib:GetAllDays(0)
	local VIP19_today = lualib:GetInt(player, "VIP19_daybl")
	local VIP19_today_gonggao = lualib:GetInt(player, "VIP19_todaygonggao")
	
	if VIP19_today ~= VIP19_day then
		lualib:SetInt(player, "VIP19_daybl", VIP19_day)
		lualib:SetInt(player, "VIP19_todaygonggao", 0)
	end
	
	if lualib:Player_IsIntegralEnough(player, 1000) == false then
		lualib:SysMsg_SendPromptMsg(player, "��Ļ��ֲ���1000�㣬������������֮����")
	else
		lualib:SysMsg_SendInputDlg(player, 1001, "��������Ҫ�ڹ���������µ�����֮����", 45, 60, "EnterHot", "")
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
		
		if lualib:Player_SubIntegral(player, 1000, "�������ۻ���", player) == true then
			local name = "���-"..lualib:Name(player)..":"
			lualib:SysMsg_SendBoardMsg("0", name, name..player_msg, 5000)
		else
			lualib:SysMsg_SendPromptMsg(player, "���ֿ۳��쳣��������������֮����")
		end
	else
		lualib:SysMsg_SendPromptMsg(player, "������Ѿ���������������֮���Ĵ����ˣ�")
	end
	


	
	
	return true
end
	
	