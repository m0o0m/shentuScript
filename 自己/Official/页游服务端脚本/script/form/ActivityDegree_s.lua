local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")


--活跃度奖励
local ItemReward = {
	{
		20,
		{"100绑定元宝", "魂珠碎片小","双倍经验4小时绑"},
		{1, 6, 1},
		{1, 1, 1},
		{0, 0, 0}
	},
	{
		50,
		{"100绑定元宝", "魂珠碎片中", "经验丹大"},
		{2, 1, 2},
		{1, 1, 1},
		{0, 0, 0}
	},
	{
		85,
		{"500绑定元宝", "宝石结晶小", "BOSS积分精魄小"},
		{1, 10, 2},
		{1, 1, 1},
		{0, 0, 0}
	},
	{
		100,
		{"500绑定元宝", "宝石结晶中", "BOSS积分精魄"},
		{2, 1, 1},
		{1, 1, 1},
		{0, 0, 0}
	}
}



function ActivityDegree_openUI(player)
	lualib:SetInt(player, "firstFullOfActDgr", 1)
	lualib:ShowFormWithContent(player,"脚本表单","PlayerHeaderInfo.delArrow()")
	local progress = {{0,12},{0,5},{0,1},{0,1},{0,3},{0,1},{0,1},{0,1},{0,1}}
	local missionState = {0, 0, 0, 0} -- = 0 表示未达到要求，= 1 表示可以领奖，= 2 表示已经领过奖
	local str = lualib:GetDayStr(player, "ActivityDegree_flag")
	if "" ~= str then
		missionState = json.decode(str)
	end

	--除魔
	local totalTimes = 0
	if 3 > lualib:GetVipLevel(player) then
		totalTimes = 12
	elseif 6 > lualib:GetVipLevel(player) then
		totalTimes = 14
	else
		totalTimes = 16
	end
	progress[1][1] = totalTimes - lualib:GetInt(player, "cmDayNum")
	if 12 < progress[1][1] then
		progress[1][1] = progress[1][2]
	end
	--每日副本
	progress[2][1] = lualib:GetDayInt(player,"activityDgr_fb")

	--在线时间
	local all_time = 0
	if 0 == lualib:GetDayInt(player,"activityDgr_zx") then
		local day_time = lualib:GetDayInt(player, "online_times")
		local this_time = lualib:OnlineTimeEx(player)
		all_time = day_time + this_time
		if 3600 <= all_time then
			progress[3][1] = progress[3][2]
			all_time = 0
		else
			all_time = 3600 - all_time
		end
	else
		progress[3][1] = progress[3][2]
	end

	--成为VIP
	if 0 < lualib:GetVipLevel(player) then
		progress[7][1] = progress[7][2]
	end

	--精炼系统
	progress[4][1] = lualib:GetDayInt(player,"activityDgr_jl")
	--每日BOSS
	progress[5][1] = lualib:GetDayInt(player,"activityDgr_BOSS")
	--夜袭巫山城
	progress[6][1] = lualib:GetDayInt(player,"activityDgr_yxwsc")
	--每日探宝
	progress[8][1] = lualib:GetDayInt(player,"activityDgr_tb")
	--封魔副本
	progress[9][1] = lualib:GetDayInt(player,"activityDgr_fm")
	--判断是否可以领取奖励
	local totalActivityDegree = lualib:GetDayInt(player, "totalActivityDegree")
	for i = 1, #missionState do
		if 0 == missionState[i] then
			if ItemReward[i][1] <= totalActivityDegree then
				missionState[i] = 1
			end
		end
	end

	lualib:SetDayStr(player, "ActivityDegree_flag", json.encode(missionState))
	--lualib:ShowFormWithContent(player,"脚本表单","ActivityDegree.Fill("..serialize(progress)..","..totalActivityDegree..","..serialize(missionState)..","..all_time..","..serialize(ItemReward)..","..lualib:Level(player)..")")
	lualib:ShowFormWithContent(player,"form文件表单","ActivityDegree#"..serialize(progress).."#"..totalActivityDegree.."#"..serialize(missionState).."#"..all_time.."#"..serialize(ItemReward).."#"..lualib:Level(player))
	return ""
end

