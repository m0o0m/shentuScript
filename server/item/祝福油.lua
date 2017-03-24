local luck_table =
{
	[-10] = 10000,
	[-9] = 10000,
	[-8] = 10000,
	[-7] = 10000,
	[-6] = 10000,
	[-5] = 10000,
	[-4] = 10000,
	[-3] = 10000,
	[-2] = 10000,
	[-1] = 10000,
	[0] = 10000,
	[1] = 9500,
	[2] = 7500,
	[3] = 5500,
	[4] = 3500,
	[5] = 2500,
	[6] = 1500,
	[7] = 500,
	[8] = 0,
	[9] = 0,
	[10] = 0,
	luck_broadcast = 5,
	luck_rate = 3333,
};


function main(player, item)
	local weapon = lualib:Item_GetBySite(player, lua_site_weapon);
	if weapon == "" then
		lualib:SysMsg_SendTriggerMsg(player, "请装备武器!")
		return false;
	end
	
	local luck = lualib:Equip_GetLuckCurse(player, weapon);
	local rate = luck_table[luck];
	assert(rate, "系统错误:幸运诅咒值非法!");
	
	if lualib:GenRandom(1, 10000) <= luck_table.luck_rate then
		lualib:SysMsg_SendTriggerMsg(player, "武器祝福失败！");
        return true
	end
	
	if lualib:GenRandom(1, 10000) <= rate then
		luck = luck + 1;
		if luck >= luck_table.luck_broadcast then
			lualib:SysMsg_SendCenterMsg(1, lualib:Name(player).."将武器幸运提升至"..luck.."点！", "");
		end
		
		assert(lualib:Equip_SetLuckCurse(player, weapon, luck), "系统错误:设置装备幸运失败.");
		lualib:SysMsg_SendTriggerMsg(player, "你的武器被祝福!");
	else
		assert(lualib:Equip_SetLuckCurse(player, weapon, luck - 1), "系统错误:设置装备幸运失败.");
		lualib:SysMsg_SendTriggerMsg(player, "你的武器被诅咒!");
	end
	
    return true
end

