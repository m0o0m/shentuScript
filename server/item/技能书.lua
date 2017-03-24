local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
--require("system/logic_def_lua")

function main(player_guid, item_guid)
     --[[职业ID常量]]
    local job_zs     = 1    --战士
    local job_fs     = 2    --法师
    local job_ds     = 3    --道士

    --[[table定义]]
    local item_skill_table   = {}
    item_skill_table[job_zs] = {}
    item_skill_table[job_zs]["变猪术"]  = {"变猪术", 1}
    item_skill_table[job_zs]["落马术"]  = {"落马术", 1}
	item_skill_table[job_zs]["剑术心法"] = {"剑术心法1级", 7}
    item_skill_table[job_zs]["攻心斩"]   = {"攻心斩1级", 19}
    item_skill_table[job_zs]["风刺剑法"] = {"风刺剑法1级", 25}
    item_skill_table[job_zs]["月弧弯刀"] = {"月弧弯刀1级", 28}
    item_skill_table[job_zs]["蛮力冲锋"] = {"野蛮冲锋1级", 30}
    item_skill_table[job_zs]["烈焰斩"]	 = {"烈焰斩1级", 35}
	item_skill_table[job_zs]["狮子吼"]	 = {"狮子吼4级", 38}
	item_skill_table[job_zs]["开天斩"]	 = {"开天斩4级", 40}
	item_skill_table[job_zs]["四级攻杀剑法"]	 = {"攻杀剑术5级", 42}
	item_skill_table[job_zs]["四级刺杀剑法"]	 = {"刺杀剑术5级", 42}
	item_skill_table[job_zs]["四级半月弯刀"]	 = {"半月弯刀5级", 42}
	item_skill_table[job_zs]["四级烈火剑法"]	 = {"烈火剑法5级", 48}
	item_skill_table[job_zs]["四级开天斩"]	 = {"开天斩5级", 50}
	item_skill_table[job_zs]["逐日剑法"]	 = {"逐日剑法1级", 45}
	item_skill_table[job_zs]["十步一杀"]	 = {"瞬斩", 120}
	item_skill_table[job_zs]["魔法盾"]	 = {"魔法盾5级", 120}

	item_skill_table[job_fs] = {}
    item_skill_table[job_fs]["变猪术"]  = {"变猪术", 1}
    item_skill_table[job_fs]["落马术"]  = {"落马术", 1}
    item_skill_table[job_fs]["炎球术"]  = {"炎球术1级", 7}
    item_skill_table[job_fs]["退拒之环"]= {"退拒之环1级", 12}
    item_skill_table[job_fs]["夺心诱惑"]= {"夺心诱惑1级", 13}
    item_skill_table[job_fs]["天雷术"]  = {"天雷术1级", 17}
    item_skill_table[job_fs]["冰箭术"]  = {"冰箭术1级", 19}
    item_skill_table[job_fs]["瞬息灵动"]= {"瞬息灵动1级", 19}
    item_skill_table[job_fs]["炎爆术"]  = {"炎爆术1级", 22}
    item_skill_table[job_fs]["烈焰火海"]= {"烈焰火海1级", 24}
    item_skill_table[job_fs]["死亡射线"]= {"疾电光影1级", 26}
    item_skill_table[job_fs]["雷霆极光"]= {"雷霆极光1级", 30}
    item_skill_table[job_fs]["流光护盾"]    = {"魔盾1级", 31}
    item_skill_table[job_fs]["杀生术"]	= {"杀生术1级", 32}
    item_skill_table[job_fs]["冰爆漩涡"]= {"冰爆漩涡1级", 35}
	item_skill_table[job_fs]["四级火墙"]= {"火墙5级", 42}
	item_skill_table[job_fs]["四级灭天火"]= {"灭天火5级", 42}
	item_skill_table[job_fs]["四级魔法盾"]= {"魔法盾5级", 45}
	item_skill_table[job_fs]["四级冰咆哮"]= {"冰咆哮5级", 48}
	item_skill_table[job_fs]["四级流星火雨"]= {"流星火雨5级", 52}
	item_skill_table[job_fs]["流星火雨"]= {"流星火雨4级", 40}
	item_skill_table[job_fs]["灭天火"]= {"灭天火4级", 37}

	item_skill_table[job_ds] = {}
    item_skill_table[job_ds]["变猪术"]  = {"变猪术", 1}
    item_skill_table[job_ds]["落马术"]  = {"落马术", 1}
    item_skill_table[job_ds]["治疗咒"]  = {"治疗咒1级", 7}
    item_skill_table[job_ds]["蛊毒咒"]  = {"蛊毒咒1级", 14}
    item_skill_table[job_ds]["神魂火符"]= {"神魂火符1级", 18}
    item_skill_table[job_ds]["地府之唤"]= {"地府之唤1级", 19}
    item_skill_table[job_ds]["隐形咒"]  = {"隐形咒1级", 20}
    item_skill_table[job_ds]["地煞镇魔咒"]={"地煞镇魔咒1级", 22}
    item_skill_table[job_ds]["天罡护体咒"]={"天罡护体咒1级", 25}
    item_skill_table[job_ds]["回春咒"]  = {"回春咒1级", 33}
    item_skill_table[job_ds]["明镜止水"]= {"明镜止水1级", 9}
    item_skill_table[job_ds]["集体隐形咒"]={"集体隐形咒1级", 21}
    item_skill_table[job_ds]["气功波"]  = {"罡气波4级", 21}
    item_skill_table[job_ds]["天庭之唤"]= {"天庭之唤1级", 35}
	item_skill_table[job_ds]["群体施毒术"]= {"群体施毒术4级", 37}
	item_skill_table[job_ds]["驱毒术"]= {"驱毒术4级", 39}
	item_skill_table[job_ds]["无极真气"]= {"无极真气4级", 39}
	item_skill_table[job_ds]["召唤月灵"]= {"召唤月灵4级", 40}
	item_skill_table[job_ds]["四级灵魂火符"]= {"灵魂火符5级", 42}
	item_skill_table[job_ds]["四级幽灵盾"]= {"幽灵盾5级", 42}
	item_skill_table[job_ds]["四级召唤神兽"]= {"召唤神兽5级", 50}
	item_skill_table[job_ds]["四级召唤月灵"]= {"召唤月灵5级", 52}
	item_skill_table[job_ds]["四级神圣战甲术"]= {"神圣战甲术5级", 42}
	item_skill_table[job_ds]["四级群体治疗术"]= {"群体治愈术5级", 42}

	

	


    local item_name = lualib:Item_GetKeyName(player_guid, item_guid)
    if item_name == "" then
		lualib:SysMsg_SendWarnMsg(player_guid, "道具名称获取失败！")
		return false
	end

    local player_level = lualib:Player_GetIntProp(player_guid,  lua_role_level)
	if player_level == -1 then 
		lualib:SysMsg_SendWarnMsg(player_guid, "等级不足，无法学习！")
		return false
	end

    local player_job = lualib:Player_GetIntProp(player_guid,  lua_role_job)
	if player_job == -1 then 
		lualib:SysMsg_SendWarnMsg(player_guid, "获取玩家职业失败！")
		return false
	end

    if item_skill_table[player_job] == nil then return false end

    if item_skill_table[player_job][item_name] == nil then
        lualib:SysMsg_SendWarnMsg(player_guid, "技能与职业不匹配！")
        return false
    end

	if lualib:Player_IsHasSkill(player_guid, item_skill_table[player_job][item_name][1]) == true then
		lualib:SysMsg_SendWarnMsg(player_guid, "该技能已学习！")
        return false
	end
	if item_skill_table[player_job][item_name][2] <= player_level then
		if lualib:Player_AddSkill(player_guid, item_skill_table[player_job][item_name][1]) == true then
			if not lualib:Item_Destroy(player_guid, item_guid, "删物品：使用技能书", "技能书") then
				lualib:SysMsg_SendWarnMsg(player_guid, "扣除道具失败")
				return false
			end
			
			lualib:SysMsg_SendPromptMsg(player_guid, "技能学习成功！")
			return true
		else
			lualib:SysMsg_SendWarnMsg(player_guid, "技能学习失败！")
			return false
		end
	else
		lualib:SysMsg_SendWarnMsg(player_guid, "等级不够！")
		return false
	end

    return true
end