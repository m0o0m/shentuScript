local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local talk_t = {"药的恢复速度是固定的，所以不要遇到BOSS就上前顶着打。", "红蓝不是你想买，想买就能买，想买多少，能买多少，我都给你啦……", "药！药！切客闹！就是这个药！快点来买药……"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 15000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end


local castle_table = {"神歌城",}
function main(npc, player)
    local own_family = lualib:GetCastleOwnFamily(castle_table[1])
    local my_family = lualib:Player_GetStrProp(player,  lua_role_guild)
    local msg = ""
    if own_family == "" or own_family ~= my_family then
        msg = "客官，有什么需要的吗？\n悬壶济世，救死扶伤是我们行医人士的职业准则。世人不止看得起病买得起药，更要健康快乐幸福！\n#COLORCOLOR_GREENG#您没有加入占领神歌城的行会，购物原价！#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#8 *01*「购买」>"
    else
        msg = "客官，有什么需要的吗？\n悬壶济世，救死扶伤是我们行医人士的职业准则。世人不止看得起病买得起药，更要健康快乐幸福！\n#COLORCOLOR_RED#您的行会是占领神歌城的王者，购物八折！#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#18 *01*「购买」>"
    end
	msg = msg.."    #OFFSET<X:0,Y:1>##IMAGE1902700036##OFFSET<X:0,Y:-1>#<@SellItem#1 *01*「出售」>    #OFFSET<X:0,Y:1>##IMAGE1902700035##OFFSET<X:0,Y:-1>#<@ShowRepire#1 *01*「修理」>   #OFFSET<X:0,Y:1>##IMAGE1902700035##OFFSET<X:0,Y:-1>#<@ShowRepireEx#1 *01*「特殊修理」>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n \n \n"
	msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<likai *01*「离开」>\n"
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

function likai(npc, player)
	return ""
end