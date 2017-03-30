local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(npc, player)
	msg = "客官，有什么需要的吗？\n \n"
	msg = msg.."<@CheckFamily *01*购买>\n"
	msg = msg.."<@ShowRepire#1 *01*修理>\n"
	msg = msg.."<@ShowRepireEx#1 *01*特殊修理>\n"
	msg = msg.."<@SellItem#1 *01*出售>\n"
	return msg
end

local castle_table = {"巫山城堡",}
function CheckFamily(npc, player)
    local own_family = lualib:GetCastleOwnFamily(castle_table[1])
    local my_family = lualib:Player_GetStrProp(player,  lua_role_guild)
    local msg = ""
    if own_family == "" or own_family ~= my_family then
        msg = "您不是城堡的占领者，不能给您提供打折优惠服务！\n \n"
        msg = msg.."<@OpenShop#6 *01*「确定」>\n"
    else
        msg = "您是城堡的占领者，我可以给您提供打折优惠服务！\n \n"
        msg = msg.."<@OpenShop#7 *01*「确定」>\n"
    end
    msg = msg.."<@main *01*「返回」>\n"
    return msg
end

function OpenShop(npc, player, id)
    shopid = tonumber(id)
    lualib:AddShop(npc, shopid)
	lualib:OpenShop(npc, player, shopid)
	return ""
end

function ShowRepire(npc, player)
    lualib:ShowForm(player, "修理表单")
    return ""
end

function ShowRepireEx(npc, player)
    lualib:ShowForm(player, "特殊修理表单")
    return ""
end

function SellItem(npc, player, id)
	lualib:ShowForm(player, "卖出物品表单")
	return ""
end
