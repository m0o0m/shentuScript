local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")



function ClearTimes(player)
	------------------------------------ÿ�ձ�������start---------------------------
	for i=5,10 do 
		local int = lualib:GetDayInt(player, "qianwang".. i)  
		lualib:SetInt(player, "qianwang".. i,int)
		lualib:NotifyVar(player, "qianwang"..i)
	end
	
	local dayIntNameTb = {"62�����鸱��","63����ë����","64�����Ƹ���","65�����鸱��","65�����鸱��","67����ʯ����"}
	if lualib:GetDayInt(player, "dailyFbDayFlag") == 0 then
		for i = 1, #dayIntNameTb do
			lualib:SetInt(player, dayIntNameTb[i], 0)
			lualib:NotifyVar(player, dayIntNameTb[i])
		end
		lualib:SetDayInt(player, "dailyFbDayFlag", 1)
	end	
	
	if lualib:GetDayInt(player,"resetDayNum") == 0 then  --ÿ�������������
		lualib:SetInt(player,"cmDayNum",12)
		lualib:NotifyVar(player, "cmDayNum")
		lualib:SetDayInt(player,"resetDayNum",1)
	end
	-----------------------------------ÿ�ձ�������end------------------------------------
	
	---------------------------------ÿ�ճ�ֵ  ���˺�--------------------
	local id = tostring(lualib:Player_GetAccountID(player))
	lualib:SetDBNum("dailyConsume_reward"..id, 0)
	------------------------------ÿ�ճ�ֵ  ���˺�END------------------------------
	
	-----*******************************������������****************---
	local last_login_day = lualib:Player_GetCustomVarInt(player, "last_login_day")
    local now = lualib:GetAllDays(0)
    local off_day = now - last_login_day
    if off_day >= 1 then
        --��¼���ۼ�
        local cur_days = lualib:Player_GetCustomVarInt(player, "login_days")
        lualib:Player_SetCustomVarInt(player, "login_days", cur_days + 1)
		lualib:Player_SetCustomVarInt(player, "last_login_day", now)
    end

	----*******************************������������*******************************---
	return ""
end

function ClearWorshipFlag(player)
	if lualib:GetDayInt(player, "worshipFlag") ~= 0 then
		lualib:SetDayInt(player, "worshipFlag", 0)
	end
	if lualib:HasBuff(player,"Ĥ�ݳ���") then
		lualib:DelBuff(player, "Ĥ�ݳ���")
	end
	return ""
end
