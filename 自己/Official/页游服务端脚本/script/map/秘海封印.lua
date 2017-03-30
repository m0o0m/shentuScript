local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("map/秘海封印数据")
require("system/logic_def_lua")
require("system/log_action")
require("npc/秘境守护者场外")

local time_talbe = 
	{
		{1, 3000, 1, "maptalk"},
		{2, 4000, 1, "gen_monster"},
		{3, 3500000, 1, "maptalk"},  --10分钟警告
		{4, 3590000, 1, "maptalk"},  --1分钟警告
		{5, 3600000, 1, "destroy"},
		{11, 3590000, 1, "maptalk"},
		{12, 3591000, 1, "maptalk"},
		{13, 3592000, 1, "maptalk"},
		{14, 3593000, 1, "maptalk"},
		{15, 3594000, 1, "maptalk"},
		{16, 3595000, 1, "maptalk"},
		{17, 3596000, 1, "maptalk"},
		{18, 3597000, 1, "maptalk"},
		{19, 3598000, 1, "maptalk"},
		{20, 3599000, 1, "maptalk"},
		{21, 15000, 1, "monster_bron"},
		{22, 60000, 1, "monster_bron"}, --1分钟
		{23, 120000, 1, "monster_bron"}, --2分钟
		{24, 180000, 1, "monster_bron"}, --3分钟
		{25, 210000, 1, "monster_bron"}, --3.5分钟
		{26, 240000, 1, "monster_bron"}, --4分钟
		{27, 270000, 1, "monster_bron"}, --4.5分钟
		{28, 300000, 1, "monster_bron"}, --5分钟
		--{29, 3000, 1000, "pohuai"}, --3秒 检测破坏者和神石距离
	}
	--剑阵说话
local jz_maptalk_talbe =
{
	"【[秘海封印]】开启！守印的勇士，请一定要阻止怪物走出封印！在怪物出现前，你有10秒时间来升级第一批封印卫士",
	"秘海封印将在十分钟后崩塌，请诸位闯阵勇士抓紧时间破阵！",
	"秘海封印将在一分钟后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！",
	"秘海封印将在10秒后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！",
	"秘海封印将在9秒后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！",
	"秘海封印将在8秒后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！",
	"秘海封印将在7秒后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！",
	"秘海封印将在6秒后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！",
	"秘海封印将在5秒后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！",
	"秘海封印将在4秒后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！",
	"秘海封印将在3秒后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！",
	"秘海封印将在2秒后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！",
	"秘海封印将在1秒后崩塌，请诸位闯阵勇士尽快离开，以免遭遇不测！"
}



function on_map_create(map)
    lualib:Debug("秘海封印地图建创回调！")
	for i = 1 ,#time_talbe do
		if not lualib:AddTimerEx(map, time_talbe[i][1], time_talbe[i][2], time_talbe[i][3], time_talbe[i][4], "") then
			lualib:Error("定时器添加失败！")
		end 
	end
	lualib:Map_GenNpc(map, "秘境守护者场内2", 29, 84, 0, 4)
	lualib:AddTimer(map, 29, 10000, -1, "pohuai")
    --添加玩家离开地图的触发器
    lualib:AddTrigger(map,  lua_trigger_enter_map, "on_trigger_enter_map")
	lualib:AddTrigger(map,  lua_trigger_leave_map, "on_trigger_leave_map")
	lualib:AddTrigger(map, lua_trigger_post_die, "on_post_die")
end

function on_map_destroy(map)
	local playerguid = lualib:GetStr(map, "playerguid")
	local L_V = lualib:GetInt(playerguid, "L_V")
    local count = lualib:ItemCountByKey(playerguid, "召唤石", true, true, true, 1)
    if L_V < 35 then
        lualib:DelItem(playerguid, "召唤石", count, 1, "初级秘海封印销毁", "初级秘海封印") 
    end
	lualib:ClearTrigger(map)
end

function on_trigger_enter_map(player)
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n \n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.破坏者很快会来破坏封印，你得迅速使用召唤石将守卫召唤出来进行防守，你可在任意位置进行召唤！\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.召唤石在世界各地、宝箱、炼药师里都有产出！\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.通关后可以进行翻牌抽奖，有稀有坐骑和附魔石等稀有物品哦！加油^_^#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 335)
	local map = lualib:MapGuid(player)
	lualib:SetStr(map, "playerguid", player)
	--将玩家设为阵营1
	lualib:SetCamp(player, 1)
