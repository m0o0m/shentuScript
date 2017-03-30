local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("npc/��Ӣ������")
require("npc/����������")

--------------��������ʱ����------------------
function on_map_create(map)
	lualib:SetInt(map,"jyjjc_chuangjian",lualib:GetAllTime()) --��¼��������ʱ��
	lualib:SetInt(map,"jyjjc_duiwujifen1",500) --����1����
	lualib:SetInt(map,"jyjjc_duiwujifen2",500) --����2����
	
    lualib:AddTrigger(map, lua_trigger_enter_map, "on_trigger_enter_map") --���븱���ص�
    lualib:AddTrigger(map, lua_trigger_kill, "on_trigger_kill") --ɱ�˻ص�
	lualib:AddTrigger(map, lua_trigger_player_relive, "on_trigger_player_relive") --�����ص�
	lualib:AddTrigger(map, lua_trigger_dungeon_end, "on_dungeon_end") --����ʱ�䵽��ص�
	lualib:AddTrigger(map, lua_trigger_leave_map, "on_trigger_leave_map") --�뿪��ͼ����
	
	lualib:Map_GenNpc(map, "����������", 37, 40, 0, 4)
	lualib:Map_GenNpc(map, "����������", 23, 57, 0, 4)
	
	if not lualib:AddTimerEx(map,1,30000,1,"leitaikaishi",map) then --����������ʼ��ʱ����30���ִ�С�
		lualib:Error("��Ӣ�����������������ʼ��ʱ������ʧ�ܣ�")
	else
		lualib:Error("��Ӣ�����������������ʼ��ʱ�����ɳɹ���")
	end
	
	if not lualib:AddTimerEx(map,2,30000,10,"renshubuchong",map) then --�����������䶨ʱ����
		lualib:Error("��Ӣ������������������䶨ʱ������ʧ�ܣ�")
	else
		lualib:Error("��Ӣ������������������䶨ʱ�����ɳɹ���")
	end
	
	if not lualib:AddTimerEx(map,3,30000,-1,"renshupanduan",map) then --�����ڳ������ж϶�ʱ����
		lualib:Error("��Ӣ����������������ж϶�ʱ������ʧ�ܣ�")
	else
		lualib:Error("��Ӣ����������������ж϶�ʱ�����ɳɹ���")
	end--]]
end

--------------�����˳���������------------------
--ִ�������жϺ�����Ϊ��ͼ������Ϊ0ʱɾ������
function on_trigger_leave_map(player)
	lualib:Player_DelBuff(player,"����������")  --������Ӫ����
	lualib:Player_DelBuff(player,"����������")  --������Ӫ����
	lualib:SetCamp(player,0) --����ȡ�������Ӫ
	renshupanduan(lualib:MapGuid(player)) --�����ж�
end

--------------������ʼ����------------------
function leitaikaishi(guid, timer_id,map)
	
	local fanwei = 0
	if lualib:Map_GetWidth(map) < lualib:Map_GetHeight(map) then
		fanwei = lualib:Map_GetHeight(map)
	else
		fanwei = lualib:Map_GetWidth(map)
	end
	local mingdan = lualib:Map_GetRegionPlayers(map,0,0,fanwei,false)
	
	chuansongruchang(map)
		
	if #mingdan ~= 0 then
		for i=1,#mingdan do
			--lualib:Player_DelBuff(mingdan[i],"��Ӣ�������볡") --ɾ��buff
			lualib:SysMsg_SendCenterMsg(0, "������ʽ��ʼ������15���ӣ����ܵж���ҿ��Ի�û��֣����������������ߵĶ����ʤ��",mingdan[i])
		end
	end
	lualib:SetInt(map,"jyjjc_kaishi",1) --������ʼ״�����
	lualib:SysMsg_SendMapMsg(map, "������ʽ��ʼ������15���ӣ����ܵж���ҿ��Ի�û��֣����������������ߵĶ����ʤ��")
	
	renshupanduan(map) --�����ж�
	lualib:AddTimerEx(map,4,110000,1,"chuansongruchangtishi",map) --�����볡��ʾ
	lualib:AddTimerEx(map,6,300000,1,"daojishi_5fen",map) --��������ʱ5������ʾ
	lualib:AddTimerEx(map,7,600000,1,"daojishi_10fen",map) --��������ʱ10������ʾ
