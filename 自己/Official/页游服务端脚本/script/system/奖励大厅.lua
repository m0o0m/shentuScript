local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")
require("form/ActivityDegree_s")

-----------------------图标显示-----------------------------
function openOnlineReward_show(player)
	AddSEIcon(player, 1, -2, "奖励大厅", 1800200035, "倒计时", "openOnlineReward","","各种奖励拿到手软")	
	lualib:AddTimer(player, 821, 10000, -1, "get_magic")
	local level = lualib:Level(player)
	if level >= 60 then
		local login_day = lualib:GetInt(player,"login_days")
		if login_day > 7 then
			login_day = 7
		end	
		for i = 1 , login_day do 
			local a = lualib:GetInt(player,"Login_Is_Get"..i)
			if a == 0 then
				lualib:SetInt(player,"RewardMagic",1)
				--lualib:ShowFormWithContent(player, "脚本表单", "LittleMap.redSpotsT()")
				AddIconMagic(player, "奖励大厅",3020300100,20,-16, 180)
				return ""
			end
		end
		local hour = lualib:GetInt(player,"logout_hour")
		if hour > 0 then
			lualib:SetInt(player,"RewardMagic",1)
			--lualib:ShowFormWithContent(player, "脚本表单", "LittleMap.redSpotsT()")
			AddIconMagic(player, "奖励大厅",3020300100,20,-16, 180)	
			return ""
		end
		local day_time = lualib:GetDayInt(player,"online_times")
		local this_time = lualib:OnlineTimeEx(player)
		local all_time = day_time + this_time	
		local online_gift = {900,1800,3600,7200}
		for i = 1 , 4 do 
			local b  = lualib:GetDayInt(player,"Online_Is_Get"..i)
			if b == 0 and all_time >= online_gift[i] then
				lualib:SetInt(player,"RewardMagic",1)
				--lualib:ShowFormWithContent(player, "脚本表单", "LittleMap.redSpotsT()")
				AddIconMagic(player, "奖励大厅",3020300100,20,-16, 180)
				return ""
			end
		end	
    end
end

-------------------图标被点击-----------------------
function openOnlineReward(player)
	----------------weiduan-------------
	if lualib:GetClientType(player) == 0 then
		lualib:ShowFormWithContent(player, "form文件表单", "Reward_hall")
		return ""
	end
	---------------------------------
	--local a = lualib:GetInt(player,"isGetAll7DayRWD")
	--lualib:ShowFormWithContent(player, "form文件表单", "Reward_hall")
	local a = lualib:GetInt(player,"isGetAll7DayRWD")
	lualib:ShowFormWithContent(player, "脚本表单", "CLOnOpenRewardHall()")
    return ""
end


function get_magic(player)
------------活跃度
	if 0 == lualib:GetDayInt(player,"activityDgr_zx") then
		local day_time = lualib:GetDayInt(player, "online_times")
		local this_time = lualib:OnlineTimeEx(player)
		all_time = day_time + this_time
		if 3600 <= all_time then
			lualib:SetDayInt(player,"activityDgr_zx", 1)
			lualib:SetDayInt(player,"totalActivityDegree", lualib:GetDayInt(player, "totalActivityDegree") + 15)
			ActivityDegree_setFlag(player)
		end
	end
	if 0 == lualib:GetDayInt(player,"activityDgr_vip") then
		if 0 < lualib:GetVipLevel(player) then
			lualib:SetDayInt(player,"activityDgr_vip", 1)
			lualib:SetDayInt(player,"totalActivityDegree", lualib:GetDayInt(player, "totalActivityDegree") + 5)
			ActivityDegree_setFlag(player)
		end
	end
	ActivityDegree_addEffect(player)
------------活跃度
	local level = lualib:Level(player)
	if level < 60 then
		return ""
	end	
	if lualib:GetInt(player,"RewardMagic") == 1 then
		return ""
	end	
	local login_day = lualib:GetInt(player,"login_days")
	if login_day > 7 then
		login_day = 7
	end	
	for i = 1 , login_day do 
		local a = lualib:GetInt(player,"Login_Is_Get"..i)
		if a == 0 then
			lualib:SetInt(player,"RewardMagic",1)
			--lualib:ShowFormWithContent(player, "脚本表单", "LittleMap.redSpotsT()")
			AddIconMagic(player, "奖励大厅",3020300100,20,-16, 180)
			return ""
		end
	end
	local hour = lualib:GetInt(player,"logout_hour")
	if hour > 0 then
		lualib:SetInt(player,"RewardMagic",1)
		--lualib:ShowFormWithContent(player, "脚本表单", "LittleMap.redSpotsT()")
		AddIconMagic(player, "奖励大厅",3020300100,20,-16, 180)
		return ""
	end
	local day_time = lualib:GetDayInt(player,"online_times")
	local this_time = lualib:OnlineTimeEx(player)
	local all_time = day_time + this_time	
	local online_gift = {900,1800,3600,7200}
	for i = 1 , 4 do 
		local b  = lualib:GetDayInt(player,"Online_Is_Get"..i)
		if b == 0 and all_time >= online_gift[i] then
			lualib:SetInt(player,"RewardMagic",1)
			--lualib:ShowFormWithContent(player, "脚本表单", "LittleMap.redSpotsT()")
			AddIconMagic(player, "奖励大厅",3020300100,20,-16, 180)
			return ""
		end
	end	
	return ""
end