
--�жϼ����Ƿ���Ҫ������ʾ��������
local skill_tab = { --��Ҫ��ʾ��ӿ�����ļ���
	["���ս���1��"] = 1 ,
	["����ն1��"] = 1 ,
	["Ұ�����1��"] = 1 ,
	["�»��䵶1��"] = 1 ,
	["��������1��"] = 1 ,
	["��������1��"] = 1 ,
	["ħ��1��"] = 1 ,
	["��������1��"] = 1 ,
	["�����Ӱ1��"] = 1 ,
	["�����1��"] = 1 ,
	["�ױ���1��"] = 1 ,
	["˲Ϣ�鶯1��"] = 1 ,
	["������1��"] = 1 ,
	["�˾�֮��1��"] = 1 ,
	["������1��"] = 1 ,
	["Ⱥ��ƶ�Ѫ��1��"] = 1 ,
	["��֮ͥ��1��"] = 1 ,
	["����������1��"] = 1 ,
	["�ش���1��"] = 1 ,
	["�������1��"] = 1 ,
	["��ɷ��ħ��1��"] = 1 ,
	["������1��"] = 1 ,
	["�ظ�֮��1��"] = 1 ,
	["�����1��"] = 1 ,
	["�ƶ���1��"] = 1 ,
	["������1��"] = 1 ,
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
	UI:Lua_SubmitForm("���ܿ������", "main", ""..skill)
end	

--��ȡ��npc�Ƿ�������
function GetNpcTask(npcGuid,formName,funName)
	local task_state = 0
	if CL:GetNpcQuestStateByID(npcGuid) then
		task_state = LuaRet
	end

	UI:Lua_SubmitForm(formName, funName, ""..task_state)
end	
