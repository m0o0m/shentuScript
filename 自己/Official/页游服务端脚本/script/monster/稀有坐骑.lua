local target_info={}

target_info["ϡ������"]="������(δ����)"

horse = {"������(δ����)", "ѩ������(δ����)", "������(δ����)"}

local catch_distance = 2 --ץ�����
local catch_wait_time = 5000    --ץ�������ʱ��
local catch_rand = 100 --ץ��ɹ���

function main(monster, player)
	-- �жϰ����Ƿ��п�λ
	if lualib:BagFree(player, true, false, false) < 1 then
		lualib:SysPromptMsg(player, "�����ո���1��ץ��ʧ�ܣ�")
	end
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
   
	local map = lualib:MapGuid(player)
	local mapkeyname = lualib:KeyName(map)
	local mapname = lualib:Name(map)
	local playername = lualib:Name(player)	
	
	if not lualib:DelItem(player, "����", 1, 2, "ץ������", "����") then
        lualib:SysPromptMsg(player, "Ұ����ѱ��ץ��ʧ�ܣ���һ�λ�����ѱ������")
        return ""
    end
    local rand = lualib:GenRandom(1, 100)
    --lualib:SysPromptMsg(player, "rand= "..rand)
	if mapkeyname == "������"  then catch_rand = 5 end
	
    if rand > catch_rand then
        lualib:SysPromptMsg(player, lualib:Name(params).."Ұ����ѱ��ץ��ʧ�ܣ���һ�λ�����ѱ������")
        return
    end
    
    if lualib:Monster_IsDie(params) == true then
        lualib:SysPromptMsg(player, "�����ѱ�ץ����ץ��ʧ�ܣ�")
        return ""
    end
    
    local key_name = lualib:KeyName(params)
    --�ж������Ƿ񻹴���,������ɾ��
    if not lualib:Kill(params) then
        lualib:SysPromptMsg(player, lualib:Name(monster).."�����ڣ�ץ��ʧ�ܣ�")
        return
    end
    local item_key = horse[lualib:GenRandom(1,3)]
    if not lualib:Player_GiveItemUnbind(player, item_key, 1, "ץ��", target_info[key_name]) then
        lualib:SysPromptMsg(player, "�������ʧ�ܣ�")
    end

    local n1 = string.find(item_key,"δ����")
    local item_name = string.sub(item_key,1,n1-2)
    
	lualib:SysMsg_SendCenterMsg(1, "["..playername.."]������Ʒ������["..mapname.."]ץ������һƥ["..item_name.."]���ﱤ�ˣ�", "")
	lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BROWN#["..playername.."] #COLORCOLOR_YELLOW#������Ʒ������["..mapname.."]ץ������һƥ["..item_name.."]���ﱤ�ˣ�", "", 1, 12)
    lualib:OnGloryTrigger(player, 1006, "", 0, "", "")

end

function catch_abort(player, params)   --������ʧ��
    lualib:SysPromptMsg(player, "ץ��"..lualib:Name(params).."����ϣ�")
end
