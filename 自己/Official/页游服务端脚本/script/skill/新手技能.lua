local disallow_map = {}
	disallow_map["��Ӣ������-16��8"] = 1
	disallow_map["��Ӣ������-4��2"] = 1
	disallow_map["��Ӣ������-8��4"] = 1
	disallow_map["��Ӣ������-���Ǿ���"] = 1
	disallow_map["��Ӣ������-������"] = 1
	disallow_map["��Ӣ������-Ⱥ����¹"] = 1
	disallow_map["��Ӣ������-��Ϣ��"] = 1
	disallow_map["��Ӣ������-�����"] = 1
	disallow_map["���׽���"] = 1
	disallow_map["���ǻʹ�"] = 1
	disallow_map["��ħ���"] = 1
	disallow_map["�����ܵ�"] = 1
	disallow_map["��ս��1"] = 1
	disallow_map["��ս��2"] = 1
	disallow_map["��ս��3"] = 1
	disallow_map["���̵Ĳؽ���"] = 1
	disallow_map["������Ԩ1"] = 1
	disallow_map["������Ԩ2"] = 1
	disallow_map["������Ԩ3"] = 1
	disallow_map["��Ĺ"] = 1
	disallow_map["��̨"] = 1
	disallow_map["�غ���ӡ"] = 1
	disallow_map["��Ϣ��"] = 1
	disallow_map["������"] = 1
	disallow_map["��ɽ��Ѩboss"] = 1
	disallow_map["������"] = 1
	disallow_map["������"] = 1
	disallow_map["������þ�"] = 1
	disallow_map["�䱦��"] = 1
	disallow_map["�м�������"] = 1
	disallow_map["ʬ�����"] = 1
	disallow_map["������ս��1"] = 1
	disallow_map["������ս��2"] = 1
	disallow_map["������ս��3"] = 1
	disallow_map["Ư����"] = 1
	disallow_map["�����boss"] = 1
	disallow_map["��ħ��"] = 1
	disallow_map["��Ĺ���"] = 1
	disallow_map["��ħʯ��4"] = 1
	disallow_map["���µ�һս��"] = 1
	disallow_map["�������"] = 1
	disallow_map["а��boss"] = 1
	disallow_map["�߼�������"] = 1
	disallow_map["��ħ��"] = 1
	disallow_map["����������"] = 1
	disallow_map["���������ض�"] = 1
	disallow_map["�ٲ���"] = 1
	disallow_map["�ؾ�¥"] = 1
	disallow_map["����������"] = 1
	disallow_map["��ɽ"] = 1
	disallow_map["��Ԫ�ؾ�1"] = 1
	disallow_map["��Ԫ�ؾ�2"] = 1
	disallow_map["��Ԫ�ؾ�3"] = 1
	disallow_map["����4"] = 1
	disallow_map["��·��boss"] = 1
	disallow_map["����4Ұ��"] = 1
	disallow_map["����5"] = 1
	disallow_map["����3Ұ��"] = 1
	disallow_map["����3"] = 1
	disallow_map["���ײ���1"] = 1
	disallow_map["���ײ���2"] = 1
	disallow_map["���ײ���3"] = 1
	disallow_map["���ײ������"] = 1
	disallow_map["��ħ�ص�1"] = 1
	disallow_map["��ħ�ص�2"] = 1
	disallow_map["��ħ����10"] = 1
	disallow_map["��ħ����11"] = 1
	disallow_map["��ħ����12"] = 1
	disallow_map["����"] = 1
	disallow_map["ǧ����"] = 1
	disallow_map["�ػ�����"] = 1
	disallow_map["��·��3"] = 1
	disallow_map["��ħʯ��3"] = 1
	disallow_map["��ħʯ��boss"] = 1
	disallow_map["�䶷��"] = 1
	disallow_map["��ħ̨"] = 1
	disallow_map["�ᱦ����"] = 1
	disallow_map["���³�"] = 1
	disallow_map["����3����1"] = 1
	disallow_map["����1����1"] = 1
	disallow_map["����1����2"] = 1
	disallow_map["����1����3"] = 1
	disallow_map["����1����4"] = 1
	disallow_map["����1����5"] = 1
	disallow_map["����1����6"] = 1
	disallow_map["����1����7"] = 1
	disallow_map["����2"] = 1
	disallow_map["����2����1"] = 1
	disallow_map["����2����2"] = 1
	disallow_map["����2����3"] = 1
	disallow_map["����2����4"] = 1
	disallow_map["����2����5"] = 1
	disallow_map["����2����6"] = 1
	disallow_map["����ڣ3"] = 1
	disallow_map["����4����1"] = 1
	disallow_map["����4����2"] = 1
	disallow_map["���ϸ�"] = 1
	disallow_map["��ħ��"] = 1
	disallow_map["ս������"] = 1



function pre_apply(actor, skillid)
 	local mapguid = lualib:MapGuid(actor)
	local map_key = lualib:KeyName(mapguid)
	local x = lualib:X(actor)
	local y = lualib:Y(actor)
	local player_level = lualib:Level(actor)
	local skill_id = skillid
	local monster_tb1 = lualib:Map_GetRegionMonsters(mapguid, "", x, y, 5, true, true)
	
	if disallow_map[map_key] == 1 then
		lualib:MsgBox(actor, "�õ�ͼ��ֹʹ�ô˼��ܣ�")
		return false
	end
	
	for i = 1, #monster_tb1 do
		local mt1_keyname = lualib:KeyName(monster_tb1[i])
		local mt1_type = lualib:Monster_Type(mt1_keyname)
		
		if mt1_type == 5 then
			lualib:MsgBox(actor, "���ڸ����д�������Ϊ����İ�ȫ��������ʹ�øü��ܣ���Զ�����������ʹ�ã�")
			return false
		end
		
	end
	
	return true
end





function post_apply(actor,skillid)

	local skill_name = {
							[30045] = "�޼����(����)",
							[30046] = "�������(����)",
							[30047] = "��ħ֮ŭ(����)",
						}
	local skill_table = {"�����޼����", "���ַ������", "���ֶ�ħ֮ŭ"}
	local skillInt = lualib:GetInt(actor, "skill_xinshou")
	if skillInt > 100 then
		for i = 1, #skill_table do
			if lualib:HasSkill(actor, skill_table[i], false) == true then
				lualib:Player_RunGMCmd(actor, "sd", skill_table[i])
				lualib:SysMsg_SendWarnMsg(actor, "���ʵ���Ѿ����������"..skill_name[skillid].."��ɾ��������ѧ�������õ��ռ����ܣ���ɵ����ǵĲر��󿴿���")
			end
		end
	else
		lualib:SetInt(actor, "skill_xinshou", skillInt + 1)
		lualib:SysMsg_SendWarnMsg(actor, "���"..skill_name[skillid].."������ʹ��".. 100 - skillInt .."�Σ�")
	end
	

	
end