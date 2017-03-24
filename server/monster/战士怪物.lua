function on_create(monster)																	--战斗开始
	lualib:AddTrigger(monster, lua_trigger_monster_in_fight, "on_enter_fight");				--战斗开始触发
	lualib:AddTrigger(monster, lua_trigger_monster_out_fight, "on_leave_fight");				--战斗结束触发
end

function on_enter_fight(monster)
	lualib:AddTimer(monster, 1, 1000, -1, "do_skill1");											--技能使用定时器
	lualib:AddTimer(monster, 2, 6000, -1, "do_lieyan");											--使用烈焰斩定时器
end

function do_skill1(monster)
	local mubiao = lualib:Monster_GetCurTarget(monster)											--获取怪物目标GUID
	local juli = lualib:Distance(monster,mubiao) 												--获取怪物目标距离
	if juli == 2 then																			--判断距离等于2
		lualib:Monster_SpellTarget(monster,73,mubiao)											--施展风刺剑法技能
	end
end

function do_lieyan(monster)
	local mubiao = lualib:Monster_GetCurTarget(monster)											--获取怪物目标GUID
	local juli = lualib:Distance(monster,mubiao) 												--获取怪物目标距离
	if juli == 1 then																			--判断距离等于1
		lualib:Monster_SpellTarget(monster,83,mubiao)											--施展烈焰斩技能
	end
end	
	
function on_leave_fight(monster)																--战斗结束
	lualib:ClearTimer(monster);																	--关闭所有定时器
end