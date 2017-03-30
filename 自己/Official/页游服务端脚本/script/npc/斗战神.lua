local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(npc, player)
	local msg = ""
	local baozi_name = lualib:IO_GetCustomVarStr("baozi_name")
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂斗战神▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	msg = msg.."说明："
	msg = msg.."每投掷一次骰子需要消耗10万金币\n"
	msg = msg.."投掷出三个一样的数如⑧⑧⑧，可获得独有属性【暴击+5】\n"
	msg = msg.."如果没有其他人来此争夺，属性消失后你可以找我免费领取\n \n"
	msg = msg.."        #OFFSET<X:0,Y:-2>##COLORCOLOR_RED#提示：当前拥有者为【#COLOREND#"..baozi_name.."#COLORCOLOR_RED#】#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	msg = msg.."#IMAGE1902700037#<@baozi *01*投掷骰子争夺>       #IMAGE<ID:1902700017>#<@baozia *01*领取暴击状态>\n"
	return msg
end

function baozia(npc, player)
		local baozi_name_duibi = lualib:IO_GetCustomVarStr("baozi_name_duibi")
		local yang_baoji_zhi = lualib:Player_GetCustomVarInt(player, "yang_baoji_jc")
		local map = lualib:Player_GetGuidProp(player, lua_role_current_map_id)
	if yang_baoji_zhi == 1 then
		local msg = ""
		msg = msg.."暴击提升效果未消退，不能重复领取特殊能力，请稍后再来！\n \n"
		msg = msg.."<@main *01*「返回」>\n"
		return msg
	end
	
	if player ~= baozi_name_duibi then
		local msg = ""
		msg = msg.."请获取资格后在来领取！\n \n"
		msg = msg.."<@main *01*「返回」>\n"
		return msg
	end
	
	if player == baozi_name_duibi then
		local msg = ""
		local ceshi_name = "暴击率提升"
		lualib:Player_AddBuff(player, ceshi_name, 180000)
		lualib:Map_SetCustomVarInt(map, "baoziwang_timer", 0)
		lualib:AddTimer(player, 823, 10000, 18000, "yang_baoji_time")
		lualib:Player_SetCustomVarInt(player, "yang_baoji_jc", 1)
		msg = msg.."恭喜恭喜，您通过艰苦卓绝的斗争，获得暴击提升\n \n"
		msg = msg.."奖励为获得暴击提升，请注意查看图标显示的时间。\n"
		msg = msg.."效果消失后可以重复在我这里领取特殊属性\n"
		msg = msg.."<@main *01*「返回」>\n"
		return msg
	end
end
local shuzi_tb = {{1,"一"}, {2,"二"}, {3,"三"}, {4,"四"}, {5,"五"}, {6,"六"}}
function baozi(npc, player)
		local msg = ""
		local Gold = 100000
		local a1 = lualib:GenRandom(1, 6)
		local a2 = lualib:GenRandom(1, 6)
		local a3 = lualib:GenRandom(1, 6)
		local baozi_name = lualib:IO_GetCustomVarStr("baozi_name")
		
	for k, v in pairs(shuzi_tb) do
		if a1 == v[1] then
			a11 = v[2]
		end
		if a2 == v[1] then
			a22 = v[2]
		end
		if a3 == v[1] then
			a33 = v[2]
		end
	end
		
    if not lualib:Player_IsGoldEnough(player, Gold, false) then
        return "金币不足,请拥有足够的金币后再来挑战！"
    end

    if not lualib:Player_SubGold(player, Gold, false, "扣金币：斗战神消耗金币", player) then
        return "扣除金币失败，请重试！"
    end
	
	if a1 == a2 and a2 == a3 then
		local msg = ""
		local ceshi_name = "暴击率提升"
		local player_name = lualib:Player_GetStrProp(player, lua_role_user_name)
		local map = lualib:Player_GetGuidProp(player, lua_role_current_map_id)
		lualib:IO_SetCustomVarStr("baozi_name", player_name)
		lualib:IO_SetCustomVarStr("baozi_name_duibi", player)
		lualib:Player_AddBuff(player, ceshi_name, 180000)
		lualib:Player_SetCustomVarInt(player, "yang_baoji_jc", 1)
		lualib:Map_SetCustomVarInt(map, "baoziwang_timer", 0)
		lualib:AddTimer(player, 823, 10000, 18000, "yang_baoji_time")
		msg = msg.."您当前挑战的数字为["..a1.."]["..a2.."]["..a3.."]\n \n"
		msg = msg.."恭喜恭喜，您通过艰苦卓绝的斗争，获得暴击提升\n \n"
		msg = msg.."奖励为获得暴击提升，请注意查看图标显示的时间。\n"
		msg = msg.."效果消失后可以重复在我这里领取特殊属性\n"
		lualib:SysMsg_SendWarnMsg(player, "当前您挑战的数字为["..a1.."]["..a2.."]["..a3.."]")
		return msg
	else
		lualib:SysMsg_SendWarnMsg(player, "当前您挑战的数字为["..a1.."]["..a2.."]["..a3.."]")
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂斗战神▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	msg = msg.."说明："
	msg = msg.."每投掷一次骰子需要消耗10万金币\n"
	msg = msg.."投掷出三个一样的数如⑧⑧⑧，可获得独有属性【暴击+5】\n"
	msg = msg.."如果没有其他人来此争夺，属性消失后你可以找我免费领取\n"
		msg = msg.."              #COLORCOLOR_RED#┏┳┓    ┏┳┓    ┏┳┓#COLOREND#\n"
		msg = msg.."        #OFFSET<X:0,Y:-3>#      #COLORCOLOR_RED#┣#COLOREND#"..a11.."#COLORCOLOR_RED#┫    ┣#COLOREND#"..a22.."#COLORCOLOR_RED#┫    ┣#COLOREND#"..a33.."#COLORCOLOR_RED#┫#COLOREND#\n"
		msg = msg.."        #OFFSET<X:0,Y:-3>#      #COLORCOLOR_RED#┗┻┛    ┗┻┛    ┗┻┛#COLOREND#\n"
		msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
		msg = msg.."#IMAGE1902700037#<@baozi *01*投掷骰子争夺>\n"
		return msg
	end
end

function yang_baoji_time(player, timer_id)
	local ceshi_name = "暴击率提升"
	local map_key_name = "龙城"
	local map = lualib:Map_GetMapGuid(map_key_name)
	local baoziwang_timer = lualib:Map_GetCustomVarInt(map, "baoziwang_timer")
	local baozi_name_duibi = lualib:IO_GetCustomVarStr("baozi_name_duibi")
	
	if player ~= baozi_name_duibi then
		local msg = ""
		lualib:Player_DelBuff(player, ceshi_name)
		lualib:DisableTimer(player, timer_id)
		lualib:Player_SetCustomVarInt(player, "yang_baoji_jc", 0)
		msg = msg.."#COLORCOLOR_RED#您在【斗战神】处获得的暴击加成资格，被其他玩家取代！#COLOREND#如果你还想继续拥有请速来争夺！\n \n"
		lualib:NPCTalk(player, msg)
		return true
	end
	baoziwang_timer = baoziwang_timer + 1
	lualib:Map_SetCustomVarInt(map, "baoziwang_timer", baoziwang_timer)
	if baoziwang_timer > 179900 then
		lualib:Player_DelBuff(player, ceshi_name)
		lualib:DisableTimer(player, timer_id)
		lualib:Player_SetCustomVarInt(player, "yang_baoji_jc", 0)
	end
	return true
end