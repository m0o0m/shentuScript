local monster_table = {
						{"������Գ", {"������Գ"}},
						{"����", {"����"}},
						{"������", {"������"}},
						{"��ڤʬ��",{"��ڤʬ��", "��ʬ��", "��ʬ��"}},
						{"ţħ����", {"ţħ����"}},
						{"ǧ����ħ", {"ǧ����ħ"}},
						{"Ѫ��ʦ", {"Ѫ��ʦ"}},
						{"����ɮ",{"����ɮ"}},
						{"��ħ��", {"��ħ��"}},
						{"��ħ", {"��ħ"}},
						{"��������", {"��������"}},
						{"��ʯ����", {"��ʯ����"}},
						{"ţħ����", {"ţħ����"}},
						{"����ս��", {"����ս��1"}},
						{"Ұ��", {"��ѪҰ��", "��ӰҰ��", "����Ұ��"}},
						{"ţ", {"��ħ����ţ"}},
						{"��", {"��ħ������"}},
						{"��", {"��ħ������"}},
						{"�þ�����ɮ", {"�þ�����ɮ"}},
						{"�þ���ʯ����", {"�þ���ʯ����"}},
						{"�þ�ţħ����", {"�þ�ţħ����"}},
						{"�þ�ţħ����", {"�þ�ţħ����"}},
						{"�þ�ǧ����ħ", {"�þ�ǧ����ħ"}},
						{"�þ���ħ��", {"�þ���ħ��"}},
						{"�þ�����ս��", {"�þ�����ս��1"}},
						{"�þ�Ѫ��ʦ", {"�þ�Ѫ��ʦ"}},
						{"�þ���������", {"�þ���������"}},
						}
			
			
function main(player, vipLevel)
	local msg = [["��ѡ������Ҫ��ѯ�Ĺ������ͣ�"
	<@leixing#%s *01*Ұ��BOSS>         <@leixing#%s *01*��ħ��BOSS>
	
	<@leave *01*�ر�>
	]]
	msg = string.format(msg, 1,2,3)
	lualib:NPCTalk(player, msg)
	return ""
end

function leixing(player, types)
	local types = tonumber(types)
	local msg = "��ѡ������Ҫ��ѯ�Ĺ��ÿ����෵��3����������λ����Ϣ��\n"
	if types == 1 then
		msg = msg..[[<@monster#%s *01*������Գ>       <@monster#%s *01*����>       <@monster#%s *01*������>       <@monster#%s *01*��ڤʬ��>       <@monster#%s *01*ţħ����>
		
		<@monster#%s *01*ǧ����ħ>       <@monster#%s *01*Ѫ��ʦ>     <@monster#%s *01*����ɮ>       <@monster#%s *01*��ħ��>       <@monster#%s *01*��ħ>
		
		<@monster#%s *01*��������>       <@monster#%s *01*��ʯ����>   <@monster#%s *01*ţħ����>     <@monster#%s *01*����ս��>       <@monster#%s *01*Ұ��>
		]]
		msg = string.format(msg, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
	elseif types == 2 then
		msg = msg..[[<@monster#%s *01*ţ>       <@monster#%s *01*��>       <@monster#%s *01*��>
		]]
		msg = string.format(msg, 16,17,18)
	elseif types == 3 then
		msg = msg..[[<@monster#%s *01*�þ�����ɮ>       <@monster#%s *01*�þ���ʯ����>       <@monster#%s *01*�þ�ţħ����>       <@monster#%s *01*�þ�ţħ����>
		
		<@monster#%s *01*�þ�ǧ����ħ>     <@monster#%s *01*�þ���ħ��>         <@monster#%s *01*�þ�����ս��>       <@monster#%s *01*�þ�Ѫ��ʦ>
		
		<@monster#%s *01*�þ���������>
		]]
		msg = string.format(msg, 19,20,21,22,23,24,25,26,27)
	end
	msg = msg.."\n<@main *01*����>"
	lualib:NPCTalk(player, msg)
	return ""
end


function monster(player, monster)
	local monster = tonumber(monster)
	local m_tbale = fanhui(monster)
	local shu = #m_tbale
	if shu > 3 then
		shu = 3
	end
	local msg = "���Ƿ������ѯ��\n \n"	
	if m_tbale[1] == nil then
		lualib:SysMsg_SendTriggerMsg(player, "��ǰû��"..monster_table[tonumber(monster)][1].."���ڣ�")
		msg = msg.."<@main *01*������ѯ>\n"
		return msg
	else
		for i = 1, shu do
			m_map = lualib:Name(lualib:MapGuid(m_tbale[i]))
			m_x = lualib:X(m_tbale[i])
			m_y = lualib:Y(m_tbale[i])
			if m_map ~= "" then
				lualib:SysMsg_SendTriggerMsg(player, monster_table[tonumber(monster)][1].."����λ�á�"..m_map.."��"..m_x..","..m_y.."��")
			else
				lualib:SysMsg_SendTriggerMsg(player, "��ǰû��"..monster_table[tonumber(monster)][1].."���ڣ�")
			end
		end
	end
	msg = msg.."<@main *01*������ѯ>\n"
	return msg
end


function fanhui(monster)
	local monster = tonumber(monster)
	local key = 0
	local guid_table = {}
	for i = 1, #monster_table[monster][2] do
		local m_t = lualib:MonstersByKey(monster_table[monster][2][i], 5, false, false)
		--print(m_t)
		if m_t ~= nil and #m_t > 0  then
			for j = 1, #m_t do
				key = key + 1
				guid_table[key] = m_t[j]
			end
		end
	end
	return guid_table
end

function leave(player)
	return ""
end

	