end

--------------����ʱ5������ʾ------------------
function daojishi_5fen(map)
	lualib:SysMsg_SendMapMsg(map, "��������10���ӽ�����")
end

--------------����ʱ10������ʾ------------------
function daojishi_10fen(map)
	lualib:SysMsg_SendMapMsg(map, "��������5���ӽ�����")
end

--------------�����볡��ʾ------------------
function chuansongruchangtishi(map)
	local fanwei = 0
	if lualib:Map_GetWidth(map) < lualib:Map_GetHeight(map) then
		fanwei = lualib:Map_GetHeight(map)
	else
		fanwei = lualib:Map_GetWidth(map)
	end
	local mingdan = lualib:Map_GetRegionPlayers(map,0,0,fanwei,false)
		
	for k,v in pairs(mingdan) do
		if lualib:HasBuff(v,"��Ӣ������׼��") == true then
			lualib:SysMsg_SendCenterMsg(0, "10���Ժ󽫴�����������������أ�",v)
			lualib:SysMsg_SendWarnMsg(v,"10���Ժ󽫴�����������������أ�")
		end
	end
	
	lualib:AddTimerEx(map,5,10000,1,"chuansongruchang",map) --�����볡
	lualib:AddTimerEx(map,4,110000,1,"chuansongruchangtishi",map) --�����볡��ʾ
end

--------------�����볡------------------
function chuansongruchang(map)
	local fanwei = 0
	if lualib:Map_GetWidth(map) < lualib:Map_GetHeight(map) then
		fanwei = lualib:Map_GetHeight(map)
	else
		fanwei = lualib:Map_GetWidth(map)
	end
	local mingdan = lualib:Map_GetRegionPlayers(map,0,0,fanwei,false)
	
	--������ʽ��ʼ�󽫻��ڰ�ȫ������Ҵ��͵���������
	for k,v in pairs(mingdan) do
		if lualib:HasBuff(v,"��Ӣ������׼��") == true then
			move("",v) --���͵����������м�
		end
	end
end

--------------�����ж�------------------
function renshupanduan(map)
	if lualib:Map_IsDgnExist(map) == true then
	else
		return
	end
		
	gengxinduiwu(map) --���¶�����Ϣ
	local p1 = renshutongji(map,1) --����ͳ��
	local p2 = renshutongji(map,2) --����ͳ��
	if lualib:GetAllTime() - lualib:GetInt(map,"jyjjc_chuangjian") >= 30 then --����Ƿ񿪳�30���Ժ�
		if p1 == 0 or p2 == 0 then
			lualib:Map_DestroyDgn(map) --�ݻٸ���
		end
	end
end

