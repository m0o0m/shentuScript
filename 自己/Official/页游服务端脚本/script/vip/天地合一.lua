local map_table = {
				   "����ڣ����",
				   "��Ĺ���",
				   "���������ض�",
				   "���µ�һս��",
				   "Ư����",
				   "����������",
				   "�м�������",
				   "�߼�������",
				   "������ս��1",
				   "������ս��2",
				   "������ս��3",
				   "������",
				   "�������",
				   "��ɽ",
				   "������þ�",
				   "��ħ��",
				   "��Ĺ",
				   "�ᱦ����",
				   "���³�",
				   "�䶷��",
				   "���ϸ�",
				   "��ħ̨",
				   "��ħ��",
				   "������Ԩ1",
				   "������Ԩ2",
				   "������Ԩ3",
				   "ǧ����",
				   "���ǻʹ�",
				   "�þ�1",
				   "�þ�2",
				   "�þ�3",
				   "�þ�4",
				   "�þ�5",
				   "�þ�6",
				   "�þ�7",
				   "�þ�8",
				   "��֮��",
				   "С����",
				   "��ħ��",
				   "��Ԫ�ؾ�1",
				   "��Ԫ�ؾ�2",
				   "��Ԫ�ؾ�3",
					}


function main(player, vipLevel)
	local a = lualib:GetInt(player, "vip14_shijian")
	local b =  lualib:GetAllTime()
	local t = b - 3600
	if t > a then 
		msg = "��غ�һ���ܹ����ֻ��ʹ��һ�Σ������һ��Сʱ֮�ڱ���ʹ�ã�\n \n"
		msg = msg.."<@tiandi *01*ʹ����غ�һ>\n"
		msg = msg.."<@leave *01*�뿪>"
	else
		msg = "���Ѿ�ʹ�ù��˴˹��ܣ�һ��Сʱ֮���޷�����ʹ�ã�"
	end
	lualib:NPCTalk(player, msg)
end

function tiandi(player)
	local map_key = lualib:KeyName(lualib:MapGuid(player))
	local map_x = lualib:X(player)
	local map_y = lualib:Y(player)
	for i = 1, #map_table do
		if map_key == map_table[i] then
			return "�õ�ͼ���ܽ�����غ�һ������"
		end
	end
	
	if lualib:Player_HasTeam(player) == false then return "��û����ӣ����ܽ�����غ�һ��" end
	
	local c = lualib:Player_GetTeamList(player)
	for i = 1, #c do
		if c[i] ~= player then
		lualib:Player_MapMoveXY(c[i], map_key, map_x, map_y, 4)
		lualib:SysMsg_SendTriggerMsg(c[i], "�����Ա��"..lualib:Name(player).."������ʹ������غ�һ���ܣ�")
		end
	end
	lualib:SysMsg_SendTriggerMsg(player, "ʹ����غϳɳɹ�")
	local times = lualib:GetAllTime()
	lualib:SetInt(player, "vip14_shijian", times)
	return ""
end


function leave(player)
	return true
end
	
	
	