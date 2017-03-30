local target_info={}

target_info["��ֵ�����"]="����"
target_info["���黨"]="���黨"
target_info["����"]="����"
target_info["������"]="������"
target_info["�����չ�"]="�����չ�"
target_info["�İ�֮��"]="�İ�֮��"
target_info["��ˮ����"]="��ˮ����"

local target_info1={}

target_info1["��ֵ�����"]="��ֵ�����"
target_info1["���黨"]="���黨"
target_info1["����"]="����"
target_info1["������"]="������"
target_info1["�����չ�"]="�����չ�"
target_info1["�İ�֮��"]="�İ�֮��"
target_info1["��ˮ����"]="��ˮ����"

local catch_distance = 2 --����
local catch_wait_time = 1000    --������ʱ��
local catch_rand = 100 --�ɹ���

function main(monster, player)
    --�жϾ���
    if lualib:Distance(monster, player) > catch_distance then
        lualib:SysWarnMsg(player, "��"..lualib:Name(monster).."̫Զ���޷��ɼ���")
        return ""
    end
	
    --����������
    if lualib:ProgressBarStart(player, catch_wait_time, "�ɼ�", "catch_complete", "catch_abort", monster) == false then
	    lualib:SysWarnMsg(player, "�޷������ɼ�"..lualib:Name(monster).."��������")
        return ""
	end
	
	return ""
end

function catch_complete(player, params)		--�������ɹ�
    local rand = lualib:GenRandom(1, 100)
	local x = lualib:X(params)
	local y = lualib:Y(params)
	local map = lualib:MapGuid(params)
	
    --lualib:SysWarnMsg(player, "rand= "..rand)
    if rand > catch_rand then
        lualib:SysWarnMsg(player, lualib:Name(params).."�ɼ�ʧ�ܣ�")
        return 
    end
    
    local key_name = lualib:KeyName(params)
    --�жϲɼ����Ƿ񻹴���,������ɾ��
	
	local rx = lualib:GenRandom(-50,50)
	local ry = lualib:GenRandom(-50,50)
	re_x = x + rx
	re_y = y + ry
	
   if not lualib:Monster_Remove(params) then
        lualib:SysWarnMsg(player, lualib:Name(params).."�����ڣ��ɼ�ʧ�ܣ�")
        return
    end
	
	local timeid = lualib:GenTimerId(map)
	
	lualib:AddTimerEx(map, timeid, 10000, 1, "caijireborn", target_info1[key_name])	
    
    if not lualib:Player_GiveItemUnbind(player, target_info[key_name], 1, "�ɼ�", target_info[key_name]) then
        lualib:SysWarnMsg(player, "�������ʧ�ܣ�")
    end
end

function catch_abort(player, params)   --������ʧ��
    lualib:SysWarnMsg(player, "�ɼ�"..lualib:Name(params).."����ϣ�")
end

function caijireborn(map, timerid, param)	
	lualib:Map_GenMonster(map, re_x, re_y, 100, 4, param, 1, true)	
end