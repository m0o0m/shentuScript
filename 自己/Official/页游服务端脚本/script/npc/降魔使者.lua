local player_var = {
    "xiangmo_quest_var_4201", 
    "xiangmo_quest_var_4202", 
    "xiangmo_quest_var_4203", 
    "xiangmo_quest_var_4204", 
    "xiangmo_quest_var_4205", 
    "xiangmo_quest_var_4206", 
    "xiangmo_quest_var_4207", 
    "xiangmo_quest_var_4208", 
    "xiangmo_quest_var_4221", 
    "xiangmo_quest_var_4222", 
    "xiangmo_quest_var_4223", 
    "xiangmo_quest_var_4224", 
    "xiangmo_quest_var_4225", 
    "xiangmo_quest_var_4226", 
    "xiangmo_quest_var_4227", 
    "xiangmo_quest_var_4228",
    --"xiangmo_quest_var_4060", 
    "xiangmo_quest_var_4061", 
    --"xiangmo_quest_var_4062", 
    --"xiangmo_quest_var_4064", 
    --"xiangmo_quest_var_4070", 
    "xiangmo_quest_var_4071", 
    --"xiangmo_quest_var_4072", 
    --"xiangmo_quest_var_4074" 
    }
	
function main(npc,player)

    for i = 1, #player_var do
        lualib:GetDayInt(player, player_var[i])
    end
    
	local msg = "#COLORCOLOR_BROWN#	　　道魔不停消长，我需要一位强大的勇士，每天能够持续给予怪物和恶魔不断地打击，你足够…强吗？#COLOREND#\n"
	msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n\n"
	msg = msg.."#OFFSET<X:30,Y:0>##IMAGE1902700016#<@accept_task *01*接取日常任务>#OFFSET<X:-2,Y:0>#"
	msg = msg.."#OFFSET<X:70,Y:0>##IMAGE1902700016#<@accomplish_task *02*提交日常任务>#OFFSET<X:7,Y:0>#\n\n"
	msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"	
	msg = msg.."#COLORCOLOR_SKYBLUE#提醒：同一任务每日最多可完成10次！#COLOREND#　\n"	
	msg = msg.."#COLORCOLOR_SKYBLUE#提醒：每完成一次任务，都有机率获得额外的随机奖励！#COLOREND#　\n"	
	msg = msg.."#OFFSET<X:330,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:0>#<@likai *01*离开>\n"
	return msg
end

function likai(npc,player)
	return ""
end

local map_table = {
    {15, 28, "将军冢",    "#OFFSET<X:2,Y:0>##IMAGE1902700016# <@accept_q#将军冢 *01*将军冢>"}, 
    {20, 35, "废弃矿洞",  "#OFFSET<X:2,Y:0>##IMAGE1902700016# <@accept_q#废弃矿洞 *02*废弃矿洞>"}, 
    {25, 37, "妖山暗穴",  "#OFFSET<X:2,Y:0>##IMAGE1902700016# <@accept_q#妖山暗穴 *04*妖山暗穴>"}, 
    {28, 40, "绝路城",    "#OFFSET<X:2,Y:0>##IMAGE1902700016# <@accept_q#绝路城 *03*绝路城>"}, 
    {35, 45, "天荒阵",    "#OFFSET<X:2,Y:0>##IMAGE1902700016# <@accept_q#天荒阵 *05*天荒阵>"}, 
    {37, 50, "天荒邪庙",  "#OFFSET<X:2,Y:0>##IMAGE1902700016# <@accept_q#天荒邪庙 *06*天荒邪庙>"}, 
    {40, 60, "天魔石窟",  "#OFFSET<X:2,Y:0>##IMAGE1902700016# <@accept_q#天魔石窟 *07*天魔石窟>"}
    }
	
local map_table_48 = {
	{45, 70, "海角秘境",  "#OFFSET<X:2,Y:0>##IMAGE1902700016# <@accept_q#海角秘境 *08*海角秘境>"}}	

