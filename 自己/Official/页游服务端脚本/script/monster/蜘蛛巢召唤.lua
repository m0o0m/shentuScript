local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local max_servant = 30
local summon_times = 1500
local summon_range = 1
local servant_name = "¾ç¶¾Öë2"
local servant_var = "servant_var_num"
local master_var = "master_var_guid"
local master_name = 
{
	"¶ö¹íÍòÖë³²1", "¶ö¹íÍòÖë³²2", "¶ö¹íÍòÖë³²3", "¶ö¹íÍòÖë³²4", "¶ö¹íÍòÖë³²5", "¶ö¹íÍòÖë³²6", "¶ö¹íÍòÖë³²7", "¶ö¹íÍòÖë³²8", "¾ç¶¾ÍòÖë³²1", "¾ç¶¾ÍòÖë³²2", "¾ç¶¾ÍòÖë³²3", "¾ç¶¾ÍòÖë³²4", "¾ç¶¾ÍòÖë³²5", "¾ç¶¾ÍòÖë³²6", "¾ç¶¾ÍòÖë³²7", "¾ç¶¾ÍòÖë³²8"
}
	
local pucong_name =
{
	"¶ö¹íÖë1", "¶ö¹íÖë2", "¶ö¹íÖë3", "¶ö¹íÖë4", "¶ö¹íÖë5", "¶ö¹íÖë6", "¶ö¹íÖë7", "¶ö¹íÖë8", "¾ç¶¾Öë1",  "¾ç¶¾Öë2", "¾ç¶¾Öë3", "¾ç¶¾Öë4", "¾ç¶¾Öë5", "¾ç¶¾Öë6", "¾ç¶¾Öë7", "¾ç¶¾Öë8"
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
