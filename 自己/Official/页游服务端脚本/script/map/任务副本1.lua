local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")



function on_map_create(map)
	lualib:AddTimerEx(map, 1, 3000, 1, "quest", "")	
	lualib:AddTrigger(map, lua_trigger_enter_map, "on_trigger_enter_map")
	lualib:AddTrigger(map, lua_trigger_leave_map, "on_trigger_leave_map")
	return
end 

function on_trigger_enter_map(player)
	if (lualib:HasQuest(player, 5133) == true or lualib:HasQuest(player, 5135) == true) then
		lualib:SetCamp(player, 2)
	end
	return
end

function on_trigger_leave_map(player)
	lualib:SetCamp(player, 0)
	return
end

	local b = lualib:GenRandom(1, 8) --�������			
	local keyn = {"��ԭ��ʿ1", "��ԭ��ʿ1", "��ԭ��ʿ1"}
	local keyn_target = {"����1", "����2"}
	local path = {29, 42, 33, 47, 37, 49, 41, 45, 41, 39, 44, 33, 47, 27}
	local path_target = {32, 63, 37, 64, 42, 65, 43, 58, 42, 49, 42, 41, 46, 33, 47, 26}
	local x1 = 27; local y1 = 40  --���﹥����ˢ������
	local x2 = 27; local y2 = 59  --��������ˢ������
	

