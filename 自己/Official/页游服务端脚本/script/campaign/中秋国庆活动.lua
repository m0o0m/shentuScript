--------------------------------------------------------------------------------
--�ƻ�����Ķ�ʱ�ص����淨�߼����֣�
--------------------------------------------------------------------------------


local map_table = {
					{"����ڣ1", "����ڣһ��", {{"Сආ�1", 50}}}, 
                    {"����ڣ2", "����ڣ����", {{"Сආ�1", 50}}}, 
                    {"����ڣ3", "����ڣ����", {{"Сආ�2", 50}}}, 
                    {"������1", "�����", {{"Сආ�1", 50}}}, 
                    {"������3", "��������", {{"Сආ�1", 50}}}, 
                    {"������4", "�����ɼ���", {{"Сආ�2", 50}}}, 
                    {"������5", "�ϲ��ɼ���", {{"Сආ�2", 50}}}, 
                    {"��ɽ��Ѩ1", "��ɽ��Ѩһ��", {{"Сආ�2", 50}}}, 
                    {"��ɽ��Ѩ2", "��ɽ��Ѩ����", {{"Сආ�2", 50}}}, 
                    {"��ɽ��Ѩ3", "��ɽ��Ѩ����", {{"Сආ�2", 50}}}, 
                    {"��ɽ��Ѩ4", "��ɽ��Ѩ�Ĳ�", {{"Сආ�3", 50}}}, 
                    {"��ɽ��Ѩ5", "��ɽ��Ѩ���", {{"Сආ�3", 50}}}, 
                    {"��·��1", "��·�Ƕ���", {{"Сආ�3", 50}}}, 
                    {"��·��3", "��·������", {{"Сආ�3", 50}}}, 
                    {"�����1", "�����һ��", {{"Сආ�3", 50}}}, 
                    {"�����2", "��������", {{"Сආ�3", 50}}}, 
                    {"�����3", "���������", {{"Сආ�3", 50}}}, 
                    {"�����4", "������Ĳ�", {{"Сආ�3", 50}}}, 
                    {"�����5", "��������", {{"Сආ�4", 50}}}, 
                    {"�����6", "���������", {{"Сආ�4", 50}}}, 
                    {"а��1", "���а��һ��", {{"Сආ�3", 50}}}, 
                    {"а��2", "���а�����", {{"Сආ�3", 50}}}, 
                    {"а��3", "���а������", {{"Сආ�3", 50}}}, 
                    {"а��4", "���а���Ĳ�", {{"Сආ�4", 50}}}, 
                    {"��ħʯ��1", "��ħʯ��һ��", {{"Сආ�4", 50}}}, 
                    {"��ħʯ��2", "��ħʯ�߶���", {{"Сආ�4", 50}}}, 
                    {"��ħʯ��3", "��ħʯ������", {{"Сආ�4", 50}}}, 
                    {"��ħʯ��4", "��ħʯ���Ĳ�", {{"Сආ�4", 50}}}, 
				}


function on_start(id, map)
end

function on_start_decl(id, map, times)
	local times = tonumber(times)
	local start_time = lualib:GetAllDays(lualib:Str2Time("2012-9-28 00:00:00"))
	local end_time = lualib:GetAllDays(lualib:Str2Time("2012-10-7 00:00:00"))
	lualib:Map_GenNpc(map, "�������", 232, 224, 0, 4)
	lualib:Map_GenNpc(lualib:Map_GetMapGuid("��ɽ��"), "�������", 241, 298, 0, 4)
	lualib:Map_GenNpc(lualib:Map_GetMapGuid("���ٳ�"), "�������", 321, 295, 0, 4)
	if times == 0 then
		lualib:SysMsg_SendBoardMsg("0", "[�������ڿ���]", "[�������ڻ]�Ѿ���ʼ��", 15000)
		lualib:AddTimerEx(map, 101, 1800000, 450, "mob", "")
	else
		lualib:SysMsg_SendBoardMsg("0", "[�������ڿ���]", "[�������ڻ]����"..math.floor(times / 60000).."���ӿ�ʼ��", 15000)
		
		
		--��һ��ˢ��
		if times >= start_time and times <= end_time then
			for i = 1, #map_table do
				local map_guid = lualib:Map_GetMapGuid(map_table[i][1])
				for j = 1, #map_table[i][3] do
						lualib:Map_BatchGenMonster(map_guid, map_table[i][3][j][1], map_table[i][3][j][2], false)
						lualib:SetInt(map_guid, "guoqing_monster_num", 50)
				end
			end	
			lualib:SysMsg_SendBoardMsg("0", "[�������ڿ���]", "¥ප��������ڸ���ع�������Ѹ��ǰȥ����", 15000)
		end
	end
end

function on_end_decl(id, map, times)
	lualib:SysMsg_SendBoardMsg("0", "[�������ڿ���]", "[�������ڻ]�ѽ������ʹ�߽���8����24����ʧ���뾡��һ��������", 15000)
	lualib:AddTimerEx(map, 102, 86400000, 1, "delNpc", "")
end

function mob(map)
	local start_time = lualib:GetAllDays(lualib:Str2Time("2012-9-28 00:00:00"))
	local end_time = lualib:GetAllDays(lualib:Str2Time("2012-10-7 00:00:00"))
	local times = lualib:GetAllDays(0)
	
	if times >= start_time and times <= end_time then
		for i = 1, #map_table do
			local map_guid = lualib:Map_GetMapGuid(map_table[i][1])
			local monster_num = lualib:GetInt(map_guid, "guoqing_monster_num")
			for j = 1, #map_table[i][3] do
					lualib:Map_BatchGenMonster(map_guid, map_table[i][3][j][1], map_table[i][3][j][2] - monster_num, false)
					lualib:SetInt(map_guid, "guoqing_monster_num", 50)
			end
		end	
		lualib:SysMsg_SendBoardMsg("0", "[�������ڿ���]", "¥ප��������ڸ���ع�������Ѹ��ǰȥ����", 15000)
	end
end

function delNpc(map)
	lualib:Map_ClearNpc(map, "�������", 232, 224, 0, 4)
	lualib:Map_ClearNpc(lualib:Map_GetMapGuid("��ɽ��"), 241, 298, 0, "�������")
	lualib:Map_ClearNpc(lualib:Map_GetMapGuid("���ٳ�"), 321, 295, 0, "�������")
end





function Goto(id,player,map)
	local msg = "������뵽�������ǰ�ȫ��ȥ��������ʹ�˽�ɣ�"
	lualib:NPCTalk(player, msg)
    return true
end