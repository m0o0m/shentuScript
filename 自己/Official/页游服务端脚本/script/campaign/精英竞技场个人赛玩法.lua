local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
--require("form/���˾�������")

local shijiankongzhi = {
	--��λ������
	[1]=180000,		--�����볡��ʼ����ٺ�����ʽ��ʼ����
	[2]=1080000,	--Ⱥ����¹������ʼ�Ժ��ý���
	[3]=480000,		--��Ⱥ����¹������������ʼ�Ժ��ý���
	[4]=600000,		--������������ٺ��뷢�Ž���
}

--�볡����
local ruchanggonggao = {
	[4200000] = {lua_jyjjc_timer1,"baominggonggao",600000,6,"��Ӣ������������ʼ����Ҫ�μӵ�����뵽����NPC������������[226,219]��������20:00ʱ����������"}, --�ص���������ʱ������������ʱ��ִ�д�������������
	[600000] = {lua_jyjjc_timer2,"baominggonggao",30000,20,"��Ӣ����������M��S���ʼ������������NPC������������[226,219]�鿴��"},
	[180000] = {lua_jyjjc_timer3,"baominggonggao",10000,17,"��Ӣ����������M��S���ʼ�����������׼����"},
	[10000] = {lua_jyjjc_timer4,"baominggonggao",1000,9,"��Ӣ����������S�뿪ʼ�������׼����"}
}

--��������
local jieshugonggao = {
	[600000] = {lua_jyjjc_timer5,"jieshuxuangao",60000,5,"���ξ�Ӣ�������ھ���A���Ǿ���B��������C������21:20ʱע������ʼ���ȡ��Ʒ��"}, --�ص���������ʱ������������ʱ��ִ�д�������������
}

--�����볡����
local ruchangchhufa = {
	[2] = {"��Ӣ������-Ⱥ����¹"}, --Ⱥ����¹���볡
	[3] = {"��Ӣ������-16��8"}, --������16��8�볡
	[4] = {"��Ӣ������-8��4"}, --������8��4�볡
	[5] = {"��Ӣ������-4��2"}, --������4��2�볡
	[6] = {"��Ӣ������-���Ǿ���","��Ӣ������-������"} --������������ʼ
}

--���������ĳ�����
local changdishu = {
	["��Ӣ������-Ⱥ����¹"] = 8,
	["��Ӣ������-16��8"] = 8,
	["��Ӣ������-8��4"] = 4,
	["��Ӣ������-4��2"] = 2,
	["��Ӣ������-������"] = 1,
	["��Ӣ������-���Ǿ���"] = 1,
}

chongfugoggao = 0 --�ظ����������
chongfugoggao1 = 0 --�ظ����������
	
------------------��ʼ����--------------
function on_start_decl(id, map, times) --�id����ͼ��ʶ������������
    times = tonumber(times)
	if ruchanggonggao[times] == nil then
		return
	end
	
	chongfugoggao = times
	if times ~= 4200000 then
		if lualib:GetInt("0","jyjjc_jieduan") == 0 then --���������ִֹֹͣ�нű�
			return
		end
		
		local Time2Str = lualib:Time2Str("%Y-%m-%d",lualib:GetAllTime()) --��õ�ǰ��������ʱ��
		local Time = lualib:Str2Time(Time2Str.." 20:10:00") - lualib:GetAllTime() --��ñ�����ʼʱ�������
		local msg = ruchanggonggao[times][5]
		local minute = math.floor(Time / 60)
		local second = math.floor(Time - math.floor(Time / 60) * 60)
		msg = string.gsub(msg,"M",minute)
		msg = string.gsub(msg,"S",second)
		lualib:SysMsg_SendBoardMsg("0", "[��Ӣ������]", msg, 15000)
		
		if times == 180000 then
			leitairuchang(2) --ִ�л�볡����
		end
	else
		if times == 4200000 then
			--������Ϣ�丱��
			local dgn = lualib:Map_CreateDgn("��Ӣ������-��Ϣ��", true, 4200)
			if dgn == "" then
				lualib:Error("��������Ӣ������-��Ϣ�䴴��ʧ�ܣ�")
				return
			else
				lualib:SetStr("0","jyjjc_xiuxijian",dgn) --������ͼ��ʶ����¼
			end
		
			ltsqingli() --������˾���������
			lualib:SetInt("0","jyjjc_jieduan",1) --��Ӣ�������׶θı�Ϊ1�����Խ��б���
		end
		lualib:SysMsg_SendBoardMsg("0", "[��Ӣ������]", ruchanggonggao[times][5], 15000) --ִ���˱�ʶ����������⣬�������ݣ���ʱ��ʧ
	end
	
	if not lualib:AddTimer("",ruchanggonggao[times][1], ruchanggonggao[times][3], ruchanggonggao[times][4], ruchanggonggao[times][2]) then
		lualib:Error("��Ӣ�������������涨ʱ������ʧ�ܣ�")
	end
end

------------------��������--------------
function baominggonggao(guid, timer_id)
	if ruchanggonggao[chongfugoggao] == nil then
		return
	end
	
	if chongfugoggao ~= 4200000 then
		local Time2Str = lualib:Time2Str("%Y-%m-%d",lualib:GetAllTime()) --��õ�ǰ��������ʱ��
		local Time = lualib:Str2Time(Time2Str.." 20:10:00") - lualib:GetAllTime() --��ñ�����ʼʱ�������
		local msg = ruchanggonggao[chongfugoggao][5]
		local minute = math.floor(Time / 60)
		local second = math.floor(Time - math.floor(Time / 60) * 60)
		msg = string.gsub(msg,"M",minute)
		msg = string.gsub(msg,"S",second)
		lualib:SysMsg_SendBoardMsg("0", "[��Ӣ������]", msg, 15000)
	else
		lualib:SysMsg_SendBoardMsg("0", "[��Ӣ������]", ruchanggonggao[chongfugoggao][5], 15000) --ִ���˱�ʶ����������⣬�������ݣ���ʱ��ʧ
	end
