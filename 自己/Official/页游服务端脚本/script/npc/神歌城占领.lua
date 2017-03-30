local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local castle_name = "����"

function main(npc, player)
	local msg = "     ֻҪ�ʹ���û�ез���Ա�� ���ҾͿ�ռ��ʹ� \n \n \n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700039##OFFSET<X:0,Y:-1>#<@InfoOccupy *01*��ռ��ʹ���>\n \n \n \n"
	msg = msg.."                                                  #OFFSET<X:0,Y:-2>##IMAGE1902700034##OFFSET<X:0,Y:-1>#<@likai *01*���뿪��>"
	return msg
end

function InfoOccupy(npc, player)
    local my_family_name = lualib:Player_GetStrProp(player,  lua_role_guild)
    local map = lualib:Player_GetGuidProp(player,  lua_role_current_map_id)
    if my_family_name == "" then return "����û�лᣡ\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end

    if lualib:HasCastle(castle_name) == false then
        return "�Ǳ����Ʋ����ڡ�\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    if lualib:IsCastleWarStart(castle_name) == false then
        return "�óǱ���δ��ʼ���ǡ�\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    local defense = lualib:GetCastleOwnFamily(castle_name)
    local attacks = lualib:GetCastleAttackFamily(castle_name)
    if my_family_name ~= defense and (not lualib:IsInCollection(attacks, my_family_name, "&")) then
        return "�㼴���ǹ���Ҳ�����ط����޷�ռ�죡\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    if lualib:GetCastleTempFamily(castle_name) == my_family_name then return "�óǱ�����л�����ռ���У�\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end

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
    if not result then return "��Χ�зǱ��л��Ա��ȫ���������ſ�ռ�졣\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end

    lualib:SetCastleTempFamily(castle_name, my_family_name)
	lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BROWN#["..castle_name.."] #COLORCOLOR_YELLOW#����ʱռ����Ϊ��#COLORCOLOR_BROWN#"..my_family_name.." #COLORCOLOR_YELLOW#�лᣡ", "", 1, 12)
	return "ռ��ɹ���\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@likai *01*���뿪��>"
end

function likai(npc,player)
	return ""
end