local map_table_50 = {
	{15, 45, "镇魔城",    "#OFFSET<X:2,Y:0>##IMAGE1902700016# <@accept_q#镇魔城 *09*镇魔城>"}}
	

local quest_id_table = {4201, 4221, 4202, 4222, 4203, 4223, 4204, 4224, 4205, 4225, 4206, 4226, 4207, 4227, 4208,
 4228, 4061, 4071}	

local map_quest_table = {
    ["将军冢"] =    {
                    {4201, 15, 28, "#IMAGE1902700018#<@accept#4201 *01*清理将军冢30只任意怪物>", "任务经验：10000"}, 
                    {4221, 15, 28, "#IMAGE1902700018#<@accept#4221 *01*清理将军冢60只任意怪物>", "任务经验：16000"} 
                    }, 
    ["废弃矿洞"] =  {
                    {4202, 20, 35, "#IMAGE1902700018#<@accept#4202 *01*清理废弃矿洞30只任意怪物>", "任务经验：15000"}, 
                    {4222, 20, 35, "#IMAGE1902700018#<@accept#4222 *01*清理废弃矿洞60只任意怪物>", "任务经验：24000"} 
                    }, 
    ["妖山暗穴"] =  {
                    {4204, 25, 37, "#IMAGE1902700018#<@accept#4204 *01*清理妖山暗穴30只任意怪物>", "任务经验：30000"}, 
                    {4224, 25, 37, "#IMAGE1902700018#<@accept#4224 *01*清理妖山暗穴60只任意怪物>", "任务经验：48000"}
                    }, 
    ["绝路城"] =    {
                    {4203, 28, 40, "#IMAGE1902700018#<@accept#4203 *01*清理绝路城30只任意怪物>", "任务经验：32000"}, 
                    {4223, 28, 40, "#IMAGE1902700018#<@accept#4223 *01*清理绝路城60只任意怪物>", "任务经验：51200"}
                    }, 
    ["天荒阵"] =    {
                    {4205, 35, 45, "#IMAGE1902700018#<@accept#4205 *01*清理天荒阵30只任意怪物>", "任务经验：50000"}, 
                    {4225, 35, 45, "#IMAGE1902700018#<@accept#4225 *01*清理天荒阵60只任意怪物>", "任务经验：80000"}
                    }, 
    ["天荒邪庙"] =  {
                    {4206, 37, 50, "#IMAGE1902700018#<@accept#4206 *01*清理天荒邪庙30只任意怪物>", "任务经验：70000"}, 
                    {4226, 37, 50, "#IMAGE1902700018#<@accept#4226 *01*清理天荒邪庙60只任意怪物>", "任务经验：112000"} 
                    }, 
    ["天魔石窟"] =  {
                    {4207, 40, 60, "#IMAGE1902700018#<@accept#4207 *01*清理天魔石窟30只任意怪物>", "任务经验：230000"}, 
                    {4227, 40, 60, "#IMAGE1902700018#<@accept#4227 *01*清理天魔石窟60只任意怪物>", "任务经验：368000"}
                    }, 
    ["海角秘境"] =  {
                    {4208, 45, 70, "#IMAGE1902700018#<@accept#4208 *01*清理海角秘境30只任意怪物>", "任务经验：310000"}, 
                    {4228, 45, 70, "#IMAGE1902700018#<@accept#4228 *01*清理海角秘境60只任意怪物>", "任务经验：496000"}
                    },
    ["镇魔城"] =  {
                    --{4060, 15, 28, "#IMAGE1902700018#<@accept#4060 *01*清理清理镇魔城城外30只怪物>", "任务经验：15000"}, 
                    {4061, 20, 33, "#IMAGE1902700018#<@accept#4061 *01*清理镇魔禁地前三层30只怪物>", "任务经验：26000"}, 
                    --{4062, 28, 40, "#IMAGE1902700018#<@accept#4062 *01*清理镇魔禁地第四层30只怪物>", "任务经验：88000"}, 
                    --{4064, 33, 45, "#IMAGE1902700018#<@accept#4064 *01*清理镇魔禁地第六层30只怪物>", "任务经验：225000"}, 
                    --{4070, 15, 28, "#IMAGE1902700018#<@accept#4070 *01*清理清理镇魔城城外60只怪物>", "任务经验：30000"}, 
                    {4071, 20, 33, "#IMAGE1902700018#<@accept#4071 *01*清理镇魔禁地前三层60只怪物>", "任务经验：52000"}, 
                    --{4072, 28, 40, "#IMAGE1902700018#<@accept#4072 *01*清理镇魔禁地第四层60只怪物>", "任务经验：176000"}, 
                    --{4074, 33, 45, "#IMAGE1902700018#<@accept#4074 *01*清理镇魔禁地第六层60只怪物>", "任务经验：450000"}                   
                    }					
    }