end

------------------��������--------------
function on_end_decl(id, map, times)
	if lualib:GetInt("0","jyjjc_jieduan") == 0 then --���������ִֹֹͣ�нű�
		return
	end
	
	--����ǽ������涨ʱ��
	if jieshugonggao[times] ~= nil then
		chongfugoggao1 = times
		local msg = jieshugonggao[times][5]
		if lualib:GetStr("0","jyjjc_mingzi1") == "" then
			return
		end

		if lualib:GetStr("0","jyjjc_mingzi1") ~= "" then
			msg = string.gsub(msg,"A",lualib:KeyName(lualib:GetStr("0","jyjjc_mingzi1"))) --��Ϊ�������ھ�����
		end
		
		if lualib:GetStr("0","jyjjc_mingzi2") ~= "" then
			msg = string.gsub(msg,"B",lualib:KeyName(lualib:GetStr("0","jyjjc_mingzi2"))) --��Ϊ�������Ǿ�����
		else
			msg = string.gsub(msg,"�Ǿ���B��","") --��Ϊ�������Ǿ�����
		end
		
		if lualib:GetStr("0","jyjjc_mingzi3") ~= "" then
			msg = string.gsub(msg,"C",lualib:KeyName(lualib:GetStr("0","jyjjc_mingzi3"))) --��Ϊ��������������
		else
			msg = string.gsub(msg,"������C��","") --��Ϊ��������������
		end
		
		lualib:SysMsg_SendBoardMsg("0", "[��Ӣ������]", msg, 15000)
		if not lualib:AddTimer("",jieshugonggao[times][1], jieshugonggao[times][3], jieshugonggao[times][4], jieshugonggao[times][2]) then
			lualib:Error("��Ӣ�������������涨ʱ������ʧ�ܣ�")
		end
		return
	end
end

------------------��������1------------------
function jieshuxuangao(guid, timer_id)
	local msg = jieshugonggao[chongfugoggao1][5]
	
	if lualib:GetStr("0","jyjjc_mingzi1") == "" then
		return
	end
	
	if lualib:GetStr("0","jyjjc_mingzi1") ~= "" then
		msg = string.gsub(msg,"A",lualib:KeyName(lualib:GetStr("0","jyjjc_mingzi1"))) --��Ϊ�������ھ�����
	end
	
	if lualib:GetStr("0","jyjjc_mingzi2") ~= "" then
		msg = string.gsub(msg,"B",lualib:KeyName(lualib:GetStr("0","jyjjc_mingzi2"))) --��Ϊ�������Ǿ�����
	else
		msg = string.gsub(msg,"�Ǿ���B��","") --��Ϊ�������Ǿ�����
	end
	
	if lualib:GetStr("0","jyjjc_mingzi3") ~= "" then
		msg = string.gsub(msg,"C",lualib:KeyName(lualib:GetStr("0","jyjjc_mingzi3"))) --��Ϊ��������������
	else
		msg = string.gsub(msg,"������C��","") --��Ϊ��������������
	end

	lualib:SysMsg_SendBoardMsg("0", "[��Ӣ������]", msg, 15000)
end

------------------���崫��------------------
function Goto(id,player,map)
	 local x = 226
	 local y = 220
	 local r = 3
	 local map_key_name = "����"
	local gold = 1500
	local msg = ""
	
	if lualib:HasBuff(player,"��̯") then
	lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
	return false
	end
	
	if not lualib:Player_IsGoldEnough(player, gold, false) then
	msg = msg.."��ǰ������Ҫ1500���"
	lualib:NPCTalk(player, msg)
    return true
    end
	if not lualib:Player_SubGold(player, gold, false, "����", player) then
	msg = msg.."�۳����ʧ��"
	lualib:NPCTalk(player, msg)
    return true
    end
	if not lualib:Player_MapMoveXY(player,map_key_name, x, y, r) then
		lualib:SysMsg_SendWarnMsg(player, "")
	end
end