function ActivityDegree_getReward(player, param)
	param = tonumber(param)
	local totalActivityDegree = lualib:GetDayInt(player, "totalActivityDegree")
	local missionState = {0, 0, 0, 0}
	local str = lualib:GetDayStr(player, "ActivityDegree_flag")
	if "" ~= str then
		missionState = json.decode(str)
	end
	if ItemReward[param][1] <= totalActivityDegree then
		if #ItemReward[param] > lualib:Player_GetBagFree(player) then
			lualib:SysPromptMsg(player, "包裹空间不足。")
		else
			missionState[param] = 2
			if lualib:SetDayStr(player, "ActivityDegree_flag", json.encode(missionState)) then
				lualib:Player_ItemRequest(player, ItemReward[param][2], ItemReward[param][3], ItemReward[param][4], ItemReward[param][5], "活跃度奖励", player)
				for i = 1, #ItemReward[param][2] do
					lualib:SysPromptMsg(player, "领取活跃度奖励："..ItemReward[param][2][i].." × "..ItemReward[param][3][i].."!")
				end
				ActivityDegree_delEffect(player)
				lualib:ShowFormWithContent(player,"脚本表单","ActivityDegree.changeBtnState("..param..", 1)")
				return ""
			else
				lualib:SysPromptMsg(player, "未知错误，道具添加失败！")
			end
		end
	else
		lualib:SysPromptMsg(player, "您的活跃度还未达到领奖要求！")
	end
	lualib:ShowFormWithContent(player,"脚本表单","ActivityDegree.changeBtnState("..param..", 0)")
	return ""
end

function ActivityDegree_findNpc(player)
	if 50 > lualib:Level(player) then
		return ""
	else
		if lualib:HasBuff(player,"摆摊") then
			lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
			return ""
		end
		lualib:Player_MapMoveXY(player, "土城", 103, 128, 1)
		lualib:ShowFormWithContent(player,"form文件表单","NightWnd")
	end
	return ""
end

function ActivityDegree_addEffect(player)
	local missionState = {0, 0, 0, 0} -- = 0 表示未达到要求，= 1 表示可以领奖，= 2 表示已经领过奖
	local str = lualib:GetDayStr(player, "ActivityDegree_flag")
	if "" ~= str then
		missionState = json.decode(str)
	end
	for i = 1, #missionState do
		if 1 == missionState[i] then
			lualib:ShowFormWithContent(player,"脚本表单","PlayerHeaderInfo.addEffectToActivityDgr()")
			return ""
		end
	end
end

function ActivityDegree_delEffect(player)
	local missionState = {0, 0, 0, 0} -- = 0 表示未达到要求，= 1 表示可以领奖，= 2 表示已经领过奖
	local str = lualib:GetDayStr(player, "ActivityDegree_flag")
	if "" ~= str then
		missionState = json.decode(str)
	end
	for i = 1, #missionState do
		if 1 == missionState[i] then
			return ""
		end
	end
	lualib:ShowFormWithContent(player,"脚本表单","PlayerHeaderInfo.delEffectToActivityDgr()")
	return ""
end

function ActivityDegree_setFlag(player)
	local ItemReward = {
	{
		20,
		{"100绑定元宝", "魂珠碎片小","双倍经验4小时绑"},
		{1, 6, 1},
		{1, 1, 1},
		{0, 0, 0}
	},
	{
		50,
		{"100绑定元宝", "魂珠碎片中", "经验丹大"},
		{2, 1, 2},
		{1, 1, 1},
		{0, 0, 0}
	},
	{
		85,
		{"500绑定元宝", "宝石结晶小", "BOSS积分精魄小"},
		{1, 10, 2},
		{1, 1, 1},
		{0, 0, 0}
	},
	{
		100,
		{"500绑定元宝", "宝石结晶中", "BOSS积分精魄"},
		{2, 1, 1},
		{1, 1, 1},
		{0, 0, 0}
	}
}
	local totalActivityDegree = lualib:GetDayInt(player, "totalActivityDegree")
	local missionState = {0, 0, 0, 0} -- = 0 表示未达到要求，= 1 表示可以领奖，= 2 表示已经领过奖
	local str = lualib:GetDayStr(player, "ActivityDegree_flag")
	if "" ~= str then
		missionState = json.decode(str)
	end
	for i = 1, #missionState do
		if 0 == missionState[i] then
			if ItemReward[i][1] <= totalActivityDegree then
				missionState[i] = 1
			end
		end
	end
	lualib:SetDayStr(player, "ActivityDegree_flag", json.encode(missionState))
	if 100 == totalActivityDegree then
		if 0 == lualib:GetInt(player, "firstFullOfActDgr") then
			lualib:ShowFormWithContent(player,"脚本表单","PlayerHeaderInfo.ArrowToActivityDgr()")
		end
	end
	ActivityDegree_addEffect(player)
end