local quest_table = {
["4201"] = {"清理将军冢30只任意怪物",     "降妖除魔之将军冢(1)",   10000,  1,  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1000}, 
["4221"] = {"清理将军冢60只任意怪物",     "降妖除魔之将军冢(2)",   16000,  2,  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2000}, 
["4202"] = {"清理废弃矿洞30只任意怪物",   "降妖除魔之废弃矿洞(1)", 15000,  1,  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1500}, 
["4222"] = {"清理废弃矿洞60只任意怪物",   "降妖除魔之废弃矿洞(2)", 24000,  2,  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3000}, 
["4204"] = {"清理妖山暗穴30只任意怪物",   "降妖除魔之妖山暗穴(1)", 30000,  1,  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3000}, 
["4224"] = {"清理妖山暗穴60只任意怪物",   "降妖除魔之妖山暗穴(2)", 48000,  3,  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 6000}, 
["4203"] = {"清理绝路城30只任意怪物",     "降妖除魔之绝路城(1)",   32000,  1,  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3500}, 
["4223"] = {"清理绝路城60只任意怪物",     "降妖除魔之绝路城(2)",   51200,  3,  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 7000}, 
["4205"] = {"清理天荒阵30只任意怪物",     "降妖除魔之天荒阵(1)",   50000,  2,  1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 5000}, 
["4225"] = {"清理天荒阵60只任意怪物",     "降妖除魔之天荒阵(2)",   80000,  4,  2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 10000}, 
["4206"] = {"清理天荒邪庙30只任意怪物",   "降妖除魔之天荒邪庙(1)", 70000,  2,  1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 7500}, 
["4226"] = {"清理天荒邪庙60只任意怪物",   "降妖除魔之天荒邪庙(2)", 112000, 4,  2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 15000}, 
["4207"] = {"清理天魔石窟30只任意怪物",   "降妖除魔之天魔石窟(1)", 230000, 3,  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 20000}, 
["4227"] = {"清理天魔石窟60只任意怪物",   "降妖除魔之天魔石窟(2)", 368000, 5,  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 40000}, 
["4208"] = {"清理海角秘境30只任意怪物",   "降妖除魔之海角秘境(1)", 310000, 3,  2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 25000}, 
["4228"] = {"清理海角秘境60只任意怪物",   "降妖除魔之海角秘境(2)", 496000, 5,  4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 50000},
["4060"] = {"清理清理镇魔城城外30只怪物", "清理怪物之驱蛇儆猴(1)", 15000,  1,  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1000},
["4070"] = {"清理清理镇魔城城外60只怪物", "清理怪物之驱蛇儆猴(2)", 30000,  1,  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2000},
["4061"] = {"清理镇魔禁地前三层30只怪物", "清理怪物之铲除僵尸(1)", 26000,  1,  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2500},
["4071"] = {"清理镇魔禁地前三层60只怪物", "清理怪物之铲除僵尸(2)", 52000,  2,  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 5000},
--["4062"] = {"清理镇魔禁地第四层30只怪物", "清理怪物之打倒妖奴(1)", 88000,  2,  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 10000},
--["4072"] = {"清理镇魔禁地第四层60只怪物", "清理怪物之打倒妖奴(2)", 176000, 3,  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 20000},
--["4064"] = {"清理镇魔禁地第六层30只怪物", "清理怪物之实力证明(1)", 225000, 3,  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 15000},
--["4074"] = {"清理镇魔禁地第六层60只怪物", "清理怪物之实力证明(2)", 450000, 5,  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 30000} 
}


