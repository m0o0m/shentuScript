local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local talk_t = {"没有跟BOSS约会过，能被称为真正的勇士吗？", "了不得啊，了不得，你这英雄豪迈的模样，真有我年青时的神韵！", "里面很危险哦，你愿意进去，还是愿意进去，还是愿意进去呢？"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 220000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#锁魔宫#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."　　#COLORCOLOR_SKYBLUE#锁魔宫#COLOREND#内镇压着不死的魔王。无数年来清理不完！勇士，只要你能进去清理掉#COLORCOLOR_GREENG#真的BOSS#COLOREND#，绝对会获得你意想不到的#COLORCOLOR_GREENG#各种宝物#COLOREND#！\n"
     msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-4>#　#COLORCOLOR_GRAY#╔──────╗　╔──────╗　╔──────╗#COLOREND#\n"
	msg = msg.."　#COLORCOLOR_GRAY#│#COLOREND#<@jump *01*「进入挑战」>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@info *01*「活动介绍」>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@leave *01*「我不敢去」>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│#COLOREND#\n"
	msg = msg.."　#COLORCOLOR_GRAY#╚──────╝　╚──────╝　╚──────╝#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#"

	return msg
end



function jump(npc,player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#锁魔宫#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."#COLORCOLOR_RED#进入条件：#COLOREND#20万非绑定金币\n"
        msg = msg.."#OFFSET<X:0,Y:3>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."进入#COLORCOLOR_SKYBLUE#锁魔宫#COLOREND#能打到各种BOSS获得各种好装备，也许你能发财哦，当然这要看你的实力和运气了！\n"
        msg = msg.."#OFFSET<X:0,Y:3>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:1>#          #IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@MapMoveXYB#锁魔宫#158#165#5 *01*【进入打宝】>               #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"

	return msg
end

function MapMoveXYB(npc, player, map_key_name, x, y, r)
	local msg=""
	gold = 200000
	--local EnterCount = 3
	if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费", "锁魔宫传送人") then return "你的金币不足，不能传送！\n \n \n \n \n \n \n                                             #OFFSET<X:0,Y:-5>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
	
	--[[if not lualib:VerifyCampCount(player, 5) then
		return "您进入的次数已经足够" .. EnterCount .. "次"
	end
	]]
	lualib:JoinCamp(player, 5, 0)
	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
    end
	
	return msg
end

function likai(npc,player)
	return ""
end

--[[function jump(npc, player)

    local map = lualib:Player_GetGuidProp(player,  lua_role_current_map_id)
    local dgn = lualib:Map_GetCustomVarStr(map, "scheduled_smgfb_dgn_guid")
    if dgn == "" then return "锁魔宫尚未开放，请留意系统公告！" end

--    local all_days = lualib:GetAllDays(0)
--    local days = lualib:Player_GetCustomVarInt(player, "smgwf_enter_days")
--    if all_days == days then
--        return "您今日已经进入过锁魔宫，无法再进入了！"
--    elseif all_days < days then
--        return "系统错误！"
 --   end

    local require_level = 15
    local level = lualib:Player_GetIntProp(player,  lua_role_level)
    if level < 15 then return "您的等级过低！" end

    local require_gold = 20000
    if not lualib:Player_IsGoldEnough(player, require_gold, false) then return "您的金币不足"..require_gold.."！" end

    if not lualib:Player_SubGold(player, require_gold, false, "扣金币：锁魔宫传送费", player) then
        return "扣除金币失败！"
    end

    if lualib:Player_SetDgnTicket(player, dgn) == false then return "您不被许可进入地图！" end
--    lualib:Player_SetCustomVarInt(player, "smgwf_enter_days", lualib:GetAllDays(0))
    if lualib:Player_EnterDgn(player, "锁魔宫", 0, 0, 0) == false then return "进入地图失败！"end

    return ""
end
]]--

function leave(npc, player)
    return ""
end

function info(npc,player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#锁魔宫#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
        msg = msg.."#COLORCOLOR_RED#进入条件：#COLOREND#20万金币      进入后无时间限制\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:4>##COLORCOLOR_RED#玩法介绍：#COLOREND#在众多假BOSS中找真BOSS打，偶尔会有一只超级怪物刷新，真BOSS和超级怪物都会携带高级备和特殊好东西。\n"
        msg = msg.."#OFFSET<X:0,Y:4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:2>#　　　　　　　　　　　　　　　　　　　　　#IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"

	return msg
end
