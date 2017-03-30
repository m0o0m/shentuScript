local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local talk_t = {"这里是展示实力的地方，如果你不能得到英雄帖来证明自己，就无法进入。", "武斗场那里不过是小孩子过家家的地方，这里才是真正的勇士才能来的。", "这里面会掉落极品装备，可需要你用生命来争夺，只有团结起来才可以。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 300000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#夺宝英雄#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━#COLOREND#\n"
         msg = msg.."　　无法逃避的战斗，最酣畅淋漓的决杀！进去后，等几分钟地上会刷出#COLORCOLOR_GREENG#极品装备#COLOREND#和#COLORCOLOR_GREENG#元宝#COLOREND#！只有王者才有资格获得！\n"
         msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		 msg = msg.."小提示：进入需要的#COLORCOLOR_RED#「英雄帖」#COLOREND#，可以从#COLORCOLOR_SKYBLUE#「锁魔宫」#COLOREND#内的怪物身上找到。巫山城杂货商那里也有得卖！\n"
         msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
         msg = msg.."　#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@jump *01*「参加活动」>　　#OFFSET<X:-1,Y:0>##IMAGE<ID:1902700017>#<@info *01*「活动介绍」>　　#OFFSET<X:-2,Y:0>#<@leave *01*【我不敢去】>#OFFSET<X:-2,Y:0>#\n"
         msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"

	return msg
end

function jump(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#夺宝英雄#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━#COLOREND#\n"
          msg =  msg.."#COLORCOLOR_RED#活动时间：#COLOREND#周一,周三,周五：　17点~17:30　　21:30~22:00\n"
          msg =  msg.."#COLORCOLOR_RED#进入条件：#COLOREND#个人进入需要提供一张英雄帖。\n"
          msg =  msg.."#COLORCOLOR_RED#进入条件：#COLOREND#组队由组长提交一张英雄帖，全体成员都可以进入。\n"
          msg =  msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
          msg =  msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_RED#提示⑴→：#COLOREND#如果您有组队的话，请确保队友在您旁边！\n"
          msg =  msg.."#COLORCOLOR_RED#提示⑵→：#COLOREND#英雄帖可以在#COLOREND##COLORCOLOR_SKYBLUE#锁魔宫#COLOREND#打到！\n"
          msg =  msg.."#COLORCOLOR_RED#提示⑶→：#COLOREND#活动时间内不限制进入次数！\n"
          msg =  msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
          msg =  msg.."#OFFSET<X:0,Y:-6>#　　　#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@jumpex *01*【参加活动】>                    #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"

    return msg
end

function jumpex(npc, player)
    local map = lualib:Player_GetGuidProp(player,  lua_role_current_map_id)
    local dgn = lualib:Map_GetCustomVarStr(map, "scheduled_dbdtfb_dgn_guid")
    if dgn == "" then return "夺宝大厅尚未开放，请留意系统公告！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end

	if lualib:Player_HasTeam(player) then
		if not lualib:Player_IsTeamLeader(player) then return "你在队伍中，请联系队长进行该操作！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end
	end

    local require_item = "英雄帖"
    if lualib:Player_GetItemCount(player, require_item) < 1 then
        return "进入夺宝大厅需要"..require_item.."！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

	local member = {}
	if lualib:Player_HasTeam(player) then
		member = lualib:Player_GetTeamList(player)
	else
		table.insert(member, player)
	end
	
	if member == nil then return "系统错误！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end
	
	local npc_x = lualib:Npc_GetPosX(npc)
	local npc_y = lualib:Npc_GetPosY(npc)
	local member_x
	local member_y
	for _, v in pairs(member) do
		member_x = lualib:Player_GetPosX(v)
		member_y = lualib:Player_GetPosY(v)
		if lualib:Map_GetDistance(npc_x, npc_y, member_x, member_y) > 5 then 
			return lualib:Player_GetStrProp(v,  lua_role_user_name).."不在附近！" 
		end
	end
	
	if not lualib:Player_DestroyItem(player, require_item, 1, "扣道具：夺宝大厅传送消耗", "夺宝大使") then
        return "上缴物品"..require_item.."失败！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

	
	for _, v in pairs(member) do
		if lualib:Player_SetDgnTicket(v, dgn) == false then return "您不被许可进入地图！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end
		lualib:JoinCamp(player, 9, 0)
		if lualib:Player_EnterDgn(v, "夺宝大厅", 0, 0, 0) == false then return "进入地图失败！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"end
	end
	
    return ""
end

function info(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#夺宝英雄#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━#COLOREND#\n"
         msg = msg.."#COLORCOLOR_RED#活动时间：#COLOREND#每周一、三、五  17:00~17:30   21:30~22:00\n"
         msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	 msg = msg.."　　参加活动需#COLORCOLOR_RED#提交一张英雄帖#COLOREND#，建议组队进入，由队长提交一张英雄帖后所有组员都可以传送进入。活动开始后会在活动地图随机出现#COLORCOLOR_GREENG#极品装备#COLOREND#和#COLORCOLOR_GREENG#元宝#COLOREND#，从装备出现之时起#COLORCOLOR_RED#两分钟内所有玩家无法捡取#COLOREND#。能否成功获得极品装备，就看你的实力了！\n"
         msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
         msg = msg.."　　　　　　　　　　　　　　　　　　　　　　#IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"

	return msg
end

function leave(npc, player)
    return ""
end
