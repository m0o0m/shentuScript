
lualib:SetFormAllowFunc({"main"});

function main(player, boy, result)
    -- �ж��Լ��Ա�Ӧ��ĸ���Ů��
    if lualib:Gender(player) ~=  lua_gender_female then
        return "���˺����ˡ���"
    end
    
    -- �ж��Լ����
    if lualib:GetStr(player, "��żGUID") ~= "" then
        return "�ػ���Ƿ����ġ�"
    end
    
    -- �ж϶Է��Ƿ�����
    local boyfriend = lualib:Player_GetGuid(boy)
    if boyfriend == "" or lualib:Distance(player, boyfriend) > 10 then
        return "�ף���û����"..boy.."�����ﰡ��"
    end
    
    -- �ж϶Է��Ƿ����Լ������
	local name = lualib:Name(player)
    local propose_name = lualib:GetStr(boyfriend, "������")
    if propose_name ~= name then
        return "�Է������Ѿ���������������ˡ�"
    end
    
    -- �Ƿ�ͬ�����
    if result ~= 1 then
        lualib:SysMsg_SendTriggerMsg(boyfriend, name.."�ܾ���������")
        return "��ܾ���"..boy.."�����"
    end
    
    -- �ж϶Է��Ա���Ҳ���޳�����
    if lualib:Gender(boyfriend) ==  lua_gender_female then
        return "��������������ô����"
    end
    
    -- �ж϶Է����
    if lualib:GetStr(boyfriend, "��żGUID") ~= "" then
        return "�۾��������������������"
    end

	-- �ж��������Ƿ��г��з�
    if lualib:ItemCount(boyfriend, "����ָ") < 1 then
        return "��������ò�ưѽ���ָ�㶪�ˡ�"
    end

	assert(lualib:TakeItem(boyfriend, "����ָ", 1, "ɾ��Ʒ������", "����"), "ϵͳ����:ɾ������ָʧ��.");

    -- �������ϣ����
    lualib:SetStr(player, "��żGUID", boyfriend)
    lualib:SetStr(boyfriend, "��żGUID", player)
    lualib:SetStr(player, "��ż����", boy)
    lualib:SetStr(boyfriend, "��ż����", name)
   
	lualib:DelayCall(player, 1, "marry:marry_load", "");
    lualib:DelayCall(boyfriend, 1, "marry:marry_load", "");
	
    lualib:SetStr(boyfriend, "������", "")
    
    lualib:SysMsg_SendPromptMsg(player, "ף���ǰ�ͷ���ϣ�")
    lualib:SysMsg_SendPromptMsg(boyfriend, "ף���ǰ�ͷ���ϣ�")
    lualib:NotifyVar(player, "��ż����")
    lualib:NotifyVar(boyfriend, "��ż����")
    return ""
end