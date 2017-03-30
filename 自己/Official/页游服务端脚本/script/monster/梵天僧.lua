local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("monster/����ϵͳ����")

local fts_atk_onhp = {
				{["min"] = 0, ["max"] = 29},
				{["min"] = 30, ["max"] = 49},
				{["min"] = 50, ["max"] = 70}
				}
local fts_atk_time = {5000, 8000, 10000}
local fts_atk_timerid = {1, 2, 3}
local fts_skill_id = {
				["ħ������"] = 10111,
				["��������"] = 10112,
				["��������"] = 10022
				}
local fts_skill_count = {8, 5, 3}
local fts_atk_flag = {"atk10_flag", "atk30_flag", "atk50_flag"}
local fts_atk_fury = {30000, 10, "����ɮ��"}

local deleteBuffTime    = 10000
local deleteBuffTimerID = 11

function on_create(monster)
	lualib:SetInt("0","boss_shuaxin3",0)
	lualib:AddTrigger(monster,  lua_trigger_monster_born, "on_trigger_boss_born")
    lualib:AddTrigger(monster,  lua_trigger_attack, "on_attack")
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
end

function on_trigger_boss_born(monster)
	lualib:SysMsg_SendBroadcastColor("����ɮ��ħ֮�����������衭��", "", 1, 12)
    lualib:SysMsg_SendRoleTalk(monster, "����ɮ��ħ֮�����������衭��")
	for i = 1, #fts_atk_flag, 1 do
		lualib:Monster_SetCustomVarInt(monster, fts_atk_flag[i], 0)
	end
	
	lualib:AddTimer(monster, fts_atk_fury[2], fts_atk_fury[1], -1, "on_fts_fury")
end

function on_del_buff(monster, timer_id)
	local x = lualib:Monster_GetPosX(monster)
	local y = lualib:Monster_GetPosY(monster)
	local map = lualib:Monster_GetMap(monster)
	if x == -1 or y == -1 or map == "" then return end

	local players = lualib:Map_GetRegionPlayers(map, x, y, 10, true)
	if players == nil or #players == 0 then
		lualib:Monster_DelBuff(monster, fts_atk_fury[3])
		disAllTimer(monster)
	end
end

function on_fts_fury(monster, timer_id)
	lualib:SysMsg_SendRoleTalk(monster, "�����ҵĿ�ŭ�ɣ�")
	lualib:Monster_AddBuff(monster, fts_atk_fury[3], 0)
end

function on_trigger_post_die(actor, killer)
	lualib:DisableTimer(actor, fts_atk_fury[2])
	lualib:ClearTrigger(actor)
	disAllTimer(actor)
	lualib:SysMsg_SendBroadcastColor("����ɮ�������кξ壬�����������ٴ�������", "", 1, 12)
    lualib:SysMsg_SendRoleTalk(actor, "����ɮ�������кξ壬�����������ٴ�������")
	lualib:Monster_SetCustomVarInt(actor, "talk_flag", 0)
	zhengfusiwang(actor, killer) --��������ϵͳ�еĹ������������ж�
	
	if lualib:KeyName(lualib:MapGuid(actor)) == "�����boss" then
		local killername = lualib:Name(killer)
		lualib:SetInt("0","boss_shuaxin3",120)
		lualib:SetStr("0","boss_killer3",killername)
		lualib:AddTimerEx("0",303,60000,-1,"chongshengshijian","")
	end
	
	local playerlist = lualib:Player_GetTeamList(killer)
	for i = 1, #playerlist do
		if lualib:KeyName(lualib:MapGuid(actor)) == "�����boss" then
			lualib:OnGloryTrigger(playerlist[i], 2, "", 1, "", "����ɮ")
		end
	end	
end

-----------------------------------------------bossˢ�µ���ʱ----------------------------------------------------------
function chongshengshijian()
	if lualib:GetInt("0","boss_shuaxin3") > 0 then
		lualib:SetInt("0","boss_shuaxin3",lualib:GetInt("0","boss_shuaxin3")-1)
		lualib:AddTimerEx("0",303,60000,1,"chongshengshijian","")
	end
end

function on_attack(self, actor)
	lualib:AddTimer(self, deleteBuffTimerID, deleteBuffTime, -1, "on_del_buff")
	if lualib:Monster_GetCustomVarInt(self, "talk_flag") ~= 0 then return end
    local hp_mul = get_hp_mul(self)
    if hp_mul == -1 then return end

	if (hp_mul > fts_atk_onhp[2]["min"]) and (hp_mul < fts_atk_onhp[2]["max"]) and (lualib:Monster_GetCustomVarInt(self, fts_atk_flag[2]) == 0) then
		lualib:Monster_SpellTarget(self, fts_skill_id["ħ������"], self)
	end

	if (hp_mul > fts_atk_onhp[1]["min"]) and (hp_mul < fts_atk_onhp[1]["max"]) and (lualib:Monster_GetCustomVarInt(self, fts_atk_flag[1]) == 0) then
		lualib:Monster_SpellTarget(self, fts_skill_id["��������"], self)
	end

	--[[for i = 1, #fts_atk_onhp, 1 do
		if (hp_mul > fts_atk_onhp[i]["min"]) and (hp_mul <= fts_atk_onhp[i]["max"]) then
			if lualib:Monster_GetCustomVarInt(self, fts_atk_flag[i]) == 0 then
				disAllTimer(self)
				lualib:AddTimer(self, fts_atk_timerid[i], fts_atk_time[i], -1, "atk_on_hp")
				lualib:Monster_SetCustomVarInt(self, fts_atk_flag[i], 1)
			end
		end
	end]]
end

--[[function atk_on_hp(monster, timer_id)
	local x = lualib:Monster_GetPosX(monster)
	local y = lualib:Monster_GetPosY(monster)
	local map = lualib:Monster_GetMap(monster)
	if x == -1 or y == -1 or map == "" then return end

	--local players = lualib:Map_GetRegionPlayers(map, x, y, 15, true)
	--if players == nil or #players == 0 then return end

	lualib:SysMsg_SendBroadcastMsg("��Ҫ�չ����ǣ�", "����ɮ")
	lualib:SysMsg_SendRoleTalk(monster, "��Ҫ�չ����ǣ�")
	for i = 1, fts_skill_count[timer_id], 1 do
		local players = lualib:Map_GetRegionPlayers(map, x, y, 15, true)
		if players == nil or #players == 0 then return end
		lualib:Monster_SpellTarget(monster, fts_skill_id["��������"], players[lualib:GenRandom(1, #players)])
	end
	
end]]

function disAllTimer(monster)
	for i =1, #fts_atk_timerid, 1 do
		lualib:DisableTimer(monster, fts_atk_timerid[i])
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