--------------�������ݻٺ�------------------
function on_dungeon_end(map, keyname)
--����������Զ�����
--lualib:Player_Relive(player,"", 45, 31, 3, 50) --����
local longcheng_map = lualib:Map_GetMapGuid("����")


	local sheng,bai,jifencha = 0,0,0 --ʤ�����顢ʧ�ܶ��顢˫�����ֲ�ֵ
	gengxinduiwu(map) --���¶�����Ϣ
	
	local i1 = renshutongji(map,1) --����ͳ��
	local i2 = renshutongji(map,2) --����ͳ��
	
	if lualib:GetInt(map,"jyjjc_duiwujifen1") > lualib:GetInt(map,"jyjjc_duiwujifen2") or i2 == 0 then
		sheng = 1
		bai = 2
		jifencha = lualib:GetInt(map,"jyjjc_duiwujifen1") - lualib:GetInt(map,"jyjjc_duiwujifen2")
	elseif lualib:GetInt(map,"jyjjc_duiwujifen1") < lualib:GetInt(map,"jyjjc_duiwujifen2") or i1 == 0 then
		sheng = 2
		bai = 1
		jifencha = lualib:GetInt(map,"jyjjc_duiwujifen2") - lualib:GetInt(map,"jyjjc_duiwujifen1")
	else --���ƽ��
		for i=1,2 do
			while true do --ʤ��������
				local s = lualib:GetStr(map,"jyjjc_duiwuxinxi"..i)
				local p1 = 0
				local p2 = 1
				local p3 = 0 --�üӵľ���������
				while true do
					p1 = string.find(s,",",p1+1)	
					if p1 == nil then
						break
					end
							
					local player1 = string.sub(s,p2,p1-1)
					p2 = p1+1
					if lualib:Player_IsOnline(player1) == true and lualib:MapGuid(player1) == map then
						if lualib:GetStr(map,"jyjjc_dengji") == "gaoji" then
							p3 = 150
						elseif lualib:GetStr(map,"jyjjc_dengji") == "diji" then
							p3 = 120
						else
							break
						end
						lualib:Player_Relive(player1,longcheng_map,238, 228, 3, 50) --����
						lualib:SetInt(player1, "jjc_rongyao", lualib:GetInt(player1, "jjc_rongyao")+p3) --��ҫ����
						lualib:SysMsg_SendMsgDlg(player1, 1, "#COLORCOLOR_GOLD#����������˫��#COLOREND##COLORCOLOR_GREENG#ƽ��#COLOREND#\n\n��������Ϊ #COLORCOLOR_GREENG#"..lualib:GetInt(map,"jyjjc_duiwujifen"..i).."��"..lualib:GetInt(map,"jyjjc_duiwujifen"..i).."#COLOREND#  ��ҫֵ+#COLORCOLOR_ORANGE#"..p3.."#COLOREND#\n\n������ҫֵ��#COLORCOLOR_ORANGE#"..lualib:GetInt(player1, "jjc_rongyao").."#COLOREND##BUTTON0#ȷ��#BUTTONEND#", 100, "guanbi", "")
						end
				end
				break
			end
		end
		return
	end
	
	while true do --ʤ��������
		local s = lualib:GetStr(map,"jyjjc_duiwuxinxi"..sheng)
		local p1 = 0
		local p2 = 1
		local p3 = 0 --�üӵľ���������
		while true do
			p1 = string.find(s,",",p1+1)
			if p1 == nil then
				break
			end
					
			local player1 = string.sub(s,p2,p1-1)
			p2 = p1+1
			if lualib:Player_IsOnline(player1) == true and lualib:MapGuid(player1) == map then
				if lualib:GetStr(map,"jyjjc_dengji") == "gaoji" then
					p3 = 200+jifencha/5
				elseif lualib:GetStr(map,"jyjjc_dengji") == "diji" then
					p3 = math.ceil(160+jifencha/5/100*80)
				else
					break
				end
				lualib:Player_Relive(player1,longcheng_map,238, 228, 3, 50) --����
				lualib:SetInt(player1, "jjc_rongyao", lualib:GetInt(player1, "jjc_rongyao")+p3) --��ҫ����
				lualib:SysMsg_SendMsgDlg(player1, 1, "#COLORCOLOR_GOLD#������������Ķ���#COLOREND##COLORCOLOR_GREENG#��ʤ#COLOREND#\n\n��������Ϊ #COLORCOLOR_GREENG#"..lualib:GetInt(map,"jyjjc_duiwujifen"..sheng).."��"..lualib:GetInt(map,"jyjjc_duiwujifen"..bai).."#COLOREND#  ��ҫֵ+#COLORCOLOR_ORANGE#"..p3.."#COLOREND#\n\n������ҫֵ��#COLORCOLOR_ORANGE#"..lualib:GetInt(player1, "jjc_rongyao").."#COLOREND##BUTTON0#ȷ��#BUTTONEND#", 100, "guanbi", "")
			end
		end
		break
	end
	
	while true do --ʧ�ܷ�����
		local s = lualib:GetStr(map,"jyjjc_duiwuxinxi"..bai)
		local p1 = 0
		local p2 = 1
		local p3 = 0 --�üӵľ���������
		while true do
			p1 = string.find(s,",",p1+1)	
			if p1 == nil then
				break
			end
					
			local player1 = string.sub(s,p2,p1-1)
			p2 = p1+1
			if lualib:Player_IsOnline(player1) == true and lualib:MapGuid(player1) == map then
				if lualib:GetStr(map,"jyjjc_dengji") == "gaoji" then
					p3 = math.ceil(100 + 100 * math.sin(math.pi / (2 * math.sqrt(jifencha + 1))))
				elseif lualib:GetStr(map,"jyjjc_dengji") == "diji" then
					p3 = math.ceil(80 + 80 * math.sin(math.pi / (2 * math.sqrt(jifencha + 1))))
				else
					break
				end
				lualib:Player_Relive(player1,longcheng_map,238, 228, 3, 50) --����
				lualib:SetInt(player1, "jjc_rongyao", lualib:GetInt(player1, "jjc_rongyao")+p3) --��ҫ����
				lualib:SysMsg_SendMsgDlg(player1, 1, "#COLORCOLOR_GOLD#������������Ķ���#COLOREND##COLORCOLOR_GREENG#���#COLOREND#\n\n��������Ϊ #COLORCOLOR_GREENG#"..lualib:GetInt(map,"jyjjc_duiwujifen"..bai).."��"..lualib:GetInt(map,"jyjjc_duiwujifen"..sheng).."#COLOREND#  ��ҫֵ+#COLORCOLOR_ORANGE#"..p3.."#COLOREND#\n\n������ҫֵ��#COLORCOLOR_ORANGE#"..lualib:GetInt(player1, "jjc_rongyao").."#COLOREND##BUTTON0#ȷ��#BUTTONEND#", 100, "guanbi", "")
			end
		end
		break
	end
