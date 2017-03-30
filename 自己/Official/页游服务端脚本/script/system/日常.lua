-----------------------图标显示-----------------------------
function richang_xianshi(player)	
	ShowTimeCount2(player, 0, 1903800075, "日常",0,"") --显示目标图标
end

-------------------图标被点击-----------------------
function richang(player)
	richang_xianshi(player) --显示目标图标
	
	--初始化悬赏任务数据
	local all_days = lualib:GetAllDays(0)
	local days = lualib:Player_GetCustomVarInt(player, "custom_var_ss_task_days")
	if days < all_days then
		lualib:Player_SetCustomVarInt(player, "custom_var_ss_task_count", 0)
	end
	
	--初始化挑战场数据
	if lualib:GetAllDays(0) - lualib:GetInt(player,"fuben_chushihua") >= 1 then
		lualib:SetInt(player,"fuben_chushihua",lualib:GetAllDays(0)) --记录开启计时的当前天数
		lualib:SetInt(player,"fuben_cishu",0) --今日副本次数初始化
	end
	local cishu = 1 --普通玩家每日次数
	if lualib:GetVipLevel(player) > 0 then
		cishu = 3 --vip玩家每日次数
	end
	
	local str_1 = "#COLORCOLOR_BLUE#藏宝阁#COLOREND#\n使用#COLORCOLOR_ORANGE#时之沙砾#COLOREND#换取时间进入"
	local str_2 = "#COLORCOLOR_BLUE#悬赏任务#COLOREND##COLORCOLOR_GREENG#("..lualib:GetInt(player,"custom_var_ss_task_count").."/10)#COLOREND#\n#COLORCOLOR_ORANGE#20级#COLOREND#以上玩家可领取"
	local str_3 = "#COLORCOLOR_BLUE#镇魔殿#COLOREND##COLORCOLOR_GREENG#("..lualib:CampCount(player, 4).."/3)#COLOREND#\n#COLORCOLOR_ORANGE#35级#COLOREND#以上玩家需组队挑战"
	local str_4 = "#COLORCOLOR_BLUE#押镖#COLOREND##COLORCOLOR_GREENG#("..lualib:CampCount(player, 12).."/3)#COLOREND#\n#COLORCOLOR_ORANGE#35级#COLOREND#以上玩家可领取"
	local str_5 = "#COLORCOLOR_BLUE#挑战场#COLOREND##COLORCOLOR_GREENG#("..lualib:GetInt(player,"fuben_cishu").."/1)#COLOREND#\n#COLORCOLOR_ORANGE#40级#COLOREND#以上玩家组队挑战"
	local str_6 = "#COLORCOLOR_BLUE#烈焰深渊#COLOREND##COLORCOLOR_GREENG#("..lualib:CampCount(player, 16).."/1)#COLOREND#\n#COLORCOLOR_ORANGE#40级#COLOREND#以上玩家可组队挑战"
	local s = " str_1 = "..string.format("%q",str_1)
	s = s .." str_2 = "..string.format("%q",str_2)
	s = s .." str_3 = "..string.format("%q",str_3)
	s = s .." str_4 = "..string.format("%q",str_4)
	s = s .." str_5 = "..string.format("%q",str_5)
	s = s .." str_6 = "..string.format("%q",str_6)

	local time = {
		lualib:GetInt("0","boss_shuaxin1"), --牛魔将军刷新时间
		lualib:GetInt("0","boss_shuaxin2"), --千年树魔刷新时间
		lualib:GetInt("0","boss_shuaxin3"), --梵天僧刷新时间
		lualib:GetInt("0","boss_shuaxin4"), --血禅师刷新时间
		lualib:GetInt("0","boss_shuaxin5"), --天魔神刷新时间
		lualib:GetInt("0","boss_shuaxin6"), --海魔刷新时间
		lualib:GetInt("0","boss_shuaxin7"), --禁地恶魔领主刷新时间
		lualib:GetInt("0","boss_shuaxin8"), --赤炎酋长刷新时间
	}
	
	local killer = {
		lualib:GetStr("0","boss_killer1"), --牛魔将军消灭者
		lualib:GetStr("0","boss_killer2"), --千年树魔消灭者
		lualib:GetStr("0","boss_killer3"), --梵天僧消灭者
		lualib:GetStr("0","boss_killer4"), --血禅师消灭者
		lualib:GetStr("0","boss_killer5"), --天魔神消灭者
		lualib:GetStr("0","boss_killer6"), --海魔消灭者
		lualib:GetStr("0","boss_killer7"), --禁地恶魔领主消灭者
		lualib:GetStr("0","boss_killer8"), --赤炎酋长消灭者
	}
	
	for i=1,#time do
		s = s .. " time_"..i.." = "..string.format("%q",time[i]).." killer_"..i.." = "..string.format("%q",killer[i])
	end

	lualib:ShowFormWithContent(player,"脚本表单",s)
	lualib:ShowFormWithContent(player,"form文件表单","日常")
	return ""
end