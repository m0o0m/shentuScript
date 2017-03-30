local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_map_create(map)
	local npc = lualib:Map_GenNpc(map, "ս��ָ��Ա", 63, 67, 0, 3) --��������NPC
	if npc == "" then
		lualib:Error("������ս����ˢ�³���NPCʧ�ܣ�")   --����NPC����ʧ�ܻص�
		return
	end
	
	lualib:AddTrigger(map, lua_trigger_enter_map, "on_trigger_enter_map")	
	lualib:AddTrigger(map, lua_trigger_leave_map, "on_trigger_leave_map")	
	
end

function on_trigger_enter_map(player)
	local map = lualib:MapGuid(player)
	local X = 63
	local Y = 67
	local b = lualib:GenRandom(1, 8) --�������
	
--����5096_q
	if lualib:HasQuest(player, 5096) == true then
		lualib:AddBuff(player, "ս���԰ٷֱȽ���", 1200)	
		lualib:SysMsg_SendTriggerMsg(player, "ע�⣺��������ʱ��Ϊ20���ӡ�\n������Ա���ʱ��ӡ��һ���֣�")
		local buff = {"�䶷�����������", "�䶷���������Ů"} 
		local gender = lualib:Gender(player)
		lualib:AddBuff(player, buff[gender], 1200)			
		
		lualib:Map_GenMonster(map, X, Y, 4, b, "ѵ����ʬ", 5, false)
			
	end

	--����5098_q
	if lualib:HasQuest(player, 5098) == true then 
		lualib:AddBuff(player, "ս���԰ٷֱȽ���2", 1200)
		lualib:SysMsg_SendTriggerMsg(player, "ע�⣺��������ʱ��Ϊ20���ӡ�\n������Ա���ʱ��ӡ��һ���֣�\n����2ֻ��Ӣ���������ҵ������#COLORCOLOR_GOLD#ս��ָ��Ա#COLOREND#�ͷ���һ����Ӣ������������Ϊ��һ��������+1��")
		
		local buff = {"�䶷��Ԫ��������", "�䶷��Ԫ������Ů"}
		local gender = lualib:Gender(player)
		lualib:AddBuff(player, buff[gender], 1200)
		
		--ˢ��
		lualib:SetInt(map, "�ͷŹ���", 1)	
		local mon_1 = {"��Ӣʬū11", "��Ӣ����๤11", "��Ӣ����๤11", "��Ӣ���ʬū11", "��Ӣ����ʬū11", "��Ӣʬū��ͷ11"}				
			for i = 1, 2 do
			lualib:Map_GenSingleMonster(map, X, Y, 4, b, mon_1[math.random(#mon_1)], false)
			end
		return ""	
	end
	

	--����5109
	if lualib:HasQuest(player, 5109) == true then	
	lualib:AddBuff(player, "�����԰ٷֱȽ���", 1200)
	lualib:SysMsg_SendTriggerMsg(player, "ע�⣺��������ʱ��Ϊ20���ӡ�\n������Ա���ʱ��ӡ��һ���֣�")
	
	local buff = {"�䶷���ϳ�����", "�䶷���ϳ���Ů"}
	local gender = lualib:Gender(player)	
	lualib:AddBuff(player, buff[gender], 0)	
	
	--ˢ��
	local monster = lualib:Map_GenSingleMonster(map, X, Y, 3, b, "���˵�ţħ", false)
	lualib:AddTrigger(monster,  lua_trigger_post_die, "map_destroy")	
	end
	

	--����5111
	if lualib:HasQuest(player, 5111) == true then			
	lualib:AddBuff(player, "�����԰ٷֱȽ���", 1200)
	lualib:SysMsg_SendTriggerMsg(player, "ע�⣺��������ʱ��Ϊ20���ӣ�\n������Ա���ʱ��ӡ��һ���֡�")
	local buff = {"�䶷���ϳ�����", "�䶷���ϳ���Ů"}
	local gender = lualib:Gender(player)
	lualib:AddBuff(player, buff[gender], 1200000)			
	
	lualib:Map_GenMonster(map, X, Y, 4, b, "��ħ���", 2, false)
			
	end	
	
	
	--����5112
	if lualib:HasQuest(player, 5112) == true then
	lualib:SysMsg_SendTriggerMsg(player, "ע�⣺��������ʱ��Ϊ20���ӣ�")	
	lualib:Map_GenSingleMonster(map, X, Y, 4, b, "����ţħ1", false)
	local monster = lualib:Map_GenSingleMonster(map, X, Y, 4, b, "����ħ", false)
	lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
	lualib:AddTimerEx(map, 4, 18000, -1, "create_monster", "map")				
	end

	--����5113
			if lualib:HasQuest(player, 5113) == true then
			lualib:AddBuff(player, "�����԰ٷֱȽ���2", 1200)			
			lualib:SysMsg_SendTriggerMsg(player, "ע�⣺��������ʱ��Ϊ20���ӡ�\n������Ա���ʱ��ӡ��һ���֣�\n����2ֻ��Ӣ�������������#COLORCOLOR_GOLD#ս��ָ��Ա#COLOREND#�ͷ���һ����Ӣ������������Ϊ��һ��������+1��")
		
			local buff = {"�䶷��ħ��������", "�䶷��ħ������Ů"}
			local gender = lualib:Gender(player)
			lualib:AddBuff(player, buff[gender], 1200000)
			
			--ˢ��
				lualib:SetInt(map, "�ͷŹ���", 1)	
				local mon_1 = {"��Ӣʬū11", "��Ӣ����๤11", "��Ӣ����๤11", "��Ӣ���ʬū11", "��Ӣ����ʬū11", "��Ӣʬū��ͷ11"}				
						for i=1,2 do
						lualib:Map_GenSingleMonster(map, X, Y, 4, b, mon_1[math.random(#mon_1)], false)
						end
				return ""	
			end	

	--����5121
			if lualib:HasQuest(player, 5121) == true then
			lualib:AddBuff(player, "�����԰ٷֱȽ���", 1200)
			lualib:SysMsg_SendTriggerMsg(player, "ע�⣺��������ʱ��Ϊ20���ӡ�\n������Ա���ʱ��ӡ��һ���֣�")

			local buff = {"�䶷��Ǭ��������", "�䶷��Ǭ������Ů"}
			local gender = lualib:Gender(player)
			lualib:AddBuff(player, buff[gender], 1200000)	
			
			lualib:Map_GenSingleMonster(map, X, Y, 2, b, "����֮��(α)", false)			
			lualib:Map_GenSingleMonster(map, X, Y, 2, b, "С��ħ1", false)			
			lualib:AddTimerEx(map, 5, 28000, -1, "create_monster", "map")				
			end			

	--����5124
			if lualib:HasQuest(player, 5124) == true then
			lualib:SysMsg_SendTriggerMsg(player, "ע�⣺��������ʱ��Ϊ20���ӣ�")	
			lualib:Map_GenSingleMonster(map, X, Y, 2, b, "����֮��", false)			
			lualib:AddTimerEx(map, 6, 20000, -1, "create_monster1", "map")				
			end		
			
	return
end



function on_trigger_post_die(monster)
	local map = lualib:MapGuid(monster)
	lualib:Map_GenSingleMonster(map, X, Y, 4, b, "����ħ", false)
	lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
	return 

end

function create_monster(map)
	local X = 63
	local Y = 67
	local b = lualib:GenRandom(1, 8) --�������		
	local mon = {"����ţħ1", "����ţħ1", "����ţħ1", "�ڰ��̿�1"}
	local m_table = lualib:Map_GetRegionMonsters(map, "", X, Y, 100, true, true)
	
	if #m_table < 15 then lualib:Map_GenSingleMonster(map, X, Y, 6, b, mon[lualib:GenRandom(1, #mon)], false) end	
	return	
end

function create_monster1(map)
	local X = 63
	local Y = 67
	local b = lualib:GenRandom(1, 8) --�������
	local m_table = lualib:Map_GetRegionMonsters(map, "", X, Y, 100, true, true)
	
	if #m_table < 15 then lualib:Map_GenSingleMonster(map, X, Y, 4, b, "����", false) end
	return
	
end


function map_destroy(monster)
	local map = lualib:MapGuid(monster)
	lualib:Map_DestroyDgn(map)
	return ""
end

function on_trigger_leave_map(player)
	local map = lualib:MapGuid(player)
	lualib:Map_DestroyDgn(map)
	return
end