------------------��Ӣ�����������볡--------------
function leitairuchang(jieduan)
	local mingzi = ruchangchhufa[jieduan][1]
	local mingzi1 = ""
	
	if ruchangchhufa[jieduan][2] ~= nil then
		mingzi1 = ruchangchhufa[jieduan][2]
	end

	jieduan = tonumber(jieduan)
	lualib:SetInt("0","jyjjc_zhuangkuang",1) --��Ӣ�������״����Ϊ�����볡
	lualib:SetInt("0","jyjjc_jieduan",jieduan) --�ı�����׶�
	local mingdan = nil
	if lualib:GetStr("0", "jyjjc_gerenjinji") == "" then
	else
		mingdan = json.decode(lualib:GetStr("0", "jyjjc_gerenjinji"))
	end
	
	local dgn = ""
	if mingzi == "��Ӣ������-Ⱥ����¹" and (mingdan == nil or #mingdan < 16 ) then --����Ƿ����˱����μӱ���
		lualib:SysMsg_SendTopMsg(1, "��Ӣ���������������ڲ�����������16�ˣ������Զ���ֹ��")
		lualib:SysMsg_SendBroadcastColor("��Ӣ���������������ڲ�����������16�ˣ������Զ���ֹ��", "", 1, 12)
		lualib:SetInt("0","jyjjc_jieduan",0) --��Ӣ��������׶θı�Ϊ0��������ֹ��
		ltsqingli() --������˾���������
		return
	end
	
	local fubenshijian = 9999
	local dgn
	
	if mingzi == "��Ӣ������-���Ǿ���" then
		dgn = lualib:Map_CreateDgn(mingzi, true, fubenshijian)
		if dgn == "" then
			lualib:Error("��������Ӣ���������ش���ʧ�ܣ�")
			return
		end
		lualib:SetStr("0","jyjjc_ditubiaoshifu1",dgn) --������ͼ��ʶ����¼
	end
	
	if mingzi1 == "��Ӣ������-������" then
		dgn = lualib:Map_CreateDgn(mingzi1, true, fubenshijian)
		if dgn == "" then
			lualib:Error("��������Ӣ���������ش���ʧ�ܣ�")
			return
		end
		lualib:SetStr("0","jyjjc_ditubiaoshifu2",dgn) --������ͼ��ʶ����¼
	end
	
	if jieduan < 6 then
		for i=1,changdishu[mingzi] do --������������
			dgn = lualib:Map_CreateDgn(mingzi, true, fubenshijian)
			if dgn == "" then
				lualib:Error("��������Ӣ���������ش���ʧ�ܣ�")
				return
			end
			lualib:SetStr("0","jyjjc_ditubiaoshifu"..i,dgn) --������ͼ��ʶ����¼
		end
	end
	
	local msg = ""
	if mingzi == "��Ӣ������-Ⱥ����¹" then
		msg = "\n                       ��ı�������3�����ڿ�ʼ���Ƿ���������أ�\n"
	else
		msg = "\n                       ��ı�������2�����ڿ�ʼ���Ƿ���������أ�\n"
	end
	
	msg = msg .. "             ����֮�����޵ж���״̬�����ɹ����κ���ң�����ʹ���κ���Ʒ��\n"
	msg = msg .. "                     ����������Ʒ�Լ�װ������ʱ�������ھ����볡��\n\n"
	msg = msg .. "                                <@leitairuchang1 *01*���ǡ�>            <@guanbi *01*����>"
	
	if mingzi == "��Ӣ������-���Ǿ���" then
		lualib:NPCTalk(lualib:GetStr("0","jyjjc_mingci1"),msg) --ÿ��������ҵ����Ի���
		lualib:NPCTalk(lualib:GetStr("0","jyjjc_mingci2"),msg) --ÿ��������ҵ����Ի���
	end
	
	if mingzi1 == "��Ӣ������-������" then
		lualib:NPCTalk(lualib:GetStr("0","jyjjc_mingci3"),msg) --ÿ��������ҵ����Ի���
		lualib:NPCTalk(lualib:GetStr("0","jyjjc_mingci4"),msg) --ÿ��������ҵ����Ի�
	end
	
	if jieduan < 6 then
		for i=1,#mingdan do
			if lualib:Player_IsOnline(mingdan[i]) == true then
				lualib:NPCTalk(mingdan[i],msg) --ÿ��������ҵ����Ի���
			end
		end
	end
	
	if not lualib:AddTimer("",lua_jyjjc_timer6,shijiankongzhi[1],1,"leitaikaishi") then --����������ʼ��ʱ����3���Ӻ�ִ�С�
		lualib:Error("��Ӣ������������ʼ��ʱ������ʧ��2��")
	else
		lualib:Error("��Ӣ������������ʼ��ʱ�����ɳɹ�2��")
	end
end

function guanbi()
	return ""
end

------------------��Ӣ�������볡--------------
function leitairuchang1(player,s1)
	if s1 ~= nil then
		player = s1
	end
	
	if lualib:GetInt("0","jyjjc_jieduan") == 0 then --���������ִֹֹͣ�нű�
		return "����������ԭ����ֹ�������ٽ��룡"
	end
	
	if lualib:GetInt("0","jyjjc_zhuangkuang") == 2 then
		return "�������Ѿ���ʼ�����ܽ��롣"
	end
	
	if lualib:GetInt("0","jyjjc_zhuangkuang") ~= 1 then
		return "���ڻ����ǽ���ʱ�䣡"
	end
	
	if lualib:GetInt("0","jyjjc_jieduan") == 6 then --����Ƿ�Ϊ�����׶�
		local p1 = 0
		for i=1,4 do
			if lualib:GetStr("0","jyjjc_mingci"..i) == player then --����Ƿ��ھ����׶β���������
				p1 = 1
				break
			end
		end
		
		if p1 == 0 then
			return "��û�вμӱ������ʸ�"
		end
	else
		if string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..player.."\"") == nil then
			return "��û�вμӱ������ʸ�"
		end
	end
	
	local Name = ""
	local jinrumap = ""
	local map = ""

	if lualib:KeyName(lualib:GetStr("0","jyjjc_ditubiaoshifu1")) == "��Ӣ������-���Ǿ���" then
		if lualib:GetStr("0","jyjjc_mingci1") == player or lualib:GetStr("0","jyjjc_mingci2") == player then
			jinrumap = lualib:GetStr("0","jyjjc_ditubiaoshifu1")
		end
	end
	
	if lualib:KeyName(lualib:GetStr("0","jyjjc_ditubiaoshifu2")) == "��Ӣ������-������" then
		if lualib:GetStr("0","jyjjc_mingci3") == player or lualib:GetStr("0","jyjjc_mingci4") == player then
			jinrumap = lualib:GetStr("0","jyjjc_ditubiaoshifu2")
		end
	end

	if lualib:GetInt("0","jyjjc_jieduan") < 6 then --��Ϊ�����׶Σ�
		--���䳡������
		local zuishaorenshumap = "" --����������ͼ
		local zuishaorenshu = 0 --��������
		for i=1,8 do
			local renshu = 0 --��ͼ��ǰ����
			local map = lualib:GetStr("0","jyjjc_ditubiaoshifu"..i)
			if lualib:Map_IsDgnExist(map) == true then
				local fanwei = 0
				if lualib:Map_GetWidth(map) < lualib:Map_GetHeight(map) then
					fanwei = lualib:Map_GetHeight(map)
				else
					fanwei = lualib:Map_GetWidth(map)
				end
				local zaixianmingdan = lualib:Map_GetRegionPlayers(map,0,0,fanwei,false)
				
				for k,v in pairs(zaixianmingdan) do
					if string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..v.."\"") ~= nil then
						renshu = renshu + 1
					end
				end
				
				if i == 1 then
					zuishaorenshumap = map --��¼����������ͼ
					zuishaorenshu = renshu --��¼��������
				elseif renshu < zuishaorenshu then
					zuishaorenshumap = map --��¼����������ͼ
					zuishaorenshu = renshu --��¼��������
				end
			end
			jinrumap = zuishaorenshumap
		end
	end
	
	local Name = ""
	if jinrumap ~= "" then
		lualib:Player_SetDgnTicket(player,jinrumap) --��ý���������ص��ʸ�
		Name = lualib:KeyName(jinrumap) --��ȡ�������صĸ�������
		
		if lualib:GetStr(jinrumap,"jyjjc_gerenxinxi1") == "" then
			lualib:SetStr(jinrumap,"jyjjc_gerenxinxi1",player)
		elseif lualib:GetStr(jinrumap,"jyjjc_gerenxinxi2") == "" then
			lualib:SetStr(jinrumap,"jyjjc_gerenxinxi2",player)
		end
	else
		lualib:Error("��Ӣ�������������������ʧ�ܣ�")
		return "�����������ʧ�ܣ�"
	end
	
	if lualib:Player_HasDgnTicket(player, Name) == false then
		return "��û�н����Ȩ����������ı�����û�п�ʼ��"
	end
	
	if string.find(Name,"Ⱥ����¹") == nil then
		if lualib:Player_EnterDgn(player, Name, 30, 48, 3) == true then
			return ""
		else
			return "�����������ʧ�ܣ�"
		end
	else
		if lualib:Player_EnterDgn(player, Name, 0, 0, 0) == true then
			return ""
		else
			return "�����������ʧ�ܣ�"
		end
	end
