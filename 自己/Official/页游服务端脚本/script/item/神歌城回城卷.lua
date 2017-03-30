local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

castle_item = 
{
    castle_name = "����",
    dest_x = 100,
    dest_y = 110,
}

function castle_item:is_castle_war_start()
    return lualib:IsCastleWarStart(self.castle_name)
end

function castle_item:is_castle_war_owner(player)
	if "" == lualib:GetCastleOwnFamily(self.castle_name) then return false end
    return (lualib:GetCastleOwnFamily(self.castle_name) == lualib:Player_GetStrProp(player,  lua_role_guild))
end

function castle_item:apply(player)
    return lualib:Player_MapMoveXY(player, self.castle_name, self.dest_x, self.dest_y, 6)
end

function castle_item:new(inst)
    inst = inst or {}
    setmetatable(inst, self)
    self.__index = self
    return inst
end

function main(player, item)
    local item_ = castle_item:new()
    item_.castle_name = "����"
    item_.dest_x = 333
    item_.dest_y = 206
    if not item_:is_castle_war_owner(player) then
        lualib:NPCTalk(player, "�����л᲻��"..item_.castle_name.."��ӵ���ߣ��޷����иò�����\n \n<@Leave *01*��ȷ����>")
        return false
    end

    if item_:is_castle_war_start() then 
        lualib:NPCTalk(player, item_.castle_name.."�����ڹ���ս�У��޷����иò�����\n \n<@Leave *01*��ȷ����>")
        return false
    end

    if not item_:apply(player) then
        lualib:NPCTalk(player, item_.castle_name.."�سǾ���ʹ��ʧ�ܣ�\n \n<@Leave *01*��ȷ����>")
        return false
    end

    return true
end

function Leave(player, item)
    return ""
end
