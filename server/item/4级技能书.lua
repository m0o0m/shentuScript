function main(player, item)	
	local skill_books = 
	{
		["�ļ���ɱ����"] = {"��ɱ����5��", "��ɱ����4��", "3����ɱ����", },
		["�ļ���ɱ����"] = {"��ɱ����5��", "��ɱ����4��", "3����ɱ����", },
		["�ļ������䵶"] = {"�����䵶5��", "�����䵶4��", "3�������䵶", },
		["�ļ��һ𽣷�"] = {"�һ𽣷�5��", "�һ𽣷�4��", "3���һ𽣷�", },
		["�ļ�����ն"] = {"����ն5��", "����ն4��", "3������ն", },
		["�ļ�ħ����"] = {"ħ����5��", "ħ����4��", "3��ħ����",},
		["�ļ���ǽ"] = {"��ǽ5��", "��ǽ4��", "3����ǽ",},
		["�ļ������"] = {"�����5��", "�����4��", "3�������",},
		["�ļ�������"] = {"������5��", "������4��", "3��������",},
		["�ļ����ǻ���"] = {"���ǻ���5��", "���ǻ���4��", "3�����ǻ���",},
		["�ļ������"] = {"�����5��", "�����4��", "3�������",},
		["�ļ������"] = {"�����5��", "�����4��", "3�������",},
		["�ļ��ٻ�����"] = {"�ٻ�����5��", "�ٻ�����4��", "3���ٻ�����",},
		["�ļ��ٻ�����"] = {"�ٻ�����5��", "�ٻ�����4��", "3���ٻ�����",},
		["�ļ���ʥս����"] = {"��ʥս����5��", "��ʥս����4��", "3����ʥս����",},
		["�ļ�Ⱥ��������"] = {"Ⱥ��������5��", "Ⱥ��������4��", "3��Ⱥ��������",},

	}
		
	local keyname = lualib:KeyName(item);
	local skill_tbl = skill_books[keyname];
	assert(skill_tbl, "ϵͳ����:��������߹Ҵ��˽ű�.");
	
	local to_skill_k = skill_tbl[1]
	local require_skill_k = skill_tbl[2]
	
	if lualib:HasSkill(player, to_skill_k, false) == true then
		lualib:SysMsg_SendWarnMsg(player, "���Ѿ�ѧ��"..keyname.."�������ظ�ѧϰ��");
		return false
	end	
	
	if not lualib:HasSkill(player, require_skill_k, false) then
		local require_skill_name = skill_tbl[3]
		lualib:SysMsg_SendWarnMsg(player, "����Ҫ��ѧ��"..require_skill_name.."��");
		return false
	end
	
	
	local data_row = lualib:Item_DataRow(keyname);
	
	if lualib:Level(player) < data_row.Level then
		lualib:SysMsg_SendWarnMsg(player, "�ȼ�����,�޷�ѧϰ!");
		return false;
	end
	
	if data_row.Job ~= 0 and lualib:Job(player) ~= data_row.Job then
		lualib:SysMsg_SendWarnMsg(player, "ְҵ����,�޷�ѧϰ!");
		return false;
	end
	
	if data_row.User ~= 2 and data_row.User ~= lualib:GUIDType(player) then
		lualib:SysMsg_SendWarnMsg(player, "�ü����鲻��Ϊ��׼����!");
		return false;
	end
	
	
	if not lualib:Item_Destroy("", item, "ɾ������:ʹ�ü�����", "������ű�.") then
		lualib:SysMsg_SendWarnMsg(player, "�������ƺ��Ѿ���,����ϵ���ǰ�.")
        return false
	end
	
	assert(lualib:AddSkill(player, to_skill_k), "ϵͳ����:����������Ϣ�ƺ�������!");
	lualib:SysMsg_SendWarnMsg(player, "��ѧ��"..keyname)
	
	return true;
end