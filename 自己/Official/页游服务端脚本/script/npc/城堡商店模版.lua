local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(npc, player)
	msg = "�͹٣���ʲô��Ҫ����\n \n"
	msg = msg.."<@CheckFamily *01*����>\n"
	msg = msg.."<@ShowRepire#1 *01*����>\n"
	msg = msg.."<@ShowRepireEx#1 *01*��������>\n"
	msg = msg.."<@SellItem#1 *01*����>\n"
	return msg
end

local castle_table = {"��ɽ�Ǳ�",}
function CheckFamily(npc, player)
    local own_family = lualib:GetCastleOwnFamily(castle_table[1])
    local my_family = lualib:Player_GetStrProp(player,  lua_role_guild)
    local msg = ""
    if own_family == "" or own_family ~= my_family then
        msg = "�����ǳǱ���ռ���ߣ����ܸ����ṩ�����Żݷ���\n \n"
        msg = msg.."<@OpenShop#6 *01*��ȷ����>\n"
    else
        msg = "���ǳǱ���ռ���ߣ��ҿ��Ը����ṩ�����Żݷ���\n \n"
        msg = msg.."<@OpenShop#7 *01*��ȷ����>\n"
    end
    msg = msg.."<@main *01*�����ء�>\n"
    return msg
end

function OpenShop(npc, player, id)
    shopid = tonumber(id)
    lualib:AddShop(npc, shopid)
	lualib:OpenShop(npc, player, shopid)
	return ""
end

function ShowRepire(npc, player)
    lualib:ShowForm(player, "�����")
    return ""
end

function ShowRepireEx(npc, player)
    lualib:ShowForm(player, "���������")
    return ""
end

function SellItem(npc, player, id)
	lualib:ShowForm(player, "������Ʒ��")
	return ""
end
