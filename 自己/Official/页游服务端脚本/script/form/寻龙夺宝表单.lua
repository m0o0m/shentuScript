function enter(player)
	local level = lualib:Level(player)
	if level < 50 or level >= 200 then 
		local str = "xldb_NPCShow.msg('��ĵȼ�������Ҫ��!')"
		lualib:ShowFormWithContent(player, "�ű���", str)
		return "" 
	end
	
	
	local dgn_id = lualib:GetStr("0", "xldb_existing_dgn")
	if dgn_id == "" then 
		local str = "xldb_NPCShow.msg('���δ������������ϵͳ���棡')"
		lualib:ShowFormWithContent(player, "�ű���", str)
		return ''
	end
	--[[
	local endTime = lualib:GetInt(dgn_id, "endTime")
	local now   = lualib:GetAllTime()
	if now >= endTime then 
		local str = "xldb_NPCShow.msg('��ѽ�����������Լ������룡')"
		lualib:ShowFormWithContent(player, "�ű���", str)
		return ''
	end
	--]]
	if lualib:Player_SetDgnTicket(player, dgn_id) == false then
		local str = "xldb_NPCShow.msg('��������ɽ����ͼѰ���ᱦ��')"
		lualib:ShowFormWithContent(player, "�ű���", str)
		return ''
    end
	
    if lualib:Player_EnterDgn(player, "Ѱ���ᱦ", 0, 0, 0) == false then
		local str = "xldb_NPCShow.msg('�����ͼѰ���ᱦʧ�ܣ�')"
		lualib:ShowFormWithContent(player, "�ű���", str)
		return ''
    end	
	local playerCounts = lualib:GetInt(dgn_id, "playerCounts")
	for i = 1 , playerCounts do  
		local playerGuid = lualib:GetStr(dgn_id, "player"..i)
		if playerGuid == player then 
			return ""
		end
	end
	lualib:SetInt(dgn_id, "playerCounts", playerCounts + 1)
	lualib:SetStr(dgn_id, "player"..lualib:GetInt(dgn_id, "playerCounts"), player)
	return ""
end

function LeaveCurrentMap(player)
	lualib:Player_MapMoveXY(player, "����" , 105 , 128 , 6 )
	return ""
end
