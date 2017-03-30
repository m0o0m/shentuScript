local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_map_create(map)
	lualib:AddTrigger(map,  lua_trigger_enter_map, "on_trigger_enter_map")
	lualib:AddTrigger(map,  lua_trigger_add_exp, "on_trigger_add_exp")
	lualib:Debug("镇魔殿副本建创回调！")
	

	if not CMap:Init(map) then return end
	if not CMap:GenNpc() then return end
end

function on_trigger_enter_map(player)
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.镇魔殿总共刷3波高经验怪，吃经验卷轴打会更加划算\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:10>##COLORCOLOR_BROWN#2.组队人数越高，获得的额外经验越多!\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:10>##COLORCOLOR_BROWN#3.第3波怪的BOSS会掉落一个天魔宝匣，能随机开出一些好装备和道具\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:10>##COLORCOLOR_RED#4.你已经领悟了乾坤一掷技能，使用它可快速斩杀镇魔殿与挑战场的怪物！\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:10>##COLORCOLOR_BROWN#5.镇魔殿每天都有3次进入机会，别错过了哟^_^#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 410)
	
	 timerdid = lualib:GenTimerId(player)
	--[[
	if not lualib:AddTimerEx(player, timerdid, 5000, -1, "huidiao", "") then
		lualib:Error("DelayCall添加失败！")
	end]]
	
--[[	if not lualib:DelayCall(player, 5000, "huidiao", "") then
			lualib:Error("DelayCall添加失败！")
	end]]
	
    return true
end


function on_trigger_add_exp(player, exp)
	local map = lualib:MapGuid(player)
	--local x = lualib:X(player)
	--local y = lualib:Y(player)
	local exp_1 = tonumber(exp)
	--local player_table =  lualib:Map_GetRegionPlayers(map, x, y, 50, true)
	
	local playerList = 0
	

	local rennum = 1
	if lualib:Player_HasTeam(player) == true then
		playerList = lualib:Player_GetTeamList(player)
		if #playerList > 1 then
			for i = 1, #playerList do
				local player_map = lualib:MapGuid(playerList[i])
				if player_map == map then
					rennum = rennum + 1
				end
			end
			rennum = rennum - 1
		end
	end
	
	local teamexp = math.floor((rennum - 1) / 2  * exp_1)
	
	if rennum > 1 then
		lualib:SysMsg_SendTipsMsg(player, "组队获得额外经验:")
		lualib:Player_AddExp(player, teamexp, "额外经验", player)
	end
    return true
end

function huidiao(player, timer_id)
	local map = lualib:MapGuid(player)
	local map_name = lualib:KeyName(map)
	if map_name == "镇魔殿" then
		local teamguid = lualib:Player_GetTeamGuid(player)
		if teamguid == "" then
			lualib:Player_MapMoveXY(player, "龙城", 236, 230, 1)
			lualib:MsgBox(player, "由于你没有队伍的庇护，被镇魔殿强大的魔力给震了出去！")
			lualib:SysMsg_SendTriggerMsg(player, "由于你没有队伍的庇护，被镇魔殿强大的魔力给震了出去！")
			if not lualib:DisableTimer(player, tonumber(timer_id)) then
				lualib:Error("定时器清除失败！")
			end
		end
	else
		return
	end
	

end


function on_timer_ia(map, timer_id)
	CMap:OnAi(map)
end

function on_timer_destroy(map, timer_id)
	lualib:ClearTrigger(map)
	CMap:Destroy(map)
end

function on_timer_end(map, timer_id)
	CMap:End(map, timer_id)
end

