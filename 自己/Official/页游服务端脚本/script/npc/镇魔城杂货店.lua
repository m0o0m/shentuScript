local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/装备大师")

local talk_t = {"唉……自从有了各种传送石，地牢逃脱卷轴是越来越难卖了，怎么办呢？", "定位石可以让你在地宫深处来去自如。", "回城卷和随机传送卷可以让你省却很多赶路的时间，可惜更为神秘的逍遥游我从未得见。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 19000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    lualib:AddShop(npc, 10)
	msg = "     您好，欢迎光临！小店品类齐全，从我爷爷的那辈，就有无数的勇士在小店里购买杂货了！唉呀，人可真多呀，客人您随便看，我过去招呼一下！\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#10 *01*「购买」   >#OFFSET<X:0,Y:1>##IMAGE1902700036##OFFSET<X:0,Y:-1>#<@SellItem#1 *01*「出售」>\n"
        msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."                     #OFFSET<X:0,Y:0>#<@main_ex *01*精炼装备【装备大师】>\n"
     msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@MapMoveXYA#镇魔城#228#174#3 *01*回中心广场>"
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
	--if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费", "巫山城杂货店") then return "你的金币不足，不能传送！" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
    end
	return msg
end