--接任务
function accept_task(npc, player)
	local msg = "\n \n#COLORCOLOR_YELLOW#━━━━━━━━━━━接取日常任务━━━━━━━━━━━━#COLOREND#\n \n"
	local level = lualib:Level(player)
    
	--变量名称接取处理
    --1.海角秘境开启	
    local haidi_Open = lualib:IO_GetCustomVarInt("haidi_Open")
    if haidi_Open >= 20 then
		if nil ~= map_table_48 then
			for i = 1, #map_table_48 do
				table.insert(map_table, map_table_48[i])
			end
			map_table_48 = nil
		end		
    end
   
   --2.镇魔城开启   
    local zhenmocheng_Open = lualib:IO_GetCustomVarInt("zhenmocheng_Open")
    if zhenmocheng_Open >= 20 then
		if nil ~= map_table_50 then
			for i = 1, #map_table_50 do
				table.insert(map_table, map_table_50[i])
			end
			map_table_50 = nil
		end		
    end
    
    for i = 1, #quest_id_table do
        if lualib:HasQuest(player, quest_id_table[i]) == true then 
			local id = tostring(quest_id_table[i]) return "你已经有任务在身上了！！！\n\n任务名称为：\n"..quest_table[id][2].."！！！\n\n\n\n #OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*返回>"
        end
    end    
		
	if level < 15 then return "请达到15级后再来！"
  
	else
		for i = 1, #map_table do
			if map_table[i][1] <= level and map_table[i][2] > level then

                    msg = msg .. map_table[i][4].."\n"

			end
		end	
		msg = msg.."\n#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*返回>\n"
	end
	return msg
end

function accept_q(npc, player, map_name)
	local quest_inmap_table = map_quest_table[map_name]
	local level = lualib:Level(player)
    local quest_is_have = false
    local msg = "\n \n#COLORCOLOR_YELLOW#━━━━━━━━━━━接取日常任务━━━━━━━━━━━━#COLOREND#\n \n"	
	for i = 1, #quest_inmap_table do
        if quest_inmap_table[i][2] <= level and quest_inmap_table[i][3] >level then
            local huanshu = lualib:GetDayInt(player, "xiangmo_quest_var_"..quest_inmap_table[i][1]) + 1
            if huanshu <= 10 then
                quest_is_have = true
                msg = msg .. quest_inmap_table[i][4].."#COLORCOLOR_SKYBLUE#【第"..huanshu.."环】#COLOREND#\n"..quest_inmap_table[i][5].."\n"
            end
        end
    end
    if quest_is_have ~= true then
        msg = msg .. "当前地图今日所有任务都已经完成！\n\n"
    end

    msg = msg.."\n#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*返回>\n"
    return msg

end

function accept(npc, player, quest_id)
	local quest_id = tonumber(quest_id)
	local huanshu = lualib:GetDayInt(player, "xiangmo_quest_var_"..quest_id) +1
	local mozhou_request = quest_table[tostring(quest_id)][huanshu + 4]
	if lualib:AcceptQuest(player, quest_id) == true then
        return "接取任务成功！\n\n#IMAGE1902700016#<@accomplish_mozhou#"..quest_id.." *01*直接使用魔咒完成>\n\n需花费"..mozhou_request.."个循环魔咒完成此任务！\n #OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*返回>"
    else
        return "接取任务失败！，请查看任务是否已经超过20或已有类似任务！\n\n\n\n #OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*返回>"
    end
