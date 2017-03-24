lualib:SetFormAllowFunc({"main"});

function familywar_login(player)
	local familywar_list = lualib:GetRunningFamilyWar(player);
	if #familywar_list == 0 then
		return;
	end
	
	lualib:NotifyRunningFamilyWar(player);
	lualib:SysMsg_SendTriggerMsg(player, "����л����ڽ����л�ս,�Ͽ����ս����.");
end

function main(player, enemy)
	local family = lualib:Name(lualib:GuildGuid(player));
    if family == "" then
        return "��û���лᣡ"
    end
	
	if not lualib:HasFamily(enemy) then
        return "������л����Ʋ����ڡ�"
    end
	
	if lualib:IsInFamily(player, enemy) then
        return "�������Լ��л���ս��"
    end
	
	if lualib:IsFamilyAlly(player, enemy) then
        return "������ͬ���л���ս��"
    end

    if not lualib:Player_IsGuildLeader(player) then
        return "�㲻�ǻ᳤��"
    end

    if lualib:Player_IsGoldEnough(player, 500000, false) then
		if not lualib:SubGold(player, 500000, "�۽�ң��л�ս�����", player) then
			return "�۳����ʧ��"
		end
		
		if not lualib:StartFamilyWar(family, enemy) then
			return "�л�ս����ʧ�ܣ�ϵͳæ��"
		end
	else
		local item = "�ַ���"
		if lualib:ItemCount(player, item) < 1 then
			return "�����л�ս��Ҫ"..item.."����50���ң�"
		else
			if not lualib:TakeItem(player, item, 1, "�۵��ߣ��л�ս����", "�л����Ա") then
				return "�Ͻ���Ʒ"..item.."ʧ�ܣ�"
			end
			
			if not lualib:StartFamilyWar(family, enemy) then
				return "�л�ս����ʧ�ܣ�ϵͳæ��"
			end
		end	
    end

	lualib:SysMsg_SendTopMsg(1, family.."�л���"..enemy.."�л���л�ս��ʼ��!")
	lualib:SysMsg_SendBroadcastColor(family.."�л���"..enemy.."�л���л�ս��ʼ��!", "", 1, 12)	
    return ""
end

