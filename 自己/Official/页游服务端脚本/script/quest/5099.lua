
function on_accept(player, quest_id)
	
	lualib:SetInt(player, "5099", 0)
	lualib:SysMsg_SendTriggerMsg(player, "ע�⣺5���Ӻ����ս��������")
	lualib:AddTimer(player, 5099, 5000, 1, "enter_dgn")
	
	
	return true
end

function enter_dgn(player)
	local dgn_id = lualib:Map_CreateDgn("�ػ�����", false, 1200)
	lualib:Player_SetDgnTicket(player, dgn_id) 
    lualib:Player_EnterDgn(player, "�ػ�����", 65, 65, 2)
	lualib:AddBuff(player, "���BUFF14", 600000)
	lualib:SysWarnMsg(player, "�ػ���ӡ���ģ�5�����ڲ����ٻ������������")
	return ""
			
end

function can_accomplish(player,quest_id)
	local a = lualib:GetInt(player, "5099")
	if a ~= 1 then return false end	
	return true
			
end


function on_accomplish(player, quest_id)

	lualib:DelBuff(player, "���BUFF14")
	return true
end