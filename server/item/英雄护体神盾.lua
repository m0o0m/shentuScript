function main(hero, item)
	local HeroLord = lualib:GetHeroLord(hero)
	local level = lualib:Level(hero)
	if level < 38 then
		lualib:SysMsg_SendWarnMsg(HeroLord, "等级不足38级，无法学习！")
		return false
	end

	
	local M_skills = 
	{
	[1] = "勇士护体神盾1级",
	[2] = "法师护体神盾1级",
	[3] = "道士护体神盾1级",
	}
	local hero_job = lualib:Job(hero)
	local hero_skill = M_skills[hero_job]
	if lualib:HasSkill(hero, hero_skill, true) == true then
		lualib:SysWarnMsg(HeroLord, "当前英雄已经学会该技能！无需重复学习！")
		return false	
	end		
	
		
	local master_job = lualib:Job(HeroLord)	
	local master_skill = M_skills[master_job]
	
	if HeroLord == "" or master_job == "" or master_skill == "" then
		lualib:SysWarnMsg(HeroLord, "读取英雄主人信息时出错！")
		return false		
	end
	
	
	if not lualib:Item_Destroy(hero, item, "", "") then
		lualib:SysWarnMsg(HeroLord, "使用技能书失败")
		return false
	else
		if not lualib:AddSkill(hero, hero_skill) then
			lualib:SysWarnMsg(HeroLord, "英雄学习技能失败！")
			return false
		else			
			
			if not lualib:HasSkill(HeroLord, master_skill, true) then
				lualib:AddSkill(HeroLord, master_skill)
				lualib:SysWarnMsg(HeroLord, "学习护体神盾成功！")
			end			
		
		end
	end
	

	return true
end