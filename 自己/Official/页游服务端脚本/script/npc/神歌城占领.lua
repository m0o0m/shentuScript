local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local castle_name = "神歌城"

function main(npc, player)
	local msg = "     只要皇宫内没有敌方成员， 点我就可占领皇宫 \n \n \n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700039##OFFSET<X:0,Y:-1>#<@InfoOccupy *01*「占领皇宫」>\n \n \n \n"
	msg = msg.."                                                  #OFFSET<X:0,Y:-2>##IMAGE1902700034##OFFSET<X:0,Y:-1>#<@likai *01*「离开」>"
	return msg
end

function InfoOccupy(npc, player)
    local my_family_name = lualib:Player_GetStrProp(player,  lua_role_guild)
    local map = lualib:Player_GetGuidProp(player,  lua_role_current_map_id)
    if my_family_name == "" then return "你有没行会！\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end

    if lualib:HasCastle(castle_name) == false then
        return "城堡名称不存在。\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    if lualib:IsCastleWarStart(castle_name) == false then
        return "该城堡尚未开始攻城。\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    local defense = lualib:GetCastleOwnFamily(castle_name)
    local attacks = lualib:GetCastleAttackFamily(castle_name)
    if my_family_name ~= defense and (not lualib:IsInCollection(attacks, my_family_name, "&")) then
        return "你即不是攻方也不是守方，无法占领！\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    if lualib:GetCastleTempFamily(castle_name) == my_family_name then return "该城堡你的行会正在占领中！\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end

    local map_width = lualib:Map_GetWidth(map)
    local map_height = lualib:Map_GetHeight(map)
    if map_width < map_height then map_width = map_height end
    local players = lualib:Map_GetRegionPlayers(map, 0, 0, map_width, true)
    local result = true
    for i = 1, #players do
        if not lualib:IsInFamily(players[i], my_family_name) then
            result = false
            break
        end
    end
    if not result then return "周围有非本行会成员，全部清理完后才可占领。\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end

    lualib:SetCastleTempFamily(castle_name, my_family_name)
	lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BROWN#["..castle_name.."] #COLORCOLOR_YELLOW#的临时占领者为：#COLORCOLOR_BROWN#"..my_family_name.." #COLORCOLOR_YELLOW#行会！", "", 1, 12)
	return "占领成功！\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@likai *01*「离开」>"
end

function likai(npc,player)
	return ""
end