end

--------------���¶�����Ϣ------------------
function gengxinduiwu(map)
	--���¶�����Ϣ��������ڳ������
	for i=1,2 do
		local v1 = lualib:GetStr(map,"jyjjc_duiwuxinxi"..i)
		local p1 = 0
		local p2 = 1
		while true do
			p1 = string.find(v1,",",p1+1)	
			if p1 == nil then
				break
			end
					
			local player1 = string.sub(v1,p2,p1-1)
			p2 = p1+1
			if lualib:Player_IsOnline(player1) == true or lualib:MapGuid(player1) == map then
			else
				--�Ӷ�����Ϣ��ɾ��
				v1 = string.gsub(v1,player1..",","")
			end
		end
		lualib:SetStr(map,"jyjjc_duiwuxinxi"..i,v1)
	end
end

--------------����ͳ��------------------
function renshutongji(map,i)
	local v1 = lualib:GetStr(map,"jyjjc_duiwuxinxi"..i)
	local p1 = 0
	local p2 = 1
	local p3 = 0 --�ڳ�����
	while true do
		p1 = string.find(v1,",",p1+1)
		if p1 == nil then
			break
		end
		
		local player1 = string.sub(v1,p2,p1-1)
		p2 = p1+1
		if lualib:Player_IsOnline(player1) == true and lualib:MapGuid(player1) == map then
			p3 = p3+1
		end
	end
	return p3
end

