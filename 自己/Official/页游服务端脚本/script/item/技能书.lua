local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player_guid, item_guid)
     --[[职业ID常量]]
    local job_zs     = 1    --战士
    local job_fs     = 2    --法师
    local job_ds     = 3    --道士

    --[[table定义]]
    local item_skill_table   = {}
    item_skill_table[job_zs] = {}
	item_skill_table[job_zs]["剑术心法"] = {"剑术心法1级", 1}
    item_skill_table[job_zs]["攻心斩"]   = {"攻心斩1级", 1}
    item_skill_table[job_zs]["风刺剑法"] = {"风刺剑法1级", 1}
    item_skill_table[job_zs]["月弧弯刀"] = {"月弧弯刀1级", 1}
    item_skill_table[job_zs]["蛮力冲锋"] = {"野蛮冲锋1级", 1}
    item_skill_table[job_zs]["烈焰斩"]	 = {"烈焰斩1级", 1}
    item_skill_table[job_zs]["逐日剑法"]	 = {"逐日剑法1级", 1}
	item_skill_table[job_zs]["龙咆哮"]	 = {"龙咆哮1级", 1}
	item_skill_table[job_zs]["裂地斩"]	 = {"裂地斩1级", 1}

	item_skill_table[job_fs] = {}
    item_skill_table[job_fs]["炎球术"]  = {"炎球术1级", 1}
    item_skill_table[job_fs]["大炎球术"]  = {"大炎球术1级", 1}
    item_skill_table[job_fs]["退拒之环"]= {"退拒之环1级", 1}
    item_skill_table[job_fs]["夺心诱惑"]= {"夺心诱惑1级", 1}
    item_skill_table[job_fs]["天雷术"]  = {"天雷术1级", 1}
    item_skill_table[job_fs]["冰箭术"]  = {"冰箭术1级", 1}
    item_skill_table[job_fs]["瞬息灵动"]= {"瞬息灵动1级", 1}
    item_skill_table[job_fs]["炎爆术"]  = {"炎爆术1级", 1}
    item_skill_table[job_fs]["烈焰火海"]= {"烈焰火海1级", 1}
    item_skill_table[job_fs]["死亡射线"]= {"疾电光影1级", 1}
    item_skill_table[job_fs]["雷霆极光"]= {"雷霆极光1级", 1}
    item_skill_table[job_fs]["流光护盾"]    = {"魔盾1级", 1}
    item_skill_table[job_fs]["杀生术"]	= {"杀生术1级", 1}
    item_skill_table[job_fs]["冰爆漩涡"]= {"冰爆漩涡1级", 1}
	item_skill_table[job_fs]["引经魔轰"]= {"引经魔轰1级", 1}
	item_skill_table[job_fs]["陨星灭世"]= {"陨星灭世1级", 1}

	item_skill_table[job_ds] = {}
    item_skill_table[job_ds]["治疗咒"]  = {"治疗咒1级", 1}
    item_skill_table[job_ds]["蛊毒咒"]  = {"蛊毒咒1级", 1}
    item_skill_table[job_ds]["神魂火符"]= {"神魂火符1级", 1}
    item_skill_table[job_ds]["地府之唤"]= {"地府之唤1级", 1}
    item_skill_table[job_ds]["隐形咒"]  = {"隐形咒1级", 1}
    item_skill_table[job_ds]["地狱镇魔咒"]={"地煞镇魔咒1级", 1}
    item_skill_table[job_ds]["天罡护体咒"]={"天罡护体咒1级", 1}
    item_skill_table[job_ds]["群体治疗术"]  = {"回春咒1级", 1}
    item_skill_table[job_ds]["明镜止水"]= {"明镜止水1级", 1}
    item_skill_table[job_ds]["集体隐形咒"]={"集体隐形咒1级", 1}
    item_skill_table[job_ds]["锁妖咒"]  = {"锁妖咒1级", 1}
    item_skill_table[job_ds]["天庭之唤"]= {"天庭之唤1级", 1}
	item_skill_table[job_ds]["群体蛊毒血咒"]= {"群体蛊毒血咒1级", 1}
	item_skill_table[job_ds]["驱毒术"]= {"驱毒术1级", 1}
	item_skill_table[job_ds]["太极玄清术"]= {"太极玄清术1级", 1}
	item_skill_table[job_ds]["通幽之术"]= {"通幽之术1级", 1}

	

	


    local item_name = lualib:KeyName( item_guid )
    if item_name == "" then
		lualib:SysMsg_SendWarnMsg(player_guid, "道具名称获取失败！")
		return false
	end

    local player_level = lualib:Level( player_guid )
	if player_level == -1 then 
		lualib:SysMsg_SendWarnMsg(player_guid, "等级不足，无法学习！")
		return false
	end

    local player_job = lualib:Job( player_guid )
	if player_job == -1 then 
		lualib:SysMsg_SendWarnMsg(player_guid, "获取玩家职业失败！")
		return false
	end

    if item_skill_table[player_job] == nil then return false end

    if item_skill_table[player_job][item_name] == nil then
        lualib:SysMsg_SendWarnMsg(player_guid, "技能与职业不匹配！")
        return false
    end

	for i=1,4 do
		local islearnskill = string.replace( item_skill_table[player_job][item_name][1] , "1" , tostring(i) )
		if lualib:HasSkill(player_guid, islearnskill , false) == true then
			lualib:SysMsg_SendWarnMsg(player_guid, "该技能已学习！")
			return false
		end
	end

	if item_skill_table[player_job][item_name][2] <= player_level then
		if lualib:AddSkill(player_guid, item_skill_table[player_job][item_name][1]) == true then
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