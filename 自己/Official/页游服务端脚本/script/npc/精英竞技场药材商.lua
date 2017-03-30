local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/装备大师")

function main(npc, player)
    lualib:AddShop(npc, 8)
	msg = "唉，妖魔横行，订好的药材还没有运来，真让人头痛啊！啊，大人，欢迎光临！这里有足量的药品的供应！ \n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700030#<@OpenShop#8 *01*「购买」   >#IMAGE1902700030#<@SellItem#1 *01*「出售」>\n"
        msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."                     #OFFSET<X:0,Y:0>##IMAGE1902700018#<@main_ex *01*精炼装备【装备大师】>\n"
     msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                               #OFFSET<X:0,Y:-6>##IMAGE1902700015#<@MapMoveXYA#龙城#232#229#3 *01*回龙城广场>"
	return msg
end

function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
end

function SellItem(npc, player, id)
	lualib:ShowForm(player, "卖出物品表单")
	return ""
end

function MapMoveXYA(npc, player, map_key_name, x, y, r)
	local msg=""
	--gold = 0
	--if not lualib:Player_SubGold(player, gold, false, "扣除金币", player) then return "你的金币不足，不能传送！" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
    end
	return msg
end
