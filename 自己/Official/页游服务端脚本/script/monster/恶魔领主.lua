local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local var_t = {"xs_flag10", "xs_flag30", "xs_flag50"}

function on_create(monster)
	lualib:SetInt("0","boss_shuaxin7",0)
	lualib:AddTrigger(monster,  lua_trigger_monster_born, "on_trigger_boss_born")
    lualib:AddTrigger(monster,  lua_trigger_attack, "on_attack")
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
    lualib:AddTrigger(monster,  lua_trigger_pre_die , "on_trigger_pre_die")
end

function on_trigger_boss_born(monster)
	if not lualib:SetInt(monster, "bl_01", 0) == true then
	lualib:Error("��ħ������������bl_01����Ϊ0ʧ�ܣ�")
	end
	if not lualib:SetInt(monster, "bl_03", 0) == true then
	lualib:Error("��ħ������������bl_03����Ϊ0ʧ�ܣ�")
	end
	lualib:SysMsg_SendBroadcastColor("��ħ�������������£�ָ�տɴ���", "", 1, 12)
    lualib:SysMsg_SendRoleTalk(monster, "��ħ����������������ʦ��ֻҪһ��ȥ������̤ƽ��ش�½��")
	--lualib:AddTimer(monster, 1, 30000, -1, "GetHpFromPlayer")
	
	for _, v in pairs(var_t) do
		lualib:Monster_SetCustomVarInt(monster, v, 0)
	end
end

function on_trigger_pre_die(actor, killer)
	local monster_die_x = lualib:X(actor)
	local monster_die_y = lualib:Y(actor)
	if not lualib:Map_ClearMonster(map, monster_die_x, monster_die_y, 100, "�����ٻ�ħ�۹�", true, true) == true then
		lualib:Error("��ħ��������ɾ�������ٻ�ħ�۹�ʧ�ܣ�")
	end
	return true
end

function on_trigger_post_die(actor, killer)
	 monster_x = lualib:X(actor)
	 monster_y = lualib:Y(actor)
	lualib:DisableTimer(actor, 2)
	lualib:ClearTrigger(actor)
	lualib:SysMsg_SendBroadcastColor("��ħ������С���ǣ�������ס���ǣ����һ�ȥ�ָ��ָ�~", "", 1, 12)
    lualib:SysMsg_SendRoleTalk(actor, "��ħ������С���ǣ�������ס���ǣ����һ�ȥ�ָ��ָ�~")
	lualib:Map_GenMonster(map, monster_x, monster_y, 4, 4, "����ħ��1", 50, false)
	
	lualib:Monster_SetCustomVarInt(actor, "talk_flag", 0)
	if lualib:KeyName(lualib:MapGuid(actor)) == "��ħ���" then
		local killername = lualib:Name(killer)
		lualib:SetInt("0","boss_shuaxin7",120)
		lualib:SetStr("0","boss_killer7",killername)
		lualib:AddTimerEx("0",307,60000,-1,"chongshengshijian","")
	end
end

-----------------------------------------------bossˢ�µ���ʱ----------------------------------------------------------
function chongshengshijian()
	if lualib:GetInt("0","boss_shuaxin7") > 0 then
		lualib:SetInt("0","boss_shuaxin7",lualib:GetInt("0","boss_shuaxin7")-1)
		lualib:AddTimerEx("0",307,60000,1,"chongshengshijian","")
	end
end

function on_attack(self, actor)
	local x = lualib:X(self)
	local y = lualib:Y(self)
	map = lualib:MapGuid(self)
	local player_table = lualib:Map_GetRegionPlayers(map, x, y, 20, true)
	if lualib:GetInt(self, "bl_01") == 0 then
		lualib:SysMsg_SendMapMsg(map, "��ħ�����������������������ʵĲ���������������Ҫж������ֽӵ���ͷ�ϣ��ٰ����ͷ�嵽�ջ��ϣ���������~��")
		lualib:SetInt(self, "bl_01", 1)
	end

	if lualib:GetInt(self, "bl_03") == 0 then
		if lualib:AddTimerEx(self, 2, 20000, -1, "jiance", map) == true then
			lualib:SetInt(self, "bl_03", 1)
		end
	end
end

function jiance(self, actor, map)
	local x1 = lualib:X(self)
	local y1 = lualib:Y(self)
	local map_key = lualib:KeyName(map)
	local wanjia = lualib:Monster_GetAttackTarget(self)
	local max_hp = lualib:Hp(self, true)
	local dangqian_hp = lualib:Hp(self, false)
	local moyan_num = lualib:Map_GetMonsterCount(map, "�����ٻ�ħ�۹�", true, true)
	lualib:SysMsg_SendMapMsg(map, "��ħ������С�ӣ�������~��")
	lualib:SysMsg_SendRoleTalk(self, "��ħ������С�ӣ�������~��")
	lualib:Player_MapMoveXY(wanjia, map_key, x1-1, y1-1, 2)
	
	if moyan_num <= 50 then
		lualib:Map_GenMonster(map, x1, y1, 5, 4, "�����ٻ�ħ�۹�", 10, false)
	end
	
	if max_hp <= 0 then
		lualib:Error("��ȡ���Ѫ��ʧ��")
	return false
	end
	
	if dangqian_hp < 0 then
		lualib:Error("��ȡ��ǰѪ��ʧ��")
	return false
	end
	
	if dangqian_hp >= max_hp then
		if not lualib:DisableTimer(self, 1) == true then
		end
		if not lualib:DisableTimer(self, 2) == true then
		lualib:Error("ɾ�����Ѫ����ʱ��ʧ��")
		end
		lualib:SetInt(self, "bl_01", 0)
		lualib:SetInt(self, "bl_03", 0)
		lualib:SysMsg_SendMapMsg(map, "��ħ�����������������������ܰ��������������ϣ�")
	end
end

function get_hp_mul(monster)
    local max_hp = lualib:Monster_GetIntProp(monster,  lua_role_max_hp)
    local hp = lualib:Monster_GetIntProp(monster,  lua_role_hp)
    if max_hp == -1 or hp == -1 then
        lualib:Print("ȡ��BOSS��Ѫ������")
        return -1
    end
    return hp / max_hp * 100
end
