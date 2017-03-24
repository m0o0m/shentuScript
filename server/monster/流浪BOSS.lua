function on_create(monster)																	--战斗开始函数
	lualib:AddTrigger(monster, lua_trigger_monster_in_fight, "on_enter_fight");				--战斗开始触发
	lualib:AddTrigger(monster, lua_trigger_monster_out_fight, "on_leave_fight");				--战斗结束触发
end

function on_enter_fight(monster)
	lualib:AddTimer(monster, 1, 1500, -1, "do_skill");											--技能使用定时器
	lualib:AddTimer(monster, 2, 1500, -1, "do_create_yueling");								--召唤月灵定时器
	lualib:AddTimer(monster, 3, 3000, -1, "do_buff");											--治疗定时器
	--lualib:AddTimer(monster, 4, 5000, -1, "do_debuff");										--施毒定时器
end

function do_skill(master)
	if not lualib:HasBuff(master,"减免盾4级") then												--判断该怪物身上是否有魔法盾的BUFF
		lualib:Monster_SpellTarget(master,76,master)											--怪物对目标施展魔法盾技能
	else
	end
	local x, y, strMap = lualib:X(master), lualib:Y(master), lualib:MapGuid(master);			--获取怪物自身地图坐标
	local tmpTable = {0, x, y, 9, 9};															--定义怪物自身9格半径范围
	local allplayer = lualib:Map_GetRegionPlayersEx(strMap, tmpTable, true)					--获取范围内玩家的GUID列表
	local index = 1;																			--定义表头为1
	for i = 1, #allplayer do																	--将玩家列表进行循环
		for j = index, #allplayer do															--将某个玩家1和另外的玩家进行匹配
			if i ~= j then																		--两个玩家的ID不相同
				local distance = lualib:Distance(allplayer[i], allplayer[j])					--计算两个玩家之间的距离
				if distance < 3 then															--判断距离小于3
					lualib:Monster_SpellTarget(master,77,allplayer[i])							--向其中一个目标施放冰咆哮技能
				end
			end
		end
		index = index + 1;																		--进行另一轮不同数组的匹配计算
	end
end

