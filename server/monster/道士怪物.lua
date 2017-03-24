function on_create(monster)																	--战斗开始函数
	lualib:AddTrigger(monster, lua_trigger_monster_in_fight, "on_enter_fight");				--战斗开始触发
	lualib:AddTrigger(monster, lua_trigger_monster_out_fight, "on_leave_fight");				--战斗结束触发
end

function on_enter_fight(monster)
	lualib:AddTimer(monster, 1, 5000, -1, "do_skill");											--技能使用定时器
	lualib:AddTimer(monster, 2, 1500, 1, "do_create_shenshou");								--召唤神兽定时器
	lualib:AddTimer(monster, 3, 3000, -1, "do_buff");											--治疗定时器
end

function do_skill(monster)
	local mubiao = lualib:Monster_GetCurTarget(monster)											--获取怪物目标GUID
	local juli = lualib:Distance(monster,mubiao) 												--获取怪物目标距离
	if juli < 10 then																			--距离小于10执行下面的判断
		if lualib:HasBuff(mubiao,"施毒术减血4级") == true then									--判断目标身上是否有蛊毒咒BUFF
		else
			lualib:Monster_SpellTarget(monster,79,mubiao)										--怪物对目标施展蛊毒咒技能
		end
	end
end

function do_create_shenshou(master)
	local x, y, strMap = lualib:X(master), lualib:Y(master), lualib:MapGuid(master);			--获取怪物自身地图坐标
	local strservant = lualib:GetStr(master, "servant")											--根据保存在怪物身上的神兽字符型变量获取神兽GUID
	if strservant ~= "" then																	--根据神兽GUID判断神兽是否存在
		lualib:Monster_Remove(strservant)														--如果神兽存在则移除该神兽
	end
	local mubiao1 = lualib:Monster_GetCurTarget(master)											--获取怪物的目标的GUID
	local name = lualib:Name(mubiao1)															--怪物目标的GUID获取玩家的名字
    lualib:SysRoleTalk(master, "听从我的召唤，出来吧，我的神兽!消灭 ["..name.."] !");			--怪物头顶说话
	local servant = lualib:Map_GenSingleMonster(strMap, x, y, 2, lualib:GenRandom(0, 7), "神兽", false);		--刷出神兽
	assert(servant ~= "", "系统错误:刷怪失败,是否怪物没有出生点?");							--如果神兽没有刷出则报出错信息
	lualib:SetStr(master, "servant",servant)													--将神兽的GUID存到怪物身上
	lualib:SetStr(servant, "master", master);													--将怪物的GUID存到神兽身上
	lualib:AddTrigger(servant, lua_trigger_monster_post_die, "on_servant_post_die");			--神兽死亡触发
	lualib:AddTrigger(master, lua_trigger_monster_post_die, "on_master_post_die");				--怪物死亡触发
end

function on_servant_post_die(servant)															--神兽死亡
	local strmaster = lualib:GetStr(servant,"master");											--从神兽身上取出保存的怪物GUID
	if strmonster ~= "" then																	--根据怪物GUID判断怪物是否存在
		do_create_shenshou(strmaster);														--存在则返回召唤神兽的函数
	end
end 

function on_master_post_die(master)															--怪物死亡
	local strservant = lualib:GetStr(master, "servant")											--从怪物身上取出保存的神兽GUID
	if strservant ~= "" then																	--根据判断神兽GUID判断神兽是否存在
		lualib:Monster_Remove(strservant)														--存在则移除神兽
	end
end

function do_buff(master)																		--治疗判断
	local x1, y1, strMap1 = lualib:X(master), lualib:Y(master), lualib:MapGuid(master);		--获取怪物自身地图坐标
	local tmpTable = {0, x1, y1, 9, 9};														--定义怪物自身9格半径范围
	local allmonster = lualib:Map_GetRegionMonstersEx(strMap1, "", tmpTable, true, true)		--获取怪物9格范围内的怪物列表
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

function on_leave_fight(monster)																--战斗结束
	lualib:ClearTimer(monster);																	--关闭所有定时器
end