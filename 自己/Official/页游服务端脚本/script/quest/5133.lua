
function on_accept(player, quest_id)	
	lualib:SetInt(player, "5133", 0)
	lualib:SetInt(player, "defense", 0)
	lualib:SysWarnMsg(player, "ע�⣺���������׼����������ս����ʦ���������񸱱���\nȷ���������񲻳���10������������ʧ�ܣ�")	
	return true
end


function can_accomplish(player, quest_id)
	
	local a = lualib:GetInt(player, "5133")
	if a ~= 1 then
		return false
	end
	return true
			
end