end



--玩家离开地图的触发器触发时，回复0阵营，删除绑定召唤石
function on_trigger_leave_map(player)

    --将玩家回复为0阵营
	local map = lualib:MapGuid(player)
    lualib:SetCamp(player, 0)
	local L_V = lualib:GetInt(player, "L_V")
	if L_V <= 35 then
		local count = lualib:ItemCountByKey(player, "召唤石", true, true, true, 1)
		if not lualib:DelItem(player, "召唤石", count, 1, "离开初级秘海封印", "秘海封印") then
			lualib:SysMsg_SendTriggerMsg(player,"扣除物品失败")
			return
		end
	end
	
	lualib:Map_DestroyDgn(map)
end

function destroy(map, tierid)
	lualib:Map_DestroyDgn(map)
    --以下内容转移到上面的触发器中
    --local player_table = lualib:Map_GetRegionPlayers(map, 29, 84, 100, true)
	--lualib:SetCamp(player_table[1], 0)  -- 将玩家恢复为0阵营
    --local lv = lualib:Level(player_table[1])
    --local count = lualib:ItemCountByKey(player_table[1], "召唤石", true, true, true, 1)
    --if lv <45 then
    --    lualib:DelItem(player_table[1], "召唤石", count, 1, "初级秘海封印销毁", "初级秘海封印")
    --end
end

-- 地图说话
function maptalk(map, tierid)
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002062#74#36#0#99999000")
		if tierid == 1	then		
			for i = 1, 5 do
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[1])
			end
		elseif  tierid == 3 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[2])
		elseif  tierid == 4 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[3])
		elseif  tierid == 11 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[4])
		elseif  tierid == 12 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[5])
		elseif  tierid == 13 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[6])
		elseif  tierid == 14 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[7])
		elseif  tierid == 15 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[8])
		elseif  tierid == 16 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[9])
		elseif  tierid == 17 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[10])
		elseif  tierid == 18 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[11])
		elseif  tierid == 19 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[12])
		elseif  tierid == 20 then
			lualib:SysMsg_SendMapMsg(map, jz_maptalk_talbe[13])
		end
		
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#30#81#0#99999000")		
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#34#77#0#99999000")		
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#38#73#0#99999000")	
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#42#69#0#99999000")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#46#65#0#99999000")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#50#61#0#99999000")	
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#54#57#0#99999000")	
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#58#53#0#99999000")	
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#62#49#0#99999000")	
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#66#45#0#99999000")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002931#70#41#0#99999000")

	return true
end

--TD原生态守卫怪刷新
function gen_monster(map, tierid)
	local playerguid = lualib:GetStr(map, "playerguid")
	local player_table = lualib:Map_GetRegionPlayers(map, 29, 84, 100, true)
	local lv = lualib:Level(playerguid)
	--将玩家设为阵营1
	lualib:SetCamp(playerguid, 1)


	-- TD原生态守卫怪
		for i = 1, #TD_monster do
			local monsterguid = lualib:Map_GenSingleCampMonster(map, TD_monster[i][1], TD_monster[i][2], TD_monster[i][3], 4, TD_monster[i][4], false, 2)
			lualib:AddBuff(monsterguid, "阵眼标记", 0)
		end 
		
	if lv < 35 then
		lualib:SysMsg_SendBoardMsg(playerguid, "召唤石", "破坏者很快会来破坏封印，你得迅速使用包裹里的召唤石将守卫召唤出来进行防守，你可在任意位置进行召唤！", 10000)
		lualib:AddItem(playerguid, "召唤石", 300, true, "进入初级秘海封印加召唤石", "初级秘海封印")
	end	
		
	return true
				
end


