local max_servant = 100
local summon_times = 1500
local summon_range = 1
local servant_name = "¾ç¶¾Öë2"
local servant_var = "servant_var_num"
local master_var = "master_var_guid"
local master_name = 
{
	"½ÇÓ¬", "»ÃÓ°Ö©Öë"
}
	
local pucong_name =
{
	"òùòð", "±¬ÁÑÖ©Öë"
}


function on_create(monster)
	local monster_keyname = lualib:KeyName(monster)
	for i=1, #master_name do
		if monster_keyname == master_name[i] then
			servant_name1 = pucong_name[i]
		end

	end
	
	
    lualib:AddTimer(monster, 1, summon_times, -1, "on_timer")
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
    summon(monster, servant_name1, summon_range)
end

function on_timer(monster, timer_id)
	--lualib:DisableTimer(monster, timer_id)
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