CMap =
{
	name_ = "镇魔殿",
	guid_ = "",
	npc_info_ = {
					name = "镇魔殿传送人场内",
					x = 63,
					y = 67,
				},
	var_npc_ = "var_dgn_guid",
	var_t_ = 	{
					"gen_monster_flag_1",
					"gen_monster_flag_2",
					"gen_monster_flag_3",
					"gen_monster_flag_4",
					"gen_monster_flag_5",
					"gen_monster_flag_6",
					"gen_monster_flag_7",
					"gen_monster_flag_8",
					"gen_monster_flag_9",
					"gen_monster_flag_10",
					"gen_monster_flag_11",
				},
	monster_t_ = {
					{--第一波小怪
						east = {
									{
										{"镇魔红面牛魔1", 16},
										{"镇魔黑面牛魔1", 10},
										{"镇魔牛魔守卫1", 14},
										{"镇魔牛魔勇士1", 10},
									},
									{
										{"镇魔红面牛魔2", 16},
										{"镇魔黑面牛魔2", 10},
										{"镇魔牛魔守卫2", 14},
										{"镇魔牛魔勇士2", 10},
									},
									{
										{"镇魔红面牛魔3", 16},
										{"镇魔黑面牛魔3", 10},
										{"镇魔牛魔守卫3", 14},
										{"镇魔牛魔勇士3", 10},
									},
									{
										{"镇魔红面牛魔4", 16},
										{"镇魔黑面牛魔4", 10},
										{"镇魔牛魔守卫4", 14},
										{"镇魔牛魔勇士4", 10},
									},
									{
										{"镇魔红面牛魔5", 16},
										{"镇魔黑面牛魔5", 10},
										{"镇魔牛魔守卫5", 14},
										{"镇魔牛魔勇士5", 10},
									},
									{
										{"镇魔红面牛魔6", 16},
										{"镇魔黑面牛魔6", 10},
										{"镇魔牛魔守卫6", 14},
										{"镇魔牛魔勇士6", 10},
									},
									{
										{"镇魔红面牛魔7", 16},
										{"镇魔黑面牛魔7", 10},
										{"镇魔牛魔守卫7", 14},
										{"镇魔牛魔勇士7", 10},
									},
									{
										{"镇魔红面牛魔8", 16},
										{"镇魔黑面牛魔8", 10},
										{"镇魔牛魔守卫8", 14},
										{"镇魔牛魔勇士8", 10},
									},
									{
										{"镇魔红面牛魔9", 16},
										{"镇魔黑面牛魔9", 10},
										{"镇魔牛魔守卫9", 14},
										{"镇魔牛魔勇士9", 10},
									},
									{
										{"镇魔红面牛魔10", 16},
										{"镇魔黑面牛魔10", 10},
										{"镇魔牛魔守卫10", 14},
										{"镇魔牛魔勇士10", 10},
									},
									{
										{"镇魔红面牛魔11", 16},
										{"镇魔黑面牛魔11", 10},
										{"镇魔牛魔守卫11", 14},
										{"镇魔牛魔勇士11", 10},
									},
							   },
						south = {
									{
										{"镇魔红面牛魔1", 14},
										{"镇魔黑面牛魔1", 10},
										{"镇魔牛魔守卫1", 16},
										{"镇魔牛魔勇士1", 10},
										{"镇魔牛魔将军1", 1},
									},
									{
										{"镇魔红面牛魔2", 14},
										{"镇魔黑面牛魔2", 10},
										{"镇魔牛魔守卫2", 16},
										{"镇魔牛魔勇士2", 10},
										{"镇魔牛魔将军2", 1},
									},
									{
										{"镇魔红面牛魔3", 14},
										{"镇魔黑面牛魔3", 10},
										{"镇魔牛魔守卫3", 16},
										{"镇魔牛魔勇士3", 10},
										{"镇魔牛魔将军3", 1},
									},
									{
										{"镇魔红面牛魔4", 14},
										{"镇魔黑面牛魔4", 10},
										{"镇魔牛魔守卫4", 16},
										{"镇魔牛魔勇士4", 10},
										{"镇魔牛魔将军4", 1},
									},
									{
										{"镇魔红面牛魔5", 14},
										{"镇魔黑面牛魔5", 10},
										{"镇魔牛魔守卫5", 16},
										{"镇魔牛魔勇士5", 10},
										{"镇魔牛魔将军5", 1},
									},
									{
										{"镇魔红面牛魔6", 14},
										{"镇魔黑面牛魔6", 10},
										{"镇魔牛魔守卫6", 16},
										{"镇魔牛魔勇士6", 10},
										{"镇魔牛魔将军6", 1},
									},
									{
										{"镇魔红面牛魔7", 14},
										{"镇魔黑面牛魔7", 10},
										{"镇魔牛魔守卫7", 16},
										{"镇魔牛魔勇士7", 10},
										{"镇魔牛魔将军7", 1},
									},
									{
										{"镇魔红面牛魔8", 14},
										{"镇魔黑面牛魔8", 10},
										{"镇魔牛魔守卫8", 16},
										{"镇魔牛魔勇士8", 10},
										{"镇魔牛魔将军8", 1},
									},
									{
										{"镇魔红面牛魔9", 14},
										{"镇魔黑面牛魔9", 10},
										{"镇魔牛魔守卫9", 16},
										{"镇魔牛魔勇士9", 10},
										{"镇魔牛魔将军9", 1},
									},
									{
										{"镇魔红面牛魔10", 14},
										{"镇魔黑面牛魔10", 10},
										{"镇魔牛魔守卫10", 16},
										{"镇魔牛魔勇士10", 10},
										{"镇魔牛魔将军10", 1},
									},
									{
										{"镇魔红面牛魔11", 14},
										{"镇魔黑面牛魔11", 10},
										{"镇魔牛魔守卫11", 16},
										{"镇魔牛魔勇士11", 10},
										{"镇魔牛魔将军11", 1},
									},
								},
						west = {
									{
										{"镇魔红面牛魔1", 16},
										{"镇魔黑面牛魔1", 10},
										{"镇魔牛魔守卫1", 14},
										{"镇魔牛魔勇士1", 10},
									},
									{
										{"镇魔红面牛魔2", 16},
										{"镇魔黑面牛魔2", 10},
										{"镇魔牛魔守卫2", 14},
										{"镇魔牛魔勇士2", 10},
									},
									{
										{"镇魔红面牛魔3", 16},
										{"镇魔黑面牛魔3", 10},
										{"镇魔牛魔守卫3", 14},
										{"镇魔牛魔勇士3", 10},
									},
									{
										{"镇魔红面牛魔4", 16},
										{"镇魔黑面牛魔4", 10},
										{"镇魔牛魔守卫4", 14},
										{"镇魔牛魔勇士4", 10},
									},
									{
										{"镇魔红面牛魔5", 16},
										{"镇魔黑面牛魔5", 10},
										{"镇魔牛魔守卫5", 14},
										{"镇魔牛魔勇士5", 10},
									},
									{
										{"镇魔红面牛魔6", 16},
										{"镇魔黑面牛魔6", 10},
										{"镇魔牛魔守卫6", 14},
										{"镇魔牛魔勇士6", 10},
									},
									{
										{"镇魔红面牛魔7", 16},
										{"镇魔黑面牛魔7", 10},
										{"镇魔牛魔守卫7", 14},
										{"镇魔牛魔勇士7", 10},
									},
									{
										{"镇魔红面牛魔8", 16},
										{"镇魔黑面牛魔8", 10},
										{"镇魔牛魔守卫8", 14},
										{"镇魔牛魔勇士8", 10},
									},
									{
										{"镇魔红面牛魔9", 16},
										{"镇魔黑面牛魔9", 10},
										{"镇魔牛魔守卫9", 14},
										{"镇魔牛魔勇士9", 10},
									},
									{
										{"镇魔红面牛魔10", 16},
										{"镇魔黑面牛魔10", 10},
										{"镇魔牛魔守卫10", 14},
										{"镇魔牛魔勇士10", 10},
									},
									{
										{"镇魔红面牛魔11", 16},
										{"镇魔黑面牛魔11", 10},
										{"镇魔牛魔守卫11", 14},
										{"镇魔牛魔勇士11", 10},
									},
							   },
						north = {
									{
										{"镇魔红面牛魔1", 14},
										{"镇魔黑面牛魔1", 14},
										{"镇魔牛魔守卫1", 16},
										{"镇魔牛魔勇士1", 14},
									},
									{
										{"镇魔红面牛魔2", 14},
										{"镇魔黑面牛魔2", 14},
										{"镇魔牛魔守卫2", 16},
										{"镇魔牛魔勇士2", 14},
									},
									{
										{"镇魔红面牛魔3", 14},
										{"镇魔黑面牛魔3", 14},
										{"镇魔牛魔守卫3", 16},
										{"镇魔牛魔勇士3", 14},
									},
									{
										{"镇魔红面牛魔4", 14},
										{"镇魔黑面牛魔4", 14},
										{"镇魔牛魔守卫4", 16},
										{"镇魔牛魔勇士4", 14},
									},
									{
										{"镇魔红面牛魔5", 14},
										{"镇魔黑面牛魔5", 14},
										{"镇魔牛魔守卫5", 16},
										{"镇魔牛魔勇士5", 14},
									},
									{
										{"镇魔红面牛魔6", 14},
										{"镇魔黑面牛魔6", 14},
										{"镇魔牛魔守卫6", 16},
										{"镇魔牛魔勇士6", 14},
									},
									{
										{"镇魔红面牛魔7", 14},
										{"镇魔黑面牛魔7", 14},
										{"镇魔牛魔守卫7", 16},
										{"镇魔牛魔勇士7", 14},
									},
									{
										{"镇魔红面牛魔8", 14},
										{"镇魔黑面牛魔8", 14},
										{"镇魔牛魔守卫8", 16},
										{"镇魔牛魔勇士8", 14},
									},
									{
										{"镇魔红面牛魔9", 14},
										{"镇魔黑面牛魔9", 14},
										{"镇魔牛魔守卫9", 16},
										{"镇魔牛魔勇士9", 14},
									},
									{
										{"镇魔红面牛魔10", 14},
										{"镇魔黑面牛魔10", 14},
										{"镇魔牛魔守卫10", 16},
										{"镇魔牛魔勇士10", 14},
									},
									{
										{"镇魔红面牛魔11", 14},
										{"镇魔黑面牛魔11", 14},
										{"镇魔牛魔守卫11", 16},
										{"镇魔牛魔勇士11", 14},
									},
								},
					},
					{--第二波小怪
						east = {
									{
										{"镇魔刀奴1", 20},
										{"镇魔古怪刀客1", 20},
										{"镇魔鬼面刀手1", 20},
										{"镇魔风魔1", 12},
									},
									{
										{"镇魔刀奴2", 20},
										{"镇魔古怪刀客2", 20},
										{"镇魔鬼面刀手2", 20},
										{"镇魔风魔2", 12},
									},
									{
										{"镇魔刀奴3", 20},
										{"镇魔古怪刀客3", 20},
										{"镇魔鬼面刀手3", 20},
										{"镇魔风魔3", 12},
									},
									{
										{"镇魔刀奴4", 20},
										{"镇魔古怪刀客4", 20},
										{"镇魔鬼面刀手4", 20},
										{"镇魔风魔4", 12},
									},
									{
										{"镇魔刀奴5", 20},
										{"镇魔古怪刀客5", 20},
										{"镇魔鬼面刀手5", 20},
										{"镇魔风魔5", 12},
									},
									{
										{"镇魔刀奴6", 20},
										{"镇魔古怪刀客6", 20},
										{"镇魔鬼面刀手6", 20},
										{"镇魔风魔6", 12},
									},
									{
										{"镇魔刀奴7", 20},
										{"镇魔古怪刀客7", 20},
										{"镇魔鬼面刀手7", 20},
										{"镇魔风魔7", 12},
									},
									{
										{"镇魔刀奴8", 20},
										{"镇魔古怪刀客8", 20},
										{"镇魔鬼面刀手8", 20},
										{"镇魔风魔8", 12},
									},
									{
										{"镇魔刀奴9", 20},
										{"镇魔古怪刀客9", 20},
										{"镇魔鬼面刀手9", 20},
										{"镇魔风魔9", 12},
									},
									{
										{"镇魔刀奴10", 20},
										{"镇魔古怪刀客10", 20},
										{"镇魔鬼面刀手10", 20},
										{"镇魔风魔10", 12},
									},
									{
										{"镇魔刀奴11", 20},
										{"镇魔古怪刀客11", 20},
										{"镇魔鬼面刀手11", 20},
										{"镇魔风魔11", 12},
									},
							   },
						south = {
									{
										{"镇魔血禅师1", 1},
										{"镇魔刀奴1", 20},
										{"镇魔古怪刀客1", 20},
										{"镇魔鬼面刀手1", 20},
										{"镇魔风魔1", 12},
									},
									{
										{"镇魔血禅师2", 1},
										{"镇魔刀奴2", 20},
										{"镇魔古怪刀客2", 20},
										{"镇魔鬼面刀手2", 20},
										{"镇魔风魔2", 12},

									},
									{
										{"镇魔血禅师3", 1},
										{"镇魔刀奴3", 20},
										{"镇魔古怪刀客3", 20},
										{"镇魔鬼面刀手3", 20},
										{"镇魔风魔3", 12},

									},
									{
										{"镇魔血禅师4", 1},
										{"镇魔刀奴4", 20},
										{"镇魔古怪刀客4", 20},
										{"镇魔鬼面刀手4", 20},
										{"镇魔风魔4", 12},

									},
									{
										{"镇魔血禅师5", 1},
										{"镇魔刀奴5", 20},
										{"镇魔古怪刀客5", 20},
										{"镇魔鬼面刀手5", 20},
										{"镇魔风魔5", 12},

									},
									{
										{"镇魔血禅师6", 1},
										{"镇魔刀奴6", 20},
										{"镇魔古怪刀客6", 20},
										{"镇魔鬼面刀手6", 20},
										{"镇魔风魔6", 12},

									},
									{
										{"镇魔血禅师7", 1},
										{"镇魔刀奴7", 20},
										{"镇魔古怪刀客7", 20},
										{"镇魔鬼面刀手7", 20},
										{"镇魔风魔7", 12},

									},
									{
										{"镇魔血禅师8", 1},
										{"镇魔刀奴8", 20},
										{"镇魔古怪刀客8", 20},
										{"镇魔鬼面刀手8", 20},
										{"镇魔风魔8", 12},

									},
									{
										{"镇魔血禅师9", 1},
										{"镇魔刀奴9", 20},
										{"镇魔古怪刀客9", 20},
										{"镇魔鬼面刀手9", 20},
										{"镇魔风魔9", 12},

									},
									{
										{"镇魔血禅师10", 1},
										{"镇魔刀奴10", 20},
										{"镇魔古怪刀客10", 20},
										{"镇魔鬼面刀手10", 20},
										{"镇魔风魔10", 12},

									},
									{
										{"镇魔血禅师11", 1},
										{"镇魔刀奴11", 20},
										{"镇魔古怪刀客11", 20},
										{"镇魔鬼面刀手11", 20},
										{"镇魔风魔11", 12},
									},
								},
						west = {
									{
										{"镇魔刀奴1", 20},
										{"镇魔古怪刀客1", 20},
										{"镇魔鬼面刀手1", 20},
										{"镇魔风魔1", 12},
									},
									{
										{"镇魔刀奴2", 20},
										{"镇魔古怪刀客2", 20},
										{"镇魔鬼面刀手2", 20},
										{"镇魔风魔2", 12},
									},
									{
										{"镇魔刀奴3", 20},
										{"镇魔古怪刀客3", 20},
										{"镇魔鬼面刀手3", 20},
										{"镇魔风魔3", 12},
									},
									{
										{"镇魔刀奴4", 20},
										{"镇魔古怪刀客4", 20},
										{"镇魔鬼面刀手4", 20},
										{"镇魔风魔4", 12},
									},
									{
										{"镇魔刀奴5", 20},
										{"镇魔古怪刀客5", 20},
										{"镇魔鬼面刀手5", 20},
										{"镇魔风魔5", 12},
									},
									{
										{"镇魔刀奴6", 20},
										{"镇魔古怪刀客6", 20},
										{"镇魔鬼面刀手6", 20},
										{"镇魔风魔6", 12},
									},
									{
										{"镇魔刀奴7", 20},
										{"镇魔古怪刀客7", 20},
										{"镇魔鬼面刀手7", 20},
										{"镇魔风魔7", 12},
									},
									{
										{"镇魔刀奴8", 20},
										{"镇魔古怪刀客8", 20},
										{"镇魔鬼面刀手8", 20},
										{"镇魔风魔8", 12},
									},
									{
										{"镇魔刀奴9", 20},
										{"镇魔古怪刀客9", 20},
										{"镇魔鬼面刀手9", 20},
										{"镇魔风魔9", 12},
									},
									{
										{"镇魔刀奴10", 20},
										{"镇魔古怪刀客10", 20},
										{"镇魔鬼面刀手10", 20},
										{"镇魔风魔10", 12},
									},
									{
										{"镇魔刀奴11", 20},
										{"镇魔古怪刀客11", 20},
										{"镇魔鬼面刀手11", 20},
										{"镇魔风魔11", 12},
									},
							   },
						north = {
									{
										{"镇魔刀奴1", 20},
										{"镇魔古怪刀客1", 20},
										{"镇魔鬼面刀手1", 20},
										{"镇魔风魔1", 12},
									},
									{
										{"镇魔刀奴2", 20},
										{"镇魔古怪刀客2", 20},
										{"镇魔鬼面刀手2", 20},
										{"镇魔风魔2", 12},
									},
									{
										{"镇魔刀奴3", 20},
										{"镇魔古怪刀客3", 20},
										{"镇魔鬼面刀手3", 20},
										{"镇魔风魔3", 12},
									},
									{
										{"镇魔刀奴4", 20},
										{"镇魔古怪刀客4", 20},
										{"镇魔鬼面刀手4", 20},
										{"镇魔风魔4", 12},
									},
									{
										{"镇魔刀奴5", 20},
										{"镇魔古怪刀客5", 20},
										{"镇魔鬼面刀手5", 20},
										{"镇魔风魔5", 12},
									},
									{
										{"镇魔刀奴6", 20},
										{"镇魔古怪刀客6", 20},
										{"镇魔鬼面刀手6", 20},
										{"镇魔风魔6", 12},
									},
									{
										{"镇魔刀奴7", 20},
										{"镇魔古怪刀客7", 20},
										{"镇魔鬼面刀手7", 20},
										{"镇魔风魔7", 12},
									},
									{
										{"镇魔刀奴8", 20},
										{"镇魔古怪刀客8", 20},
										{"镇魔鬼面刀手8", 20},
										{"镇魔风魔8", 12},
									},
									{
										{"镇魔刀奴9", 20},
										{"镇魔古怪刀客9", 20},
										{"镇魔鬼面刀手9", 20},
										{"镇魔风魔9", 12},
									},
									{
										{"镇魔刀奴10", 20},
										{"镇魔古怪刀客10", 20},
										{"镇魔鬼面刀手10", 20},
										{"镇魔风魔10", 12},
									},
									{
										{"镇魔刀奴11", 20},
										{"镇魔古怪刀客11", 20},
										{"镇魔鬼面刀手11", 20},
										{"镇魔风魔11", 12},
									},
								},
					},
					{--第三波小怪
						east = {
									{
										{"镇魔梵天僧1", 1},
										{"镇魔天原猛士1", 20},
										{"镇魔天原勇士1", 20},
										{"镇魔天原死士1", 20},
										{"镇魔黑暗刺客1", 8},
									},
									{
										{"镇魔梵天僧2", 1},
										{"镇魔天原猛士2", 20},
										{"镇魔天原勇士2", 20},
										{"镇魔天原死士2", 20},
										{"镇魔黑暗刺客2", 8},
									},
									{
										{"镇魔梵天僧3", 1},
										{"镇魔天原猛士3", 20},
										{"镇魔天原勇士3", 20},
										{"镇魔天原死士3", 20},
										{"镇魔黑暗刺客3", 8},
									},
									{
										{"镇魔梵天僧4", 1},
										{"镇魔天原猛士4", 20},
										{"镇魔天原勇士4", 20},
										{"镇魔天原死士4", 20},
										{"镇魔黑暗刺客4", 8},
									},
									{
										{"镇魔梵天僧5", 1},
										{"镇魔天原猛士5", 20},
										{"镇魔天原勇士5", 20},
										{"镇魔天原死士5", 20},
										{"镇魔黑暗刺客5", 8},
									},
									{
										{"镇魔梵天僧6", 1},
										{"镇魔天原猛士6", 20},
										{"镇魔天原勇士6", 20},
										{"镇魔天原死士6", 20},
										{"镇魔黑暗刺客6", 8},
									},
									{
										{"镇魔梵天僧7", 1},
										{"镇魔天原猛士7", 20},
										{"镇魔天原勇士7", 20},
										{"镇魔天原死士7", 20},
										{"镇魔黑暗刺客7", 8},
									},
									{
										{"镇魔梵天僧8", 1},
										{"镇魔天原猛士8", 20},
										{"镇魔天原勇士8", 20},
										{"镇魔天原死士8", 20},
										{"镇魔黑暗刺客8", 8},
									},
									{
										{"镇魔梵天僧9", 1},
										{"镇魔天原猛士9", 20},
										{"镇魔天原勇士9", 20},
										{"镇魔天原死士9", 20},
										{"镇魔黑暗刺客9", 8},
									},
									{
										{"镇魔梵天僧10", 1},
										{"镇魔天原猛士10", 20},
										{"镇魔天原勇士10", 20},
										{"镇魔天原死士10", 20},
										{"镇魔黑暗刺客10", 8},
									},
									{
										{"镇魔梵天僧11", 1},
										{"镇魔天原猛士11", 20},
										{"镇魔天原勇士11", 20},
										{"镇魔天原死士11", 20},
										{"镇魔黑暗刺客11", 8},
									},
							   },
						south = {
									{
										{"镇魔天原猛士1", 20},
										{"镇魔天原勇士1", 20},
										{"镇魔天原死士1", 20},
										{"镇魔黑暗刺客1", 8},
									},
									{
										{"镇魔天原猛士2", 20},
										{"镇魔天原勇士2", 20},
										{"镇魔天原死士2", 20},
										{"镇魔黑暗刺客2", 8},
									},
									{
										{"镇魔天原猛士3", 20},
										{"镇魔天原勇士3", 20},
										{"镇魔天原死士3", 20},
										{"镇魔黑暗刺客3", 8},
									},
									{
										{"镇魔天原猛士4", 20},
										{"镇魔天原勇士4", 20},
										{"镇魔天原死士4", 20},
										{"镇魔黑暗刺客4", 8},
									},
									{
										{"镇魔天原猛士5", 20},
										{"镇魔天原勇士5", 20},
										{"镇魔天原死士5", 20},
										{"镇魔黑暗刺客5", 8},
									},
									{
										{"镇魔天原猛士6", 20},
										{"镇魔天原勇士6", 20},
										{"镇魔天原死士6", 20},
										{"镇魔黑暗刺客6", 8},
									},
									{
										{"镇魔天原猛士7", 20},
										{"镇魔天原勇士7", 20},
										{"镇魔天原死士7", 20},
										{"镇魔黑暗刺客7", 8},
									},
									{
										{"镇魔天原猛士8", 20},
										{"镇魔天原勇士8", 20},
										{"镇魔天原死士8", 20},
										{"镇魔黑暗刺客8", 8},
									},
									{
										{"镇魔天原猛士9", 20},
										{"镇魔天原勇士9", 20},
										{"镇魔天原死士9", 20},
										{"镇魔黑暗刺客9", 8},
									},
									{
										{"镇魔天原猛士10", 20},
										{"镇魔天原勇士10", 20},
										{"镇魔天原死士10", 20},
										{"镇魔黑暗刺客10", 8},
									},
									{
										{"镇魔天原猛士11", 20},
										{"镇魔天原勇士11", 20},
										{"镇魔天原死士11", 20},
										{"镇魔黑暗刺客11", 8},
									},
								},
						west = {
									{
										{"镇魔天原猛士1", 20},
										{"镇魔天原勇士1", 20},
										{"镇魔天原死士1", 20},
										{"镇魔黑暗刺客1", 8},
									},
									{
										{"镇魔天原猛士2", 20},
										{"镇魔天原勇士2", 20},
										{"镇魔天原死士2", 20},
										{"镇魔黑暗刺客2", 8},
									},
									{
										{"镇魔天原猛士3", 20},
										{"镇魔天原勇士3", 20},
										{"镇魔天原死士3", 20},
										{"镇魔黑暗刺客3", 8},
									},
									{
										{"镇魔天原猛士4", 20},
										{"镇魔天原勇士4", 20},
										{"镇魔天原死士4", 20},
										{"镇魔黑暗刺客4", 8},
									},
									{
										{"镇魔天原猛士5", 20},
										{"镇魔天原勇士5", 20},
										{"镇魔天原死士5", 20},
										{"镇魔黑暗刺客5", 8},
									},
									{
										{"镇魔天原猛士6", 20},
										{"镇魔天原勇士6", 20},
										{"镇魔天原死士6", 20},
										{"镇魔黑暗刺客6", 8},
									},
									{
										{"镇魔天原猛士7", 20},
										{"镇魔天原勇士7", 20},
										{"镇魔天原死士7", 20},
										{"镇魔黑暗刺客7", 8},
									},
									{
										{"镇魔天原猛士8", 20},
										{"镇魔天原勇士8", 20},
										{"镇魔天原死士8", 20},
										{"镇魔黑暗刺客8", 8},
									},
									{
										{"镇魔天原猛士9", 20},
										{"镇魔天原勇士9", 20},
										{"镇魔天原死士9", 20},
										{"镇魔黑暗刺客9", 8},
									},
									{
										{"镇魔天原猛士10", 20},
										{"镇魔天原勇士10", 20},
										{"镇魔天原死士10", 20},
										{"镇魔黑暗刺客10", 8},
									},
									{
										{"镇魔天原猛士11", 20},
										{"镇魔天原勇士11", 20},
										{"镇魔天原死士11", 20},
										{"镇魔黑暗刺客11", 8},
									},
								},
						north = {
									{
										{"镇魔天原猛士1", 20},
										{"镇魔天原勇士1", 20},
										{"镇魔天原死士1", 20},
										{"镇魔黑暗刺客1", 8},
									},
									{
										{"镇魔天原猛士2", 20},
										{"镇魔天原勇士2", 20},
										{"镇魔天原死士2", 20},
										{"镇魔黑暗刺客2", 8},
									},
									{
										{"镇魔天原猛士3", 20},
										{"镇魔天原勇士3", 20},
										{"镇魔天原死士3", 20},
										{"镇魔黑暗刺客3", 8},
									},
									{
										{"镇魔天原猛士4", 20},
										{"镇魔天原勇士4", 20},
										{"镇魔天原死士4", 20},
										{"镇魔黑暗刺客4", 8},
									},
									{
										{"镇魔天原猛士5", 20},
										{"镇魔天原勇士5", 20},
										{"镇魔天原死士5", 20},
										{"镇魔黑暗刺客5", 8},
									},
									{
										{"镇魔天原猛士6", 20},
										{"镇魔天原勇士6", 20},
										{"镇魔天原死士6", 20},
										{"镇魔黑暗刺客6", 8},
									},
									{
										{"镇魔天原猛士7", 20},
										{"镇魔天原勇士7", 20},
										{"镇魔天原死士7", 20},
										{"镇魔黑暗刺客7", 8},
									},
									{
										{"镇魔天原猛士8", 20},
										{"镇魔天原勇士8", 20},
										{"镇魔天原死士8", 20},
										{"镇魔黑暗刺客8", 8},
									},
									{
										{"镇魔天原猛士9", 20},
										{"镇魔天原勇士9", 20},
										{"镇魔天原死士9", 20},
										{"镇魔黑暗刺客9", 8},
									},
									{
										{"镇魔天原猛士10", 20},
										{"镇魔天原勇士10", 20},
										{"镇魔天原死士10", 20},
										{"镇魔黑暗刺客10", 8},
									},
									{
										{"镇魔天原猛士11", 20},
										{"镇魔天原勇士11", 20},
										{"镇魔天原死士11", 20},
										{"镇魔黑暗刺客11", 8},
									},
								},
					},
				},

	pos_t_ = {
						east = {46, 47},
						south = {79, 48},
						west = {78, 80},
						north = {49, 79},
			},
	cur_var_ = "cur_step",
	var_award_ = "zmdfb_var_award",
	--step_timer_ = {{300000, 5}, {480000, 8}, {720000, 12}},
	end_timer_ = {{1500000, 105}, {1560000, 104}, {1620000, 103}, {1680000, 102}, {1740000, 101}},
	level_t_ = {28, 33, 36, 39, 42, 45, 48, 51, 54, 57, 60, 201},
	var_timer_declare_ = "var_timer_declare",
	var_cur_declare_ = "var_cur_declare",
}

