local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
--require("system/logic_def_lua")

function main(player_guid, item_guid)
     --[[ְҵID����]]
    local job_zs     = 1    --սʿ
    local job_fs     = 2    --��ʦ
    local job_ds     = 3    --��ʿ

    --[[table����]]
    local item_skill_table   = {}
    item_skill_table[job_zs] = {}
    item_skill_table[job_zs]["������"]  = {"������", 1}
    item_skill_table[job_zs]["������"]  = {"������", 1}
	item_skill_table[job_zs]["�����ķ�"] = {"�����ķ�1��", 7}
    item_skill_table[job_zs]["����ն"]   = {"����ն1��", 19}
    item_skill_table[job_zs]["��̽���"] = {"��̽���1��", 25}
    item_skill_table[job_zs]["�»��䵶"] = {"�»��䵶1��", 28}
    item_skill_table[job_zs]["�������"] = {"Ұ�����1��", 30}
    item_skill_table[job_zs]["����ն"]	 = {"����ն1��", 35}
	item_skill_table[job_zs]["ʨ�Ӻ�"]	 = {"ʨ�Ӻ�4��", 38}
	item_skill_table[job_zs]["����ն"]	 = {"����ն4��", 40}
	item_skill_table[job_zs]["�ļ���ɱ����"]	 = {"��ɱ����5��", 42}
	item_skill_table[job_zs]["�ļ���ɱ����"]	 = {"��ɱ����5��", 42}
	item_skill_table[job_zs]["�ļ������䵶"]	 = {"�����䵶5��", 42}
	item_skill_table[job_zs]["�ļ��һ𽣷�"]	 = {"�һ𽣷�5��", 48}
	item_skill_table[job_zs]["�ļ�����ն"]	 = {"����ն5��", 50}
	item_skill_table[job_zs]["���ս���"]	 = {"���ս���1��", 45}
	item_skill_table[job_zs]["ʮ��һɱ"]	 = {"˲ն", 120}
	item_skill_table[job_zs]["ħ����"]	 = {"ħ����5��", 120}

	item_skill_table[job_fs] = {}
    item_skill_table[job_fs]["������"]  = {"������", 1}
    item_skill_table[job_fs]["������"]  = {"������", 1}
    item_skill_table[job_fs]["������"]  = {"������1��", 7}
    item_skill_table[job_fs]["�˾�֮��"]= {"�˾�֮��1��", 12}
    item_skill_table[job_fs]["�����ջ�"]= {"�����ջ�1��", 13}
    item_skill_table[job_fs]["������"]  = {"������1��", 17}
    item_skill_table[job_fs]["������"]  = {"������1��", 19}
    item_skill_table[job_fs]["˲Ϣ�鶯"]= {"˲Ϣ�鶯1��", 19}
    item_skill_table[job_fs]["�ױ���"]  = {"�ױ���1��", 22}
    item_skill_table[job_fs]["�����"]= {"�����1��", 24}
    item_skill_table[job_fs]["��������"]= {"�����Ӱ1��", 26}
    item_skill_table[job_fs]["��������"]= {"��������1��", 30}
    item_skill_table[job_fs]["���⻤��"]    = {"ħ��1��", 31}
    item_skill_table[job_fs]["ɱ����"]	= {"ɱ����1��", 32}
    item_skill_table[job_fs]["��������"]= {"��������1��", 35}
	item_skill_table[job_fs]["�ļ���ǽ"]= {"��ǽ5��", 42}
	item_skill_table[job_fs]["�ļ������"]= {"�����5��", 42}
	item_skill_table[job_fs]["�ļ�ħ����"]= {"ħ����5��", 45}
	item_skill_table[job_fs]["�ļ�������"]= {"������5��", 48}
	item_skill_table[job_fs]["�ļ����ǻ���"]= {"���ǻ���5��", 52}
	item_skill_table[job_fs]["���ǻ���"]= {"���ǻ���4��", 40}
	item_skill_table[job_fs]["�����"]= {"�����4��", 37}

	item_skill_table[job_ds] = {}
    item_skill_table[job_ds]["������"]  = {"������", 1}
    item_skill_table[job_ds]["������"]  = {"������", 1}
    item_skill_table[job_ds]["������"]  = {"������1��", 7}
    item_skill_table[job_ds]["�ƶ���"]  = {"�ƶ���1��", 14}
    item_skill_table[job_ds]["�����"]= {"�����1��", 18}
    item_skill_table[job_ds]["�ظ�֮��"]= {"�ظ�֮��1��", 19}
    item_skill_table[job_ds]["������"]  = {"������1��", 20}
    item_skill_table[job_ds]["��ɷ��ħ��"]={"��ɷ��ħ��1��", 22}
    item_skill_table[job_ds]["�������"]={"�������1��", 25}
    item_skill_table[job_ds]["�ش���"]  = {"�ش���1��", 33}
    item_skill_table[job_ds]["����ֹˮ"]= {"����ֹˮ1��", 9}
    item_skill_table[job_ds]["����������"]={"����������1��", 21}
    item_skill_table[job_ds]["������"]  = {"�����4��", 21}
    item_skill_table[job_ds]["��֮ͥ��"]= {"��֮ͥ��1��", 35}
	item_skill_table[job_ds]["Ⱥ��ʩ����"]= {"Ⱥ��ʩ����4��", 37}
	item_skill_table[job_ds]["������"]= {"������4��", 39}
	item_skill_table[job_ds]["�޼�����"]= {"�޼�����4��", 39}
	item_skill_table[job_ds]["�ٻ�����"]= {"�ٻ�����4��", 40}
	item_skill_table[job_ds]["�ļ������"]= {"�����5��", 42}
	item_skill_table[job_ds]["�ļ������"]= {"�����5��", 42}
	item_skill_table[job_ds]["�ļ��ٻ�����"]= {"�ٻ�����5��", 50}
	item_skill_table[job_ds]["�ļ��ٻ�����"]= {"�ٻ�����5��", 52}
	item_skill_table[job_ds]["�ļ���ʥս����"]= {"��ʥս����5��", 42}
	item_skill_table[job_ds]["�ļ�Ⱥ��������"]= {"Ⱥ��������5��", 42}

	

	


    local item_name = lualib:Item_GetKeyName(player_guid, item_guid)
    if item_name == "" then
		lualib:SysMsg_SendWarnMsg(player_guid, "�������ƻ�ȡʧ�ܣ�")
		return false
	end

    local player_level = lualib:Player_GetIntProp(player_guid,  lua_role_level)
	if player_level == -1 then 
		lualib:SysMsg_SendWarnMsg(player_guid, "�ȼ����㣬�޷�ѧϰ��")
		return false
	end

    local player_job = lualib:Player_GetIntProp(player_guid,  lua_role_job)
	if player_job == -1 then 
		lualib:SysMsg_SendWarnMsg(player_guid, "��ȡ���ְҵʧ�ܣ�")
		return false
	end

    if item_skill_table[player_job] == nil then return false end

    if item_skill_table[player_job][item_name] == nil then
        lualib:SysMsg_SendWarnMsg(player_guid, "������ְҵ��ƥ�䣡")
        return false
    end

	if lualib:Player_IsHasSkill(player_guid, item_skill_table[player_job][item_name][1]) == true then
		lualib:SysMsg_SendWarnMsg(player_guid, "�ü�����ѧϰ��")
        return false
	end
	if item_skill_table[player_job][item_name][2] <= player_level then
		if lualib:Player_AddSkill(player_guid, item_skill_table[player_job][item_name][1]) == true then
			if not lualib:Item_Destroy(player_guid, item_guid, "ɾ��Ʒ��ʹ�ü�����", "������") then
				lualib:SysMsg_SendWarnMsg(player_guid, "�۳�����ʧ��")
				return false
			end
			
			lualib:SysMsg_SendPromptMsg(player_guid, "����ѧϰ�ɹ���")
			return true
		else
			lualib:SysMsg_SendWarnMsg(player_guid, "����ѧϰʧ�ܣ�")
			return false
		end
	else
		lualib:SysMsg_SendWarnMsg(player_guid, "�ȼ�������")
		return false
	end

    return true
end