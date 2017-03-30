function on_accept(player,quest_id)
---	lualib:DropQuest(player, 500)	--删除串联任务
	return true
end

function can_accomplish(player,quest_id)
	if lualib:GetInt(player, "800questCanAccomplish") ~= 0 then
		return true
	end
	--lualib:SysPromptMsg(player, "repeat")
	if lualib:AddBuff(player, "完成任务", 0) then
		lualib:SetInt(player, "800questCanAccomplish",1)
	end
	
	
	return true
end

function on_accomplish(player,quest_id,select)
	lualib:SetInt(player, "800questCanAccomplish",0)
	return true
end
