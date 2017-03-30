local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local max_servant = 60
local summon_times = 3000
local summon_range = 2
local servant_name = "�׹�����1"
local servant_var = "servant_var_num"
local master_var = "master_var_guid"
local npctalk_table =
{
    "��С�ķ��ˣ�����ս�ң��ȴ���ҵ������ɣ�",
    "�޴��ĵ����࣬����ս�ҵ�Ȩ������Ҫ�ȹ����ѪҺ��",
    "���ҵ��ռ��ٻ���ͨ������������",
    "�����ǣ������ڹ���������ˡ����Ҹɵ����ǣ��������ǵ���ͷ�����ң�",
    "���кܶ����У������һ��С��ΧŹ�㣡"
}

function on_create(monster)
    lualib:AddTimer(monster, 1, summon_times, -1, "on_timer")
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
    summon(monster, servant_name, summon_range)
end

function on_timer(monster, timer_id)
    local monster_num = lualib:Monster_GetCustomVarInt(monster, servant_var)
    if monster_num >= max_servant then return end
    summon(monster, servant_name, summon_range)

    local index = lualib:GenRandom(1, table.getn(npctalk_table))
    lualib:SysMsg_SendRoleTalk(monster, npctalk_table[index])
end

function on_trigger_post_die(actor, killer)
    lualib:DisableTimer(actor, 1)
    lualib:ClearTrigger(actor)
end

function summon(master, servant_name, range)
    if not lualib:Monster_IsMonster(master) then return false end

    local x = lualib:Monster_GetPosX(master)
    local y = lualib:Monster_GetPosY(master)
    local map = lualib:Monster_GetMap(master)
    local target = lualib:Monster_GetAttackTarget(master)
    if x == -1 or y == -1 or map == "" or target == "" then return false end

    local servant = lualib:Map_GenSingleMonster(map, x, y, range, lualib:GenRandom(0, 7), servant_name, false)
    if servant == "" then return false end

    lualib:Monster_SetCustomVarStr(servant, master_var, master)

    local monster_num = lualib:Monster_GetCustomVarInt(master, servant_var)
    lualib:Monster_SetCustomVarInt(master, servant_var, monster_num + 1)

    return lualib:Monster_SetAttackTarget(servant, master)
end
