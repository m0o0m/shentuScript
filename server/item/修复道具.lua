						
local repaire_sites = 
{
	["修复油"] = 
	{
		sites = 
		{
			lua_site_weapon
		},
		profession = 1,
	},
	["战神油"] = 
	{
		sites = 
		{
			lua_site_weapon
		},
		profession = 2,
	},
	["修复神水"] = 
	{
		sites = 
		{
			lua_site_weapon, lua_site_helmet, 
			lua_site_wrist_0, lua_site_wrist_1, 
			lua_site_armor, lua_site_shoes, 
			lua_site_shoulder, lua_site_necklace, 
			lua_site_ring_0, lua_site_ring_1, 
			lua_site_gem, lua_site_medal,
			lua_site_wings
		},
		profession = 2,
	},
}

function main(player, item)
	local keyname = lualib:KeyName(item);
	
	local t = repaire_sites[keyname];
	assert(t, "系统错误:物品挂上了错误的脚本.");
	
	local result = repaire(player, t);
	if result then
		lualib:SysMsg_SendTriggerMsg(player, "物品修理成功!");
	end
	
	return result;
end

function repaire(player, t)
	local equip = nil;
	local result = false;
	local adv = false;
	
	for _, v in ipairs(t.sites) do
		equip = lualib:Item_GetBySite(player, v);
		if equip ~= "" and lualib:CanFixEquip(equip, t.profession) then
			result = true;
			
			if t.profession == 2 then adv = true; end
			assert(lualib:Player_FixSingleEquip(player, equip, adv), "系统错误,修理玩家装备失败!");
		end
	end
	
	return result;
end