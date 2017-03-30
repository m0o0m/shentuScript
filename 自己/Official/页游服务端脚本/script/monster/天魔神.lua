local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("monster/����ϵͳ����")

local var_t = {"xs_flag30", "xs_flag50", "xs_flag80"}

function on_create(monster)
	lualib:SetInt("0","boss_shuaxin5",0)
	lualib:AddTrigger(monster,  lua_trigger_monster_born, "on_trigger_boss_born")
    lualib:AddTrigger(monster,  lua_trigger_attack, "on_attack")
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
end

function on_trigger_boss_born(monster)
	lualib:SysMsg_SendBroadcastColor("��ħ����Ҫ��ס����������κ���ȥ��ħ�ǣ�", "", 1, 12)
    lualib:SysMsg_SendRoleTalk(monster, "��ħ����Ҫ��ס����������κ���ȥ��ħ�ǣ�")
	
	for _, v in pairs(var_t) do
		lualib:Monster_SetCustomVarInt(monster, v, 0)
	end
end

function on_trigger_post_die(actor, killer)
	lualib:ClearTrigger(actor)
	lualib:SysMsg_SendBroadcastColor("��ħ����ħ�ǵ��ֵ��ǣ������м��ˣ�������", "", 1, 12)
	lualib:Monster_SetCustomVarInt(actor, "talk_flag", 0)
	zhengfusiwang(actor, killer) --��������ϵͳ�еĹ������������ж�
	if lualib:KeyName(lualib:MapGuid(actor)) == "��ħʯ��boss" then
		local killername = lualib:Name(killer)
		lualib:SetInt("0","boss_shuaxin5",120)
		lualib:SetStr("0","boss_killer5",killername)
		lualib:AddTimerEx("0",305,60000,-1,"chongshengshijian","")
	end
	
	local playerlist = lualib:Player_GetTeamList(killer)
	for i = 1, #playerlist do
		if lualib:KeyName(lualib:MapGuid(actor)) == "��ħʯ��boss" then
			lualib:OnGloryTrigger(playerlist[i], 2, "", 1, "", "��ħ��")
		end
	end
	
end

-----------------------------------------------bossˢ�µ���ʱ----------------------------------------------------------
function chongshengshijian()
	if lualib:GetInt("0","boss_shuaxin5") > 0 then
		lualib:SetInt("0","boss_shuaxin5",lualib:GetInt("0","boss_shuaxin5")-1)
		lualib:AddTimerEx("0",305,60000,1,"chongshengshijian","")
	end
	end




function on_attack(self, actor)
		lualib:AddTimerEx(self, 306, 20000, -1, "jiance", "")	
	local x = lualib:X(self)
	local y = lualib:Y(self)
	local x2 = {x+10, x+11, x+12, x+13, x+14, x+15, x-10, x-12, x-13, x-14, x-15}
	local y2 = {y+10, y+11, y+12, y+13, y+14, y+15, y-10, y-12, y-13, y-14, y-15}
	local tiao_x = lualib:GenRandom(1,  table.getn(x2))
	local tiao_y = lualib:GenRandom(1,  table.getn(y2))
		  map = lualib:MapGuid(self)
	if lualib:Monster_GetCustomVarInt(self, "talk_flag") ~= 0 then return end
    local hp_mul = get_hp_mul(self)
	
	if x == -1 or y == -1 or map == "" or hp_mul == -1 then return end

	local summon_t = {{30, 3}, {50, 2}, {80, 1}}
	for k, v in pairs(summon_t) do
		if hp_mul <= v[1] then
			if lualib:Monster_GetCustomVarInt(self, var_t[k]) ~= 0 then return end

				lualib:Monster_JumpXY(map, self, x2[tiao_x], y2[tiao_y], 20)
				lualib:AddBuff(self, "��Сҩ��", 60)
				lualib:SysMsg_SendMapMsg(map, "��ħ�񣺱�����["..x2[tiao_x].."]["..y2[tiao_y].."]������������ô�����˺����ҵ�!")
			lualib:Monster_SetCustomVarInt(self, var_t[k], 1)
			break
		end
	end
end

function jiance(self, actor)
	local mubiao_guid = lualib:Monster_GetAttackTarget(self)
	if lualib:Player_IsOnline(mubiao_guid) ~= true then
	return 
	end
	if mubiao_guid == nil then
	return
	end
	local player_x = lualib:X(mubiao_guid)
	local player_y = lualib:Y(mubiao_guid)
	lualib:Monster_JumpXY(map, self, player_x-1, player_y-1, 10)					--˲�Ƶ������Ŀ���Ա�
	lualib:SysMsg_SendMapMsg(map, "��ħ��:��~~~~")
	lualib:Monster_SpellTarget(self, 10188, mubiao_guid)							--�ͷ�ѣ�μ���

	
	local maxhp = lualib:Hp(self, true)
	local dangqian_hp = lualib:Hp(self, false)
	
	if maxhp <= 0 then
		lualib:Error("��ȡ��ħ�����Ѫ��ʧ��")
	return false
	end
	
	if dangqian_hp < 0 then
		lualib:Error("��ȡ��ħ��ǰѪ��ʧ��")
	return false
	end
	
	if dangqian_hp >= maxhp then
		if not lualib:DisableTimer(self, 306) == true then
			lualib:Error("ɾ����ħ����Ѫ����ʱ��ʧ��")
		end
	end
end

function get_hp_mul(monster)
    local max_hp = lualib:Monster_GetIntProp(monster,  lua_role_max_hp)
    local hp = lualib:Monster_GetIntProp(monster,  lua_role_hp)
    if max_hp == -1 or hp == -1 then
        lualib:Print("ȡ����ħ���Ѫ������")
        return -1
    end
    return hp / max_hp * 100
end