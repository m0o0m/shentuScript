function on_create(monster)
	lualib:AddTrigger(monster, 371, "in_fight")
	lualib:AddTrigger(monster, 372, "out_fight")
end

function in_fight(monster)
	lualib:AddBuff(monster, "���޶�����", 0)
lualib:SysMsg_SendBroadcastMsg("��������������", "���ߺη�������")
end

function out_fight(monster)
	lualib:AddBuff(monster, "���޶�����", 0)
lualib:SysMsg_SendBroadcastMsg("��������������", "���ߺη�������")
end