function monster_bron(map, tierid)
	local playerguid = lualib:GetStr(map, "playerguid")
	local L_V = lualib:GetInt(playerguid, "L_V")

    if L_V >=35 then
        TD_mbron_1 = TD_mbron_1_2
        TD_mbron_2 = TD_mbron_2_2
        TD_mbron_3 = TD_mbron_3_2
        TD_mbron_4 = TD_mbron_4_2
        TD_mbron_5 = TD_mbron_5_2
        TD_mbron_6 = TD_mbron_6_2
        TD_mbron_7 = TD_mbron_7_2
        TD_mbron_8 = TD_mbron_8_2
    else
        TD_mbron_1 = TD_mbron_1_1
        TD_mbron_2 = TD_mbron_2_1
        TD_mbron_3 = TD_mbron_3_1
        TD_mbron_4 = TD_mbron_4_1
        TD_mbron_5 = TD_mbron_5_1
        TD_mbron_6 = TD_mbron_6_1
        TD_mbron_7 = TD_mbron_7_1
        TD_mbron_8 = TD_mbron_8_1
    end
    
	-- TD怪物出生
	if tierid == 21	then	
		lualib:SysMsg_SendMapMsg(map, "第一波怪正朝神石冲去！请赶紧升级守卫来防御！第二波怪将在45秒后出现，请做好准备！")
		lualib:SysMsg_SendBoardMsg(playerguid, "秘海封印", "第一波怪正朝神石冲去！请赶紧升级守卫来防御！第二波怪将在45秒后出现，请做好准备！", 10000)
		for i = 1, #TD_mbron_1 do
			local monsterguid = lualib:Map_GenSingleCampMonster(map, TD_mbron_1[i][1], TD_mbron_1[i][2], TD_mbron_1[i][3], 4, TD_mbron_1[i][4], false, 2)
			lualib:Monster_SetSeeker(monsterguid, path, 0, true)
		end  
	-- TD2怪物出生
	elseif tierid == 22 then
		lualib:SysMsg_SendMapMsg(map, "第二波怪正朝神石冲去！请赶紧升级守卫来防御！第三波怪将在1分钟后出现，请做好准备！")
		lualib:SysMsg_SendBoardMsg(playerguid, "秘海封印", "第二波怪正朝神石冲去！请赶紧升级守卫来防御！第三波怪将在1分钟后出现，请做好准备！", 10000)
		for i = 1, #TD_mbron_2 do
			local monsterguid = lualib:Map_GenSingleCampMonster(map, TD_mbron_2[i][1], TD_mbron_2[i][2], TD_mbron_2[i][3], 4, TD_mbron_2[i][4], false, 2)
			lualib:Monster_SetSeeker(monsterguid, path, 0, true)
		end  	
	-- TD3怪物出生
	elseif tierid == 23 then
		lualib:SysMsg_SendMapMsg(map, "第三波怪正朝神石冲去！请赶紧升级守卫来防御！第四波怪将在1分钟后出现，请做好准备！")
		lualib:SysMsg_SendBoardMsg(playerguid, "秘海封印", "第三波怪正朝神石冲去！请赶紧升级守卫来防御！第四波怪将在1分钟后出现，请做好准备！", 10000)
		for i = 1, #TD_mbron_3 do
			local monsterguid = lualib:Map_GenSingleCampMonster(map, TD_mbron_3[i][1], TD_mbron_3[i][2], TD_mbron_3[i][3], 4, TD_mbron_3[i][4], false, 2)
			lualib:Monster_SetSeeker(monsterguid, path, 0, true)
		end  	
	-- TD4怪物出生
	elseif tierid == 24 then
		lualib:SysMsg_SendMapMsg(map, "第四波怪正朝神石冲去！请赶紧升级守卫来防御！第五波怪将在30秒后出现，请做好准备！")
		lualib:SysMsg_SendBoardMsg(playerguid, "秘海封印", "第四波怪正朝神石冲去！请赶紧升级守卫来防御！第五波怪将在30秒后出现，请做好准备！", 10000)
		for i = 1, #TD_mbron_4 do
			local monsterguid = lualib:Map_GenSingleCampMonster(map, TD_mbron_4[i][1], TD_mbron_4[i][2], TD_mbron_4[i][3], 4, TD_mbron_4[i][4], false, 2)
			lualib:Monster_SetSeeker(monsterguid, path, 0, true)
		end  	
	-- TD5怪物出生
	elseif tierid == 25 then
		lualib:SysMsg_SendMapMsg(map, "第五波怪正朝神石冲去！请赶紧升级守卫来防御！奖励怪将在30秒后出现，请准备好获取奖励吧！")
		lualib:SysMsg_SendBoardMsg(playerguid, "秘海封印", "第五波怪正朝神石冲去！请赶紧升级守卫来防御！奖励怪将在30秒后出现，请准备好获取奖励吧！", 10000)
		for i = 1, #TD_mbron_5 do
			local monsterguid = lualib:Map_GenSingleCampMonster(map, TD_mbron_5[i][1], TD_mbron_5[i][2], TD_mbron_5[i][3], 4, TD_mbron_5[i][4], false, 2)
			lualib:Monster_SetSeeker(monsterguid, path, 0, true)
		end  	
	-- TD6怪物出生
	elseif tierid == 26 then
		lualib:SysMsg_SendMapMsg(map, "奖励怪正朝神石冲去！请赶紧升级守卫来防御！第七波头目怪将在30秒后出现，请做好准备！")
		lualib:SysMsg_SendBoardMsg(playerguid, "秘海封印", "奖励怪正朝神石冲去！请赶紧升级守卫来防御！第七波头目怪将在30秒后出现，请做好准备！", 10000)
		for i = 1, #TD_mbron_6 do
			local monsterguid = lualib:Map_GenSingleCampMonster(map, TD_mbron_6[i][1], TD_mbron_6[i][2], TD_mbron_6[i][3], 4, TD_mbron_6[i][4], false, 2)
			lualib:Monster_SetSeeker(monsterguid, path, 0, true)
		end  	
	-- TD7怪物出生
	elseif tierid == 27 then
		lualib:SysMsg_SendMapMsg(map, "头目怪正朝神石冲去！请赶紧升级守卫来防御！BOSS将在30秒后出现，请做好准备！")
		lualib:SysMsg_SendBoardMsg(playerguid, "秘海封印", "头目怪正朝神石冲去！请赶紧升级守卫来防御！BOSS将在30秒后出现，请做好准备！", 10000)
		for i = 1, #TD_mbron_7 do
			local monsterguid = lualib:Map_GenSingleCampMonster(map, TD_mbron_7[i][1], TD_mbron_7[i][2], TD_mbron_7[i][3], 4, TD_mbron_7[i][4], false, 2)
			lualib:Monster_SetSeeker(monsterguid, path, 0, true)
		end  
	elseif tierid == 28 then
		lualib:SysMsg_SendMapMsg(map, "BOSS出现了，消灭BOSS就能通关，大家加油！")
		lualib:SysMsg_SendBoardMsg(playerguid, "秘海封印", "BOSS出现了，消灭BOSS就能通关，大家加油！", 10000)
		for i = 1, #TD_mbron_8 do
			local monsterguid = lualib:Map_GenSingleCampMonster(map, TD_mbron_8[i][1], TD_mbron_8[i][2], TD_mbron_8[i][3], 4, TD_mbron_8[i][4], false, 2)
			lualib:Monster_SetSeeker(monsterguid, path, 0, true)
		end  	
	
	end

	local player_name = lualib:Name(playerguid)
		--记录自定义log
	lualib:LogWithId(player_name, fun_map_action, "", "", 0, 1, "秘海封印通关", "")	

	return true
		

				