end


--交任务及随机奖励
function accomplish_task(npc,player)	--告诉玩家当前已有的任务以及完成状态，不能正常提交时只显示魔咒提交，可正常提交时只显示正常提交
	local msg = "\n"
	msg = msg.."#COLORCOLOR_SKYBLUE#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
    local jianyan = 0
    for i = 1, #quest_id_table do
        if lualib:HasQuest(player, quest_id_table[i]) == true then
            jianyan = i
            break
        end
    end
    if jianyan == 0 or jianyan == nil then
        msg = msg .. "你没有接取降魔任务，无法提交！！！\n\n\n"
    else
        local quest_id = quest_id_table[jianyan]
        local huanshu = lualib:GetDayInt(player, "xiangmo_quest_var_"..quest_id) +1
        local mozhou_request = quest_table[tostring(quest_id)][huanshu + 4]
        if lualib:CanAccomplishQuest(player, quest_id) == true then
            msg = msg.."你已经完成任务："..quest_table[tostring(quest_id)][2].."！\n\n#OFFSET<X:0,Y:0>##IMAGE1902700016#<@accomplish#"..quest_id.." *01*正常提交任务>#OFFSET<X:-2,Y:0>#\n"
        else
            msg = msg.."#COLORCOLOR_BROWN#你还没有完成已经接取的任务:"..quest_table[tostring(quest_id)][2].."！\n#COLORCOLOREND##COLORCOLOR_RED#你可以花费"..mozhou_request.."个循环魔咒来完成此任务！#COLORCOLOREND#\n#OFFSET<X:0,Y:0>##IMAGE1902700016#<@accomplish_mozhou#"..quest_id.." *02*使用循环魔咒提交任务>#OFFSET<X:7,Y:0>#\n"
        end
    end

	msg = msg.."#COLORCOLOR_SKYBLUE#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n "
	msg = msg.."#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*返回>\n"
	return msg	
	
end

function accomplish(npc, player, quest_id)
    local per_gold = quest_table[quest_id][15]
    local msg = "提交降魔任务可花费金币进行多倍经验领取\n"
    msg = msg .. "当前任务可获得经验为"..quest_table[quest_id][3]
    msg = msg .. "    每花费"..per_gold.."金币可以多领取一倍的经验，最多可领取四倍！\n\n"
    msg = msg .. "#OFFSET<X:30,Y:0>#<@accomplish_Ex#1#"..per_gold.."#"..quest_id.." *01*普通领取>"
    msg = msg .. "#OFFSET<X:30,Y:0>#<@accomplish_Ex#2#"..per_gold.."#"..quest_id.." *01*双倍领取>"
    msg = msg .. "#OFFSET<X:30,Y:0>#<@accomplish_Ex#3#"..per_gold.."#"..quest_id.." *01*三倍领取>"
    msg = msg .. "#OFFSET<X:30,Y:0>#<@accomplish_Ex#4#"..per_gold.."#"..quest_id.." *01*四倍领取>\n\n"
    msg = msg .. "#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*返回>"
    return msg
end

function accomplish_mozhou(npc, player, quest_id)
    local per_gold = quest_table[quest_id][15]
    local msg = "\n\n    提交此任务可花费金币领取更多经验\n"
    msg = msg .. "    当前任务可获得经验为"..quest_table[quest_id][3].."\n"
    msg = msg .. "    每花费"..per_gold.."金币可以多领取一倍的经验，最多可领取四倍！\n\n"
    msg = msg .. "#OFFSET<X:30,Y:0>#<@accomplish_mozhou_Ex#1#"..per_gold.."#"..quest_id.." *01*普通领取>"
    msg = msg .. "#OFFSET<X:30,Y:0>#<@accomplish_mozhou_Ex#2#"..per_gold.."#"..quest_id.." *01*双倍领取>"
    msg = msg .. "#OFFSET<X:30,Y:0>#<@accomplish_mozhou_Ex#3#"..per_gold.."#"..quest_id.." *01*三倍领取>"
    msg = msg .. "#OFFSET<X:30,Y:0>#<@accomplish_mozhou_Ex#4#"..per_gold.."#"..quest_id.." *01*四倍领取>\n\n"
    msg = msg .. "#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*返回>"
    return msg

