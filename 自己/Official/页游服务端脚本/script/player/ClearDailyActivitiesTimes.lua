local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")



function ClearTimes(player)
	------------------------------------每日变量清零start---------------------------
	for i=5,10 do 
		local int = lualib:GetDayInt(player, "qianwang".. i)  
		lualib:SetInt(player, "qianwang".. i,int)
		lualib:NotifyVar(player, "qianwang"..i)
	end
	
	local dayIntNameTb = {"62级经验副本","63级羽毛副本","64级盾牌副本","65级经验副本","65级宝珠副本","67级宝石副本"}
	if lualib:GetDayInt(player, "dailyFbDayFlag") == 0 then
		for i = 1, #dayIntNameTb do
			lualib:SetInt(player, dayIntNameTb[i], 0)
			lualib:NotifyVar(player, dayIntNameTb[i])
		end
		lualib:SetDayInt(player, "dailyFbDayFlag", 1)
	end	
	
	if lualib:GetDayInt(player,"resetDayNum") == 0 then  --每日重置任务次数
		lualib:SetInt(player,"cmDayNum",12)
		lualib:NotifyVar(player, "cmDayNum")
		lualib:SetDayInt(player,"resetDayNum",1)
	end
	-----------------------------------每日变量清零end------------------------------------
	
	---------------------------------每日充值  绑定账号--------------------
	local id = tostring(lualib:Player_GetAccountID(player))
	lualib:SetDBNum("dailyConsume_reward"..id, 0)
	------------------------------每日充值  绑定账号END------------------------------
	
	-----*******************************奖励大厅变量****************---
	local last_login_day = lualib:Player_GetCustomVarInt(player, "last_login_day")
    local now = lualib:GetAllDays(0)
    local off_day = now - last_login_day
    if off_day >= 1 then
        --登录，累加
        local cur_days = lualib:Player_GetCustomVarInt(player, "login_days")
        lualib:Player_SetCustomVarInt(player, "login_days", cur_days + 1)
		lualib:Player_SetCustomVarInt(player, "last_login_day", now)
    end

	----*******************************奖励大厅变量*******************************---
	return ""
end

function ClearWorshipFlag(player)
	if lualib:GetDayInt(player, "worshipFlag") ~= 0 then
		lualib:SetDayInt(player, "worshipFlag", 0)
	end
	if lualib:HasBuff(player,"膜拜城主") then
		lualib:DelBuff(player, "膜拜城主")
	end
	return ""
end
