local target_info={}

target_info["���黨"]="ҩ��"--target_info[����] = ����
target_info["��Ůľ��"]="ҩ��"
target_info["������"]="ҩ��"
target_info["���Ǻ���"]="ҩ��"
target_info["������"]="ҩ��"
target_info["������"]="ҩ��"
target_info["��ҩ"]="ҩ��"
target_info["���"]="���"
target_info["�ر�"]="�ر�"
target_info["��ҩ"]="��ҩ"

local target_info1={}--

target_info1["ҩ��"]="���黨"--target_info1[����] = ����
target_info1["ҩ��"]="��Ůľ��"
target_info1["ҩ��"]="������"
target_info1["ҩ��"]="���Ǻ���"
target_info1["ҩ��"]="������"
target_info1["ҩ��"]="������"
target_info1["ҩ��"]="��ҩ"

local catch_distance = 2 --����
local catch_wait_time = 1000    --������ʱ��
local catch_rand = 100 --�ɹ���
local catch_relive = 1800 --����ˢ��ʱ��[��]

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
	
	local rx = lualib:GenRandom(-1,1)
	local ry = lualib:GenRandom(-1,1)
	local re_x = x + rx
	local re_y = y + ry
	
   if not lualib:Monster_Remove(params) then
        lualib:SysWarnMsg(player, lualib:Name(params).."�����ڣ��ɼ�ʧ�ܣ�")
        return
    end
	
	local timeid = lualib:GenTimerId(map)
	
	lualib:AddTimerEx(map, timeid, catch_relive * 1000, 1, "caijireborn", key_name.."&"..re_x.."&"..re_y)	
    
    if not lualib:Player_GiveItemUnbind(player, target_info[key_name], 1, "�ɼ�", target_info[key_name]) then
        lualib:SysWarnMsg(player, "��ҩ�ɼ�ʧ�ܣ�")
    end
end

function catch_abort(player, params)   --������ʧ��
    lualib:SysWarnMsg(player, "�ɼ�"..lualib:Name(params).."����ϣ�")
end

function caijireborn(map, timerid, param)
	local tab = string.split(param, "&")
	lualib:Map_GenMonster(map, tonumber(tab[2]), tonumber(tab[3]), 1, 8, tab[1], 1, true)
end