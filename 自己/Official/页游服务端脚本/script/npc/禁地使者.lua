local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local talk_t = {"祝福神水可是样好东西，可以提高武器的最大攻击概率。", "在道士传承中，有阴极而阳生的说法，祝福神水产生与死灵体内，也许就是这样吧。", "据说信仰是成神的关键，神要信仰做什么呢？"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 240000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#亡灵禁地#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:-3>#　　死灵神在天藏大陆树起了无数供信徒祭拜的雕像，经过神战的清洗，#COLORCOLOR_GOLD#亡灵禁地#COLOREND#成了死灵神收集信仰最重要的所在！\n \n#COLORCOLOR_GREENG#小提示：内产亡灵印记可兑换祝福神水！BOSS直接产祝福神水！#COLOREND#\n"
         msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
         msg = msg.."#OFFSET<X:0,Y:-8>#　#COLORCOLOR_GRAY#╔──────╗　╔──────╗　╔──────╗#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:-3>#　#COLORCOLOR_GRAY#│#COLOREND#<@jump *01*前往亡灵禁地>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@info *01*查看活动介绍>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@duihuan *01*兑换祝福神水>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:-3>#　#COLORCOLOR_GRAY#╚──────╝　╚──────╝　╚──────╝#COLOREND#\n"
         msg = msg.."#OFFSET<X:0,Y:-8>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#"

	return msg
end

function jump(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#亡灵禁地#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:4>#亡灵禁地可是危险重重哦，你准备好了吗？\n"
         msg = msg.."#OFFSET<X:0,Y:1>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"

	if lualib:Player_HasDgnTicket(player, "亡灵禁地") then
	msg = msg.."　　　#COLORCOLOR_GRAY#╔──────╗　　　　　╔──────╗　#COLOREND#\n"
	msg = msg.."　　　#OFFSET<X:0,Y:-2>##COLORCOLOR_GRAY#│#COLOREND#<@jump_member *01*「继续挑战」>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│　　　　　│#COLOREND#<@main *01*「返回首页」>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│#COLOREND#\n"
	msg = msg.."　　　#OFFSET<X:0,Y:-2>##COLORCOLOR_GRAY#╚──────╝　　　　　╚──────╝　#COLOREND#\n"
    else
	msg = msg.."　　　#COLORCOLOR_GRAY#╔──────╗　　　　　╔──────╗　#COLOREND#\n"
	msg = msg.."　　　#OFFSET<X:0,Y:-2>##COLORCOLOR_GRAY#│#COLOREND#<@jump_leader *01*「进入挑战」>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│　　　　　│#COLOREND#<@main *01*「返回首页」>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│#COLOREND#\n"
	msg = msg.."　　　#OFFSET<X:0,Y:-2>##COLORCOLOR_GRAY#╚──────╝　　　　　╚──────╝　#COLOREND#\n"
    end
         msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#"

    return msg
end

function jump_member(npc, player)
	local members = lualib:Player_GetTeamList(player)
	if members == nil then return "你已经离队了！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end

	local dgn = lualib:Player_GetDgnByTicket(player, "亡灵禁地")
	if dgn == "" then return "亡灵禁地已关闭！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end

	local team_guid = lualib:Map_GetCustomVarStr(dgn, "team_guid")
	if team_guid == "" then return "你没有进入亡灵禁地的记录！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end

	if team_guid ~= lualib:Player_GetTeamGuid(player) then return "抱歉，你已经更换过队伍了！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end
	lualib:JoinCamp(player, 11, 0)
    if lualib:Player_EnterDgn(player, "亡灵禁地", 0, 0, 0) == false then return "进入地图失败！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"end
    return ""
end

function jump_leader(npc, player)

    local map = lualib:Player_GetGuidProp(player,  lua_role_current_map_id)
    local dgn = lualib:Map_GetCustomVarStr(map, "scheduled_wljdfb_dgn_guid")
    if dgn == "" then return "亡灵禁地尚未开放，请留意系统公告！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end

	if not lualib:Player_IsTeamLeader(player) then return "你不是队长！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end
	local members = lualib:Player_GetTeamList(player)
	if members == nil then return "队伍成员为空！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end

	local team_guid = lualib:Player_GetTeamGuid(player)
	if team_guid == "" then return "获取队伍信息出错！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end

	local require_distance = 6
	for _, v in pairs(members) do
		local distance = lualib:Distance(v, npc)
		if distance > require_distance then
			if player == v then
				return "您的距离过远！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			else
				return "队友【"..lualib:Player_GetStrProp(v, lua_role_user_name).."】的距离过远！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			end
		end
	end

	local require_level = 25
	for _, v in pairs(members) do
		local level = lualib:Player_GetIntProp(v,  lua_role_level)
		if level < require_level then
			if player == v then
				return "您的等级过低！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			else
				return "队友【"..lualib:Player_GetStrProp(v, lua_role_user_name).."】的等级过低！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			end
		end
	end

	for _, v in pairs(members) do
		if lualib:Player_HasDgnTicket(v, "亡灵禁地") then
			return "队友【"..lualib:Player_GetStrProp(v, lua_role_user_name).."】已经进入过其它队伍的副本！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
		end
	end

    local require_gold = 0
    if not lualib:Player_IsGoldEnough(player, require_gold, false) then
        return "您的金币不足"..require_gold.."！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    end

    --[[local require_item = "亡灵禁地辟邪丹"
    if lualib:Player_GetItemCount(player, require_item) < 0 then
        return "进入亡灵禁地需要"..require_item.."！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    end

    if not lualib:Player_DestroyItem(player, require_item, 0, "扣道具：禁地使者传送消耗", "禁地使者") then
        return "上缴物品"..require_item.."失败！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    end]]

    if not lualib:Player_SubGold(player, require_gold, false, "扣金币：亡灵禁地传送费", "禁地使者") then
        return "扣除金币失败！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    end

	for _, v in pairs(members) do
		lualib:Map_SetCustomVarStr(dgn, "team_guid", team_guid)
		if lualib:Player_SetDgnTicket(v, dgn) == false then return "您不被许可进入地图！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end
		lualib:JoinCamp(player, 11, 0)
		if lualib:Player_EnterDgn(v, "亡灵禁地", 0, 0, 0) == false then return "进入地图失败！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"end
	end


    return ""
end

function duihuan(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#亡灵禁地#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
         msg = msg.."#OFFSET<X:0,Y:8>#每#COLORCOLOR_RED#10个亡灵印记#COLOREND#加#COLORCOLOR_RED#5万非绑定金币#COLOREND#可「兑换」1瓶#COLORCOLOR_GOLD#祝福神水#COLOREND#，你要「兑换」吗？\n"
         msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
         msg = msg.."　　　　　#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@award *01*「兑换」>　　　　　　#OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"

    return msg
end

function award(npc, player)
    local require_item = "亡灵印记"
    local require_item_count = 10
    local award_item = "祝福神水"
    local award_item_count = 1
    local require_gold = 50000

    if lualib:Player_GetItemCount(player, require_item) < require_item_count then
        return "您的"..require_item.."不足"..require_item_count.."个！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    end

    if not lualib:Player_IsGoldEnough(player, require_gold, false) then
        return "你的金币不足"..require_gold.."万！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    end

    if not lualib:Player_DestroyItem(player, require_item, require_item_count, "删物品：禁地使者「兑换」祝福神水", player) then
        return "上缴物品失败！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    end

    if not lualib:Player_SubGold(player, require_gold, false, "扣金币：禁地使者「兑换」祝福神水", "禁地使者") then
        return "扣除金币失败！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    end

    if not lualib:Player_GiveItemUnbind(player, award_item, award_item_count, "给物品：禁地使者「兑换」祝福神水", player) then
        return "给物品失败！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    end

    return "「兑换」成功！\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
end

function info(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#亡灵禁地#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
         msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_RED#开启时间：#COLOREND#每日 14:30~15:00 20:00~20:30开启，请留意系统公告\n"
         msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-9>##COLORCOLOR_RED#活动介绍：#COLOREND#组队才能进入，在亡灵禁地里，你可杀不断刷新的小\n"
	 msg = msg.."#OFFSET<X:0,Y:4>#怪获取亡灵印记,去「兑换」祝福神水！当然你也可以直接杀\n"
	 msg = msg.."#OFFSET<X:0,Y:4>#死BOSS获取。\n"
         msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
         msg = msg.."#OFFSET<X:0,Y:-18>#　　　　　　　　　　　　　　　　　　　　　#IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"

	return msg
end

function infoa(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#亡灵禁地#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
         msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_RED#开启时间：#COLOREND#每日 14:30~15:00 20:00~20:30开启，请留意系统公告\n"
         msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
         msg = msg.."#OFFSET<X:0,Y:-9>##COLORCOLOR_RED#进入条件：#COLOREND#我可以帮助你去亡灵禁地获取祝福神水，但是你必须\n"
         msg = msg.."#OFFSET<X:0,Y:4>#要有一颗#COLORCOLOR_GOLD#亡灵禁地辟邪丹#COLOREND#才能保护你不受亡灵阴气的侵蚀，据说\n"
         msg = msg.."#OFFSET<X:0,Y:4>#亡灵禁地辟邪丹可从#COLORCOLOR_SKYBLUE#将军冢#COLOREND#的怪物身上获取到！\n"
         msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
         msg = msg.."#OFFSET<X:0,Y:-12>#　　　　　　　　　　　　　　　　　　　　　#IMAGE<ID:1902700019>#<@main *01*「返回」>"

	return msg
end

function leave(npc, player)
    return ""
end
