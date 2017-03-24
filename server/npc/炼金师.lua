function main(npc, player)
	local msg = [[�㻹��֪����Ԫ���ͷŵ��������������ߴ�������ľ���
���ң����컹���������ֵ�ĸ���Ʒ:���ʯ
������Ԫ������Ļ�������ÿ�ε�����������ȡ
���⣬һ���Զ���Ԫ����������50��300֮�䣬
��һ������ȡ��12�Ž��ʯ�����п��ܵõ�������Ʒ��
����һ�����ʲ��ܻ����Щ��Ʒ�������ȥ�칤�����ѯһ�����ƣ�
]]
	msg = msg.."<@info *01*��ѯԪ���������>����������������<@duanzao *01*����Ԫ������>"
	msg = msg.."<@award *01*��ȡ���츽��Ʒ:���ʯ>����������<@look *01*��ѯ��ǰӵ�еĽ��ʯ����>"
	msg = msg.."<@leave *01*ȥ��Χ����>��������������������<@leave *01*�ر�>"
	return msg
end

function info(npc, player)
	local msg = [[1��ʹ��Ԫ���������󣬱��뵽NPC����ȡ����ֵ������Ʒ:���ʯ
2�����ڶ��쾭��ֵ��Ԫ�������������뷶Χ��1~300֮��
3��100��Ԫ�����Զ���10���ӣ���֮��2�Ž��ʯ
4��ʹ��Ԫ�����ж��죬���Ի�ø���ľ���
5��һ���Զ���Ԫ������5000��30000֮�䣬���л���õ�һ����Ʒ
6����ƷΪϵͳ������ɣ�Ҳ�в���õĿ�����
7����ͨ���첻�������룬�Ѿ�����Ļ����Լ�����þ���ֵ�����ʯ
]]
	msg = msg.."<@main *01*���˽�Ԫ��������򣬷���>"
	return msg
end

function look(npc, player)
	local lj_time_end = lualib:GetInt(player, "lj_time_end")
	local lj_start_time = lualib:GetInt(player, "lj_start_time")
	local curTime   = lualib:GetAllTime()
	local lj_yb = lualib:GetInt(player, "lj_yb")
	
	local num = math.floor(curTime - lj_start_time) / 300
	if num < 0 then
		num = 0
	elseif num > lj_yb then
		num = lj_yb
	end
	
	
	local msg = "��ǰ�Ѷ�����ʯ������"..num
	msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	return msg
end

function duanzao(npc, player)
	local curTime   = lualib:GetAllTime()
	local lj_time_end = lualib:GetInt(player, "lj_time_end")
	local lj_start_time = lualib:GetInt(player, "lj_start_time")
	if lj_time_end > curTime then
		return "�㵱ǰ���ڶ��죬����ɺ������\n                                                 #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main       *01*�����ء�>"
	end
	
	lualib:SysMsg_SendInputDlg(player, 1, "������Ԫ��������", 30, 12, "EnterSilver", npc)
	return ""
end

function EnterSilver(id, player, silver, npc)
	local msg = ""
	local lj_time_end = lualib:GetInt(player, "lj_time_end")
	local lj_start_time = lualib:GetInt(player, "lj_start_time")
	local curTime   = lualib:GetAllTime()
	if lj_time_end > curTime then
		msg = "�㵱ǰ���ڶ��죬����ɺ������\n                                                 #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main       *01*�����ء�>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	local lj_yb = lualib:GetInt(player, "lj_yb")
	if lj_yb > 100 then
		msg = "�㻹�н���δ��ȡ������ȡ���ټ�����\n                                                 #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main       *01*�����ء�>"
		lualib:NPCTalkEx(npc, player, msg)
	end
	
	
	local silver = tonumber(silver)
	
	if (silver == nil) then
		msg = msg .. "�����봿����\n \n \n \n \n \n \n \n"
		msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	if (silver == 0 ) then
		msg = msg .. "����Ϊ0\n \n \n \n \n \n \n \n"
		msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	
	if (silver <= 0 ) then
		msg = msg .. "��������������\n \n \n \n \n \n \n \n"
		msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	
	if ((silver % 100) ~= 0) then
		msg = msg .. "����Ϊ100��������\n \n \n \n \n \n \n \n"
		msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	if silver > 30000 then
		msg = msg .. "���ܴ���30000\n \n \n \n \n \n \n \n"
		msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	if not lualib:Player_IsIngotEnough(player, silver, false) then
		msg = msg .. "Ԫ������\n \n \n \n \n \n \n \n"
		msg = msg .. "                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	if lualib:Player_SubIngot(player, silver, false, "����ʦ:��ҩ��Ԫ��", "����ʦ��Ԫ��") == false then
		lualib:NPCTalkEx(npc, player, "�۳�Ԫ��ʧ��")
		return true
	end
	
	lualib:SetInt(player, "lj_start_time", curTime)
	lualib:SetInt(player, "lj_time_end", curTime + silver / 100 * 10 * 60)
	lualib:SetInt(player, "lj_yb", silver)
	
	msg = msg .. "����ʼ�˶��죬�ܹ���Ҫ����" .. silver / 100 * 10 .. "���뵽ʱ������ȡ��\n"
	if silver >= 5000 then
		msg = msg .. "������һ���Զ��쳬��5000Ԫ�����������ʱ�ɻ�ö���������Ʒ��"
	end
	lualib:NPCTalkEx(npc, player, msg)
	return true
end

function award(npc, player)
	local lj_time_end = lualib:GetInt(player, "lj_time_end")
	local lj_start_time = lualib:GetInt(player, "lj_start_time")
	local curTime   = lualib:GetAllTime()
	local lj_yb = lualib:GetInt(player, "lj_yb")
	
	if lj_time_end > curTime then
		return "�㵱ǰ���ڶ��죬����ɺ������\n                                                 #OFFSET<X:0,Y:4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main       *01*�����ء�>"
	end
	
	if lj_yb < 100 then
		return "��û�п���ȡ�Ľ�����"
	end
	
	lualib:SetInt(player, "lj_yb", 0)
	lualib:SetInt(player, "lj_time_end", 0)
	lualib:SetInt(player, "lj_start_time", 0)
	
	local jgs_num = lj_yb / 50
	local msg = "�������ʯ"..jgs_num.."����\n"
	if lj_yb >= 5000 then
		msg = msg.."������Ʒһ��"
	end
	lualib:AddItem(player, "���ʯ", jgs_num, false, "", "")
	return msg
end
