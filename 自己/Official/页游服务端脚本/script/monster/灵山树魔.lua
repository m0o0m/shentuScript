local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_create(monster)
	lualib:AddTrigger(monster,  lua_trigger_monster_born, "on_trigger_boss_born")
	lualib:AddTrigger(monster,  lua_trigger_attack, "on_attack")
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
    end

function on_trigger_boss_born(monster)
    lualib:SysMsg_SendRoleTalk(monster, "��ħ�Ѿ�����ɽ���֣������ħ�ܹ���ô���õ�廨����·��ʿ��������ɽ��[241.389]�ĺ�������ͼ��")
	lualib:Monster_SetCustomVarInt(monster, "atk10_flag", 0)
	lualib:Monster_SetCustomVarInt(monster, "atk30_flag", 0)
	lualib:Monster_SetCustomVarInt(monster, "atk50_flag", 0)
end

function on_trigger_post_die(actor, killer)
	lualib:DisableTimer(actor, 1)
	lualib:DisableTimer(actor, 2)
	lualib:DisableTimer(actor, 3)
    lualib:SysMsg_SendRoleTalk(actor, "")
end

function on_attack(self, actor)
    local hp_mul = get_hp_mul(self)
    if hp_mul == -1 then return end

	if hp_mul <= 10 then
		if lualib:Monster_GetCustomVarInt(self, "atk10_flag") ~= 0 then return end

		lualib:Monster_SpellTarget(self, 10108, actor)
		lualib:AddTimer(self, 3, 2000, 1, "AtkOnHp")
		lualib:Monster_SetCustomVarInt(self, "atk10_flag", 1)
	elseif hp_mul <= 30 then
		if lualib:Monster_GetCustomVarInt(self, "atk30_flag") ~= 0 then return end

		lualib:Monster_SpellTarget(self, 10108, actor)
		lualib:AddTimer(self, 2, 2000, 1, "AtkOnHp")
		lualib:Monster_SetCustomVarInt(self, "atk30_flag", 1)
	elseif hp_mul <= 50 then
		if lualib:Monster_GetCustomVarInt(self, "atk50_flag") ~= 0 then return end

		lualib:Monster_SpellTarget(self, 10108, actor)
		lualib:AddTimer(self, 1, 2000, 1, "AtkOnHp")
		lualib:Monster_SetCustomVarInt(self, "atk50_flag", 1)
	end

	return
end

function AtkOnHp(monster, timer_id)
		local x = lualib:Monster_GetPosX(monster)
		local y = lualib:Monster_GetPosY(monster)
		local map = lualib:Monster_GetMap(monster)
		if x == -1 or y == -1 or map == "" then return end

		local players = lualib:Map_GetRegionPlayers(map, x, y, 10, true)
		if players ~= nil then
			for i = 1, #players, 1 do
				lualib:Monster_SpellTarget(monster, 10107, players[i])
			end
		end

		lualib:SysMsg_SendBroadcastColor("��ħ�������ǳ����ҵ�������", "", 1, 12)
		lualib:SysMsg_SendRoleTalk(monster, "��ħ�������ǳ����ҵ�������")
		if     timer_id == 1 then
			lualib:Map_GenMonster(map, x, y, 5, lualib:GenRandom(0, 7), "ħ��֩��", 10, false)
		elseif timer_id == 2 then
			lualib:Map_GenMonster(map, x, y, 5, lualib:GenRandom(0, 7), "ħ��֩��", 15, false)
		elseif timer_id == 3 then
			lualib:Map_GenMonster(map, x, y, 5, lualib:GenRandom(0, 7), "ħ��֩��", 20, false)
		end

		return
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
