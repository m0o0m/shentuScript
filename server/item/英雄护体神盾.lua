function main(hero, item)
	local HeroLord = lualib:GetHeroLord(hero)
	local level = lualib:Level(hero)
	if level < 38 then
		lualib:SysMsg_SendWarnMsg(HeroLord, "�ȼ�����38�����޷�ѧϰ��")
		return false
	end

	
	local M_skills = 
	{
	[1] = "��ʿ�������1��",
	[2] = "��ʦ�������1��",
	[3] = "��ʿ�������1��",
	}
	local hero_job = lualib:Job(hero)
	local hero_skill = M_skills[hero_job]
	if lualib:HasSkill(hero, hero_skill, true) == true then
		lualib:SysWarnMsg(HeroLord, "��ǰӢ���Ѿ�ѧ��ü��ܣ������ظ�ѧϰ��")
		return false	
	end		
	
		
	local master_job = lualib:Job(HeroLord)	
	local master_skill = M_skills[master_job]
	
	if HeroLord == "" or master_job == "" or master_skill == "" then
		lualib:SysWarnMsg(HeroLord, "��ȡӢ��������Ϣʱ����")
		return false		
	end
	
	
	if not lualib:Item_Destroy(hero, item, "", "") then
		lualib:SysWarnMsg(HeroLord, "ʹ�ü�����ʧ��")
		return false
	else
		if not lualib:AddSkill(hero, hero_skill) then
			lualib:SysWarnMsg(HeroLord, "Ӣ��ѧϰ����ʧ�ܣ�")
			return false
		else			
			
			if not lualib:HasSkill(HeroLord, master_skill, true) then
				lualib:AddSkill(HeroLord, master_skill)
				lualib:SysWarnMsg(HeroLord, "ѧϰ������ܳɹ���")
			end			
		
		end
	end
	

	return true
end