function quest(map)
	local map_width = lualib:Map_GetWidth(map)
    local map_height = lualib:Map_GetHeight(map)
    local a = (map_width > map_height) and map_width or map_height	 --��ͼ�������ֵ
	local players = lualib:Map_GetRegionPlayers(map, 0, 0, a, true)  --ȫ��ͼ�����GUID�б�	
	
	
	--����5133������ԭսʿ��Ϯ���У��ػ������룬����ʱ��5����
	   
	if lualib:HasQuest(players[1], 5133) == true then
		lualib:SysMsg_SendMapMsg(map, "ע�⣺����ʱ5���Ӻ�رո������ɹ��ػ������뼴��������񡣴�����������10λʱ������ʧ�ܣ�\n��ȷ����Ĺ���ģʽ�����ڷǺ�ƽ�������ƶ񹥻�֮�¡������޷��������")		
		for i = 1, #players do
			lualib:SetInt(players[i], "defense", 0)
			lualib:Player_ChangeAttackMode(players[i], 8)
		end		
		
		local monster =	lualib:Map_GenSingleCampMonster(map, x1, y1, 3, b, keyn[lualib:GenRandom(1, #keyn)], false, 1)
		lualib:Monster_SetSeeker(monster, path, 0, false)
		local target =	lualib:Map_GenSingleCampMonster(map, x2, y2, 1, b, keyn_target[lualib:GenRandom(1, #keyn_target)], false, 2)
		lualib:Monster_SetSeeker(target, path_target, 0, false)		
		lualib:Monster_SetAttackTarget(monster, target)
		
		lualib:AddTimerEx(map, 2, 11000, -1, "q_5133", "") --����ˢ��					
		lualib:AddTimerEx(map, 3, 300000, 1, "accomplish", "")--5���Ӻ�������������		
		lualib:AddTrigger(target, lua_trigger_post_die, "on_trigger_post_die")--������ʱ�����ñ���defense��ֵ+1
		
				
	end
	
	--����5134�������������սʤ��ԭͳ��
	
	if lualib:HasQuest(players[1], 5134) == true then
		lualib:SysMsg_SendMapMsg(map, "ע�⣺��������ʱ��Ϊ12����")
		local monster =	lualib:Map_GenSingleMonster(map, 31, 43, 3, b, "��ԭͳ��", false)
		lualib:AddTrigger(monster, lua_trigger_post_die, "destroy")
		lualib:AddTimerEx(map, 2, 10000, -1, "q_5134", "")
	end
	
	--����5135��������ԭһ��ĳ��룬��������ͳ�졢�ڰ��̿�1
	
	if lualib:HasQuest(players[1], 5135) == true then
		lualib:SysMsg_SendMapMsg(map, "ע�⣺��������ʱ��Ϊ12���ӡ�\nÿ12�����һ���ڰ��̿ͣ�4���Ӻ��������ͳ�죡\nȷ����ԭսʿ��������������10��\n��ȷ����Ĺ���ģʽ�����ڷǺ�ƽ�������ƶ񹥻�֮�¡������޷��������")
		for i = 1, #players do
			lualib:SetInt(players[i], "defense", 0)
			lualib:Player_ChangeAttackMode(players[i], 8)
		end
		
		local monster = lualib:Map_GenSingleCampMonster(map, x1, y1, 3, b, "�ڰ��̿�1", false, 1)
		lualib:Monster_SetSeeker(monster, path, 0, false)
		local target =	lualib:Map_GenSingleCampMonster(map, x2, y2, 3, b, keyn[lualib:GenRandom(1, #keyn)], false, 2)
		lualib:Monster_SetSeeker(target, path_target, 0, false)
		lualib:AddTrigger(target, lua_trigger_post_die, "on_trigger_post_die")
		
		lualib:AddTimerEx(map, 2, 12000, -1, "q_5135_monster", "")
		lualib:AddTimerEx(map, 3, 10000, -1, "q_5135_target", "")
		lualib:AddTimerEx(map, 4, 240000, 1, "q_5135_yaodao", "") --4���Ӻ�ˢ������ͳ��		
	end
	
	return
end

function q_5133(map)
	local monster =	lualib:Map_GenSingleCampMonster(map, x1, y1, 3, b, keyn[lualib:GenRandom(1, #keyn)], false, 1)
	lualib:Monster_SetSeeker(monster, path, 0, false)
	local target =	lualib:Map_GenSingleCampMonster(map, x2, y2, 1, b, keyn_target[lualib:GenRandom(1, #keyn_target)], false, 2)
	lualib:Monster_SetSeeker(target, path_target, 0, false)
	lualib:Monster_SetAttackTarget(monster, target)
	lualib:AddTrigger(target, lua_trigger_post_die, "on_trigger_post_die")
	
		local target_del = lualib:Map_GetRegionMonsters(map, "", 47, 26, 2, true, true)
		if #target_del > 0 then 
			for i = 1 , #target_del do
			lualib:Monster_Remove(target_del[i])
			end
		end	
	
	return true	
end

function accomplish(map)
	local map_width = lualib:Map_GetWidth(map)
    local map_height = lualib:Map_GetHeight(map)
    local a = (map_width > map_height) and map_width or map_height	 --��ͼ�������ֵ
	local players = lualib:Map_GetRegionPlayers(map, 0, 0, a, true)  --ȫ��ͼ�����GUID�б�
	
	for i = 1, #players do
		local c = lualib:GetInt(players[i], "defense")
		if c > 10 then lualib:SysPromptMsg(players[i], "��������10λ��������������ʧ�ܣ�")
		else lualib:SetInt(players[i], "5133", 1)
			lualib:SysPromptMsg(players[i], "����ɹ����룬������ɣ�")
		end		
	end	
	
	lualib:Map_DestroyDgn(map)
	return true

end

function q_5134(map)
	local count = lualib:Map_GetMonsterCount(map, "", true, true)
		if count < 15 then
		lualib:Map_GenSingleMonster(map, 31, 43, 3, b, keyn[lualib:GenRandom(1, #keyn)], false)
		end

	return true
end

function q_5135_monster(map)	
	local monster = lualib:Map_GenSingleCampMonster(map, x1, y1, 3, b, "�ڰ��̿�1", false, 1)
	lualib:Monster_SetSeeker(monster, path, 0, false)
	return true
end	

function q_5135_target(map)
	local target =	lualib:Map_GenSingleCampMonster(map, x2, y2, 3, b, keyn[lualib:GenRandom(1, #keyn)], false, 2)
	lualib:Monster_SetSeeker(target, path_target, 0, false)
	lualib:AddTrigger(target, lua_trigger_post_die, "on_trigger_post_die")
	local target_del = lualib:Map_GetRegionMonsters(map, "", 47, 26, 2, true, true)
		if #target_del > 0 then 
			for i = 1 , #target_del do
			lualib:Monster_Remove(target_del[i])
			end
		end	
	
	return true
end	

function q_5135_yaodao(map)	
	local monster = lualib:Map_GenSingleCampMonster(map, x1, y1, 3, b, "����ͳ��", false, 1)
	lualib:Monster_SetSeeker(monster, path, 0, false)
	lualib:AddTrigger(monster, lua_trigger_post_die, "destroy")
	return true
end	

function on_trigger_post_die(target)
	local map = lualib:MapGuid(target)
	local map_width = lualib:Map_GetWidth(map)
    local map_height = lualib:Map_GetHeight(map)
    local a = (map_width > map_height) and map_width or map_height	 --��ͼ�������ֵ
	local players = lualib:Map_GetRegionPlayers(map, 0, 0, a, true)  --ȫ��ͼ�����GUID�б�	
		
	for i = 1, #players do		
		local e = lualib:GetInt(players[i], "defense")
		local u = e + 1
		if e <= 9 then			
			lualib:SetInt(players[i], "defense", u)
			lualib:SysMsg_SendTriggerMsg(players[i], "����������������Ϊ��"..u.."��ע�⣺��ȷ����������������10λ��")
		else		
			lualib:SysMsg_SendTriggerMsg(players[i], "��������������������10λ������ʧ�ܣ������¿�ʼ����")
			lualib:Map_DestroyDgn(map)
			lualib:SetInt(players[i], "defense", 0)				
		end	
	end
	return true
end

function destroy(monster)
	local map = lualib:MapGuid(monster)
	lualib:Map_DestroyDgn(map)
	return true
end
