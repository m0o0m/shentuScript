zhandou = {
					{
						{"1v1Name1", "1v1guid1"},
						{"1v1Name2", "1v1guid2"},
						{"1v1Name3", "1v1guid3"},
						{"1v1Name4", "1v1guid4"},
						{"1v1Name5", "1v1guid5"},
					},
					{
						{"5v5Name1", "5v5guid1"},
						{"5v5Name2", "5v5guid2"},
						{"5v5Name3", "5v5guid3"},
						{"5v5Name4", "5v5guid4"},
						{"5v5Name5", "5v5guid5"},
					},
					{
						{"10v10Name1", "10v10guid1"},
						{"10v10Name2", "10v10guid2"},
						{"10v10Name3", "10v10guid3"},
						{"10v10Name4", "10v10guid4"},
						{"10v10Name5", "10v10guid5"},
					},
				}	

local talk_t = {"ս��ʹ�˿��ȣ�ʹ�˳��ԣ����������ս���ˣ��������������", "�������Լ���ս���������ģ������ý�ҷ���ȫ����ս��", "һ��ų���������޷������Լ�����ʧ�ģ�ֻ��ǿ�߲���ԽսԽ�¡�"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 270000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end				

	function main(npc, player)
	local msg = "     ���Ǿ���������Ա������������﷢��ս�����룬Ӯ��ս�����ܻ�öԷ�Ѻע�Ľ�ң�����\n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:4>##IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@shenqing *01*������ս>\n"
	msg = msg.."#OFFSET<X:0,Y:4>##IMAGE<ID:1902700042>##OFFSET<X:0,Y:-2>#<@jieshou *01*��ս�б�>\n"
	msg = msg.."#OFFSET<X:0,Y:4>##IMAGE<ID:1902700017>#<@info *01*�����>\n"
	msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	msg = msg.."                                                 #OFFSET<X:0,Y:4>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���뿪��>\n"
	return msg
end


function info(npc, player)
	local msg = [[1. ���𾺼�����ս��ҪѺע10�������ϡ�
	2. ������ս��ȫ�������Խ�����ս��������ͬ����Ҫ�����뷢����Ѻע����ͬ�������������ʱ�Է������ߣ����޷����ܾ�����ս��
	3. �Ѿ����𾺼�����ܾ����Ĳ���ͬʱ�μ�����һ��������
	4. ���ܾ�����˫��5����֮�ڱ��������Ϣ�ң�������5���ӵ�׼��ʱ�䡣
	5. ս����ʼ��ϵͳ�᲻�Ͻ���ʤ���жϣ�ʤ���������ڳ��ڵȴ�ʤ���жϣ�ʤ���߽����˫��Ѻע��ҵ�90%��
	6. 1v1ս������10���ӣ�����ÿ10�뽫����HP��MP������ս��������
	7. ս������һ��Сʱ��������ս��ϵͳ�����ط�����ȫ����ҡ�
	]]
	msg = msg.."\n \n                                                 #OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
	return msg
end


function qingkong(npc, player)
	for i = 1 ,table.getn(zhandou) do
		for j = 1 ,table.getn(zhandou[i]) do
			lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
			lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
		end
	end
	return "����ɹ�" 
end
	
function leave(npc,player)
	return ""
end


---1vs1ս������
function shenqing(npc, player)
	local msg = "��ѡ������Ҫ�������ս���ͣ�\n \n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@zhandouleix#1 *01* 1 vs 1 ģʽ>\n"--        #IMAGE<ID:1902700017>#<@zhandouleix#2 *01* 5VS5ģʽ>        #IMAGE<ID:1902700017>#<@zhandouleix#3 *01* 10VS10ģʽ>\n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
	
	return msg
end

function zhandouleix(npc, player, types)
	local msg = "������ս��Ҫ����10�������ϵĲʽ���ս���������ȴ��������ܣ���ȷ��������ս��\n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@queren#"..types.." *01*ȷ��������ս>\n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"
	return msg
end


function queren(npc, player, types)
	lualib:SysMsg_SendInputDlg(player, 3, "��������ҪѺע�Ĳʽ�", 60, 7, "lurutiaozhan", npc.."#"..types)
	return ""
end



---ս������
function lurutiaozhan(id, player, yb, param)
	local params = lualib:StrSplit(param, "#")--�ָ����Ϊһ��table
	local npc = params[1]
	local types = tonumber(params[2])
	local yb = tonumber(yb)
	local a_Name = lualib:Name(player)
	local msg = ""
	
	--1v1����
	if types == 1 then
		if yb == nil or  yb < 100000 then
			msg = "�����벻��ȷ���������ֵС��10�����������룡\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
	
		if lualib:Player_IsGoldEnough(player, yb, false) == false then
			msg = "��Ҳ��㣬������Ľ��Ϊ"..yb.."�����������룡\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
	
		for i =1 ,table.getn(zhandou) do
			for j =1, table.getn(zhandou[i]) do
				local liebiao1 = lualib:StrSplit(lualib:IO_GetCustomVarStr(zhandou[i][j][2]), "#")
				for l =1, table.getn(liebiao1) do
					if liebiao1[l] == player then
						msg = "���Ѿ���������\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
						lualib:NPCTalkEx(npc, player, msg)
						return ""
					end
				end
			end
		end
		
		local shu = 0
		for i =1 ,table.getn(zhandou[types]) do
			local bianl = lualib:IO_GetCustomVarStr(zhandou[types][i][2])
			local liebiao1 = lualib:StrSplit(bianl, "#")
			--print(liebiao1[1])
			if liebiao1[1] == "" then
				if not lualib:Player_SubGold(player, yb, false, "1v1����", "1v1����") then 
					return "��Ľ�Ҳ��㡣\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
				end
				lualib:IO_SetCustomVarStr(zhandou[types][i][1], a_Name.."#"..yb)
				lualib:IO_SetCustomVarStr(zhandou[types][i][2], player.."#"..yb)
				--lualib:IO_SetCustomVarStr(zhandou[i][2], "")
				lualib:AddTimerEx(npc, 10 + i, 3600000, 1, "yanshifanhuan", types.."#"..zhandou[types][i][1].."#"..zhandou[types][i][2])
				break 
			else
				shu = shu + 1
			end
		end	
		--print(shu)
		if shu == 5 then
			msg = "�����б�����������΢������\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
	--5v5����
	elseif types == 2 then
		if yb == nil or  yb < 100000 then
			msg = "�����벻��ȷ���������ֵС��10�����������룡\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
	
		if lualib:Player_IsGoldEnough(player, yb, false) == false then
			msg = "��Ҳ��㣬������Ľ��Ϊ"..yb.."�����������룡\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
		
		
		local zudui_table = lualib:Player_GetTeamList(player)
		if zudui_table ~= nil then
			local zudui_v = table.getn(zudui_table)
			if Player_IsTeamLeader(player) == true then
				if zudui_v ~= 5 then
					msg = "��Ķ����Ա����5�ˣ����ܱ�����\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
					lualib:NPCTalkEx(npc, player, msg)
					return ""
				end
			else
				msg = "�㲻�Ƕӳ�����������ս����\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
				lualib:NPCTalkEx(npc, player, msg)
				return ""
			end
		else
			msg = "5V5ģʽ�������5�˲������룡\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
		
		for i =1 ,table.getn(zhandou) do
			for j =1, table.getn(zhandou[i]) do
				local liebiao1 = lualib:StrSplit(lualib:IO_GetCustomVarStr(zhandou[i][j][2]), "#")
				for l =1, table.getn(liebiao1) do
					if liebiao1[l] == player then
						msg = "���Ѿ���������\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
						lualib:NPCTalkEx(npc, player, msg)
						return ""
					end
				end
			end
		end
		
		local name_tabel5 = ""
		local guid_tabel5 = ""
		for i = 1, table.getn(zudui_table) do
			local nm = lualib:Name(zudui_table[i])
			name_tabel5 = name_tabel5..nm.."#"
			guid_tabel5 = guid_tabel5..zudui_table[i].."#"
		end
		name_tabel5 = name_tabel5..yb
		guid_tabel5 = guid_tabel5..yb
		--print("5v5ģʽ��"..name_tabel5)
		--print("5v5ģʽ��"..guid_tabel5)
		
		local shu = 0
		for i =1 ,table.getn(zhandou[types]) do
			local bianl = lualib:IO_GetCustomVarStr(zhandou[types][i][2])
			local liebiao1 = lualib:StrSplit(bianl, "#")
			--print(liebiao1[1])
			if liebiao1[1] == "" then
				if not lualib:Player_SubGold(player, yb, false, "5v5����", "5v5����") then 
					return "��Ľ�Ҳ��㡣\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
				end
				lualib:IO_SetCustomVarStr(zhandou[types][i][1], name_tabel5)
				lualib:IO_SetCustomVarStr(zhandou[types][i][2], name_tabel5)
				--lualib:IO_SetCustomVarStr(zhandou[i][2], "")
				lualib:AddTimerEx(npc, 20 + i, 1000000, 1, "yanshifanhuan", types.."#"..zhandou[types][i][1].."#"..zhandou[types][i][2])
				break 
			else
				shu = shu + 1
			end
		end	
		--print(shu)
		if shu == 5 then
			msg = "�����б�����������΢������\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
	--10v10����
	elseif types == 3 then
				if yb == nil or  yb < 100000 then
			msg = "�����벻��ȷ���������ֵС��10�����������룡\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
	
		if lualib:Player_IsGoldEnough(player, yb, false) == false then
			msg = "��Ҳ��㣬������Ľ��Ϊ"..yb.."�����������룡\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
		
		
		local zudui_table = lualib:Player_GetTeamList(player)
		if zudui_table ~= nil then
			local zudui_v = table.getn(zudui_table)
			if Player_IsTeamLeader(player) == true then
				if zudui_v ~= 5 then
					msg = "��Ķ����Ա����5�ˣ����ܱ�����\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
					lualib:NPCTalkEx(npc, player, msg)
					return ""
				end
			else
				msg = "�㲻�Ƕӳ�����������ս����\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
				lualib:NPCTalkEx(npc, player, msg)
				return ""
			end
		else
			msg = "10V10ģʽ�������10�˲������룡\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
		
		for i =1 ,table.getn(zhandou) do
			for j =1, table.getn(zhandou[i]) do
				local liebiao1 = lualib:StrSplit(lualib:IO_GetCustomVarStr(zhandou[i][j][2]), "#")
				for l =1, table.getn(liebiao1) do
					if liebiao1[l] == player then
						msg = "���Ѿ���������\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
						lualib:NPCTalkEx(npc, player, msg)
						return ""
					end
				end
			end
		end
		
		local name_tabel5 = ""
		local guid_tabel5 = ""
		for i = 1, table.getn(zudui_table) do
			local nm = lualib:Name(zudui_table[i])
			name_tabel5 = name_tabel5..nm.."#"
			guid_tabel5 = guid_tabel5..zudui_table[i].."#"
		end
		name_tabel5 = name_tabel5..yb
		guid_tabel5 = guid_tabel5..yb
		--print("10v10ģʽ��"..name_tabel5)
		--print("10v10ģʽ��"..guid_tabel5)
		
		local shu = 0
		for i =1 ,table.getn(zhandou[types]) do
			local bianl = lualib:IO_GetCustomVarStr(zhandou[types][i][2])
			local liebiao1 = lualib:StrSplit(bianl, "#")
			--print(liebiao1[1])
			if liebiao1[1] == "" then
				if not lualib:Player_SubGold(player, yb, false, "10v10����", "10v10����") then 
					return "��Ľ�Ҳ��㡣\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
				end
				lualib:IO_SetCustomVarStr(zhandou[types][i][1], name_tabel5)
				lualib:IO_SetCustomVarStr(zhandou[types][i][2], name_tabel5)
				--lualib:IO_SetCustomVarStr(zhandou[i][2], "")
				lualib:AddTimerEx(npc, 30 + i, 1000000, 1, "yanshifanhuan", types.."#"..zhandou[types][i][1].."#"..zhandou[types][i][2])
				break 
			else
				shu = shu + 1
			end
		end	
		--print(shu)
		if shu == 5 then
			msg = "�����б�����������΢������\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
	end
	
	if types == 1 then 
		msg = "����ս����������ɹ���\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
		lualib:SysMsg_SendCenterMsg(1, "��"..a_Name.."���ھ���������ԱѺע ["..yb.."���] ����1VS1ս�����룬��սȫ����","")
		lualib:SysMsg_SendBoardMsg("0", "����������Ա", "��"..a_Name.."���ھ���������ԱѺע ["..yb.."���] ����1VS1ս�����룬��սȫ����", 15000)
		lualib:NPCTalkEx(npc, player, msg)
	else
		msg = "����ս����������ɹ���\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
		lualib:NPCTalkEx(npc, player, msg)
	end
		return ""
end

---����ս��
function jieshou(npc, player)
	msg = "��ѡ������Ҫ���ܵ���ս���ͣ�\n1. �����ѡ��ս��������ս��\n2. �����Ѿ������˾�������ѡ����֮��ص�ս������ս����\n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@yingzhanleix#1 *01* 1 vs 1 ģʽ>\n"--       #IMAGE<ID:1902700017>#<@yingzhanleix#2 *01* 5VS5ģʽ>        #IMAGE<ID:1902700017>#<@yingzhanleix#3 *01* 10VS10ģʽ>\n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
	
	return msg
end


---��Ϣ�б�
function yingzhanleix(npc, player, types)
	local types = tonumber(types)
	local liebiaoshumu = 0
	local msg = ""
	for i =1 ,table.getn(zhandou[types]) do
		local bianl = lualib:IO_GetCustomVarStr(zhandou[types][i][2])
		local liebiao1 = lualib:StrSplit(bianl, "#")
		if liebiao1[1] == "" or liebiao1[1] == nil then
			liebiaoshumu = liebiaoshumu + 1
		end
	end
	
	local linshi = 0
	local linshi_b = {}
	if liebiaoshumu == table.getn(zhandou[types]) then
		msg = "��ǰû�������뾺����\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
		return msg
	else 
		for i = 1, table.getn(zhandou[types]) do
			local jingjixinxi1 = lualib:IO_GetCustomVarStr(zhandou[types][i][1])
			if jingjixinxi1 ~= nil and jingjixinxi1 ~= "" then
				linshi = linshi + 1
				local jingjiliebiao = lualib:StrSplit(jingjixinxi1, "#")
				linshi_b[linshi] = jingjiliebiao
			end
		end
	end
	
	msg = "���¾��������ս����\n1. �����ѡ��ս��������ս��\n2. �����Ѿ������˾�������ѡ����֮��ص�ս������ս����\n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	if types == 1 then
		for i = 1, table.getn(linshi_b) do
			--print(linshi_b[i][1])
			if linshi_b[i][3] ~= nil then
				msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@xinxi1#"..types.."#"..linshi_b[i][1].."#"..linshi_b[i][2].." *01*" ..linshi_b[i][1].."--Ѻע"..linshi_b[i][2].."��ң��ѱ���ս��>"
				msg = msg.."\n"
			else
				msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@xinxi1#"..types.."#"..linshi_b[i][1].."#"..linshi_b[i][2].." *01*" ..linshi_b[i][1].."--Ѻע"..linshi_b[i][2].."���>"
				msg = msg.."\n"
			end
		end	
	elseif types == 2 then
		for i = 1, table.getn(linshi_b) do
			--print(linshi_b[i][1])
			if linshi_b[i][7] ~= nil then
				msg = msg.."<@xinxi1#"..types.."#"..linshi_b[i][1].."#"..linshi_b[i][6].." *01*" ..linshi_b[i][1].."--Ѻע"..linshi_b[i][6].."��ң��ѱ���ս��>"
				msg = msg.."\n"
			else
				msg = msg.."<@xinxi1#"..types.."#"..linshi_b[i][1].."#"..linshi_b[i][6].." *01*" ..linshi_b[i][1].."--Ѻע"..linshi_b[i][6].."���>"
				msg = msg.."\n"
			end
		end	
	elseif types == 3 then
		for i = 1, table.getn(linshi_b) do
			--print(linshi_b[i][1])
			if linshi_b[i][7] ~= nil then
				msg = msg.."<@xinxi1#"..types.."#"..linshi_b[i][1].."#"..linshi_b[i][11].." *01*" ..linshi_b[i][1].."--Ѻע"..linshi_b[i][11].."��ң��ѱ���ս��>"
				msg = msg.."\n"
			else
				msg = msg.."<@xinxi1#"..types.."#"..linshi_b[i][1].."#"..linshi_b[i][11].." *01*" ..linshi_b[i][1].."--Ѻע"..linshi_b[i][11].."���>"
				msg = msg.."\n"
			end
		end	
	end
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"
	return msg
end



---ս����ϸ��Ϣ
function xinxi1(npc,player,types, name, yb)
	local types = tonumber(types)
	local suozai = 1
	local msg = ""
	if types == 1 then
		for i = 1, table.getn(zhandou[types]) do
			local chazhao = lualib:IO_GetCustomVarStr(zhandou[types][i][1])
			local chazhaoname = lualib:StrSplit(chazhao, "#")
			if name == chazhaoname[1] then
				if chazhaoname[3] ~= nil and chazhaoname[3] ~= "" then
					local p_name = lualib:Name(player)
					if p_name ~= chazhaoname[3] and p_name ~= chazhaoname[1] then
						return "ս���Ѿ����У���ѡ������ս����\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
					end
				end
				break
			else
				suozai = suozai + 1
			end
		end
		local guid = lualib:Name2Guid(name)
		--print(guid)
		if guid == "" then
			return "Ŀ�겻���ߣ���ѡ������ս����\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
		end
		
		if suozai > 5 then 
			msg = "��ǰû���˷�����ս��\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			return msg
		else
			local zhandoujieshao = lualib:IO_GetCustomVarStr(zhandou[types][suozai][1])
			local zhandoujieshao2 = string.split(zhandoujieshao, "#")
			if zhandoujieshao2[3] ~= nil then
				msg = "�����Ѿ���ʼ������ؾ�����볡�ڣ�\n \n"
				msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@jinru#"..zhandou[types][suozai][2].." *01*���볡��>\n"
				return msg
			else
				msg = "��"..zhandoujieshao2[1].."��������ս��Ѻע�Ĳʽ�Ϊ"..zhandoujieshao2[2].."��ӭս��Ҫ���ɷ�����ͬ���Ĳʽ�Ӯ��ս���Ļ�����˫��Ѻע�Ĳʽ��ܺ͵�90%����ȷ��ӭս��\n \n"
				msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@kaishi#"..types.."#"..name.."#"..suozai.."#"..yb.." *01*ȷ����ս>\n \n"
				msg = msg.."\n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"
				return msg
			end
		end	
	elseif types == 2 then
		for i = 1, table.getn(zhandou[types]) do
			local chazhao = lualib:IO_GetCustomVarStr(zhandou[types][i][1])
			local chazhaoname = lualib:StrSplit(chazhao, "#")
			if name == chazhaoname[1] then
				if chazhaoname[7] ~= nil and chazhaoname[7] ~= "" then
					local p_name = lualib:Name(player)
					if p_name ~= chazhaoname[7] and p_name ~= chazhaoname[1] then
						return "ս���Ѿ����У���ѡ������ս����\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
					end
				end
				break
			else
				suozai = suozai + 1
			end
		end
		local guid = lualib:Name2Guid(name)
		--print(guid)
		if guid == "" then
			return "Ŀ�겻���ߣ���ѡ������ս����\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
		end
		
		if suozai > 5 then 
			msg = "��ǰû���˷�����ս��\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			return msg
		else
			local zhandoujieshao = lualib:IO_GetCustomVarStr(zhandou[types][suozai][1])
			local zhandoujieshao2 = string.split(zhandoujieshao, "#")
			if zhandoujieshao2[7] ~= nil then
				msg = "�����Ѿ���ʼ������ؾ�����볡�ڣ�\n"
				msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@jinru#"..zhandou[types][suozai][2].." *01*���볡��>\n"
				return msg
			else
				msg = "��"..zhandoujieshao2[1].."��������ս��Ѻע�Ĳʽ�Ϊ"..zhandoujieshao2[7].."��ӭս��Ҫ���ɷ�����ͬ���Ĳʽ�Ӯ��ս���Ļ�����˫��Ѻע�Ĳʽ��ܺ͵�90%����ȷ��ӭս��\n"
				msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@kaishi#"..types.."#"..name.."#"..suozai.."#"..yb.." *01*ȷ����ս>\n"
				msg = msg.."\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"
				return msg
			end
		end	
	elseif types == 3 then
		for i = 1, table.getn(zhandou[types]) do
			local chazhao = lualib:IO_GetCustomVarStr(zhandou[types][i][1])
			local chazhaoname = lualib:StrSplit(chazhao, "#")
			if name == chazhaoname[1] then
				if chazhaoname[11] ~= nil and chazhaoname[11] ~= "" then
					local p_name = lualib:Name(player)
					if p_name ~= chazhaoname[11] and p_name ~= chazhaoname[1] then
						return "ս���Ѿ����У���ѡ������ս����\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
					end
				end
				break
			else
				suozai = suozai + 1
			end
		end
		local guid = lualib:Name2Guid(name)
		--print(guid)
		if guid == "" then
			return "Ŀ�겻���ߣ���ѡ������ս����\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
		end
		
		if suozai > 5 then 
			msg = "��ǰû���˷�����ս��\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			return msg
		else
			local zhandoujieshao = lualib:IO_GetCustomVarStr(zhandou[types][suozai][1])
			local zhandoujieshao2 = string.split(zhandoujieshao, "#")
			if zhandoujieshao2[11] ~= nil then
				msg = "�����Ѿ���ʼ������ؾ�����볡�ڣ�\n"
				msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#>#<@jinru#"..zhandou[types][suozai][2].." *01*���볡��>\n"
				return msg
			else
				msg = "��"..zhandoujieshao2[1].."��������ս��Ѻע�Ĳʽ�Ϊ"..zhandoujieshao2[11].."��ӭս��Ҫ���ɷ�����ͬ���Ĳʽ�Ӯ��ս���Ļ�����˫��Ѻע�Ĳʽ��ܺ͵�90%����ȷ��ӭս��\n"
				msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@kaishi#"..types.."#"..name.."#"..suozai.."#"..yb.." *01*ȷ����ս>\n"
				msg = msg.."\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"
				return msg
			end
		end	
	end
end

--ӭս
function kaishi(npc, player, types, name, suozai, yb)
	local types = tonumber(types)
	local suozai = tonumber(suozai)
	local b_name = lualib:Name(player)
	local msg = ""
	
	---1v1ӭս
	if types == 1 then
		for i = 1, table.getn(zhandou[types][suozai]) do
			local chazhao = lualib:IO_GetCustomVarStr(zhandou[types][suozai][i])
			local chazhaoname = lualib:StrSplit(chazhao, "#")
			if chazhaoname[3] ~= nil and chazhaoname[3] ~= "" then
				return "ս���Ѿ����У���ѡ������ս����\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			end
		end
		
		local a = lualib:IO_GetCustomVarStr(zhandou[types][suozai][1])
		local b = lualib:IO_GetCustomVarStr(zhandou[types][suozai][2])
		for i =1 ,table.getn(zhandou) do
			for j =1, table.getn(zhandou[i]) do
				local liebiao1 = lualib:StrSplit(lualib:IO_GetCustomVarStr(zhandou[i][j][2]), "#")
				for l =1, table.getn(liebiao1) do
					if liebiao1[l] == player then
						msg = "���Ѿ������������Ѿ�Э����������ս����\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
						lualib:NPCTalkEx(npc, player, msg)
						return ""
					end
				end
			end
		end
		local a = a.."#"..b_name
		local b = b.."#"..player
		local yb = tonumber(yb)
		if not lualib:Player_IsGoldEnough(player, yb, false) then
			return "��Ľ�Ҳ���"..yb.."��������ս��\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
		end
		if lualib:Player_SubGold(player, yb, false, "1v1��ս", player) == false then
			return "�۳����ʧ��"
		end
		
		lualib:IO_SetCustomVarStr(zhandou[types][suozai][1], a)
		lualib:IO_SetCustomVarStr(zhandou[types][suozai][2], b)
	--�������ʼ�
		local tips_player = lualib:StrSplit(a, "#")
		lualib:SendMail("����������Ա",tips_player[1], tips_player[3].."�������������ս���������뾡�������Ѱ�Ҿ���������Ա�볡��")
		lualib:SysMsg_SendCenterMsg(1, "��"..b_name.."���ھ���������Ա���ܡ�"..tips_player[1].."��1VS1ս��������","")
		lualib:SysMsg_SendBoardMsg("0", "����������Ա", "��"..b_name.."���ھ���������Ա���ܡ�"..tips_player[1].."��1VS1ս��������", 15000)
	---��������	
		dgn1 = lualib:Map_CreateDgn("��Ϣ��", true, 720)
		if dgn1 == "" then
			lualib:Error("��������Ϣ�Ҵ���ʧ�ܣ�")
		else
			lualib:SetStr(dgn1, "shit", b)
			lualib:SetStr(npc, b, dgn1)
			--lualib:IO_SetCustomVarStr(dgn1, b)
			lualib:Map_GenNpc(dgn1, "��ɽ��ҩ����",31, 44, 1, 4)
			lualib:Error("��������Ϣ�Ҵ����ɹ���")
		end
		return "�ɹ���ս�����µ��NPC���볡�أ����ڿ�����ҩƷ������Ʒ�� \n \n#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@jinru#"..zhandou[types][suozai][2].." *01*���볡��>\n \n#IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���رա�>\n"
	elseif types == 2 then
		return "5v5��δ����"
	elseif types == 3 then
		return "10v10��δ����"
	end
end


---�ӳٷ���
function yanshifanhuan(npc, id, types, v_name, v_guid)
	local a = lualib:StrSplit(lualib:IO_GetCustomVarStr(v_name), "#")
	local b = lualib:StrSplit(lualib:IO_GetCustomVarStr(v_guid), "#")
	local types = tonumber(types)
	if types == 1 then
		if a[3] == nil and b[3] == nil then
			lualib:Mail("����������Ա", a[1], "��������ľ�����ս�ѹ��ڣ�ϵͳ�������Ľ�ң�", tonumber(a[2]), 0, {})
		end
	elseif types == 2 then
		if a[7] == nil and b[7] == nil then
			lualib:Mail("����������Ա", a[1], "��������ľ�����ս�ѹ��ڣ�ϵͳ�������Ľ�ң�", tonumber(a[6]), 0, {})
		end
	elseif types == 3 then 
		if a[12] == nil and b[12] == nil then
			lualib:Mail("����������Ա", a[1], "��������ľ�����ս�ѹ��ڣ�ϵͳ�������Ľ�ң�", tonumber(a[11]), 0, {})
		end
	end
	lualib:IO_SetCustomVarStr(v_name, "")
	lualib:IO_SetCustomVarStr(v_guid, "")
	
	return ""
end



---���볡��1v1
function jinru(npc, player, bianlian)
	local bianlian = lualib:IO_GetCustomVarStr(bianlian)
	--print(bianlian)
	local p_guid_table = lualib:StrSplit(bianlian, "#")
	for i = 1, table.getn(p_guid_table) do
		if player == p_guid_table[i] then
			local chuansongweizhi = lualib:GetStr(npc, bianlian)
			local KeyNa = lualib:KeyName(chuansongweizhi)
			--print(chuansongweizhi, KeyNa)
			lualib:Player_SetDgnTicket(player, chuansongweizhi)
			if not lualib:Player_EnterDgn(player, KeyNa, 31, 44,5) then return "����ʧ�ܣ�" end
			break
		end
	end
	
	
	return ""
end