end


local monster_pohuai = {"秘境破坏者1", "秘境破坏者2", "秘境破坏者3", "秘境破坏者4", "秘境破坏者5", "秘境破坏者6", "秘境破坏者7", "秘境破坏者8", "秘境寻宝者1", "封印破坏者1", "封印破坏者2", "封印破坏者3", "封印破坏者4", "封印破坏者5", "封印破坏者7", "封印破坏者8", "封印寻宝者1"}
local monster_shenshi = {"秘境神石"}
local hurt = {-20, -30, -50, -100, -200, 0, -200, -300, -1, -1, -2, -3, -4, -5, -10, -20, -1}
local buff_key = "红面牛魔流血"
local buff_time = 1

function pohuai(map, tierid)
	local shenshi = lualib:Map_GetRegionMonsters(map, "秘境神石", 74, 37, 1, true, true)
	
	if	shenshi[1] == nil then
		for i = 1, 5 do
			lualib:SysMsg_SendMapMsg(map, "由于神石被破坏，副本将关闭")
			lualib:Map_DestroyDgn(map)
		end
		return
	end

	local pohuaizhe = lualib:Map_GetRegionMonsters(map, "", 70, 41, 1, true, true)

	for i = 1, #pohuaizhe do	
		local keyname = lualib:KeyName(pohuaizhe[i])
		for i = 1, #monster_pohuai do
			if keyname == monster_pohuai[i] then
				lualib:AddBuffEx(shenshi[1], buff_key, buff_time, hurt[i])
				lualib:Map_ClearMonster(map, 70, 41, 1, keyname, true, true)
			end
		end
	end

	
	return true
