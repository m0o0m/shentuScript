
lualib:SetFormAllowFunc({"main"});

function main(player, girl)
	-- �ж��Ա������ܸ����е�
    if lualib:Gender(player) ~=  lua_gender_male then
        return "������¶���Ů����������ֵ�á�\n\n<@leave *01*�뿪>"
    end

    -- �жϻ��
    if lualib:GetStr(player, "��żGUID") ~= "" then
        return "�ػ���Ƿ����ġ�\n\n<@leave *01*�뿪>"
    end

    if lualib:ItemCount(player, "����ָ") < 1 then
       return "����ָ��û׼���þ�����飿\n\n<@leave *01*�뿪>"
    end
	        
    -- �ж϶Է��Ƿ�����
    local girlfriend = lualib:Player_GetGuid(girl)
    if girlfriend == "" or lualib:Distance(player, girlfriend) > 10 then
        return "�ף���û����"..girl.."�����ﰡ��"
    end
    
    -- �ж϶Է��Ա��۲��޳ɻ���
    if lualib:Gender(girlfriend) ==  lua_gender_male then
        return "�ֵܵ�Ʒζ�ܶ��ذ���"
    end
    
    -- �ж϶Է����
    if lualib:GetStr(girlfriend, "��żGUID") ~= "" then
        return "��������׷Ů���ó��簡��"
    end
    
	--�������ϣ�ѯ�ʽ������Ƿ�ͬ��
    lualib:SetStr(player, "������", girl)
    lualib:ShowFormWithContent(girlfriend, "����", lualib:Name(player))
    
    return ""
end