local target_info={}

target_info["Ұ��"]="��Ѫ����"


local catch_distance = 2 --ץ�����
local catch_wait_time = 5000    --ץ�������ʱ��
local catch_rand = 30 --ץ��ɹ���

function main(monster, player)
    --�жϾ���
    if lualib:Distance(monster, player) > catch_distance then
        lualib:SysPromptMsg(player, "��"..lualib:Name(monster).."̫Զ���޷�ץ����")
        return ""
    end
    --�ж��Ƿ�������
    if lualib:ItemCountByKey(player, "����", true, false, false, 2) <= 0 then
        lualib:SysPromptMsg(player, "û���������޷�ץ����")
        return ""
    end
    

    
    --����ץ�������
    if lualib:ProgressBarStart(player, catch_wait_time, "ץ��", "catch_complete", "catch_abort", monster) == false then
	    lualib:SysPromptMsg(player, "�޷�����ץ��"..lualib:Name(monster).."��������")
        return ""
	end
	
	return ""
end

function catch_complete(player, params)		--�������ɹ�
	if not lualib:DelItem(player, "����", 1, 2, "ץ������", "����") then
        lualib:SysPromptMsg(player, "ʹ������ʧ�ܣ�")
        return ""
    end
	
    local rand = lualib:GenRandom(1, 100)
    --lualib:SysPromptMsg(player, "rand= "..rand)
    if rand > catch_rand then
        lualib:SysPromptMsg(player, lualib:Name(params).."ץ��ʧ�ܣ�")
        return 
		end
    
    local key_name = lualib:KeyName(params)
    --�ж������Ƿ񻹴���,������ɾ��
    if not lualib:Monster_Remove(params) then
        lualib:SysPromptMsg(player, lualib:Name(monster).."�����ڣ�ץ��ʧ�ܣ�")
        return
    end
    
    if not lualib:Player_GiveItemUnbind(player, target_info[key_name], 1, "ץ��", target_info[key_name]) then
        lualib:SysPromptMsg(player, "�������ʧ�ܣ�")
    end
end

function catch_abort(player, params)   --������ʧ��
    lualib:SysPromptMsg(player, "ץ��"..lualib:Name(params).."����ϣ�")
end