--------------��������------------------
function renshubuchong(guid, timer_id,map)
	gengxinduiwu(map) --���¶�����Ϣ
	for i=1,2 do
		local p2 = renshutongji(map,i) --ͳ�Ƹ����鵽������
	--��������������ӱ������������ҽ���
		if p2 < 5 then
			local p3 = 5-p2
				for i1=1,p3 do
					local mingdan = lualib:GetStr("0", "jyjjc_"..lualib:GetStr(map,"jyjjc_dengji").."1baoming")
					
					if mingdan == "" then
						break
					end
					
					mingdan = json.decode(mingdan)
					
					if #mingdan > 0 then
					else
						break
					end
					
					for k,v in pairs(mingdan) do
						if lualib:Player_IsOnline(v) == true then
							--����Է����߷�������
							lualib:SetStr(v,"jyjjc_zuduiditu",map) --����Ҽ�¼�������صĵ�ͼ��ʶ��
							
							local msg = ""
							if string.find(lualib:GetStr("0", "jyjjc_dijibaoming"),"\""..v.."\"") ~= nil then
								msg = "diji"
							elseif string.find(lualib:GetStr("0", "jyjjc_gaojibaoming"),"\""..v.."\"") ~= nil then
								msg = "gaoji"
							else
								return
							end
							shanchubaoming(msg,v)
							
							table.remove(mingdan,1)
							lualib:SetStr("0", "jyjjc_"..msg.."1baoming", json.encode(mingdan))
							if lualib:GetStr("0","jyjjc_"..msg.."1baoming") == "{}" then
								lualib:SetStr("0", "jyjjc_"..msg.."1baoming", "")
							end
							
							local s1 = ""
							if i == 1 then
								s1 = "jyjjc_duiwuxinxi1"
							elseif i == 2 then
								s1 = "jyjjc_duiwuxinxi2"
							end
							lualib:SetStr(map,s1,lualib:GetStr(map,s1)..v..",") --��¼��������Ϣ��
							lualib:Player_SetDgnTicket(v,map) --��ý���������ص��ʸ�
							lualib:SysMsg_SendMsgDlg(v, 1, "�㱨������Ӿ������Ѿ�ƥ����ϣ����ھͿ����볡�����ȷ�������볡��#BUTTON0#ȷ���볡#BUTTONEND##BUTTON0#ȡ��#BUTTONEND#", 100, "tanzuduiruchang", "guanbi")
							break
						end
					end
				end
		end
	end
end 

--------------���븱���ص�------------------
function on_trigger_enter_map(player)
	local map = lualib:MapGuid(player)
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#23#55#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#23#56#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#22#54#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#22#55#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#24#56#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#24#57#0#0")
	
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#37#41#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#37#42#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#36#41#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#36#40#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#35#40#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#35#39#0#0")
	
--	if lualib:GetAllTime() - lualib:GetInt(lualib:MapGuid(player),"jyjjc_chuangjian") < 30 then --����Ƿ񿪳�30���Ժ����30���Ժ�����buff
		--lualib:Player_AddBuff(player,"��Ӣ�������볡",0) --�����Ժ󲻿��ͷż��ܣ������ƶ�buff
		--lualib:SysMsg_SendMsgDlg(player, 1, "������ʼǰ��ʱ�����ƶ������ɹ����������ĵȴ�������ʼ��#BUTTON0#ȷ��#BUTTONEND#", 100, "guanbi", "")
--	else
--	end
	
	lualib:Player_ChangeAttackMode(player,6) --������Ӫ����ģʽ
	if string.find(lualib:GetStr(map,"jyjjc_duiwuxinxi1"),player) ~= nil then
		lualib:SetCamp(player,1) --������Ӫ����
		lualib:Player_AddBuff(player,"����������",0)  --������Ӫ����
	elseif string.find(lualib:GetStr(map,"jyjjc_duiwuxinxi2"),player) ~= nil then
		lualib:SetCamp(player,2) --������Ӫ����
		lualib:Player_AddBuff(player,"����������",0)  --������Ӫ����
	end
	
	lualib:SetHp(player,lualib:Hp(player,true), false)--����ֵ�ָ���
	lualib:SetMp(player,lualib:Mp(player,true), false)--ħ��ֵ�ָ���
	lualib:SysMsg_SendWarnMsg(player,"ͷ��������һ����Ϊ���ѣ���֮Ϊ�ж���Ӫ��׼��ʱ��30�룬ʱ�䵽�Ժ󽫴�����������������أ�")
	
	lualib:SetInt(player, "jyjjc_zuduicanjiacishu",lualib:GetInt(player, "jyjjc_zuduicanjiacishu")+1) --�μ��������������
	lualib:Player_AddBuff(player,"��Ӣ������׼��",0) --����������޵кͲ��ܹ�����buff
end

function guanbi()
	return ""
end

