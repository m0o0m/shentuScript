local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local max_servant = 30
local summon_times = 1500
local summon_range = 1
local servant_name = "�綾��2"
local servant_var = "servant_var_num"
local master_var = "master_var_guid"
local master_name = 
{
	"�������볲1", "�������볲2", "�������볲3", "�������볲4", "�������볲5", "�������볲6", "�������볲7", "�������볲8", "�綾���볲1", "�綾���볲2", "�綾���볲3", "�綾���볲4", "�綾���볲5", "�綾���볲6", "�綾���볲7", "�綾���볲8"
}
	
local pucong_name =
{
	"������1", "������2", "������3", "������4", "������5", "������6", "������7", "������8", "�綾��1",  "�綾��2", "�綾��3", "�綾��4", "�綾��5", "�綾��6", "�綾��7", "�綾��8"
}


function on_create(monster)
	local monster_keyname = lualib:KeyName(monster)
	for i=1, #master_name do
		if monster_keyname == master_name[i] then
			servant_name1 = pucong_name[i]
		end

	end
	
	
    --lualib:AddTimer(monster, 1, summon_times, -1, "on_timer")
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
    summon(monster, servant_name1, summon_range)
end

function on_timer(monster, timer_id)
	lualib:DisableTimer(monster, timer_id)
    local monster_num = lualib:Monster_GetCustomVarInt(monster, servant_var)
    if monster_num >= max_servant then return end
    summon(monster, servant_name1, summon_range)
end

function on_trigger_post_die(actor, killer)
    lualib:DisableTimer(actor, 1)
    lualib:ClearTrigger(actor)
end

function summon(master, servant_name1, range)
    if not lualib:Monster_IsMonster(master) then return false end

    local x = lualib:Monster_GetPosX(master)
    local y = lualib:Monster_GetPosY(master)
    local map = lualib:Monster_GetMap(master)
    local target = lualib:Monster_GetAttackTarget(master)
    if x == -1 or y == -1 or map == "" or target == "" or servant_name1 == nil then return false end
    

    local servant = lualib:Map_GenSingleMonster(map, x, y, range, lualib:GenRandom(0, 7), servant_name1, false)
    if servant == "" then return false end

    lualib:Monster_SetCustomVarStr(servant, master_var, master)

    local monster_num = lualib:Monster_GetCustomVarInt(master, servant_var)
    lualib:Monster_SetCustomVarInt(master, servant_var, monster_num + 1)

    return lualib:Monster_SetAttackTarget(servant, master)
end
