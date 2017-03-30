local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("monster/秘境神石")
local left_path = {24, 	74, 	28, 	78, 	32, 	82, 	35, 	83, 	35, 	79, 	33, 	76, 	31, 	74, 	29, 	72, 	27, 	69, 	29, 	67, 	32, 	69, 	35, 	72, 	38, 	75, 	39, 	80, 	42, 	84, 	45, 	88, 	48, 	90, 	51, 	89, 	50, 	84, 	48, 	79, 	46, 	76, 	43, 	73, 	40, 	68, 	37, 	64, 	37, 	59, 	40, 	56, 	42, 	54, 	44, 	58, 	46, 	63, 	49, 	66, 	53, 	71, 	54, 	81, 	54, 	86, 	57, 	83, 	60, 	79, 	62, 	75, 	60, 	71, 	57, 	67, 	55, 	63, 	53, 	60, 	50, 	56, 	48, 	51, 	48, 	47, 	51, 	45, 	53, 	49, 	55, 	54, 	58, 	57, 	62, 	63, 	66, 	69, 	68, 	73, 	70, 	69, 	69, 	62, 	67, 	57, 	66, 	53, 	66, 	47, 	69, 	43, 	71, 	41, 	72, 	40}
local right_path = {41, 	92, 	39, 	90, 	37, 	87, 	35, 	83, 	35, 	79, 	33, 	76, 	31, 	74, 	29, 	72, 	27, 	69, 	29, 	67, 	32, 	69, 	35, 	72, 	38, 	75, 	39, 	80, 	42, 	84, 	45, 	88, 	48, 	90, 	51, 	89, 	50, 	84, 	48, 	79, 	46, 	76, 	43, 	73, 	40, 	68, 	37, 	64, 	37, 	59, 	40, 	56, 	42, 	54, 	44, 	58, 	46, 	63, 	49, 	66, 	53, 	71, 	54, 	81, 	54, 	86, 	57, 	83, 	60, 	79, 	62, 	75, 	60, 	71, 	57, 	67, 	55, 	63, 	53, 	60, 	50, 	56, 	48, 	51, 	48, 	47, 	51, 	45, 	53, 	49, 	55, 	54, 	58, 	57, 	62, 	63, 	66, 	69, 	68, 	73, 	70, 	69, 	69, 	62, 	67, 	57, 	66, 	53, 	66, 	47, 	69, 	43, 	71, 	41, 	72, 	40}
local left_monster = {"秘境破坏者1", "秘境破坏者3", "秘境破坏者5", "秘境破坏者7", "秘境破坏者8", "秘境寻宝者1", "封印破坏者1", "封印破坏者3", "封印破坏者5", "封印寻宝者1"}
local right_monster = {"秘境破坏者2", "秘境破坏者4", "秘境破坏者6", "秘境寻宝者1", "封印破坏者2", "封印破坏者4", "封印破坏者7", "封印破坏者8", "封印寻宝者1"}
local all_monster = {"秘境破坏者1", "秘境破坏者2", "秘境破坏者3", "秘境破坏者4", "秘境破坏者5", "秘境破坏者6", "秘境破坏者7", "秘境破坏者8", "秘境寻宝者1", "封印破坏者1", "封印破坏者2", "封印破坏者3", "封印破坏者4", "封印破坏者5", "封印破坏者7", "封印破坏者8", "封印寻宝者1"}
local hurt = {-10, -20, -30, -40, -50, -60, -70, -300, -1, -1, -2, -3, -4, -5, -10, -20, -1}
local buff_key = "红面牛魔流血"
local buff_time = 1


