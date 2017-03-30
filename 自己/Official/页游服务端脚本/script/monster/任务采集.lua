local target_info={}


target_info["���黨"]="���黨"
target_info["����"]="����"
target_info["������"]="������"
target_info["�����չ�"]="�����չ�"
target_info["�İ�֮��"]="�İ�֮��"
target_info["��ˮ����"]="��ˮ����"
target_info["�ǳ���Ƭ"]="�ǳ���Ƭ"
target_info["�����ϵ�С��"]="�����ϵ�С��"
target_info["�ຣ��"]="�ຣ��"


local target_info1={}


target_info1["���黨"]="���黨"
target_info1["����"]="����"
target_info1["������"]="������"
target_info1["�����չ�"]="�����չ�"
target_info1["�İ�֮��"]="�İ�֮��"
target_info1["��ˮ����"]="��ˮ����"
target_info1["�ǳ���Ƭ"]="�ǳ���Ƭ"
target_info1["�����ϵ�С��"]="�����ϵ�С��"
target_info1["�ຣ��"]="�ຣ��"

local catch_distance = 2 --����
local catch_wait_time = 1000    --������ʱ��
local catch_rand = 100 --�ɹ���

function main(monster, player)
    --�жϾ���
    if lualib:Distance(monster, player) > catch_distance then
        lualib:SysPromptMsg(player, "��"..lualib:Name(monster).."̫Զ���޷��ɼ���")
        return ""
    end

    

    
    --����������
    if lualib:ProgressBarStart(player, catch_wait_time, "�ɼ�", "catch_complete", "catch_abort", monster) == false then
	    lualib:SysPromptMsg(player, "�޷������ɼ�"..lualib:Name(monster).."��������")
        return ""
	end
	
	return ""
end

function catch_complete(player, params)		--�������ɹ�
    local rand = lualib:GenRandom(1, 100)
	local x = lualib:X(params)
	local y = lualib:Y(params)
	local map = lualib:MapGuid(params)
	
    --lualib:SysPromptMsg(player, "rand= "..rand)
    if rand > catch_rand then
        lualib:SysPromptMsg(player, lualib:Name(params).."�ɼ�ʧ�ܣ�")
        return 
    end
    
    local key_name = lualib:KeyName(params)

    if not lualib:Player_GiveItemUnbind(player, target_info[key_name], 1, "�ɼ�", target_info[key_name]) then
        lualib:SysPromptMsg(player, "�������ʧ�ܣ�")
    end
end

function catch_abort(player, params)   --������ʧ��
    lualib:SysPromptMsg(player, "�ɼ�"..lualib:Name(params).."����ϣ�")
end