function do_create_yueling(master)

	local x, y, strMap = lualib:X(master), lualib:Y(master), lualib:MapGuid(master);			--获取怪物自身地图坐标
	local tmpTable = {0, x1, y1, 9, 9};														--定义怪物自身9格半径范围
	local mubiao = lualib:Monster_GetCurTarget(master)											--获取怪物的目标的GUID
	local name = lualib:Name(mubiao)															--怪物目标的GUID获取玩家的名字
	local hp = lualib:Hp(master,false) 															--获取该怪物的当前HP值
	if hp > 14000 then
		local get1 = lualib:GetInt(master, "ser1")
		if get1 == 1 then
			lualib:SetInt(master, "ser1", 0)
		else
			local get2 = lualib:GetInt(master, "ser2")
			if get2 == 2 then
				lualib:SetInt(master, "ser2", 0)
			else
				local get3 = lualib:GetInt(master, "ser3")
				if get3 == 3 then
					lualib:SetInt(master, "ser3", 0)
				else
					local get4 = lualib:GetInt(master, "ser4")
					if get4 == 4 then
						lualib:SetInt(master, "ser4", 0)
					else
						local get5 = lualib:GetInt(master, "ser5")
						if get5 == 5 then
							lualib:SetInt(master, "ser5", 0)
						else
							local get6 = lualib:GetInt(master, "ser6")
							if get6 == 6 then
								lualib:SetInt(master, "ser6", 0)
							else
								local get7 = lualib:GetInt(master, "ser7")
								if get7 == 7 then
									lualib:SetInt(master, "ser7", 0)
								else
								end
							end
						end
					end
				end
			end
		end
	end

	if hp <= 14000 then
		local get = lualib:GetInt(master, "ser1")
		if get ~= 1 then
			lualib:SysRoleTalk(master, "你打疼我了，我的宠物们!消灭 ["..name.."] !");					--怪物头顶说话
			local servant1 = lualib:Map_GenMonster(strMap, x, y, 5, lualib:GenRandom(0, 7), "月灵", 1, false);		--刷出月灵
			assert(servant1 ~= "", "系统错误:刷怪失败,是否怪物没有出生点?");							--如果月灵没有刷出则报出错信息
			lualib:SetInt(master, "ser1", 1) 
			local allmonster = lualib:Map_GetRegionMonstersEx(strMap, "", tmpTable, true, true)		--获取怪物9格范围内的怪物列表
			for i = 1,#allmonster do															--从怪物列表中顺序循环得到一个怪物的GUID
				lualib:Monster_SetAttackTarget(allmonster[i], mubiao)												--设置月灵的攻击目标
			end
		end
	end

	if hp <= 12000 then
		local get = lualib:GetInt(master, "ser2")
		if get ~= 2 then
			lualib:SysRoleTalk(master, "讨厌的家伙，我的宠物们!消灭 ["..name.."] !");					--怪物头顶说话
			local servant2 = lualib:Map_GenMonster(strMap, x, y, 5, lualib:GenRandom(0, 7), "月灵", 2, false);		--刷出月灵
			assert(servant2 ~= "", "系统错误:刷怪失败,是否怪物没有出生点?");							--如果月灵没有刷出则报出错信息
			lualib:SetInt(master, "ser2", 2) 
			local allmonster = lualib:Map_GetRegionMonstersEx(strMap, "", tmpTable, true, true)		--获取怪物9格范围内的怪物列表
			for i = 1,#allmonster do															--从怪物列表中顺序循环得到一个怪物的GUID
				lualib:Monster_SetAttackTarget(allmonster[i], mubiao)												--设置月灵的攻击目标
			end
		end
	end

	if hp <= 10000 then
		local get = lualib:GetInt(master, "ser3")
		if get ~= 3 then
			lualib:SysRoleTalk(master, "你们这些渣子，你是无法战胜我的！我的宠物们!消灭 ["..name.."] !");					--怪物头顶说话
			local servant3 = lualib:Map_GenMonster(strMap, x, y, 5, lualib:GenRandom(0, 7), "月灵", 3, false);		--刷出月灵
			assert(servant3 ~= "", "系统错误:刷怪失败,是否怪物没有出生点?");							--如果月灵没有刷出则报出错信息
			lualib:SetInt(master, "ser3", 3) 
			local allmonster = lualib:Map_GetRegionMonstersEx(strMap, "", tmpTable, true, true)		--获取怪物9格范围内的怪物列表
			for i = 1,#allmonster do															--从怪物列表中顺序循环得到一个怪物的GUID
				lualib:Monster_SetAttackTarget(allmonster[i], mubiao)												--设置月灵的攻击目标
			end
		end
	end

	if hp <= 8000 then
		local get = lualib:GetInt(master, "ser4")
		if get ~= 4 then
			lualib:SysRoleTalk(master, "混蛋，我要发怒了！我的宠物们!速来助我，消灭 ["..name.."] !");					--怪物头顶说话
			local servant4 = lualib:Map_GenMonster(strMap, x, y, 5, lualib:GenRandom(0, 7), "月灵", 4, false);		--刷出月灵
			assert(servant4 ~= "", "系统错误:刷怪失败,是否怪物没有出生点?");							--如果月灵没有刷出则报出错信息
			lualib:SetInt(master, "ser4", 4) 
			local allmonster = lualib:Map_GetRegionMonstersEx(strMap, "", tmpTable, true, true)		--获取怪物9格范围内的怪物列表
			for i = 1,#allmonster do															--从怪物列表中顺序循环得到一个怪物的GUID
				lualib:Monster_SetAttackTarget(allmonster[i], mubiao)												--设置月灵的攻击目标
			end
		end
	end

	if hp <= 6000 then
		local get = lualib:GetInt(master, "ser5")
		if get ~= 5 then
			lualib:SysRoleTalk(master, "我讨厌你们无休止的纠缠，爆发吧，宠物们!消灭 ["..name.."] !");					--怪物头顶说话
			local servant5 = lualib:Map_GenMonster(strMap, x, y, 5, lualib:GenRandom(0, 7), "月灵", 5, false);		--刷出月灵
			assert(servant5 ~= "", "系统错误:刷怪失败,是否怪物没有出生点?");							--如果月灵没有刷出则报出错信息
			lualib:SetInt(master, "ser5", 5) 
			local allmonster = lualib:Map_GetRegionMonstersEx(strMap, "", tmpTable, true, true)		--获取怪物9格范围内的怪物列表
			for i = 1,#allmonster do															--从怪物列表中顺序循环得到一个怪物的GUID
				lualib:Monster_SetAttackTarget(allmonster[i], mubiao)												--设置月灵的攻击目标
			end
		end
	end
		
	if hp <= 4000 then
		local get = lualib:GetInt(master, "ser6")
		if get ~= 6 then
			lualib:SysRoleTalk(master, "我是无敌的！我是不可战胜的！宠物们!消灭 ["..name.."] !");					--怪物头顶说话
			local servant6 = lualib:Map_GenMonster(strMap, x, y, 5, lualib:GenRandom(0, 7), "月灵", 6, false);		--刷出月灵
			assert(servant6 ~= "", "系统错误:刷怪失败,是否怪物没有出生点?");							--如果月灵没有刷出则报出错信息
			lualib:SetInt(master, "ser6", 6) 
			local allmonster = lualib:Map_GetRegionMonstersEx(strMap, "", tmpTable, true, true)		--获取怪物9格范围内的怪物列表
			for i = 1,#allmonster do															--从怪物列表中顺序循环得到一个怪物的GUID
			lualib:Monster_SetAttackTarget(allmonster[i], mubiao)												--设置月灵的攻击目标
				lualib:AddBuff(master, "梵天僧狂暴", 60)														--给BOSS添加狂暴BUFF
			end
		end
	end

	if hp <= 2000 then
		local get = lualib:GetInt(master, "ser7")
		if get ~= 7 then
			lualib:SysRoleTalk(master, "你们的贪得无厌让我彻底地愤怒了！爆发吧！恐惧吧！宠物们!都给我出来吧！消灭 ["..name.."] !");					--怪物头顶说话
			local servant7 = lualib:Map_GenMonster(strMap, x, y, 9, lualib:GenRandom(0, 7), "月灵", 7, false);		--刷出月灵
			assert(servant7 ~= "", "系统错误:刷怪失败,是否怪物没有出生点?");							--如果月灵没有刷出则报出错信息
			lualib:SetInt(master, "ser7", 7) 
			local allmonster = lualib:Map_GetRegionMonstersEx(strMap, "", tmpTable, true, true)		--获取怪物9格范围内的怪物列表
			for i = 1,#allmonster do															--从怪物列表中顺序循环得到一个怪物的GUID
				lualib:Monster_SetAttackTarget(allmonster[i], mubiao)												--设置月灵的攻击目标
			end
		end
	end

