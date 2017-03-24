function main(hero, item)
	local map = lualib:MapGuid(hero)	--��Ϊ�޷�ͨ��Ӣ��ȡ����ҵ�GUID  ��ʱֻ�����ͼ������Ϣ����Ҫһ��ͨ��Ӣ��GUID ȡ�� Ӣ��������ҵ�GUID�Ľӿڡ������ֻ����ҷ�����Ϣ��
	
	local item_skill_table =
							{
								[1] = 	----սʿӢ�ۿ�ѧ����
										{
											["������"]  = {"������", 1},
											["������"]  = {"������", 1},
											["Ӣ�ۻ�������"] = {"Ӣ�ۻ�������1��", 7},
											["Ӣ�۹�ɱ����"]   = {"Ӣ�۹�ɱ����1��", 19},
											["Ӣ�۴�ɱ����"] = {"Ӣ�۴�ɱ����1��", 25},
											["Ӣ�۰����䵶"] = {"Ӣ�۰����䵶1��", 28},
											["Ӣ��Ұ����ײ"] = {"Ӣ��Ұ����ײ1��", 30},
											["Ӣ���һ𽣷�"] = {"Ӣ���һ𽣷�1��", 35},
											["Ӣ��ʨ�Ӻ�"]	 = {"Ӣ��ʨ�Ӻ�1��", 38},
											["Ӣ�ۿ���ն"]	 = {"Ӣ�ۿ���ն1��", 40},					
										},
								[2] = 	----��ʦӢ�ۿ�ѧ����
										{
											["������"]  = {"������", 1},
										    ["������"]  = {"������", 1},
										    ["Ӣ�ۻ�����"]  = {"Ӣ�ۻ�����1��", 7},
										    ["Ӣ�ۿ��ܻ�"]= {"Ӣ�ۿ��ܻ�1��", 12},
										    ["Ӣ���ջ�֮��"]= {"Ӣ���ջ�֮��1��", 13},
										    ["Ӣ�۵�����"]  = {"Ӣ�۵�����1��", 16},
										    ["Ӣ���׵���"]  = {"Ӣ���׵���1��", 17},
										    ["Ӣ�ۺ�����"]  = {"Ӣ�۱�����1��", 19},
										    ["Ӣ��˲Ϣ�ƶ�"]= {"Ӣ��˲Ϣ�ƶ�1��", 19},
										    ["Ӣ�۴����"]  = {"Ӣ�۴������1��", 19},
										    ["Ӣ�۱��ѻ���"]  = {"Ӣ�۱��ѻ���1��", 22},
										    ["Ӣ�ۻ�ǽ"]= {"Ӣ�ۻ�ǽ1��", 24},
										    ["Ӣ�ۼ����Ӱ"]= {"Ӣ�ۼ����Ӱ1��", 26},
										    ["Ӣ�۵����׹�"]= {"Ӣ�۵����׹�1��", 30},
										    ["Ӣ��ħ����"]    = {"Ӣ��ħ����1��", 31},
										    ["Ӣ��ʥ����"]	= {"Ӣ��ʥ����1��", 32},
										    ["Ӣ�۱�����"]= {"Ӣ�۱�����1��", 35},
										    ["Ӣ�������"]= {"Ӣ�������1��", 38},
										    ["Ӣ����������"]= {"Ӣ����������1��", 40},
										},
								[3] = 	----��ʿӢ�ۿ�ѧ����
										{
											["������"]  = {"������", 1},
										    ["������"]  = {"������", 1},
										    ["Ӣ��������"]  = {"Ӣ��������1��", 7},
										    ["Ӣ��ʩ����"]  = {"Ӣ��ʩ����1��", 14},
										    ["Ӣ�������"]= {"Ӣ�������1��", 18},
										    ["Ӣ���ٻ�����"]= {"Ӣ���ٻ�����1��", 19},
										    ["Ӣ��������"]  = {"Ӣ��������1��", 20},
										    ["Ӣ�ۼ�������"]  = {"Ӣ�ۼ���������1��", 21},
										    ["Ӣ�������"]={"Ӣ�������1��", 22},
										    ["Ӣ����ʥս��"]={"Ӣ����ʥս����1��", 25},
										    ["Ӣ��Ⱥ����"]  = {"Ӣ��Ⱥ��������1��", 33},
										    ["Ӣ�۾���ս��"]= {"Ӣ�۾�����ս��1��", 9},
										    ["Ӣ����ħ��"]  = {"Ӣ����ħ��1��", 28},
										    ["Ӣ���ٻ�����"]= {"Ӣ���ٻ�����1��", 35},
										    ["Ӣ��Ⱥ��ʩ����"]= {"Ӣ��Ⱥʩ����1��", 37},
										    ["Ӣ��������"]= {"Ӣ��������1��", 39},
										    ["Ӣ���޼�����"]= {"Ӣ���޼�����1��", 39},
										    ["Ӣ���ٻ�����"]= {"Ӣ���ٻ�����1��", 40},
											["Ӣ��������"]= {"Ӣ��������1��", 40},
										},
							}

    local item_key = lualib:KeyName(item)
	local hero_jb = lualib:Job(hero)	--��ǰӢ��ְҵ
	local hero_lv = lualib:Level(hero) --��ǰӢ�۵ȼ�
	
    if item_skill_table[hero_jb][item_key] == nil then
        lualib:SysWarnMsg(map, "�����뵱ǰӢ��ְҵ��ƥ�䣡")
        return false
    end
	
	local lv_s = item_skill_table[hero_jb][item_key][2]  --��Ӣ��ѧϰ������Ҫ�ĵȼ�	
    if hero_lv < lv_s then
        lualib:SysWarnMsg(map, "��ǰӢ�۵ȼ�������")
        return false
    end	

	local skill_k = item_skill_table[hero_jb][item_key][1]    --�ü�����ָ��ļ���keyname
	
	if lualib:HasSkill(hero, skill_k, true) == true then
        lualib:SysWarnMsg(map, "��ǰӢ���Ѿ�ѧ��ü��ܣ������ظ�ѧϰ��")
        return false	
	end
	
	if lualib:Item_Destroy(hero, item, "ɾ��Ʒ��ʹ�ü�����", "������") == true then
		lualib:AddSkill(hero, skill_k)
		lualib:SysMsg_SendPromptMsg(hero, "����ѧϰ�ɹ���")
	
	else
		lualib:SysWarnMsg(map, "�۳�����ʧ�ܣ����ܲ���ѧϰ��")
	end

    return true
end
