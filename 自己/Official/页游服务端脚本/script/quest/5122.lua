

function on_accept(player, quest_id)    --��ȡ����ʱ���趨�������ֵΪ0  �������������ƶ���ʱ���趨�������ֵΪ1
	lualib:SetInt(player, "5122_q", 0)
	lualib:SysMsg_SendTriggerMsg(player, "��һ��ҪС�ģ����п������������˻���ͬʱ���ֹ��")
    return true
end


function can_accomplish(player, quest_id)
	local a = lualib:GetInt(player, "5122_q")   --�жϱ���ֵ�Ƿ�Ϊ1  Ϊ1������������
	if a ~= 1 then
		return false
	end
	return true
end
