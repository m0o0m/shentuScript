--����ɹ���ȡ�ص�
--quest_id ����id
function on_accept(player, quest_id)
		lualib:SetInt(player, "3114_q", 0)
		return true
end


function can_accomplish(player, quest_id)
		local q_3114 = lualib:GetInt(player, "3114_q")
		if	q_3114 < 1 then
			lualib:SetInt(player, "3114_q", 1)
		end
    return true
end