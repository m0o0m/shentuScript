local monster_table = {
						{"绝道白猿", {"绝道白猿"}},
						{"巨蛇", {"巨蛇"}},
						{"骷髅王", {"骷髅王"}},
						{"幽冥尸王",{"幽冥尸王", "真尸王", "假尸王"}},
						{"牛魔将军", {"牛魔将军"}},
						{"千年树魔", {"千年树魔"}},
						{"血禅师", {"血禅师"}},
						{"梵天僧",{"梵天僧"}},
						{"天魔神", {"天魔神"}},
						{"海魔", {"海魔"}},
						{"妖刀侍卫", {"妖刀侍卫"}},
						{"巨石傀儡", {"巨石傀儡"}},
						{"牛魔侍卫", {"牛魔侍卫"}},
						{"铁齿战将", {"铁齿战将1"}},
						{"野马", {"汗血野马", "绝影野马", "疾风野马"}},
						{"牛", {"锁魔超级牛"}},
						{"羊", {"锁魔超级羊"}},
						{"猪", {"锁魔超级猪"}},
						{"幻境梵天僧", {"幻境梵天僧"}},
						{"幻境巨石傀儡", {"幻境巨石傀儡"}},
						{"幻境牛魔将军", {"幻境牛魔将军"}},
						{"幻境牛魔侍卫", {"幻境牛魔侍卫"}},
						{"幻境千年树魔", {"幻境千年树魔"}},
						{"幻境天魔神", {"幻境天魔神"}},
						{"幻境铁齿战将", {"幻境铁齿战将1"}},
						{"幻境血禅师", {"幻境血禅师"}},
						{"幻境妖刀侍卫", {"幻境妖刀侍卫"}},
						}
			
			
function main(player, vipLevel)
	local msg = [["请选择你所要查询的怪物类型！"
	<@leixing#%s *01*野外BOSS>         <@leixing#%s *01*锁魔宫BOSS>
	
	<@leave *01*关闭>
	]]
	msg = string.format(msg, 1,2,3)
	lualib:NPCTalk(player, msg)
	return ""
end

function leixing(player, types)
	local types = tonumber(types)
	local msg = "请选择你所要查询的怪物，每次最多返回3条怪物所在位置信息！\n"
	if types == 1 then
		msg = msg..[[<@monster#%s *01*绝道白猿>       <@monster#%s *01*巨蛇>       <@monster#%s *01*骷髅王>       <@monster#%s *01*幽冥尸王>       <@monster#%s *01*牛魔将军>
		
		<@monster#%s *01*千年树魔>       <@monster#%s *01*血禅师>     <@monster#%s *01*梵天僧>       <@monster#%s *01*天魔神>       <@monster#%s *01*海魔>
		
		<@monster#%s *01*妖刀侍卫>       <@monster#%s *01*巨石傀儡>   <@monster#%s *01*牛魔侍卫>     <@monster#%s *01*铁齿战将>       <@monster#%s *01*野马>
		]]
		msg = string.format(msg, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
	elseif types == 2 then
		msg = msg..[[<@monster#%s *01*牛>       <@monster#%s *01*羊>       <@monster#%s *01*猪>
		]]
		msg = string.format(msg, 16,17,18)
	elseif types == 3 then
		msg = msg..[[<@monster#%s *01*幻境梵天僧>       <@monster#%s *01*幻境巨石傀儡>       <@monster#%s *01*幻境牛魔将军>       <@monster#%s *01*幻境牛魔侍卫>
		
		<@monster#%s *01*幻境千年树魔>     <@monster#%s *01*幻境天魔神>         <@monster#%s *01*幻境铁齿战将>       <@monster#%s *01*幻境血禅师>
		
		<@monster#%s *01*幻境妖刀侍卫>
		]]
		msg = string.format(msg, 19,20,21,22,23,24,25,26,27)
	end
	msg = msg.."\n<@main *01*返回>"
	lualib:NPCTalk(player, msg)
	return ""
end


function monster(player, monster)
	local monster = tonumber(monster)
	local m_tbale = fanhui(monster)
	local shu = #m_tbale
	if shu > 3 then
		shu = 3
	end
	local msg = "您是否继续查询！\n \n"	
	if m_tbale[1] == nil then
		lualib:SysMsg_SendTriggerMsg(player, "当前没有"..monster_table[tonumber(monster)][1].."存在！")
		msg = msg.."<@main *01*继续查询>\n"
		return msg
	else
		for i = 1, shu do
			m_map = lualib:Name(lualib:MapGuid(m_tbale[i]))
			m_x = lualib:X(m_tbale[i])
			m_y = lualib:Y(m_tbale[i])
			if m_map ~= "" then
				lualib:SysMsg_SendTriggerMsg(player, monster_table[tonumber(monster)][1].."所在位置【"..m_map.."："..m_x..","..m_y.."】")
			else
				lualib:SysMsg_SendTriggerMsg(player, "当前没有"..monster_table[tonumber(monster)][1].."存在！")
			end
		end
	end
	msg = msg.."<@main *01*继续查询>\n"
	return msg
end


function fanhui(monster)
	local monster = tonumber(monster)
	local key = 0
	local guid_table = {}
	for i = 1, #monster_table[monster][2] do
		local m_t = lualib:MonstersByKey(monster_table[monster][2][i], 5, false, false)
		--print(m_t)
		if m_t ~= nil and #m_t > 0  then
			for j = 1, #m_t do
				key = key + 1
				guid_table[key] = m_t[j]
			end
		end
	end
	return guid_table
end

function leave(player)
	return ""
end

	