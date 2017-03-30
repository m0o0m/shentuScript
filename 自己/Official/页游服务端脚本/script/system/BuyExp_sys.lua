local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")
require("form/BuyExp_s")

-----------------------ͼ����ʾ-----------------------------
function buyExp_icon_show(player)
	
	if buyExp_IsWitinTime() then
		local times = lualib:GetDayInt(player, "�ڼ��ξ�������")
		local clientType = lualib:GetClientType(player) 
		if clientType == 0 then
			AddSEIcon(player,1, -7, "���ƾ���", 1800200011, "����ʱ", "buyExp_IconOnClick","","�������飬����������")
			if 5 > times then
				AddIconMagic(player, "���ƾ���",3020300700, -40,-40, 150)
			end
		elseif clientType == 1 then
			AddSEIcon(player,1, -7, "���ƾ���", 1800200091, "����ʱ", "buyExp_IconOnClick","","�������飬����������")
			if 5 > times then
				AddIconMagic(player, "���ƾ���",3020300700, -40,-40, 150)
			end
		end
	end
	return ""
end

function buyExp_addIcon_openUI(player)
	if buyExp_IsWitinTime() then
		lualib:ShowFormWithContent(player, "�ű���", "LittleMap.addEffect_BuyExp()")
		lualib:DelayCall(player, 500, "buyExp_icon_show", "")
		lualib:DelayCall(player, 500, "buyExp_IconOnClick", "")
	end
	return ""
end
-------------------ͼ�걻���-----------------------
function buyExp_IconOnClick(player)
	if not buyExp_IsWitinTime() then
		lualib:SysPromptMsg(player, "��ѽ���")
		return ""
	end


	local times = lualib:GetDayInt(player, "�ڼ��ξ�������")
	--lualib:SysPromptMsg(player, "�����"..tostring(times).."�ξ�������")

	if times == nil or times == 0 then
		lualib:SetDayInt(player, "�ڼ��ξ�������", 1)
		times = 1
	--elseif times > 4 then
	--	lualib:SysPromptMsg(player, "������ʣ�ྭ�����ƴ���")
	--	return ""
	end
	
	local startServerTime = lualib:GetConstVar("StartServerTime")	
	local startServerDay = lualib:Time2Str("%Y-%m-%d", lualib:Str2Time(startServerTime))
	startServerDay = startServerDay.." 00:00:00"
	
	--���㵽����������24��ʣ����
	local remainTime =  259200 - (lualib:GetAllTime() - lualib:Str2Time(startServerDay))
	--lualib:SysPromptMsg(player, "ʣ������룺"..remainTime)
	local whichDay = buyExp_GetWhichDay()
	local desLevel = buyExp_calculateLevel(player) + lualib:Level(player)
	lualib:ShowFormWithContent(player, "form�ļ���", "BuyExp_c#"..serialize(t_exp_cost).."#"..times.."#"..remainTime.."#"..whichDay.."#"..desLevel)
	return ""
end

