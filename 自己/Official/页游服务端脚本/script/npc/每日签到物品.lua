--每日签到物品

--协议定义
--第一行按顺序发送所有奖品item的KeyName和数量，用逗号隔开 如：长剑[1],短剑[1],长刀[1],短刀[1],盔甲[1]
--第二行是已经抽中的奖品，按次序排列 如： 3,2,4 表示第一次抽中长刀，第二次抽中短剑...
--第三行表示是否播放特效1播放，0直接显示
--第四行表示是否有未领取奖励，1有，0没有
--行分隔符为"\n"
--
--自定义变量定义
--"每日签到_times"  玩家本宝箱的抽奖次数
--"每日签到_Sel_1"  第一次抽中的奖品序列号
--"每日签到_Sel_2"  第二次抽中的奖品序列号
--"每日签到_Sel_3"  第三次抽中的奖品序列号
--"每日签到_CurGroupID"     玩家本次的抽奖的分组

settings1 =
{
    ["每天次数"]=1,
    ["消耗元宝"]=0,
    ["等级限制"]=1,
    ["转盘次数"]=1, --不能大于转盘上的物品数量
}

AwardGroup1 =
{
	{
	    --Keyname            Rate         count   notice
		{"item1",               1,			1,		""},
		{"item2",               2,			1,		""},
		{"item3",               3,			1,		""},
		{"item4",               5,			1,		""},
		{"item5",               1,			1,		""},
		{"item6",               1,			1,		""},
		{"item7",               3,			1,		""},
		{"item8",               1,			1,		""},
	},
}

item =  {
	{"1.5倍经验卷轴", "1.5倍经验卷轴", "1.5倍经验卷轴", "1.5倍经验卷轴", "1.5倍经验卷轴", "1.5倍经验卷轴", "双倍经验卷轴", "双倍经验卷轴", "3倍经验卷轴"},
	{"玫瑰花", "玫瑰花", "玫瑰花", "9朵玫瑰花"},
	{"循环魔咒", "经验丹", "经验丹", "大型经验丹"},
	{"释灵珠", "聚灵珠(小)", "聚灵珠(小)", "聚灵珠(小)", "聚灵珠(中)", "聚灵珠(中)", "聚灵珠(大)", "超级聚灵珠"},
	{"天机罗盘"},
	{"打捆绳", "打捆绳", "打捆绳", "打捆绳"},
	{"巫山城传送", "龙城传送", "逍遥游"},
	{"坐骑经验丹", "中型坐骑经验丹", "大型坐骑经验丹", "超级坐骑经验丹", "坐骑口粮"},
        }
		
function compare1(a, b)
    return a < b
end

----------------------------设置玩家转到的物品----------------------------------
function GetRandomAward1(player)
    local group = lualib:Player_GetCustomVarInt(player, "每日签到_CurGroupID")	
    local max = 0
    local v = {}
    for i = 1, table.getn(AwardGroup1[group]) do
        max = max + AwardGroup1[group][i][2]
        v[i] = max
    end
    local times = lualib:Player_GetCustomVarInt(player, "每日签到_times")
    local r_off = 0
    local selected = {}
    for i = 1, times do
        selected[i] = lualib:Player_GetCustomVarInt(player, "每日签到_Sel_"..i)
        r_off = r_off + AwardGroup1[group][selected[i]][2]
    end

    table.sort(selected, compare1)

    local r = lualib:GenRandom(1, max - r_off)

    for i = 1,times do
        if r > v[selected[i]] - AwardGroup1[group][selected[i]][2] then
            r = r + AwardGroup1[group][selected[i]][2]
        end
    end

    local sel = 8
    for i = 1, table.getn(v) do
        if r <= v[i] then
            sel = i
            break
        end
    end
    return sel
end

---------------------------------转盘上显示物品------------------------------------------
-- showtype 1、播放动画 0、直接显示
function notify_award1(player, showtype)
    local group = lualib:Player_GetCustomVarInt(player, "每日签到_CurGroupID")
    local times = lualib:Player_GetCustomVarInt(player, "每日签到_times")
    local content = ""
	
		local max = table.getn(AwardGroup1[group])
		for j = 1, max do
			local suiji = 0
			if lualib:Player_GetCustomVarInt(player, "每日签到_转盘道具_"..j) == 0 then
				suiji = math.random(#item[j])
				lualib:Player_SetCustomVarInt(player, "每日签到_转盘道具_"..j,suiji)
			else
				suiji = lualib:Player_GetCustomVarInt(player, "每日签到_转盘道具_"..j)
			end
			
			content = content..item[j][suiji].."["..AwardGroup1[group][j][3].."],"
			
			if lualib:Player_GetCustomVarInt(player, "每日签到_Sel_1") == j then
				lualib:Player_SetCustomVarStr(player, "每日签到_ItmeName", item[j][suiji])
			end
		end
		content = content.."\n"
		
		local t = 0
		for i = 1,times do
			var = "每日签到_Sel_"..i
			local lastsel = lualib:Player_GetCustomVarInt(player, var)
			content = content..lastsel..","
		end
		content = content.."\n"..showtype
		content = content.."\n"..lualib:Player_GetCustomVarInt(player, "每日签到_HasAward")
	
    lualib:Print(content)
    lualib:ShowFormWithContent(player, "幸运转盘", content)
end