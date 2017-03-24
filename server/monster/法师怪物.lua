function on_create(monster)																	--战斗开始函数
	lualib:AddTrigger(monster, lua_trigger_monster_in_fight, "on_enter_fight");				--战斗开始触发
	lualib:AddTrigger(monster, lua_trigger_monster_out_fight, "on_leave_fight");				--战斗结束触发
end

function on_enter_fight(monster)
	lualib:AddTimer(monster, 1, 1500, -1, "do_skill");											--技能使用定时器
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

function on_leave_fight(monster)																--战斗结束
	lualib:ClearTimer(monster);																	--关闭所有定时器
end