local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")


--��Ծ�Ƚ���
local ItemReward = {
	{
		20,
		{"100��Ԫ��", "������ƬС","˫������4Сʱ��"},
		{1, 6, 1},
		{1, 1, 1},
		{0, 0, 0}
	},
	{
		50,
		{"100��Ԫ��", "������Ƭ��", "���鵤��"},
		{2, 1, 2},
		{1, 1, 1},
		{0, 0, 0}
	},
	{
		85,
		{"500��Ԫ��", "��ʯ�ᾧС", "BOSS���־���С"},
		{1, 10, 2},
		{1, 1, 1},
		{0, 0, 0}
	},
	{
		100,
		{"500��Ԫ��", "��ʯ�ᾧ��", "BOSS���־���"},
		{2, 1, 1},
		{1, 1, 1},
		{0, 0, 0}
	}
}



function ActivityDegree_openUI(player)
	lualib:SetInt(player, "firstFullOfActDgr", 1)
	lualib:ShowFormWithContent(player,"�ű���","PlayerHeaderInfo.delArrow()")
	local progress = {{0,12},{0,5},{0,1},{0,1},{0,3},{0,1},{0,1},{0,1},{0,1}}
	local missionState = {0, 0, 0, 0} -- = 0 ��ʾδ�ﵽҪ��= 1 ��ʾ�����콱��= 2 ��ʾ�Ѿ������
	local str = lualib:GetDayStr(player, "ActivityDegree_flag")
	if "" ~= str then
		missionState = json.decode(str)
	end

	--��ħ
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
	--ÿ�ո���
	progress[2][1] = lualib:GetDayInt(player,"activityDgr_fb")

	--����ʱ��
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

	--��ΪVIP
	if 0 < lualib:GetVipLevel(player) then
		progress[7][1] = progress[7][2]
	end

	--����ϵͳ
	progress[4][1] = lualib:GetDayInt(player,"activityDgr_jl")
	--ÿ��BOSS
	progress[5][1] = lualib:GetDayInt(player,"activityDgr_BOSS")
	--ҹϮ��ɽ��
	progress[6][1] = lualib:GetDayInt(player,"activityDgr_yxwsc")
	--ÿ��̽��
	progress[8][1] = lualib:GetDayInt(player,"activityDgr_tb")
	--��ħ����
	progress[9][1] = lualib:GetDayInt(player,"activityDgr_fm")
	--�ж��Ƿ������ȡ����
	local totalActivityDegree = lualib:GetDayInt(player, "totalActivityDegree")
	for i = 1, #missionState do
		if 0 == missionState[i] then
			if ItemReward[i][1] <= totalActivityDegree then
				missionState[i] = 1
			end
		end
	end

	lualib:SetDayStr(player, "ActivityDegree_flag", json.encode(missionState))
	--lualib:ShowFormWithContent(player,"�ű���","ActivityDegree.Fill("..serialize(progress)..","..totalActivityDegree..","..serialize(missionState)..","..all_time..","..serialize(ItemReward)..","..lualib:Level(player)..")")
	lualib:ShowFormWithContent(player,"form�ļ���","ActivityDegree#"..serialize(progress).."#"..totalActivityDegree.."#"..serialize(missionState).."#"..all_time.."#"..serialize(ItemReward).."#"..lualib:Level(player))
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
			lualib:SysPromptMsg(player, "�����ռ䲻�㡣")
		else
			missionState[param] = 2
			if lualib:SetDayStr(player, "ActivityDegree_flag", json.encode(missionState)) then
				lualib:Player_ItemRequest(player, ItemReward[param][2], ItemReward[param][3], ItemReward[param][4], ItemReward[param][5], "��Ծ�Ƚ���", player)
				for i = 1, #ItemReward[param][2] do
					lualib:SysPromptMsg(player, "��ȡ��Ծ�Ƚ�����"..ItemReward[param][2][i].." �� "..ItemReward[param][3][i].."!")
				end
				ActivityDegree_delEffect(player)
				lualib:ShowFormWithContent(player,"�ű���","ActivityDegree.changeBtnState("..param..", 1)")
				return ""
			else
				lualib:SysPromptMsg(player, "δ֪���󣬵������ʧ�ܣ�")
			end
		end
	else
		lualib:SysPromptMsg(player, "���Ļ�Ծ�Ȼ�δ�ﵽ�콱Ҫ��")
	end
	lualib:ShowFormWithContent(player,"�ű���","ActivityDegree.changeBtnState("..param..", 0)")
	return ""
end

function ActivityDegree_findNpc(player)
	if 50 > lualib:Level(player) then
		return ""
	else
		if lualib:HasBuff(player,"��̯") then
			lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
			return ""
		end
		lualib:Player_MapMoveXY(player, "����", 103, 128, 1)
		lualib:ShowFormWithContent(player,"form�ļ���","NightWnd")
	end
	return ""
end

function ActivityDegree_addEffect(player)
	local missionState = {0, 0, 0, 0} -- = 0 ��ʾδ�ﵽҪ��= 1 ��ʾ�����콱��= 2 ��ʾ�Ѿ������
	local str = lualib:GetDayStr(player, "ActivityDegree_flag")
	if "" ~= str then
		missionState = json.decode(str)
	end
	for i = 1, #missionState do
		if 1 == missionState[i] then
			lualib:ShowFormWithContent(player,"�ű���","PlayerHeaderInfo.addEffectToActivityDgr()")
			return ""
		end
	end
end

function ActivityDegree_delEffect(player)
	local missionState = {0, 0, 0, 0} -- = 0 ��ʾδ�ﵽҪ��= 1 ��ʾ�����콱��= 2 ��ʾ�Ѿ������
	local str = lualib:GetDayStr(player, "ActivityDegree_flag")
	if "" ~= str then
		missionState = json.decode(str)
	end
	for i = 1, #missionState do
		if 1 == missionState[i] then
			return ""
		end
	end
	lualib:ShowFormWithContent(player,"�ű���","PlayerHeaderInfo.delEffectToActivityDgr()")
	return ""
end

function ActivityDegree_setFlag(player)
	local ItemReward = {
	{
		20,
		{"100��Ԫ��", "������ƬС","˫������4Сʱ��"},
		{1, 6, 1},
		{1, 1, 1},
		{0, 0, 0}
	},
	{
		50,
		{"100��Ԫ��", "������Ƭ��", "���鵤��"},
		{2, 1, 2},
		{1, 1, 1},
		{0, 0, 0}
	},
	{
		85,
		{"500��Ԫ��", "��ʯ�ᾧС", "BOSS���־���С"},
		{1, 10, 2},
		{1, 1, 1},
		{0, 0, 0}
	},
	{
		100,
		{"500��Ԫ��", "��ʯ�ᾧ��", "BOSS���־���"},
		{2, 1, 1},
		{1, 1, 1},
		{0, 0, 0}
	}
}
	local totalActivityDegree = lualib:GetDayInt(player, "totalActivityDegree")
	local missionState = {0, 0, 0, 0} -- = 0 ��ʾδ�ﵽҪ��= 1 ��ʾ�����콱��= 2 ��ʾ�Ѿ������
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
			lualib:ShowFormWithContent(player,"�ű���","PlayerHeaderInfo.ArrowToActivityDgr()")
		end
	end
	ActivityDegree_addEffect(player)
end