local gold_table = 
    {
		["封印破坏者1"]	= {100, 400},                --封印破坏者1
		["封印破坏者2"]	= {100, 400},                --封印破坏者2
		["封印破坏者3"]	= {100, 400},                --封印破坏者3
		["封印破坏者4"]	= {100, 400},                --封印破坏者4
		["封印破坏者5"]	= {100, 400},                --封印破坏者5
		["封印寻宝者1"]	= {100, 400},                  --封印寻宝者1(不掉金币)
		["封印破坏者7"]	= {1000, 4000},              --封印破坏者7(头目怪)
		["封印破坏者8"]	= {2000, 8000},             --封印破坏者8(BOSS怪)
		["秘境破坏者1"]	= {1000, 4000},              --秘境破坏者1
		["秘境破坏者2"]	= {2500, 7500},             --秘境破坏者2
		["秘境破坏者3"]	= {2500, 7500},             --秘境破坏者3
		["秘境破坏者4"]	= {2500, 7500},             --秘境破坏者4
		["秘境破坏者5"]	= {2500, 7500},             --秘境破坏者5
		["秘境破坏者6"]	= {2500, 7500},             --秘境破坏者6
		["秘境破坏者7"]	= {10000, 40000},           --秘境破坏者7(头目怪)
		["秘境破坏者8"]	= {0, 0},          --秘境破坏者8(BOSS怪)
		["秘境寻宝者1"]	= {12500, 25000},           --秘境寻宝者1
    }	
	
	
local str =
	{
		"冲破封印！",
		"越狱~越狱~",
		"蠢货，别挡路！我爸是李刚！",
	}

local timerID     = {1, 2}
local elapse      = {30000, 5000}
local monsterName = ""	

function on_create(monster)
--	lualib:SetCamp(monster, 2)
	local mapguid = lualib:MapGuid(monster)
	local shenshi = lualib:Map_GetRegionMonsters(mapguid, "秘境神石", 74, 37, 1, true, true)
	for _, v in pairs(shenshi) do
	--	print(v)
	end

	if	shenshi[1] == nil then
		return false
	end
	
	lualib:Monster_SetAttackTarget(monster, shenshi[1])

	
	lualib:AddTrigger(monster, lua_trigger_post_die, "on_post_die")
	lualib:AddTimer(monster, timerID[1], elapse[1], -1, "say")
--	lualib:AddTimer(monster, timerID[2], elapse[2], -1, "mubiao")
	local keyname = lualib:KeyName(monster)
	for i = 1, #left_monster do
		if keyname == left_monster[i] then
			lualib:Monster_SetSeeker(monster, left_path, 0, true)
		end	
	end
	
	for i = 1, #right_monster do
		if keyname == right_monster[i] then
			lualib:Monster_SetSeeker(monster, right_path, 0, true)
		end	
	end
end

function on_post_die(monster, killer)
    local mons_key = lualib:KeyName(monster)
	local mapguid = lualib:MapGuid(monster)
	local keyname = lualib:KeyName(monster)
	local x = lualib:Monster_GetPosX(monster)
    local y = lualib:Monster_GetPosY(monster)
	local player_table = lualib:Map_GetRegionPlayers(mapguid, 53, 66, 50, true)
	
	local mk = (string.find(keyname, "封印"))
	
--	if mk ~= nil then
		if player_table ~= nil then
			lualib:Player_AddExp(player_table[1], 2000, "秘海封印增加玩家的经验", player_table[1])
		end
--	end
	
	
    if lualib:GenRandom(1, 6) == 2 then
        
		lualib:Map_GenGold(mapguid, x, y, gold_table[mons_key][lualib:GenRandom(1,2)], false, 0, 6, killer)
    end
	
	
	
	if keyname == "秘境破坏者8" or keyname == "封印破坏者8" then
		lualib:SysMsg_SendMapMsg(mapguid, "恭喜你打败了破坏者的BOSS，赶快到[坐标：66.36]处点击副本内的翻牌NPC获取奖励！")
		for k, v in pairs(left_monster) do
			lualib:Map_ClearMonster(mapguid, 55, 55, 200, v, true, true)
		end
		lualib:Map_GenNpc(mapguid, "秘境守护者场内", 66, 36, 2, 4)
		
		if	keyname == "封印破坏者8" or keyname == "秘境破坏者8" then
			lualib:Player_AddExp(player_table[1], 150000, "秘海封印增加玩家的经验", player_table[1])
		end
		
		if	keyname == "秘境破坏者8" then
			lualib:Map_GenGold(mapguid, x, y, lualib:GenRandom(4000,16000), false, 0, 6, killer)
		end
		
		lualib:Map_JumpXY(mapguid, player_table[1], 66, 36, 2)
		
	end
	
	if keyname == "封印寻宝者1" or keyname == "秘境寻宝者1" then
		if player_table ~= nil then
			lualib:Player_AddExp(player_table[1], 50000, "秘海封印增加玩家的经验", player_table[1])
		end
	end
	

	
	--死亡的时候清除掉触发器
	lualib:ClearTrigger(monster)
	lualib:DisableTimer(monster, 1)