end


local gold_exp_table = 
    {
		["封印破坏者1"]	= {1000, 1500,     50000},                --封印破坏者1
		["封印破坏者2"]	= {1000, 1500,     80000},                --封印破坏者2
		["封印破坏者3"]	= {1000, 1500,     100000},                --封印破坏者3
		["封印破坏者4"]	= {1000, 1500,     120000},                --封印破坏者4
		["封印破坏者5"]	= {1000, 1500,     150000},                --封印破坏者5
		["封印寻宝者1"]	= {1000, 2000,     500000},                  --封印寻宝者1(不掉金币)
		["封印破坏者7"]	= {1000, 2000,     400000},              --封印破坏者7(头目怪)
		["封印破坏者8"]	= {2000, 3000,     500000},             --封印破坏者8(BOSS怪)
		["秘境破坏者1"]	= {10000, 30000,   50000},              --秘境破坏者1
		["秘境破坏者2"]	= {20000, 30000,   80000},             --秘境破坏者2
		["秘境破坏者3"]	= {20000, 40000,   100000},             --秘境破坏者3
		["秘境破坏者4"]	= {25000, 50000,   120000},             --秘境破坏者4
		["秘境破坏者5"]	= {30000, 60000,   150000},             --秘境破坏者5
		["秘境破坏者6"]	= {30000, 60000,   150000},             --秘境破坏者6
		["秘境破坏者7"]	= {70000, 120000,  400000},           --秘境破坏者7(头目怪)
		["秘境破坏者8"]	= {100000, 150000, 500000},          --秘境破坏者8(BOSS怪)
		["秘境寻宝者1"]	= {50000, 100000,  500000},           --秘境寻宝者1
    }	

function on_post_die(monster, killer)
	local mapguid = lualib:MapGuid(monster)
	local playerguid = lualib:GetStr(mapguid, "playerguid")
	local mons_key = lualib:KeyName(monster)
	local keyname = lualib:KeyName(monster)
	local x = lualib:Monster_GetPosX(monster)
    local y = lualib:Monster_GetPosY(monster)

	
	local mk = (string.find(keyname, "封印"))
	
	if playerguid ~= nil then
		lualib:Player_AddExp(playerguid, gold_exp_table[mons_key][3], "秘海封印增加玩家的经验", playerguid)
	end

    if 2 == 2 then
		lualib:Map_GenGold(mapguid, x, y, gold_exp_table[mons_key][lualib:GenRandom(1,2)], false, 0, 6, killer)
    end
	
	
	
	if keyname == "秘境破坏者8" or keyname == "封印破坏者8" then
		lualib:SysMsg_SendMapMsg(mapguid, "恭喜你打败了破坏者的BOSS，赶快点击副本内的翻牌NPC获取奖励！")
		local player_x = lualib:X(playerguid)
		local player_y = lualib:Y(playerguid)
		lualib:Map_GenNpc(mapguid, "秘境守护者场内", player_x, player_y, 2, 4)
		
		if	keyname == "封印破坏者8" or keyname == "秘境破坏者8" then
			lualib:Player_AddExp(playerguid, 150000, "秘海封印增加玩家的经验", playerguid)
		end
		
		
		
	end
	
	if keyname == "封印寻宝者1" or keyname == "秘境寻宝者1" then
		if playerguid ~= nil then
			lualib:Player_AddExp(playerguid, 50000, "秘海封印增加玩家的经验", playerguid)
		end
	end
	

	
	--死亡的时候清除掉触发器
	lualib:ClearTrigger(monster)
	lualib:DisableTimer(monster, 1)
end
