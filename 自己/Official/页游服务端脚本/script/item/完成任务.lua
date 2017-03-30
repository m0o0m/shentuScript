function main( sPlayerID , sItemID )
	if lualib:ForceQuestReady( sPlayerID , 1 ) == true then
		lualib:SysMsg_SendBroadcastMsg("ForceQuestReady==true", "反馈")
	elseif lualib:ForceQuestReady( sPlayerID , 1 ) == false then
		lualib:SysMsg_SendBroadcastMsg("ForceQuestReady==false", "反馈")
	end
	if lualib:ForceQuestReady( sPlayerID , 2 ) == true then
		lualib:SysMsg_SendBroadcastMsg("ForceQuestReady==true", "反馈")
	elseif lualib:ForceQuestReady( sPlayerID , 2 ) == false then
		lualib:SysMsg_SendBroadcastMsg("ForceQuestReady==false", "反馈")
	end
	if lualib:ForceQuestReady( sPlayerID , 3 ) == true then
		lualib:SysMsg_SendBroadcastMsg("ForceQuestReady==true", "反馈")
	elseif lualib:ForceQuestReady( sPlayerID , 3 ) == false then
		lualib:SysMsg_SendBroadcastMsg("ForceQuestReady==false", "反馈")
	end
	if lualib:ForceQuestReady( sPlayerID , 4 ) == true then
		lualib:SysMsg_SendBroadcastMsg("ForceQuestReady==true", "反馈")
	elseif lualib:ForceQuestReady( sPlayerID , 4 ) == false then
		lualib:SysMsg_SendBroadcastMsg("ForceQuestReady==false", "反馈")
	end
	if lualib:ForceQuestReady( sPlayerID , 5 ) == true then
		lualib:SysMsg_SendBroadcastMsg("ForceQuestReady==true", "反馈")
	elseif lualib:ForceQuestReady( sPlayerID , 5 ) == false then
		lualib:SysMsg_SendBroadcastMsg("ForceQuestReady==false", "反馈")
	end
end