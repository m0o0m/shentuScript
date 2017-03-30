

function on_accept(player, quest_id)    --接取任务时，设定任务变量值为0  当完成上面的治疗动作时，设定任务变量值为1
	lualib:SetInt(player, "5122_q", 0)
	lualib:SysMsg_SendTriggerMsg(player, "请一定要小心，极有可能在你治疗伤患的同时出现怪物！")
    return true
end


function can_accomplish(player, quest_id)
	local a = lualib:GetInt(player, "5122_q")   --判断变量值是否为1  为1则达成任务条件
	if a ~= 1 then
		return false
	end
	return true
end
