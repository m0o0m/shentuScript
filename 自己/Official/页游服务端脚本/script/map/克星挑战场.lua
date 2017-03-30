local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_map_create(map)
    local map_table = {["克星挑战场1"] = {{"克星千年树魔", 1, 24, 58}},
                       ["克星挑战场2"] = {{"克星血禅师", 1, 24, 58}},
                       ["克星挑战场3"] = {{"克星梵天僧", 1, 24, 58}}}
    local map_name = lualib:Map_GetMapKeyName(map)
    if map_table[map_name] == nil then
        lualib:Print("挑战场地地图keyname不配匹！")
        return
    end
    lualib:Print("挑战场地地图建创回调！")

    lualib:AddTrigger(map,  lua_trigger_post_die, "on_trigger_monster_die")
    for i = 1, table.getn(map_table[map_name]) do
        if not lualib:Map_GenSingleMonster(map, map_table[map_name][i][3],
                      map_table[map_name][i][4], 3, 4, map_table[map_name][i][1], false) then
            lualib:Print(map_name.."刷怪："..map_table[map_name][i][1].."失败！")
        end
        lualib:Print(map_name.."刷怪："..map_table[map_name][i][1].."成功！")
    end
end

function on_map_destroy()
    return
end

function on_trigger_monster_die(actor, killer)
    local var_cur_dgn_succ = "克星挑战_cur_dgn_succ"
    local map_table = {["克星挑战场1"] = {"克星千年树魔", 1}, ["克星挑战场2"] = {"克星血禅师", 2}, ["克星挑战场3"] = {"克星梵天僧", 3}}
    local map = lualib:Monster_GetMap(actor)
	local map_name = lualib:Map_GetMapKeyName(map)

    if lualib:Monster_IsMonster(actor) and lualib:Monster_GetKeyName(actor) == map_table[map_name][1] then
        lualib:Print("挑战成功！"..map_name.."["..map_table[map_name][1].."]！")
		local players = lualib:Map_GetMapPlayers(map, false)
        lualib:Player_SetCustomVarInt(players[1], var_cur_dgn_succ, map_table[map_name][2])
    end
end