--------------ɱ�˻ص�------------------
function on_trigger_kill(killer, victim)
	local map = lualib:MapGuid(killer)
	local p1,p2 = 0
	if string.find(lualib:GetStr(map,"jyjjc_duiwuxinxi".. 1),killer) ~= nil then
		p1 = 1
	elseif string.find(lualib:GetStr(map,"jyjjc_duiwuxinxi".. 2),killer) ~= nil then
		p1 = 2
	else
		return
	end
	
	if string.find(lualib:GetStr(map,"jyjjc_duiwuxinxi".. 1),victim) ~= nil then
		p2 = 1
	elseif string.find(lualib:GetStr(map,"jyjjc_duiwuxinxi".. 2),victim) ~= nil then
		p2 = 2
	else
		return
	end
	
--[[	if lualib:GetInt(map,"jyjjc_duiwujifen"..p2) <= 0 then --������ֵ���0�������0
		lualib:SetInt(map,"jyjjc_duiwujifen"..p2,1)
	end
	
	if lualib:GetInt(map,"jyjjc_duiwujifen"..p2) <= 0 then --������ֵ���0�������0
		lualib:SetInt(map,"jyjjc_duiwujifen"..p2,1)
	end]]
	
	if p1 ~= p2 then --�ж�ɱ���ߺͱ�ɱ���Ƿ�Ϊһ����
		local n1 = lualib:GetInt(map,"jyjjc_duiwujifen"..p1) --����1���ܻ���
		local n2 = lualib:GetInt(map,"jyjjc_duiwujifen"..p2) --����2���ܻ���
		local i1 = n1+math.floor(10*(n2/n1))
		local i2 = n2-math.floor(5*(n2/n1))
		n1 = i1
		n2 = i2
		
		if n1 > 1121 then
			n1 = 1121
		end
		
		if n2 > 1121 then
			n2 = 1121
		end
		
		lualib:SetInt(map,"jyjjc_duiwujifen"..p1,n1) --�Լ��������ӻ���
		lualib:SetInt(map,"jyjjc_duiwujifen"..p2,n2) --�Է�������ٻ���
	else
		return
	end
	
	
	lualib:SysMsg_SendWarnMsg(killer,"��������"..lualib:KeyName(victim).."��")
	
	for i=1,2 do
		while true do
			local s = lualib:GetStr(map,"jyjjc_duiwuxinxi"..i)
			local p1 = 0
			local p2 = 1
			while true do
				p1 = string.find(s,",",p1+1)	
				if p1 == nil then
					break
				end
						
				local player1 = string.sub(s,p2,p1-1)
				p2 = p1+1
				if lualib:Player_IsOnline(player1) == true and lualib:MapGuid(player1) == map then
					if i == 1 then
						lualib:SysMsg_SendWarnMsg(player1,"��Ķ���÷֣�"..lualib:GetInt(map,"jyjjc_duiwujifen1").."���жԶ���÷֣�"..lualib:GetInt(map,"jyjjc_duiwujifen2").."��")
					elseif i == 2 then
						lualib:SysMsg_SendWarnMsg(player1,"��Ķ���÷֣�"..lualib:GetInt(map,"jyjjc_duiwujifen2").."���жԶ���÷֣�"..lualib:GetInt(map,"jyjjc_duiwujifen1").."��")
					end
				end
			end
			break
		end
	end
end

--------------�����ص�------------------
function on_trigger_player_relive(player)
	lualib:ProgressBarStart(player, 15000, "������...", "on_relive_complete", "guanbi", "") --����������
	return false
end

function on_relive_complete(player, param)
	local map = lualib:MapGuid(player)
	local hp = lualib:Hp(player,true)
	lualib:SetHp(player,hp,false)
	if string.find(lualib:GetStr(map,"jyjjc_duiwuxinxi1"),player) ~= nil then
		lualib:Player_Relive(player,"", 45, 31, 3, 100) --����
	elseif string.find(lualib:GetStr(map,"jyjjc_duiwuxinxi2"),player) ~= nil then
		lualib:Player_Relive(player,"", 17, 64, 3, 100) --����
	end
	
	lualib:Player_AddBuff(player,"��Ӣ������׼��",0) --�����Ժ����������޵кͲ��ܹ�����buff
end