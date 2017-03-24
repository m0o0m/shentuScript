function on_create (monster)
	lualib:AddTrigger(monster, lua_trigger_monster_in_fight, "on_enter_fight");
	lualib:AddTrigger(monster, lua_trigger_monster_out_fight, "on_leave_fight");
end

function on_enter_fight(monster)
        lualib:SysRoleTalk(monster, "祖玛教主战斗开始!");
	lualib:AddTimer(monster, 1, 30000, -1, "do_sunmmon");
	lualib:AddTimer(monster, 2, 5000, -1, "do_buff");
end

function on_leave_fight(monster)
        lualib:SysRoleTalk(monster, "祖玛教主战斗结束!");
	lualib:ClearTimer(monster);
end

function do_buff(monster, ...)
	local dwMaxHp, dwHp = lualib:Hp(monster, true), lualib:Hp(monster, false);
	
	if dwHp > 80 * dwMaxHp / 100 then
		if lualib:HasBuff(monster, "梵天僧狂暴") then 
			assert(lualib:DelBuff(monster, "梵天僧狂暴"), "系统错误:未知异常!");
			return;
		end
	elseif ((dwHp > 70 * dwMaxHp / 100) and (dwHp < 80 * dwMaxHp / 100)) or
		   ((dwHp > 30 * dwMaxHp / 100) and (dwHp < 40 * dwMaxHp / 100)) or
		   ((dwHp > 0) and (dwHp < 10 * dwMaxHp / 100)) then
		assert(lualib:AddBuff(monster, "梵天僧狂暴", 60), "系统错误:未知异常");
	end
end

function do_sunmmon(monster, ...)
	local summon_t = 
	{
		{KeyName = "祖玛弓箭手", Count = 1},
		{KeyName = "祖玛卫士", Count = 4},
		{KeyName = "祖玛卫士0", Count = 1},
		{KeyName = "祖玛雕像", Count = 4},
		MaxCount = 50
	};
	
	local dwMonsterCount = lualib:GetInt(monster, "servant");
	local dwSummonCount = 0;
	for _, v in ipairs(summon_t) do
		dwSummonCount = dwSummonCount + v.Count;
	end
	
	if dwMonsterCount + dwSummonCount > summon_t.MaxCount then
		return;
	end

	lualib:SetInt(monster, "servant", dwMonsterCount + dwSummonCount);
	
	local x, y, strMap = lualib:X(monster), lualib:Y(monster), lualib:MapGuid(monster);
	for _, v in ipairs(summon_t) do
		for i = 1, v.Count do
			local servant = lualib:Map_GenSingleMonster(strMap, x, y, 5, lualib:GenRandom(0, 7), v.KeyName, false);
			assert(servant ~= "", "系统错误:刷怪失败,是否怪物没有出生点?");
		
			lualib:SetStr(servant, "Master", monster);
			lualib:AddTrigger(servant, lua_trigger_monster_post_die, "on_monster_post_die");
		end
	end
end

function on_monster_post_die(strMonster, ...)
	local strMaster = lualib:GetStr(strMonster, "Master");
	if strMaster == "" or not lualib:Monster_IsExist(strMaster) then
		return;
	end
	
	lualib:SetInt(strMaster, "servant", lualib:GetInt(strMaster, "servant") - 1);
end