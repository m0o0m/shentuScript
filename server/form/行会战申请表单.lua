lualib:SetFormAllowFunc({"main"});

function familywar_login(player)
	local familywar_list = lualib:GetRunningFamilyWar(player);
	if #familywar_list == 0 then
		return;
	end
	
	lualib:NotifyRunningFamilyWar(player);
	lualib:SysMsg_SendTriggerMsg(player, "你的行会正在进行行会战,赶快加入战斗吧.");
end

function main(player, enemy)
	local family = lualib:Name(lualib:GuildGuid(player));
    if family == "" then
        return "你没有行会！"
    end
	
	if not lualib:HasFamily(enemy) then
        return "输入的行会名称不存在。"
    end
	
	if lualib:IsInFamily(player, enemy) then
        return "不能向自己行会宣战。"
    end
	
	if lualib:IsFamilyAlly(player, enemy) then
        return "不能向同盟行会宣战。"
    end

    if not lualib:Player_IsGuildLeader(player) then
        return "你不是会长。"
    end

    if lualib:Player_IsGoldEnough(player, 500000, false) then
		if not lualib:SubGold(player, 500000, "扣金币：行会战申请表单", player) then
			return "扣除金币失败"
		end
		
		if not lualib:StartFamilyWar(family, enemy) then
			return "行会战创建失败，系统忙。"
		end
	else
		local item = "讨伐令"
		if lualib:ItemCount(player, item) < 1 then
			return "开启行会战需要"..item.."或者50万金币！"
		else
			if not lualib:TakeItem(player, item, 1, "扣道具：行会战消耗", "行会管理员") then
				return "上缴物品"..item.."失败！"
			end
			
			if not lualib:StartFamilyWar(family, enemy) then
				return "行会战创建失败，系统忙。"
			end
		end	
    end

	lualib:SysMsg_SendTopMsg(1, family.."行会与"..enemy.."行会的行会战开始了!")
	lualib:SysMsg_SendBroadcastColor(family.."行会与"..enemy.."行会的行会战开始了!", "", 1, 12)	
    return ""
end