end

function accomplish_Ex(npc, player, beil, per_gold, quest_id)
    local gold_cost = (tonumber(beil) - 1) * tonumber(per_gold)
    local lv = lualib:Level(player)
    local gold_count = quest_table[quest_id][4] * 50 * lv
    local huanshu = lualib:GetDayInt(player, "xiangmo_quest_var_"..tonumber(quest_id)) + 1
    
    if lualib:Player_IsGoldEnough(player, gold_cost, false) == false then
        return "金币不足！\n\n\n\n\n\n\n\n\n<@likai *01*关闭>"
    end
    if lualib:BagFree(player, true, false, false) < 1 then
        return "包裹空间不足，至少需要1个位置！\n\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*返回>"
    end
    local reward = {
        {"循环魔咒", 1, true}, 
        {"神羽", 1, false}, 
        }
    local p = 10
    local re_p = lualib:GenRandom(1, 100)
    local reward_item, reward_count, reward_bind = nil, nil, nil
    if re_p <= p then
        local item_index = lualib:GenRandom(1, 2)
        reward_item = reward[item_index][1]
        reward_count = reward[item_index][2]
        reward_bind = reward[item_index][3]
    end
    
    if lualib:DropQuest(player, tonumber(quest_id)) == true then
        if lualib:Player_SubGold(player, gold_cost, false, "降魔任务翻倍领取", player) == false then
            return "金币扣除失败！\n\n\n\n\n\n\n\n\n<@likai *01*关闭>"
        end
        lualib:Player_AddExp(player, tonumber(beil) * quest_table[quest_id][3], "完成任务", player)
		lualib:Player_AddGold(player, gold_count, true, "完成任务", player)
		lualib:SetDayInt(player, "xiangmo_quest_var_"..quest_id, lualib:GetDayInt(player, "xiangmo_quest_var_"..quest_id) + 1)
        if reward_item ~= nil and reward_count ~= nil and reward_bind ~= nil then
            lualib:AddItem(player, reward_item, reward_count, reward_bind, "完成降魔任务后随即奖励！", player)
            local msg1 = "\n\n你完成了任务"..quest_table[quest_id][2].."【第"..huanshu.."环】。\n"
            if beil ~= "1" then
                    msg1 = msg1 .. "花费了"..gold_cost.."金币领取了"..beil.."倍经验\n"
            end
            msg1 = msg1 .. "获得了"..tonumber(beil) * quest_table[quest_id][3].."经验，"..gold_count.."绑定金币。\n"
            msg1 = msg1 .. "获得了随机奖励物品"..reward_item.."*"..reward_count.."！\n \n#IMAGE1902700016#<@accept_task *01*继续接取降魔任务>\n \n"
            return msg1
        else
            local msg2 = "\n\n你完成了任务"..quest_table[quest_id][2].."【第"..huanshu.."环】。\n"
            if beil ~= "1" then
                    msg2 = msg2 .. "花费了"..gold_cost.."金币领取了"..beil.."倍经验\n"
            end
            msg2 = msg2 .. "获得了"..tonumber(beil) * quest_table[quest_id][3].."经验，"..gold_count.."绑定金币。\n \n#IMAGE1902700016#<@accept_task *01*继续接取降魔任务>\n \n"
            msg2 = msg2 .. "#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*返回>"
            return msg2
        end
    else
        return "\n\n删除任务失败，请查看任务是否还在！\n\n#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*返回>"
    end
end

