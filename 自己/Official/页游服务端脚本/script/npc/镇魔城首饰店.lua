local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/装备大师")

local talk_t = {"少侠，你的耳钉怎么看起来没什么属性，还减防，来我店中重买一副吧。", "你别看我是个妇道人家，老娘我也不是好惹的，想占便宜的话还是退开吧！", "我这儿有很多远方来的珍贵宝物，价钱合适的话我就卖给你。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 25000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    lualib:AddShop(npc, 6)
	msg = "     客官，请问需要点什么？不是小的吹嘘，整个天藏大陆，小店的首饰可是最好的，而且价格不贵哦！\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE1902700037#<@OpenShop#6 *01*「购买」   >#IMAGE1902700036#<@SellItem#1 *01*「出售」   >#IMAGE1902700035#<@ShowRepire#1 *01*「修理」   >#IMAGE1902700035#<@ShowRepireEx#1 *01*「特殊修理」>\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."                     #OFFSET<X:0,Y:4>#<@main_ex *01*精炼装备【装备大师】>\n"
     msg = msg.."#OFFSET<X:0,Y:4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@MapMoveXYA#镇魔城#228#174#3 *01*回中心广场>"
	return msg
end



function OpenShop(npc, player, id)
	shopid = tonumber(id)
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
	--if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费", "巫山城首饰店") then return "你的金币不足，不能传送！" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
    end
	return msg
end
