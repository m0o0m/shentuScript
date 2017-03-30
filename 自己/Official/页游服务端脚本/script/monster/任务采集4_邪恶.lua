


function main(monster, player)
    --�жϾ���
	local catch_distance = 2 --����
	local catch_wait_time = 2100    --������ʱ��   
	if lualib:Distance(monster, player) > catch_distance then
        lualib:SysPromptMsg(player, "��"..lualib:Name(monster).."̫Զ���޷����У�")
        return ""
    end
    
    --����������
    if lualib:ProgressBarStart(player, catch_wait_time, "ȡ��", "catch_complete", "catch_abort", monster) == false then
	    lualib:SysPromptMsg(player, "�޷�����ȡ�����")
        return ""
	end	
	return ""
end


function catch_complete(player, params)		--�������ɹ�
	local x = lualib:X(player)
	local y = lualib:Y(player)
	local map = lualib:MapGuid(player) 
	local in_monster = {"С��ħ1", "С��ħ1", "С��ħ1", "С��ħ1", "С��ħ2"}	
	local rand = lualib:GenRandom(1, 100)
	local catch_rand = 20 --�ɹ���
	
		if rand <= catch_rand then
		   lualib:AddItem(player, lualib:KeyName(params), 1, true, "�ɼ�", "")
		   lualib:SysPromptMsg(player, "�ɹ����"..lualib:Name(params))
		   return

		else
			lualib:Map_GenSingleMonster(map, x, y, 2, 5, in_monster[lualib:GenRandom(1, #in_monster)], false)
			lualib:SysPromptMsg(player, "̫��С���ˣ��㾪����ħ�����ʵ�����У��������Ӻ�������")
		end 
		return
end

	
function catch_abort(player, params)   --������ʧ��
    lualib:SysPromptMsg(player, "����ϣ�")
end