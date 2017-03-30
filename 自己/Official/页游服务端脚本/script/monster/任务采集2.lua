


function main(monster, player)
    --�жϾ���
	local catch_distance = 2 --����
	local catch_wait_time = 1000    --������ʱ��   
	if lualib:Distance(monster, player) > catch_distance then
        lualib:SysPromptMsg(player, "��"..lualib:Name(monster).."̫Զ���޷��ɼ���")
        return ""
    end
    
    --����������
    if lualib:ProgressBarStart(player, catch_wait_time, "͵ȡ", "catch_complete", "catch_abort", monster) == false then
	    lualib:SysPromptMsg(player, "�޷�����͵ȡ")
        return ""
	end	
	return ""
end


function catch_complete(player, params)		--�������ɹ�
	local x = lualib:X(player)
	local y = lualib:Y(player)
	local map = lualib:MapGuid(player) 
	local in_monster = {"��ͨ����", "��ͨ����", "��ͨ����", "��ͨ����", "��Ӣ����"}	
	local rand = lualib:GenRandom(1, 160)
	local catch_rand = 100 --�ɹ���:rand ��[1��100]��ʱ�ɼ��ɹ���[101��160]ʱ��������    --�ɼ��ɹ���100/160��62.5%
	
		if rand <= catch_rand then
		   lualib:AddItem(player, lualib:KeyName(params), 1, true, "͵ȡ", "")
		   lualib:SysPromptMsg(player, "�ɹ����"..lualib:Name(params))
		   return

		else
			lualib:Map_GenSingleMonster(map, x, y, 2, 5, in_monster[lualib:GenRandom(1, #in_monster)], false)
			lualib:SysPromptMsg(player, "����������Σ�գ����ʵ�����У����������Ӻ�������")
		end 
		return
end

	
function catch_abort(player, params)   --������ʧ��
    lualib:SysPromptMsg(player, "͵ȡ"..lualib:Name(params).."����ϣ�")
end