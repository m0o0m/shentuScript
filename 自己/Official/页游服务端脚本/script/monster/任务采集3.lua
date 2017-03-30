


function main(monster, player)
    --�жϾ���
	local catch_distance = 2 --����
	local catch_wait_time = 2100    --������ʱ��   
	if lualib:Distance(monster, player) > catch_distance then
        lualib:SysPromptMsg(player, "��"..lualib:Name(monster).."̫Զ���޷��ɼ���")
        return ""
    end
    
    --����������
    if lualib:ProgressBarStart(player, catch_wait_time, "�ɼ�", "catch_complete", "catch_abort", monster) == false then
	    lualib:SysPromptMsg(player, "�޷������ɼ�")
        return ""
	end	
	return ""
end


function catch_complete(player, params)		--�������ɹ�
	local x = lualib:X(player)
	local y = lualib:Y(player)
	local map = lualib:MapGuid(player) 
	local in_monster = {"ֲľ����", "ֲľ����", "ֲľ����", "ֲľ����", "ֲľ���־�Ӣ"}	
	local rand = lualib:GenRandom(1, 150)
	local catch_rand = 100 --�ɹ���:rand ��[1��100]��ʱ�ɼ��ɹ���[101��150]ʱ����ֲľ����
	
		if rand <= catch_rand then
		   lualib:AddItem(player, lualib:KeyName(params), 1, true, "�ɼ�", "")
		   lualib:SysPromptMsg(player, "�ɹ����"..lualib:Name(params))
		   return

		else
			lualib:Map_GenSingleMonster(map, x, y, 2, 5, in_monster[lualib:GenRandom(1, #in_monster)], false)
			lualib:SysPromptMsg(player, "̫��С���ˣ��㾪��ֲľ���֣����ʵ�����У��������Ӻ�������")
		end 
		return
end

	
function catch_abort(player, params)   --������ʧ��
    lualib:SysPromptMsg(player, "�ɼ�"..lualib:Name(params).."����ϣ�")
end