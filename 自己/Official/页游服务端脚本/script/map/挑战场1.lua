local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/log_action")

local monster_table =
{
	[1] = {
    {"骷髅战士1",		50},
    {"飞刀骷髅1",		50},
    {"单刀骷髅1",		50},
    {"骷髅战士1",		50},
    {"大斧骷髅1",		50},
    {"副本骷髅王",			1}, --boss
	},
	
	[2] = {
    {"红面牛魔1",		50},
    {"黑面牛魔1",		50},
    {"牛魔守卫1",		50},
    {"挑战场牛魔将军",		1}, --boss
	},
	
	[3] = {
    {"尸奴1",			30},
    {"妖面监工1",		30},
    {"鬼面监工1",		30},
    {"掘铲尸奴1",		30},
    {"铁镐尸奴1",		30},
    {"尸奴工头1",		30},
    {"挑战场千年树魔",		1}, --boss
	},
}

local time_talbe = 
	{
		{1, 3000, 1, "maptalk"},
		{2, 600000, 1, "maptalk"},  --10分钟警告
		{3, 1200000, 1, "maptalk"},  --20分钟警告
		{4, 1740000, 1, "maptalk"},	 ----29分钟警告
		{5, 1791000, 1, "maptalk"},	 ----最后9秒
		{6, 1792000, 1, "maptalk"},	 ----最后8秒
		{7, 1793000, 1, "maptalk"},	 ----最后7秒
		{8, 1794000, 1, "maptalk"},	 ----最后6秒
		{9, 1795000, 1, "maptalk"},	 ----最后5秒
		{10, 1796000, 1, "maptalk"},	 ----最后4秒
		{11, 1797000, 1, "maptalk"},	 ----最后3秒
		{12, 1798000, 1, "maptalk"},	 ----最后2秒
		{13, 1799000, 1, "maptalk"},	 ----最后1秒
		{14, 1800000, 1, "destroy"},	 ----最后0秒

	}

	local tzc_maptalk_talbe =
{
	"【[挑战场]】开启！副本总共存在30分钟！请在30分钟内打败所有怪物和BOSS，每打败一波怪和BOSS会刷新下一波，总共三波，看你实力了，加油！",
	"挑战场已经过去10分钟，还有20分钟将销毁，请抓紧时间！",
	"挑战场已经过去20分钟，还有10分钟将销毁，请抓紧时间！",
	"挑战场已经过去29分钟，还有1分钟将销毁，请抓紧时间！",
	"挑战场将在9秒后销毁，请抓紧时间！",
	"挑战场将在8秒后销毁，请抓紧时间！",
	"挑战场将在7秒后销毁，请抓紧时间！",
	"挑战场将在6秒后销毁，请抓紧时间！",
	"挑战场将在5秒后销毁，请抓紧时间！",
	"挑战场将在4秒后销毁，请抓紧时间！",
	"挑战场将在3秒后销毁，请抓紧时间！",
	"挑战场将在2秒后销毁，请抓紧时间！",
	"挑战场将在1秒后销毁，请抓紧时间！"
}

------------------------------------------创建副本时触发---------------------------------------------------
function on_map_create(map)
    lualib:Debug("40级副本地图建创回调！")
	lualib:AddTrigger(map,  lua_trigger_enter_map, "on_trigger_enter_map")
	lualib:AddTrigger(map, lua_trigger_post_die, "on_trigger_post_die")
	local dgn_var = "tls_gen_monster_count"
    local cur_count = lualib:Map_GetCustomVarInt(map, dgn_var) + 1
	shuaguai(map, dgn_var, cur_count)
	
	for i = 1 ,#time_talbe do
		if not lualib:AddTimerEx(map, time_talbe[i][1], time_talbe[i][2], time_talbe[i][3], time_talbe[i][4], "") then
			lualib:Error("定时器添加失败！")
		end 
	end
	
end

function on_trigger_enter_map(player)
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.挑战场每天都能免费进入1次\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.总有3波怪和BOSS，打完一波后会自动刷新下一波!\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.这里的怪物和外面的世界一模一样，产出也一样，看你运气和实力啰^_^#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 310)
    return true
end


------------------------------------------死亡触发---------------------------------------------------
function on_trigger_post_die(actor, killer)

	if lualib:Monster_IsMonster(actor) == false or lualib:Monster_GetMaster(actor) ~= "" then
		return
	end
	
	
	
	
	local map = lualib:MapGuid(actor)
	local x = lualib:X(actor)
	local y = lualib:Y(actor)
	local dgn_var = "tls_gen_monster_count"
    local cur_count = lualib:Map_GetCustomVarInt(map, dgn_var) + 1
	local MapName = lualib:Name(map)
	local exp_canshu = 200
	local player_table =  lualib:Map_GetRegionPlayers(map, x, y, 100, true)
	
	for i = 1, #player_table do
		local lv = lualib:Level(player_table[i])
		lualib:Player_AddExp(player_table[i], exp_canshu * lv, "挑战场额外给经验", actor)
	end
	
	
	
	
	if lualib:Map_GetMonsterCount(map, "", true, true) == 0 and monster_table[cur_count] == nil then
		local map = lualib:Monster_GetMap(actor)
		if map == "" then
			lualib:Print("取得所属地图失败！")
			return
		end

		local pos_x = lualib:Monster_GetPosX(actor)
		local pos_y = lualib:Monster_GetPosY(actor)
		if pos_x == -1 or pos_y == -1 then
			lualib:Print("取得地图坐标失败！")
			return
		end

		if lualib:Map_GenNpc(map, "挑战者场内", pos_x, pos_y, 0, 4) == "" then
			lualib:Print("刷新NPC挑战者场内失败！")
			return 
		end
		
		lualib:Print("刷新NPC挑战者场内成功！")
		--生成npc
		local player_name = lualib:Name(actor)
		--记录自定义log
		lualib:LogWithId(player_name, fun_map_action, "", "", 0, 1, "进入挑战场1", "")
		return
	end
	
	
	if lualib:Map_GetMonsterCount(map, "", true, true) > 0 then
		return
	end
	
    if monster_table[cur_count] == nil then
		return
	end
	
	shuaguai(map, dgn_var, cur_count)
end

function shuaguai(map, dgn_var, cur_count)
	cur_count = tonumber(cur_count)
	
	for i=1,#monster_table[cur_count] do
		if not lualib:Map_BatchGenMonster(map, monster_table[cur_count][i][1], monster_table[cur_count][i][2], false) then --刷怪
			lualib:Error("挑战场1"..monster_table[cur_count][i][1].."刷新失败！")
		else
			lualib:Debug(monster_table[cur_count][i][1].."刷新成功！")
		end
	end
	
	lualib:Map_SetCustomVarInt(map, dgn_var, cur_count)
end

function maptalk(map, tierid)
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002062#74#36#0#99999000")
	if tierid == 1	then		
			for i = 1, 5 do
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[1])
			end
		elseif  tierid == 2 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[2])
		elseif  tierid == 3 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[3])
		elseif  tierid == 4 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[4])
		elseif  tierid == 5 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[5])
		elseif  tierid == 6 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[6])
		elseif  tierid == 7 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[7])
		elseif  tierid == 8 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[8])
		elseif  tierid == 9 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[9])
		elseif  tierid == 10 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[10])
		elseif  tierid == 11 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[11])
		elseif  tierid == 12 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[12])
		elseif  tierid == 13 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[13])
		end
	return true
end


function destroy(map, tierid)
	lualib:ClearTrigger(map)
	lualib:Map_DestroyDgn(map)

end