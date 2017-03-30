local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_map_create(map)
    lualib:AddTrigger(map,  lua_trigger_post_die, "on_die")
end

function on_map_destroy(map)
    lualib:ClearTrigger(map)
end

function on_die(actor, killer)
    if not castlewar:is_castlewar_start() then return end
    if not lualib:Player_IsPlayer(actor) then return end
    if not castlewar:is_guarder(actor) then return end
     castlewar:guarder_relive(player)
end

castlewar = 
{
    castle_name = "��ɽ�Ǳ�",
    castle_relive_pos = {x = 100, y = 110}
}

--����ս�Ƿ�ʼ
function castlewar:is_castlewar_start()
    return lualib:IsCastleWarStart(self.castle_name)
end

--�Ƿ�Ϊ�ط�
function castlewar:is_guarder(player)
    local family = lualib:Player_GetStrProp(player,  lua_role_guild)
    local guarder = lualib:GetCastleOwnFamily(self.castle_name)
    if guarder == "" then return false end
    return (family == guarder)
end

--�ط�����
function castlewar:guarder_relive(player)
    lualib:Player_MapMoveXY(player, castlewar.castle_name, castlewar.castle_relive_pos.x, castlewar.castle_relive_pos.y, 6)
    lualib:Player_Relive(player)
end
