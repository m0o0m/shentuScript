function on_accept(player,quest_id)
	local MaxMonsterGroup = lualib:GetQuestGroupHuntingsCount(player,quest_id,444);
	lualib:SysMsg_SendBroadcastMsg("要打多少"..MaxMonsterGroup, "测试");
	lualib:SetQuestGroupHuntingsCount(player,quest_id,444,5);
end