function accomplish_mozhou_Ex(npc, player, beil, per_gold, quest_id)
    local gold_cost = (tonumber(beil) - 1) * tonumber(per_gold)
    local lv = lualib:Level(player)
    local gold_count = quest_table[quest_id][4] * 50 * lv
    local huanshu = lualib:GetDayInt(player, "xiangmo_quest_var_"..tonumber(quest_id)) + 1
    
    if lualib:Player_IsGoldEnough(player, gold_cost, false) == false then
        return "金币不足！\n\n\n\n\n\n\n\n\n<@likai *01*关闭>"
    end
    if lualib:BagFree(player, true, false, false) < 1 then
        return "包裹空间不足，至少需要1个位置！\n\n\n\n\n\n\n\n\n#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*返回>"
    end
    local reward = {
        {"循环魔咒", 1, true}, 
        {"神羽", 1, false}, 
        }
    local p = 10
    local re_p = lualib:GenRandom(1, 100)
    local reward_item, reward_count, reward_bind = nil, nil, nil
    if re_p <= p then
        local item_index = lualib:GenRandom(1, 2)
        reward_item = reward[item_index][1]
        reward_count = reward[item_index][2]
        reward_bind = reward[item_index][3]
    end
    
    local item_count = lualib:ItemCountByKey(player, "循环魔咒", true, false, false, 2)
    local item_request = quest_table[quest_id][huanshu + 4]
    if item_count < item_request then
        return "\n\n你的循环魔咒数量不足！需要"..item_request.."个循环魔咒！！！\n\n#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*返回>"
    else
        if lualib:DropQuest(player, tonumber(quest_id)) == true then
            lualib:DelItem(player, "循环魔咒", item_request, 2, "提交降魔任务", player)
            if lualib:Player_SubGold(player, gold_cost, false, "降魔任务翻倍领取", player) == false then
                return "金币扣除失败！\n\n\n\n\n\n\n\n\n<@likai *01*关闭>"
            end
            lualib:Player_AddExp(player, tonumber(beil) * quest_table[quest_id][3], "完成任务", player)
			lualib:Player_AddGold(player, gold_count, true, "完成任务", player)
			lualib:SetDayInt(player, "xiangmo_quest_var_"..quest_id, lualib:GetDayInt(player, "xiangmo_quest_var_"..quest_id) + 1)
            if reward_item ~= nil and reward_count ~= nil and reward_bind ~= nil then
                lualib:AddItem(player, reward_item, reward_count, reward_bind, "完成降魔任务后随即奖励！", player)
                local msg1 = "\n\n你使用循环魔咒完成了任务"..quest_table[quest_id][2].."【第"..huanshu.."环】。\n"
                if beil ~= "1" then
                    msg1 = msg1 .. "花费了"..gold_cost.."金币领取了"..beil.."倍经验\n"
                end
                msg1 = msg1 .. "获得了"..tonumber(beil) * quest_table[quest_id][3].."经验，"..gold_count.."绑定金币。\n"
                msg1 = msg1 .. "获得了随机奖励物品"..reward_item.."*"..reward_count.."！\n \n#IMAGE1902700016#<@accept_task *01*继续接取降魔任务>\n \n"
                msg1 = msg1 .. "#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*返回>"
                return msg1
            else
                local msg2 = "\n\n你使用循环魔咒完成了任务"..quest_table[quest_id][2].."【第"..huanshu.."环】。\n"
                if beil ~= "1" then
                    msg2 = msg2 .. "花费了"..gold_cost.."金币领取了"..beil.."倍经验\n"
                end
                msg2 = msg2 .. "获得了"..tonumber(beil) * quest_table[quest_id][3].."经验，"..gold_count.."绑定金币。\n \n#IMAGE1902700016#<@accept_task *01*继续接取降魔任务>\n \n"
                msg2 = msg2 .. "#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*返回>"
                return msg2
            end
        else
            return "\n\n删除任务失败，请查看任务是否还在！\n\n#OFFSET<X:300,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:0>#<@main *01*返回>"
        end
    end
end