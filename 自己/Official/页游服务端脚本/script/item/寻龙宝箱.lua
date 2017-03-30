function main(player, item)
	
	local random = 0
	random = math.random(1, 1000)
	if random == 1 then 
		if not lualib:Player_AddIngot(player, 2000, false, "open寻龙宝箱奖励", "open寻龙宝箱奖励") then 
			lualib:Error("给"..lualib:Name(player)"发放'open寻龙宝箱奖励'失败!")
			return false
		end
		lualib:SysPromptMsg(player, '打开寻龙宝箱获得2000元宝')
		--lualib:ShowFormWithContent(player, "脚本表单", "bottom_msg_tip('打开寻龙宝箱获得2000元宝')")
		
	elseif random < 100 then
		if not lualib:Player_AddIngot(player, 1000, false, "open寻龙宝箱奖励", "open寻龙宝箱奖励") then 
			lualib:Error("给"..lualib:Name(player)"发放'open寻龙宝箱奖励'失败!")
			return false
		end
		lualib:SysPromptMsg(player, '打开寻龙宝箱获得1000元宝')
		--lualib:ShowFormWithContent(player, "脚本表单", "bottom_msg_tip('打开寻龙宝箱获得1000元宝')")
		
	else
		if not lualib:Player_AddIngot(player, 500, false, "open寻龙宝箱奖励", "open寻龙宝箱奖励") then 
			lualib:Error("给"..lualib:Name(player)"发放'open寻龙宝箱奖励'失败!")
			return false
		end
		lualib:SysPromptMsg(player, '打开寻龙宝箱获得500元宝')
		--lualib:ShowFormWithContent(player, "脚本表单", "bottom_msg_tip('打开寻龙宝箱获得500元宝')")
		
	end
	return true
end