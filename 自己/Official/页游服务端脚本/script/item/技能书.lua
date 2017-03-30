local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player_guid, item_guid)
     --[[ְҵID����]]
    local job_zs     = 1    --սʿ
    local job_fs     = 2    --��ʦ
    local job_ds     = 3    --��ʿ

    --[[table����]]
    local item_skill_table   = {}
    item_skill_table[job_zs] = {}
	item_skill_table[job_zs]["�����ķ�"] = {"�����ķ�1��", 1}
    item_skill_table[job_zs]["����ն"]   = {"����ն1��", 1}
    item_skill_table[job_zs]["��̽���"] = {"��̽���1��", 1}
    item_skill_table[job_zs]["�»��䵶"] = {"�»��䵶1��", 1}
    item_skill_table[job_zs]["�������"] = {"Ұ�����1��", 1}
    item_skill_table[job_zs]["����ն"]	 = {"����ն1��", 1}
    item_skill_table[job_zs]["���ս���"]	 = {"���ս���1��", 1}
	item_skill_table[job_zs]["������"]	 = {"������1��", 1}
	item_skill_table[job_zs]["�ѵ�ն"]	 = {"�ѵ�ն1��", 1}

	item_skill_table[job_fs] = {}
    item_skill_table[job_fs]["������"]  = {"������1��", 1}
    item_skill_table[job_fs]["��������"]  = {"��������1��", 1}
    item_skill_table[job_fs]["�˾�֮��"]= {"�˾�֮��1��", 1}
    item_skill_table[job_fs]["�����ջ�"]= {"�����ջ�1��", 1}
    item_skill_table[job_fs]["������"]  = {"������1��", 1}
    item_skill_table[job_fs]["������"]  = {"������1��", 1}
    item_skill_table[job_fs]["˲Ϣ�鶯"]= {"˲Ϣ�鶯1��", 1}
    item_skill_table[job_fs]["�ױ���"]  = {"�ױ���1��", 1}
    item_skill_table[job_fs]["�����"]= {"�����1��", 1}
    item_skill_table[job_fs]["��������"]= {"�����Ӱ1��", 1}
    item_skill_table[job_fs]["��������"]= {"��������1��", 1}
    item_skill_table[job_fs]["���⻤��"]    = {"ħ��1��", 1}
    item_skill_table[job_fs]["ɱ����"]	= {"ɱ����1��", 1}
    item_skill_table[job_fs]["��������"]= {"��������1��", 1}
	item_skill_table[job_fs]["����ħ��"]= {"����ħ��1��", 1}
	item_skill_table[job_fs]["��������"]= {"��������1��", 1}

	item_skill_table[job_ds] = {}
    item_skill_table[job_ds]["������"]  = {"������1��", 1}
    item_skill_table[job_ds]["�ƶ���"]  = {"�ƶ���1��", 1}
    item_skill_table[job_ds]["�����"]= {"�����1��", 1}
    item_skill_table[job_ds]["�ظ�֮��"]= {"�ظ�֮��1��", 1}
    item_skill_table[job_ds]["������"]  = {"������1��", 1}
    item_skill_table[job_ds]["������ħ��"]={"��ɷ��ħ��1��", 1}
    item_skill_table[job_ds]["�������"]={"�������1��", 1}
    item_skill_table[job_ds]["Ⱥ��������"]  = {"�ش���1��", 1}
    item_skill_table[job_ds]["����ֹˮ"]= {"����ֹˮ1��", 1}
    item_skill_table[job_ds]["����������"]={"����������1��", 1}
    item_skill_table[job_ds]["������"]  = {"������1��", 1}
    item_skill_table[job_ds]["��֮ͥ��"]= {"��֮ͥ��1��", 1}
	item_skill_table[job_ds]["Ⱥ��ƶ�Ѫ��"]= {"Ⱥ��ƶ�Ѫ��1��", 1}
	item_skill_table[job_ds]["������"]= {"������1��", 1}
	item_skill_table[job_ds]["̫��������"]= {"̫��������1��", 1}
	item_skill_table[job_ds]["ͨ��֮��"]= {"ͨ��֮��1��", 1}

	

	


    local item_name = lualib:KeyName( item_guid )
    if item_name == "" then
		lualib:SysMsg_SendWarnMsg(player_guid, "�������ƻ�ȡʧ�ܣ�")
		return false
	end

    local player_level = lualib:Level( player_guid )
	if player_level == -1 then 
		lualib:SysMsg_SendWarnMsg(player_guid, "�ȼ����㣬�޷�ѧϰ��")
		return false
	end

    local player_job = lualib:Job( player_guid )
	if player_job == -1 then 
		lualib:SysMsg_SendWarnMsg(player_guid, "��ȡ���ְҵʧ�ܣ�")
		return false
	end

    if item_skill_table[player_job] == nil then return false end

    if item_skill_table[player_job][item_name] == nil then
        lualib:SysMsg_SendWarnMsg(player_guid, "������ְҵ��ƥ�䣡")
        return false
    end

	for i=1,4 do
		local islearnskill = string.replace( item_skill_table[player_job][item_name][1] , "1" , tostring(i) )
		if lualib:HasSkill(player_guid, islearnskill , false) == true then
			lualib:SysMsg_SendWarnMsg(player_guid, "�ü�����ѧϰ��")
			return false
		end
	end

	if item_skill_table[player_job][item_name][2] <= player_level then
		if lualib:AddSkill(player_guid, item_skill_table[player_job][item_name][1]) == true then
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