end

function do_buff(master)																		--治疗判断
	local x1, y1, strMap = lualib:X(master), lualib:Y(master), lualib:MapGuid(master);		--获取怪物自身地图坐标
	local tmpTable = {0, x1, y1, 9, 9};														--定义怪物自身9格半径范围
	local allmonster = lualib:Map_GetRegionMonstersEx(strMap, "", tmpTable, true, true)		--获取怪物9格范围内的怪物列表
	for i = 1,#allmonster do																	--从怪物列表中顺序循环得到一个怪物的GUID
		local ahp = lualib:Hp(allmonster[i],false) 											--获取该怪物的当前HP值
		local bhp = lualib:Hp(allmonster[i],true)												--获取该怪物的HP值上限
		if ahp < bhp then																		--判断该怪物是否减血
			if not lualib:HasBuff(allmonster[i],"治愈术(怪物)") then							--判断该怪物身上是否有治愈术的BUFF
				lualib:Monster_SpellTarget(master,78,allmonster[i])							--减血则给该怪物施展治愈术
				break																			--停止循环
			end
		end
	end
end

--[[function do_debuff(monster)
	local mubiao = lualib:Monster_GetCurTarget(monster)											--获取怪物目标GUID
	local juli = lualib:Distance(monster,mubiao) 												--获取怪物目标距离
	if juli < 10 then																			--距离小于10执行下面的判断
		if lualib:HasBuff(mubiao,"施毒术减血4级") == true then									--判断目标身上是否有蛊毒咒BUFF
		else
			lualib:Monster_SpellTarget(monster,79,mubiao)										--怪物对目标施展蛊毒咒技能
		end
	end
end--]]

function on_leave_fight(monster)																--战斗结束
	lualib:ClearTimer(monster);																	--关闭所有定时器
end