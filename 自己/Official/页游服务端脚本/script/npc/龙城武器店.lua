local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


local talk_t = {"叮叮铛，叮叮铛，锤声响叮当，大锤抡得多快乐，风箱拉得呼啦响……", "最近城里多了许多人，人气也旺起来了。", "巫山城的铁器是最有名的，可惜现在附近的铁矿洞里都是僵尸，不知什么时候才能消灭。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 17000, -1, "on_timer_talk")
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
        msg = "客官，有什么需要的吗？\n我卖的不是最好的武器，真正最好的武器是你自己的技巧和能力！\n#COLORCOLOR_GREENG#您没有加入占领神歌城的行会，购物原价！#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#2 *01*「购买」>"
    else
        msg = "客官，有什么需要的吗？\n我卖的不是最好的武器，真正最好的武器是你自己的技巧和能力！\n#COLORCOLOR_RED#您的行会是占领神歌城的王者，购物八折！#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#15 *01*「购买」>"
    end
	msg = msg.."    #OFFSET<X:0,Y:1>##IMAGE1902700036##OFFSET<X:0,Y:-1>#<@SellItem#1 *01*「出售」>    #OFFSET<X:0,Y:1>##IMAGE1902700035##OFFSET<X:0,Y:-1>#<@ShowRepire#1 *01*「修理」>   #OFFSET<X:0,Y:1>##IMAGE1902700035##OFFSET<X:0,Y:-1>#<@ShowRepireEx#1 *01*「特殊修理」>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n \n \n"
	msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#232#229#3 *01*回中心广场>"
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

function MapMoveXYA(npc, player, map_key_name, x, y, r)
	local msg=""
	--gold = 0
	--if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费", "龙城武器店") then return "你的金币不足，不能传送！" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
    end
	return msg
end