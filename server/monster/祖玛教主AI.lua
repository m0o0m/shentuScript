function on_create (monster)
	lualib:AddTrigger(monster, lua_trigger_monster_in_fight, "on_enter_fight");
	lualib:AddTrigger(monster, lua_trigger_monster_out_fight, "on_leave_fight");
end

function on_enter_fight(monster)
        lualib:SysRoleTalk(monster, "�������ս����ʼ!");
	lualib:AddTimer(monster, 1, 30000, -1, "do_sunmmon");
	lualib:AddTimer(monster, 2, 5000, -1, "do_buff");
end

function on_leave_fight(monster)
        lualib:SysRoleTalk(monster, "�������ս������!");
	lualib:ClearTimer(monster);
end

function do_buff(monster, ...)
	local dwMaxHp, dwHp = lualib:Hp(monster, true), lualib:Hp(monster, false);
	
	if dwHp > 80 * dwMaxHp / 100 then
		if lualib:HasBuff(monster, "����ɮ��") then 
			assert(lualib:DelBuff(monster, "����ɮ��"), "ϵͳ����:δ֪�쳣!");
			return;
		end
	elseif ((dwHp > 70 * dwMaxHp / 100) and (dwHp < 80 * dwMaxHp / 100)) or
		   ((dwHp > 30 * dwMaxHp / 100) and (dwHp < 40 * dwMaxHp / 100)) or
		   ((dwHp > 0) and (dwHp < 10 * dwMaxHp / 100)) then
		assert(lualib:AddBuff(monster, "����ɮ��", 60), "ϵͳ����:δ֪�쳣");
	end
end

function do_sunmmon(monster, ...)
	local summon_t = 
	{
		{KeyName = "���깭����", Count = 1},
		{KeyName = "������ʿ", Count = 4},
		{KeyName = "������ʿ0", Count = 1},
		{KeyName = "�������", Count = 4},
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
			assert(servant ~= "", "ϵͳ����:ˢ��ʧ��,�Ƿ����û�г�����?");
		
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