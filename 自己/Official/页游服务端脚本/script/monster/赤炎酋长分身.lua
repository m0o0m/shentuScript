local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local var_t = {"xs_flag30", "xs_flag50", "xs_flag80"}

function on_create(monster)
	lualib:AddTrigger(monster,  lua_trigger_monster_born, "on_trigger_boss_born")
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
	lualib:SysMsg_SendRoleTalk(monster, "赤炎咒语:吃葡萄不吐葡萄皮仓井思密达~")
end

function on_trigger_boss_born(monster)
	lualib:AddBuff(monster, "赤炎酋长不显血", 0)


	local map = lualib:MapGuid(monster)
	local x   = lualib:X(monster)
	local y   = lualib:Y(monster)
	local cyqzguid_table = lualib:Map_GetRegionMonsters(map, "赤炎酋长", x, y, 20, true, true)
	local cyqzguid = nil
	for i = 1, #cyqzguid_table do
		if cyqzguid_table[i] ~= nil then 
		cyqzguid = cyqzguid_table[i]
		end
	end
	local hp = lualib:Hp(cyqzguid, false)
	lualib:SetHp(monster, hp, false)
end

function on_trigger_post_die(actor, killer)
	lualib:ClearTrigger(actor)
	lualib:SysMsg_SendBroadcastColor("赤炎酋长分身：其实我是假货！赤炎语：仓井思密达~", "", 1, 12)
	lualib:Monster_SetCustomVarInt(actor, "talk_flag", 0)
end

