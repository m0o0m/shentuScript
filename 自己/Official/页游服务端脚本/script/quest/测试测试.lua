function on_accept(player,quest_id)
	local MaxMonsterGroup = lualib:GetQuestGroupHuntingsCount(player,quest_id,444);
	lualib:SysMsg_SendBroadcastMsg("Ҫ�����"..MaxMonsterGroup, "����");
	lualib:SetQuestGroupHuntingsCount(player,quest_id,444,5);
end