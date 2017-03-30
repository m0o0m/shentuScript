
function on_accept(player, quest_id)	
	lualib:SetInt(player, "5133", 0)
	lualib:SetInt(player, "defense", 0)
	lualib:SysWarnMsg(player, "注意：请玩家做好准备后主动从战斗大师处进入任务副本！\n确保死亡村民不超过10个！否则任务失败！")	
	return true
end


function can_accomplish(player, quest_id)
	
	local a = lualib:GetInt(player, "5133")
	if a ~= 1 then
		return false
	end
	return true
			
end

