local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

skill_id = {["Ѫ������"] = "���޵��ӻָ�"}

function on_create(monster)
	lualib:AddTimer(monster, 1, 3000, -1, "AddHp")
	lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
end

function on_trigger_post_die(actor, killer)
	lualib:DisableTimer(actor, 1)
    lualib:ClearTrigger(actor)
end

function AddHp(monster, timer_id)
	local master = lualib:Monster_GetCustomVarStr(monster, "master_guid")
	if  master == "" then return end

	local life = lualib:Monster_GetCustomVarInt(monster, "monster_life")
	if life >= 12 then
		lualib:Monster_Kill(monster)
	else
		if not lualib:Monster_AddBuff(master, skill_id["Ѫ������"], 12) then
			lualib:Error("Ѫ������ʧ�ܣ�")
		else
			lualib:Debug("Ѫ�����Ƴɹ���")
		end
		
		lualib:Monster_SetCustomVarInt(monster, "monster_life", life + 1)
	end
end