end

------------------��Ӣ������������ʼ--------------
function leitaikaishi(guid, timer_id)
	if lualib:GetInt("0","jyjjc_jieduan") == 0 then --���������ִֹֹͣ�нű�
		return
	end
	
	lualib:SetInt("0","jyjjc_zhuangkuang",2) --��Ӣ�������״����Ϊ������ʼ
	
	--�жϸ����ص����� ������ڻ���ڽ������� ���ڳ����ֱ�ӽ���  �����ȴ��³�������ʼ����ʾ��
	for i=1,8 do
		local map = lualib:GetStr("0","jyjjc_ditubiaoshifu"..i)
		if lualib:Map_IsDgnExist(map) == true then
			local fanwei = 0
			if lualib:Map_GetWidth(map) < lualib:Map_GetHeight(map) then
				fanwei = lualib:Map_GetHeight(map)
			else
				fanwei = lualib:Map_GetWidth(map)
			end
			local zaixianmingdan = lualib:Map_GetRegionPlayers(map,0,0,fanwei,false)
			local mingdan = {}
			
			for k,v in pairs(zaixianmingdan) do
				if string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..v.."\"") ~= nil then
					mingdan[#mingdan+1] = v
				end
			end
			
			if #mingdan ~= 0 then
				for i2=1,#mingdan do
					lualib:Player_DelBuff(mingdan[i2],"��Ӣ�������ȴ�") --ɾ��buff
				end
				
				local p1 = 0
				
				if lualib:KeyName(map) == "��Ӣ������-���Ǿ���" then
					if #mingdan == 1 then
						local msg =  "\n                               ��ֱ�ӻ���˱��α����Ĺھ���\n"
						msg = msg .. "                     �ھ����佫��21��20ϵͳͨ�����䷢�͸��㣬��ʱ��ע����ա�\n"
						msg = msg .. "\n                                        <@guanbi *01*���رմ��ڡ�>\n"
							if lualib:GetStr("0","jyjjc_mingci1") == mingdan[1] then
							else
								lualib:SetStr("0","jyjjc_mingci1",mingdan[2]) --��¼��1�����
								lualib:SetStr("0","jyjjc_mingzi1",lualib:KeyName(mingdan[2])) --��¼��1���������
								lualib:SetStr("0","jyjjc_mingci2",mingdan[1]) --��¼��2�����
								lualib:SetStr("0","jyjjc_mingzi2",lualib:KeyName(mingdan[1])) --��¼��2���������
							end
						lualib:NPCTalk(mingdan[1],msg)	--��ʾ
						lualib:Map_DestroyDgn(map) --�ݻٸ���
					end
				elseif lualib:KeyName(map) == "��Ӣ������-������" then
					if #mingdan == 1 then
						local msg =  "\n                               ��ֱ�ӻ���˱��α����ļ�����\n"
						msg = msg .. "                     �������佫��21��20ϵͳͨ�����䷢�͸��㣬��ʱ��ע����ա�\n"
						msg = msg .. "\n                                        <@guanbi *01*���رմ��ڡ�>\n"
						lualib:SetStr("0","jyjjc_mingci3",mingdan[1]) --��¼��3�����
						lualib:SetStr("0","jyjjc_mingzi3",lualib:KeyName(mingdan[1])) --��¼��3���������
						lualib:NPCTalk(mingdan[1],msg)	--��ʾ
						lualib:Map_DestroyDgn(map) --�ݻٸ���
					end
				elseif lualib:KeyName(map) == "��Ӣ������-4��2" then
					if #mingdan == 1 then
						for i=1,4 do
							if lualib:GetStr("0","jyjjc_mingci"..i) == "" then
								lualib:SetStr("0","jyjjc_mingci"..i,mingdan[1]) --��¼��i�����
								lualib:SetStr("0","jyjjc_mingzi"..i,lualib:KeyName(mingdan[1])) --��¼��i���������
								break
							end
						end
						local msg =  "\n                                ������ֱ�ӽ����ʸ�\n"
						msg = msg .. "                 �³���������8���Ӻ���������������ʱ�������ñ�ս׼����\n"
						msg = msg .. "\n                                    <@guanbi *01*���رմ��ڡ�>\n"
						lualib:NPCTalk(mingdan[1],msg)	--��ʾ
						tiqianjinjicaozuo(mingdan[1]) --��������
						lualib:Map_DestroyDgn(map) --�ݻٸ���
					end
				else
					local p1 = 0
					--���ݱ���ȷ����������
					if lualib:KeyName(map) == "��Ӣ������-Ⱥ����¹" then
						p1 = 2
					else
						p1 = 1
					end

					if #mingdan <= p1 then
						local msg =  "\n                                ������ֱ�ӽ����ʸ�\n"
						if lualib:GetInt("0","jyjjc_jieduan") == 2 then
							msg = msg .. "                 �³���������18���Ӻ���������������ʱ�������ñ�ս׼����\n"
						else
							msg = msg .. "                 �³���������8���Ӻ���������������ʱ�������ñ�ս׼����\n"
						end
						msg = msg .. "\n                                    <@guanbi *01*���رմ��ڡ�>\n"

						for i1=1,#mingdan do
							lualib:NPCTalk(mingdan[i1],msg)	--ֱ�ӽ�����ʾ
							tiqianjinjicaozuo(mingdan[i1]) --��������
						end
						lualib:Map_DestroyDgn(map) --�ݻٸ���
					else
						if lualib:GetInt("0","jyjjc_jieduan") == 2 then
							lualib:SysMsg_SendMapMsg(map, "������ʽ��ʼ������18���ӣ�����������ҿ��Ի�û��֣����������������ߵ���λ��ҽ���ý����ʸ�")
							for i=1,#mingdan do
								lualib:SysMsg_SendCenterMsg(0, "������ʽ��ʼ������18���ӣ�����������ҿ��Ի�û��֣����������������ߵ���λ��ҽ���ý����ʸ�",mingdan[i])
							end
						else
							lualib:SysMsg_SendMapMsg(map, "������ʽ��ʼ������8���ӣ�����������ҿ��Ի�û��֣����������������ߵ���ҽ���ý����ʸ�")
							for i=1,#mingdan do
								lualib:SysMsg_SendCenterMsg(0, "������ʽ��ʼ������8���ӣ�����������ҿ��Ի�û��֣����������������ߵ���λ��ҽ���ý����ʸ�",mingdan[i])
							end
						end
					end
				end
			end
		end
	end

	--��������������ʱ��
	if lualib:GetInt("0","jyjjc_jieduan") == 2 then
		if not lualib:AddTimer("",lua_jyjjc_timer7, shijiankongzhi[2], 1, "leitaijieshu") then
			lualib:Error("��Ӣ������������ʱ������ʧ��1��")
		else
			lualib:Error("��Ӣ������������ʱ�����ɳɹ�1��")
		end
	else
		if not lualib:AddTimer("",lua_jyjjc_timer7, shijiankongzhi[3], 1, "leitaijieshu") then
			lualib:Error("��Ӣ������������ʱ������ʧ��2��")
		else
			lualib:Error("��Ӣ������������ʱ�����ɳɹ�2��")
		end
	end
end

------------------��Ӣ��������������--------------
function leitaijieshu(guid, timer_id)
	lualib:SetStr("0","jyjjc_gerenjinji","") --��������
	
	if lualib:GetStr("0", "jyjjc_gerentiqianjinji") == "" then
	else
		local tiqianm_table = json.decode(lualib:GetStr("0", "jyjjc_gerentiqianjinji"))
		for k,v in pairs(tiqianm_table) do
			jinjicaozuo(v)
		end
	end

	lualib:SetStr("0","jyjjc_gerentiqianjinji","") --��������
	
	local jinjimingdan = {} --����������
	local weijinjimingdan = {} --δ����������
	local queshaorenshu = 0 --��������ȱ�ٵ�����
				
	--ͳ�Ƹ���ͼ����������
	for i=1,8 do
		local map = lualib:GetStr("0","jyjjc_ditubiaoshifu"..i)
		if lualib:Map_IsDgnExist(map) == true then
			local fanwei = 0
			if lualib:Map_GetWidth(map) < lualib:Map_GetHeight(map) then
				fanwei = lualib:Map_GetHeight(map)
			else
				fanwei = lualib:Map_GetWidth(map)
			end

			local zaixianmingdan = lualib:Map_GetRegionPlayers(map,0,0,fanwei,false)
			local mingdan = {}
			
			for k,v in pairs(zaixianmingdan) do
				if lualib:HasBuff(v,"��Ӣ�������ۿ�") == false then
					mingdan[#mingdan+1] = v
				end
			end
			
			if lualib:KeyName(map) == "��Ӣ������-4��2" then
				if #mingdan ~= 0 then
					local jinji = {}
					if #mingdan == 1 then
						jinji[1] = mingdan[1]
					elseif #mingdan >= 2 then
						if lualib:GetInt(mingdan[1],"jyjjc_jifen") == lualib:GetInt(mingdan[2],"jyjjc_jifen") then
							if (lualib:Hp(mingdan[1],true) / lualib:Hp(mingdan[1],false) ) < (lualib:Hp(mingdan[2],true) / lualib:Hp(mingdan[2],false) ) then
								jinji[1] = mingdan[2]
								jinji[2] = mingdan[1]
							else
								jinji[1] = mingdan[1]
								jinji[2] = mingdan[2]
							end
						else
							if lualib:GetInt(mingdan[1],"jyjjc_jifen") > lualib:GetInt(mingdan[2],"jyjjc_jifen") then
								jinji[1] = mingdan[1]
								jinji[2] = mingdan[2]
							else
								jinji[1] = mingdan[2]
								jinji[2] = mingdan[1]
							end
						end
						lualib:SysMsg_SendWarnMsg(jinji[2], "�����˲μӼ����������ʸ�")
						jinjimingdan[#jinjimingdan+1] = jinji[2]
						if lualib:GetStr("0","jyjjc_mingci3") == "" then
							lualib:SetStr("0","jyjjc_mingci3",jinji[2])
							lualib:SetStr("0","jyjjc_mingzi3",lualib:KeyName(jinji[2])) --��¼��3���������
						elseif lualib:GetStr("0","jyjjc_mingci4") == "" then
							lualib:SetStr("0","jyjjc_mingci4",jinji[2])
							lualib:SetStr("0","jyjjc_mingzi4",lualib:KeyName(jinji[2])) --��¼��4���������
						end
					end
					lualib:SysMsg_SendWarnMsg(jinji[1], "�����˲μӹھ����������ʸ�")
					jinjimingdan[#jinjimingdan+1] = jinji[1]
					if lualib:GetStr("0","jyjjc_mingci1") == "" then
						lualib:SetStr("0","jyjjc_mingci1",jinji[1])
						lualib:SetStr("0","jyjjc_mingzi1",lualib:KeyName(jinji[1])) --��¼��1���������
					elseif lualib:GetStr("0","jyjjc_mingci2") == "" then
						lualib:SetStr("0","jyjjc_mingci2",jinji[1])
						lualib:SetStr("0","jyjjc_mingzi2",lualib:KeyName(jinji[1])) --��¼��2���������
					end
				end
			elseif lualib:KeyName(map) == "��Ӣ������-������" then
				local player = ""
				if #mingdan ~= 0 then
					if #mingdan == 1 then
						player = mingdan[1]
					elseif #mingdan >= 2 then
						if lualib:GetInt(mingdan[1],"jyjjc_jifen") == lualib:GetInt(mingdan[2],"jyjjc_jifen") then
							if (lualib:Hp(mingdan[1],true) / lualib:Hp(mingdan[1],false) ) < (lualib:Hp(mingdan[2],true) / lualib:Hp(mingdan[2],false) ) then
								player = mingdan[2]
							else
								player = mingdan[1]
							end
						else
							if lualib:GetInt(mingdan[1],"jyjjc_jifen") > lualib:GetInt(mingdan[2],"jyjjc_jifen") then
								player = mingdan[1]
							else
								player = mingdan[2]
							end
						end
					end
					
					local msg =  "\n                            ��ϲ�������˱��α����ļ�����\n"
					msg = msg .. "                     �������佫��21��20ϵͳͨ�����䷢�͸��㣬��ʱ��ע����ա�\n"
					msg = msg .. "\n                                    <@guanbi *01*���رմ��ڡ�>\n"
					lualib:SetStr("0","jyjjc_mingci3",player) --��¼��3�����
					lualib:SetStr("0","jyjjc_mingzi3",lualib:KeyName(player)) --��¼��1���������
					lualib:NPCTalk(player,msg)	--��ʾ
				end
			elseif lualib:KeyName(map) == "��Ӣ������-���Ǿ���" then
				local player = {}
				if #mingdan ~= 0 then
					if #mingdan > 0 then
						if #mingdan == 1 then
							player[1] = mingdan[1]
						elseif #mingdan >= 2 then
							if lualib:GetInt(mingdan[1],"jyjjc_jifen") == lualib:GetInt(mingdan[2],"jyjjc_jifen") then
								if (lualib:Hp(mingdan[1],true) / lualib:Hp(mingdan[1],false) ) < (lualib:Hp(mingdan[2],true) / lualib:Hp(mingdan[2],false) ) then
									player[1] = mingdan[2]
									player[2] = mingdan[1]
								else
									player[1] = mingdan[1]
									player[2] = mingdan[2]
								end
							else
								if lualib:GetInt(mingdan[1],"jyjjc_jifen") > lualib:GetInt(mingdan[2],"jyjjc_jifen") then
									player[1] = mingdan[1]
									player[2] = mingdan[2]
								else
									player[1] = mingdan[2]
									player[2] = mingdan[1]
								end
							end
						end
					
						if lualib:GetStr("0","jyjjc_mingci1") == player[1] then
						else
							lualib:SetStr("0","jyjjc_mingci1",player[1]) --��¼��1�����
							lualib:SetStr("0","jyjjc_mingzi1",lualib:KeyName(player[1])) --��¼��1���������
							lualib:SetStr("0","jyjjc_mingci2",player[2]) --��¼��2�����
							lualib:SetStr("0","jyjjc_mingzi2",lualib:KeyName(player[2])) --��¼��2���������
						end
							
						local msg =  "\n                            ��ϲ�������˱��α����Ĺھ���\n"
						msg = msg .. "                     �ھ����佫��21��20ϵͳͨ�����䷢�͸��㣬��ʱ��ע����ա�\n"
						msg = msg .. "\n                                    <@guanbi *01*���رմ��ڡ�>\n"
						lualib:NPCTalk(lualib:GetStr("0","jyjjc_mingci1"),msg)	--��ʾ
						msg =  "\n                            ��ϲ�������˱��α������Ǿ���\n"
						msg = msg .. "                     �Ǿ����佫��21��20ϵͳͨ�����䷢�͸��㣬��ʱ��ע����ա�\n"
						msg = msg .. "\n                                    <@guanbi *01*���رմ��ڡ�>\n"
						lualib:NPCTalk(lualib:GetStr("0","jyjjc_mingci2"),msg)	--��ʾ
					end
				end
			else
				local jinjirenshu = 0
				if lualib:KeyName(map) == "��Ӣ������-Ⱥ����¹" then
					jinjirenshu = 2
				else
					jinjirenshu = 1
				end
				
				if mingdan == nil then
					--��¼ȱ�ٽ�����������ѭ�����������δ�������������ȡ�ǰ����ҽ���
					queshaorenshu = queshaorenshu + jinjirenshu --��¼��������ȱ�ٵ�����
				else
					local paiming = {} --����table

					if #mingdan > jinjirenshu then --����ͼ�������Ƿ������Ҫ��������
						paiming[1] = mingdan[1]
						for i=2,#mingdan do
							local i1 = 1
							while i1 ~= nil do
								if i1 > #paiming then
									table.insert(paiming,#paiming+1,mingdan[i]) --���뵽����������
									break
								elseif lualib:GetInt(mingdan[i],"jyjjc_jifen") > lualib:GetInt(paiming[i1],"jyjjc_jifen") then --�жϻ���
									table.insert(paiming,i1,mingdan[i]) --���뵽����������
									break
								elseif lualib:GetInt(mingdan[i],"jyjjc_jifen") == lualib:GetInt(paiming[i1],"jyjjc_jifen") then --�ж�Ѫ��
									if (lualib:Hp(mingdan[i],true) / lualib:Hp(mingdan[i],false) ) < (lualib:Hp(paiming[i1],true) / lualib:Hp(paiming[i1],false) ) then
										table.insert(paiming,i1,mingdan[i]) --���뵽����������
										break
									end
								end
								i1 = i1 + 1
							end
						end

						for i=1,jinjirenshu do
							jinjimingdan[#jinjimingdan+1] = paiming[i] --�õ�ͼ����ǰ2����ҽ���
						end

						for i=1,jinjirenshu do
							paiming[i] = nil
						end
					elseif #mingdan <= jinjirenshu then
						--ʣ��һ�����������ֱ�ӽ���
						for i=1,#mingdan do
							jinjimingdan[#jinjimingdan+1] = mingdan[i]
						end
						queshaorenshu = queshaorenshu + (jinjirenshu - #mingdan)  --��¼��������ȱ�ٵ�����
					end
					
					for k,v in pairs(paiming) do
						weijinjimingdan[#weijinjimingdan+1] = paiming[k] --�õ�ͼδ��������Ҽ��뵽δ���������������
					end
				end
			end
			lualib:Map_DestroyDgn(map) --�ݻٸ���
		end
	end
	
	--��δ�����������в�������������������
	if queshaorenshu > 0 and #weijinjimingdan > 0 then
		local paiming = {} --����table
		
		paiming[1] = weijinjimingdan[1]
		for i=2,#weijinjimingdan do
			local i1 = 1
			while i1 ~= nil do
				if i1 > #paiming then
					table.insert(paiming,#paiming+1,weijinjimingdan[i]) --���뵽����������
					break
				elseif lualib:GetInt(weijinjimingdan[i],"jyjjc_jifen") > lualib:GetInt(paiming[i1],"jyjjc_jifen") then
					table.insert(paiming,i1,weijinjimingdan[i]) --���뵽����������
					break
				elseif lualib:GetInt(weijinjimingdan[i],"jyjjc_jifen") == lualib:GetInt(paiming[i1],"jyjjc_jifen") then
					if (lualib:Hp(weijinjimingdan[i],true) / lualib:Hp(weijinjimingdan[i],false) ) < (lualib:Hp(paiming[i1],true) / lualib:Hp(paiming[i1],false) ) then
						table.insert(paiming,i1,weijinjimingdan[i]) --���뵽����������
						break
					end
				end
				i1 = i1 + 1
			end
		end
		
		for i=1,queshaorenshu do
			for k,v in pairs(paiming) do
				jinjimingdan[#jinjimingdan+1] = v --��δ�����������в�������������������
				paiming[k] = nil
				break
			end
		end
		
		weijinjimingdan = paiming --δ��������
	end

	for k,v in pairs(jinjimingdan) do
		--������ҵ�����ʾ��
		lualib:SysMsg_SendWarnMsg(v, "��ϲ��ɹ�������")
		jinjicaozuo(v) --��������
	end

	for k,v in pairs(weijinjimingdan) do
		--δ������ҵ�����ʾ��
		if lualib:Player_IsOnline(weijinjimingdan[k]) == true then
			lualib:NPCTalk(weijinjimingdan[k],"���ź������α�����û�ܽ��������´��ٽ�������\n\n<@guanbi *01*�ر�>")
		end
	end
				
	local jieduan = lualib:GetInt("0","jyjjc_jieduan")+1
	--������һ������
	if ruchangchhufa[jieduan] ~= nil then
		leitairuchang(jieduan) --ִ�л�볡����
	elseif jieduan == 7 then
		if not lualib:AddTimer("",lua_jyjjc_timer8,shijiankongzhi[4],1,"fafangjiangli") then  --�������Ž�����ʱ����10���Ӻ�ִ�С�
			lualib:Error("��Ӣ���������Ž�����ʱ������ʧ�ܣ�")
		else
			lualib:Error("��Ӣ���������Ž�����ʱ�����ɳɹ���")
		end
	end
end

------------------���Ž���--------------
function fafangjiangli(guid, timer_id)
	if lualib:GetStr("0","jyjjc_mingzi1") ~= "" then
		lualib:Mail("��Ӣ������",lualib:GetStr("0","jyjjc_mingzi1"),"ף�����ڱ��ξ�Ӣ�������л���˹ھ������Ǹ���Ľ�����ϣ�������´α����б��ֵø��á�",0,0,{"�������ھ�����",1,1})
	end
	
	if lualib:GetStr("0","jyjjc_mingzi2") ~= "" then
		lualib:Mail("��Ӣ������",lualib:GetStr("0","jyjjc_mingzi2"),"ף�����ڱ��ξ�Ӣ�������л�����Ǿ������Ǹ���Ľ�����ϣ�������´α����б��ֵø��á�",0,0,{"�������Ǿ�����",1,1})
	end
	
	if lualib:GetStr("0","jyjjc_mingzi3") ~= "" then
		lualib:Mail("��Ӣ������",lualib:GetStr("0","jyjjc_mingzi3"),"ף�����ڱ��ξ�Ӣ�������л���˼��������Ǹ���Ľ�����ϣ�������´α����б��ֵø��á�",0,0,{"��������������",1,1})
	end
	
	local mingdan = json.decode(lualib:GetStr("0", "jyjjc_geren16"))
	for k,v in pairs(mingdan) do
		if v ~= lualib:GetStr("0","jyjjc_mingzi1") and v ~= lualib:GetStr("0","jyjjc_mingzi2") and v ~= lualib:GetStr("0","jyjjc_mingzi3") then
			lualib:Mail("��Ӣ������",v,"ף�����ڱ��ξ�Ӣ�������н�����16ǿ�����Ǹ���Ľ�����ϣ�������´α����б��ֵø��á�",0,0,{"������16ǿ����",1,1})
		end
	end
	
	ltsqingli() --������˾���������
end

------------------�������һЩ����--------------
function jinjicaozuo(player)
	if lualib:GetStr("0", "jyjjc_gerenjinji") == "" then
		local t1_table = {player}
		lualib:SetStr("0", "jyjjc_gerenjinji", json.encode(t1_table))
	else
		local t1_table = json.decode(lualib:GetStr("0", "jyjjc_gerenjinji"))
		t1_table[#t1_table+1] = player
		lualib:SetStr("0", "jyjjc_gerenjinji", json.encode(t1_table))
	end
		
	local name = lualib:KeyName(player)
	if lualib:GetStr("0", "jyjjc_geren16") == "" then
		local t2_table = {player}
		lualib:SetStr("0", "jyjjc_geren16", json.encode(t2_table))
	elseif string.find(lualib:GetStr("0", "jyjjc_geren16"),name..",") == nil  then
		local t2_table = json.decode(lualib:GetStr("0", "jyjjc_geren16"))
		t2_table[#t2_table+1] = player
		lualib:SetStr("0", "jyjjc_geren16", json.encode(t2_table))
	end
end

------------------������ʼ����ǰ������һЩ����--------------
function tiqianjinjicaozuo(player)
	if lualib:GetStr("0", "jyjjc_gerentiqianjinji") == "" then
		local t1_table = {player}
		lualib:SetStr("0", "jyjjc_gerentiqianjinji", json.encode(t1_table))
	else
		local t1_table = json.decode(lualib:GetStr("0", "jyjjc_gerentiqianjinji"))
		t1_table[#t1_table+1] = player
		lualib:SetStr("0", "jyjjc_gerentiqianjinji", json.encode(t1_table))
	end

	local name = lualib:KeyName(player)
	if lualib:GetStr("0", "jyjjc_geren16") == "" then
		local t2_table = {player}
		lualib:SetStr("0", "jyjjc_geren16", json.encode(t2_table))
	elseif string.find(lualib:GetStr("0", "jyjjc_geren16"),name..",") == nil  then
		local t2_table = json.decode(lualib:GetStr("0", "jyjjc_geren16"))
		t2_table[#t2_table+1] = player
		lualib:SetStr("0", "jyjjc_geren16", json.encode(t2_table))
	end
end

------------------������������--------------
function ltsqingli()
	lualib:SetInt("0","jyjjc_zhuangkuang",0)
	lualib:SetInt("0","jyjjc_jieduan",0)
	lualib:SetStr("0","jyjjc_ditubiaoshifu1","")
	lualib:SetStr("0","jyjjc_ditubiaoshifu2","")  
	lualib:SetStr("0","jyjjc_ditubiaoshifu3","")
	lualib:SetStr("0","jyjjc_ditubiaoshifu4","")
	lualib:SetStr("0","jyjjc_ditubiaoshifu5","")
	lualib:SetStr("0","jyjjc_ditubiaoshifu6","")
	lualib:SetStr("0","jyjjc_ditubiaoshifu7","")
	lualib:SetStr("0","jyjjc_ditubiaoshifu8","")
	lualib:SetStr("0","jyjjc_mingci1","")
	lualib:SetStr("0","jyjjc_mingci2","")
	lualib:SetStr("0","jyjjc_mingci3","")
	lualib:SetStr("0","jyjjc_mingci4","")
	lualib:SetStr("0","jyjjc_mingzi1","")
	lualib:SetStr("0","jyjjc_mingzi2","")
	lualib:SetStr("0","jyjjc_mingzi3","")
	lualib:SetStr("0","jyjjc_mingzi4","")
	lualib:SetStr("0","jyjjc_gerenjinji","")
	lualib:SetStr("0","jyjjc_geren16","")
	lualib:SetStr("0","jyjjc_gerentiqianjinji","")
end