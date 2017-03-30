
--判断技能是否需要弹框提示进入快捷栏
local skill_tab = { --需要提示添加快捷栏的技能
	["逐日剑法1级"] = 1 ,
	["烈焰斩1级"] = 1 ,
	["野蛮冲锋1级"] = 1 ,
	["月弧弯刀1级"] = 1 ,
	["陨星灭世1级"] = 1 ,
	["冰爆漩涡1级"] = 1 ,
	["魔盾1级"] = 1 ,
	["雷霆极光1级"] = 1 ,
	["疾电光影1级"] = 1 ,
	["烈焰火海1级"] = 1 ,
	["炎爆术1级"] = 1 ,
	["瞬息灵动1级"] = 1 ,
	["天雷术1级"] = 1 ,
	["退拒之环1级"] = 1 ,
	["炎球术1级"] = 1 ,
	["群体蛊毒血咒1级"] = 1 ,
	["天庭之唤1级"] = 1 ,
	["集体隐形咒1级"] = 1 ,
	["回春咒1级"] = 1 ,
	["天罡护体咒1级"] = 1 ,
	["地煞镇魔咒1级"] = 1 ,
	["隐形咒1级"] = 1 ,
	["地府之唤1级"] = 1 ,
	["神魂火符1级"] = 1 ,
	["蛊毒咒1级"] = 1 ,
	["治疗咒1级"] = 1 ,
	}
function SkillJudge(skill)
	local skillid = tonumber(skill)
	local level = 0
	local Keyname = ""
	if CL:GetSkillTemplatePropByID(skillid,SKILL_PROP_KEYNAME) then
		Keyname = LuaRet
	end
	if skill_tab[Keyname] == nil then
		return ""
	end	
	UI:Lua_SubmitForm("技能快捷栏表单", "main", ""..skill)
end	

--获取该npc是否有任务
function GetNpcTask(npcGuid,formName,funName)
	local task_state = 0
	if CL:GetNpcQuestStateByID(npcGuid) then
		task_state = LuaRet
	end

	UI:Lua_SubmitForm(formName, funName, ""..task_state)
end	
