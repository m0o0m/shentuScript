local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("map/�����������")
require("map/������������")
require("map/�������֮��")
require("map/������ħ���")
require("map/������������")
require("map/����ѩ���ؾ�")

function GetReward5(player)
	local mapGuid = lualib:MapGuid(player)
	if lualib:KeyName(mapGuid) == "�����������" then
		lualib:SetDayInt(player,"�������_Daily",1)   --ħ��
		GetReward_5(mapGuid, player)
	end
	if lualib:KeyName(mapGuid) == "������������" then
		lualib:SetDayInt(player,"��������_Daily",1)    --а��
		GetReward_4(mapGuid, player)
	end
	if lualib:KeyName(mapGuid) == "�������֮��" then
		lualib:SetDayInt(player,"���֮��_Daily",1)      --�ڰ�
		GetReward_3(mapGuid, player)
	end
	if lualib:KeyName(mapGuid) == "������ħ���" then
		lualib:SetDayInt(player,"��ħ���_Daily",1)   ---��ħ
		GetReward_2(mapGuid, player)
	end
	if lualib:KeyName(mapGuid) == "������������" then
		lualib:SetDayInt(player,"��������_Daily",1)   --���
		GetReward_1(mapGuid, player)
	end
	if lualib:KeyName(mapGuid) == "ѩ���ؾ�" then
		lualib:SetDayInt(player,"ѩ���ؾ�_Daily",1)   --���
		GetReward_6(mapGuid, player)
	end
	return ""
end

function GetDoubleReward5(player)
	local mapGuid = lualib:MapGuid(player)
	if lualib:KeyName(mapGuid) == "�����������" then
		lualib:SetDayInt(player,"�������_Daily",1)
		GetDoubleReward_5(mapGuid, player)
	end
	if lualib:KeyName(mapGuid) == "������������" then
		lualib:SetDayInt(player,"��������_Daily",1)
		GetDoubleReward_4(mapGuid, player)
	end
	if lualib:KeyName(mapGuid) == "�������֮��" then
		lualib:SetInt(player,"���֮��_Daily",1)
		GetDoubleReward_3(mapGuid, player)
	end
	if lualib:KeyName(mapGuid) == "������ħ���" then
		lualib:SetDayInt(player,"��ħ���_Daily",1)
		GetDoubleReward_2(mapGuid, player)
	end
	if lualib:KeyName(mapGuid) == "������������" then
		lualib:SetDayInt(player,"��������_Daily",1)
		GetDoubleReward_1(mapGuid, player)
	end
	if lualib:KeyName(mapGuid) == "ѩ���ؾ�" then
		lualib:SetDayInt(player,"ѩ���ؾ�_Daily",1)   --���
		GetDoubleReward_6(mapGuid, player)
	end
	return ""
end

function LeaveCurrentMap(player)
	lualib:ShowFormWithContent(player, "�ű���", "DailyFbWnd.ConfirmDlg()")
	return ""
end

function LeaveMap(player)
	lualib:Player_MapMoveXY(player, "��ɽ��" , 161 , 200 , 3 )
	return ""
end

function AutoFight(player)
	lualib:StartAutoRun(player, "")
	if not lualib:HasBuff(player,"�Զ����") then
		lualib:AddBuff(player, "�Զ����", 0)
	end
	return ""
end