local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/装备大师")

local talk_t = {"叮叮铛，叮叮铛，锤声响叮当，大锤抡得多快乐，风箱拉得呼啦响……", "最近城里多了许多人，人气也旺起来了。", "巫山城的铁器是最有名的，可惜现在附近的铁矿洞里都是僵尸，不知什么时候才能消灭。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 17000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    lualib:AddShop(npc, 2)
	msg = "     嘿呀……嘿呀……选铁、冶炼、锻打、淬火，每一个步骤都是有讲究的！本店的铸造技艺，可是一直受到天下人的追捧！\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE1902700037#<@OpenShop#2 *01*「购买」   >#IMAGE1902700036#<@SellItem#1 *01*「出售」   >#IMAGE1902700035#<@ShowRepire#1 *01*「修理」   >#IMAGE1902700035#<@ShowRepireEx#1 *01*「特殊修理」>\n"
        msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."                     #OFFSET<X:0,Y:4>#<@main_ex *01*精炼装备【装备大师】>\n"
     msg = msg.."#OFFSET<X:0,Y:4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
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
	--if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费", "巫山城武器店") then return "你的金币不足，不能传送！" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
    end
	return msg
end