end

function say(monster, timer_id)
	local rnd = lualib:GenRandom(1, #str)
    lualib:SysMsg_SendRoleTalk(monster, monsterName .. str[rnd])
	
	
end


--[[
function mubiao(monster, timer_id)
	local mapguid = lualib:MapGuid(monster)
	local shenshi = lualib:Map_GetRegionMonsters(mapguid, "秘境神石", 74, 37, 1, true, true)
	for _, v in pairs(shenshi) do
	print(v)
	end

	if	shenshi[1] == nil then
		return false
	end
	
	local juli = lualib:Distance(monster, shenshi[1])

	if juli < 5 then
		if shenshi[1] ~= nil then
			local keyname = lualib:KeyName(monster)
	for k, v in pairs(left_monster) do
				if keyname == v then
				lualib:AddBuffEx(shenshi[1], "红面牛魔流血", 0, hurt[i])
				lualib:Monster_Remove(monster)
			end

			if keyname == all_monster[1] then
				lualib:AddBuffEx(shenshi[1], buff_key, buff_time, hurt[1])
				lualib:Monster_Remove(monster)
			elseif keyname == all_monster[2] then
				lualib:AddBuffEx(shenshi[1], buff_key, buff_time, hurt[2])
				lualib:Monster_Remove(monster)
			elseif keyname == all_monster[3] then
				lualib:AddBuffEx(shenshi[1], buff_key, buff_time, hurt[3])
				lualib:Monster_Remove(monster)
			elseif keyname == all_monster[4] then
				lualib:AddBuffEx(shenshi[1], buff_key, buff_time, hurt[4])
				lualib:Monster_Remove(monster)	
			elseif keyname == all_monster[5] then
				lualib:AddBuffEx(shenshi[1], buff_key, buff_time, hurt[5])
				lualib:Monster_Remove(monster)	
			elseif keyname == all_monster[6] then
				lualib:AddBuffEx(shenshi[1], buff_key, buff_time, hurt[6])
				lualib:Monster_Remove(monster)	
			elseif keyname == all_monster[7] then
				lualib:AddBuffEx(shenshi[1], buff_key, buff_time, hurt[7])
				lualib:Monster_Remove(monster)	
			elseif keyname == all_monster[8] then
				lualib:AddBuffEx(shenshi[1], buff_key, buff_time, hurt[8])
				lualib:Monster_Remove(monster)
            elseif keyname == all_monster[9] then
				lualib:AddBuffEx(shenshi[1], buff_key, buff_time, hurt[9])
				lualib:Monster_Remove(monster)
            elseif keyname == all_monster[10] then
				lualib:AddBuffEx(shenshi[1], buff_key, buff_time, hurt[10])
				lualib:Monster_Remove(monster)
            elseif keyname == all_monster[11] then
				lualib:AddBuffEx(shenshi[1], buff_key, buff_time, hurt[11])
				lualib:Monster_Remove(monster)
            elseif keyname == all_monster[12] then
				lualib:AddBuffEx(shenshi[1], buff_key, buff_time, hurt[12])
				lualib:Monster_Remove(monster)
            elseif keyname == all_monster[13] then
				lualib:AddBuffEx(shenshi[1], buff_key, buff_time, hurt[13])
				lualib:Monster_Remove(monster)
            elseif keyname == all_monster[14] then
				lualib:AddBuffEx(shenshi[1], buff_key, buff_time, hurt[14])
				lualib:Monster_Remove(monster)
            elseif keyname == all_monster[15] then
				lualib:AddBuffEx(shenshi[1], buff_key, buff_time, hurt[15])
				lualib:Monster_Remove(monster)
            elseif keyname == all_monster[16] then
				lualib:AddBuffEx(shenshi[1], buff_key, buff_time, hurt[16])
				lualib:Monster_Remove(monster)
            elseif keyname == all_monster[17] then
				lualib:AddBuffEx(shenshi[1], buff_key, buff_time, hurt[17])
				lualib:Monster_Remove(monster)
			else
				lualib:Monster_Remove(monster)
			end
		else
			return false
		end
	end
	
	return true
end
]]