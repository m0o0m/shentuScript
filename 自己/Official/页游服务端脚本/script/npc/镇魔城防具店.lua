local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/装备大师")

local talk_t = {"听说新手村里的女孩子可以到水中嬉戏，真羡慕啊，人家也想去好好洗洗呢。", "巫山城越来越热闹啦，是人就得穿衣吃饭，我的生意也会越来越好。", "缝三年，补三年，缝缝补补又三年，这是奶奶教我的话。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 23000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    lualib:AddShop(npc, 4)
	msg = "     知道我是谁吗？我就是巫山城第一号裁缝，你看这款式，就知道我的手艺，我店里的盔甲坚固耐用，长袍舒适贴身，最重要的是——价格还不贵！\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037#<@OpenShop#4 *01*「购买」   >#IMAGE1902700036#<@SellItem#1 *01*「出售」   >#IMAGE1902700035#<@ShowRepire#1 *01*「修理」   >#IMAGE1902700035#<@ShowRepireEx#1 *01*「特殊修理」>\n"
        msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."                     #OFFSET<X:0,Y:0>#<@main_ex *01*精炼装备【装备大师】>\n"
     msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                               #OFFSET<X:0,Y:-3>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@MapMoveXYA#镇魔城#228#174#3 *01*回中心广场>"
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
	--if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费", "巫山城防具店") then return "你的金币不足，不能传送！" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
    end
	return msg
end