function CMap:Init(guid)
	self.guid_ = guid

	for i = 2, #self.var_t_ do
		lualib:Map_SetCustomVarInt(self.guid_, self.var_t_[i], 1)
	end

	if not lualib:AddTimer(guid, 1, 1000, -1, "on_timer_ia") then
		lualib:Error("镇魔殿副本添加AI定时器失败！")
		return false
	end

	lualib:Debug("镇魔殿副本添加AI定时器成功！")

	for _, v in pairs(self.end_timer_) do
		if not lualib:AddTimer(guid, v[2], v[1], 1, "on_timer_end") then
			lualib:Error("镇魔殿副本添加结束通知定时器失败！")
			return false
		end
	end
	lualib:Debug("镇魔殿副本添加结束通知定时器成功！")

	return true
end

function CMap:GenNpc(void)
	local npc = lualib:Map_GenNpc(self.guid_, self.npc_info_.name,
						 self.npc_info_.x, self.npc_info_.y, 0, 3)
	if "" == npc then
		lualib:Error("镇魔殿副本刷新场内NPC失败！")
		return false
	end
	lualib:Debug("镇魔殿副本刷新场内NPC成功！")

	lualib:Npc_SetCustomVar(npc, self.var_npc_, self.guid_)
	return true
end

function CMap:OnAi(map)
	self.guid_ = map

	local cur = lualib:Map_GetCustomVarInt(self.guid_, self.cur_var_)
	if cur == 0 then return end

	local second_declare = lualib:Map_GetCustomVarInt(self.guid_, self.var_timer_declare_)
	second_declare = second_declare + 1
	lualib:Map_SetCustomVarInt(self.guid_, self.var_timer_declare_, second_declare)

	local flag = lualib:Map_GetCustomVarInt(self.guid_, self.var_t_[cur])
	if flag == 2 then
		local monster_count = lualib:Map_GetMonsterCount(self.guid_, "", true, true)
		if monster_count < 10 and monster_count >= 1 then
			if lualib:Map_GetCustomVarInt(self.guid_, self.var_cur_declare_) ~= monster_count then
				local minute = math.floor((1800 - second_declare) / 60)
				local second = lualib:Mod((1800 - second_declare), 60)
				lualib:SysMsg_SendMapMsg(map, "剩余怪物数量"..monster_count.."个，镇魔殿关闭剩余时间"..minute.."分"..second.."秒！")
				lualib:Map_SetCustomVarInt(self.guid_, self.var_cur_declare_, monster_count)
			end
		elseif 0 == monster_count then
			if cur < #self.var_t_ then
				if 0 ~= lualib:Map_GetCustomVarInt(self.guid_, self.var_t_[cur + 1]) then
					lualib:SysMsg_SendMapMsg(map, "第"..cur.."波小怪已清理干净，你能进行下一关了！")
					lualib:Map_SetCustomVarInt(self.guid_, self.var_t_[cur + 1], 0)
					--lualib:DisableTimer(self.guid_, self.step_timer_[cur][2])
				end
			else
				lualib:SysMsg_SendMapMsg(map, "镇魔殿挑战完成，你可以领取奖励了！")
				--lualib:DisableTimer(self.guid_, self.step_timer_[cur][2])
				lualib:DisableTimer(self.guid_, 1)

				local map_width = lualib:Map_GetWidth(map)
				local map_height = lualib:Map_GetHeight(map)
				if map_width < map_height then map_width = map_height end
				local players = lualib:Map_GetRegionPlayers(map, 0, 0, map_width, true)
				if players == nil or #players == 0 then return end

				for _, v in pairs(players) do
					lualib:Player_SetCustomVarInt(v, self.var_award_, 1)
				end
			end
		end
		return
	end

	if self.monster_t_[cur] == nil then return end

	local map_width = lualib:Map_GetWidth(map)
	local map_height = lualib:Map_GetHeight(map)
	if map_width < map_height then map_width = map_height end
	local players = lualib:Map_GetRegionPlayers(map, 0, 0, map_width, true)
	if players == nil or #players == 0 then return end

	local level = 0
	for _, v in pairs(players) do
		level = level + lualib:Player_GetIntProp(v,  lua_role_level)
	end
	level = math.floor(level / #players)

	local cur_level_t = 0
	for k, v in pairs(self.level_t_) do
		if level < v then
			cur_level_t = k - 1
			break
		end
	end
	if cur_level_t == 0 then return end

	local path = {61, 67}
	for k, v in pairs(self.monster_t_[cur]) do
		for _k, _v in pairs(v[cur_level_t]) do
			for i = 1, _v[2] do
				local monster = lualib:Map_GenSingleMonster(self.guid_, self.pos_t_[k][1],
								self.pos_t_[k][2], 8, lualib:GenRandom(0, 7), _v[1], false)
				if monster ~= "" then
					lualib:Monster_SetSeeker(monster, path, 0, false)
				end
			end
		end
	end

	lualib:Map_SetCustomVarInt(self.guid_, self.var_t_[cur], 2)
	lualib:SysMsg_SendMapMsg(map, "第"..cur.."波小怪已刷新，杀光小怪后才能继续下一关！")

	--[[
	if not lualib:AddTimer(self.guid_, self.step_timer_[cur][2],
					self.step_timer_[cur][1], 1, "on_timer_destroy") then
		lualib:Error("镇魔殿通关倒计时定时器添加失败！")
		return
	end
	lualib:Debug("镇魔殿通关倒计时定时器添加成功！")

	lualib:SysMsg_SendMapMsg(self.guid_, "闯关开始，限时"..self.step_timer_[cur][2].."分钟，如果闯关失败镇魔殿将被妖魔占领！")
	]]

end

function CMap:Destroy(map)
	self.guid_ = map
	lualib:SysMsg_SendMapMsg(map, "闯关失败，镇魔殿已被妖魔占领！")
	lualib:Map_DestroyDgn(map)
end

function CMap:End(map, timer_id)
	self.guid_ = map
	timer_id = timer_id - 100
	lualib:SysMsg_SendMapMsg(map, "镇魔殿还有"..timer_id.."分钟就要关闭了，请各位勇士抓紧时间！")
end

