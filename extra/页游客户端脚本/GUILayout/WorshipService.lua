local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")


function BeginWorship(player)
	
	local isBegin = lualib:GetInt("", "worshipBeginning")
	if isBegin == 1 then
		lualib:SetDayInt(player, "worshipFlag", 1)
		local str = "\"Ĥ���У����ڻ�ô�������!\""
		lualib:ShowFormWithContent(player, "�ű���", "CastlellanWorshipWnd.BeginPrompt("..str..");")
	else
		--lualib:SysPromptMsg(player, "���δ��ʼ��")
		local str = "\"11:30��17��30����Ĥ��!\""
		lualib:ShowFormWithContent(player, "�ű���", "CastlellanWorshipWnd.MsgPrompt("..str..");")
	end
	return ""
end

function GetAbility(player)
	local CastleOwnFamily = lualib:GetCastleOwnFamily("����")
	if player == lualib:GetFamilyLeader(tostring(CastleOwnFamily)) then
		if lualib:HasBuff(player, "����֮��") then
			local str = "\"���Ѿ���ȡ������buff��\""
			lualib:ShowFormWithContent(player, "�ű���", "CastlellanWorshipWnd.MsgPrompt("..str..");")
		else
			lualib:AddBuff(player, "����֮��", 0)
		end
	else
		local str = "\"�����ǳ�����������ȡ����!\""
		lualib:ShowFormWithContent(player, "�ű���", "CastlellanWorshipWnd.MsgPrompt("..str..");")
	end
	return ""
end

function GetWelfare(player)
	local CastleOwnFamily = lualib:GetCastleOwnFamily("����")
	if player == lualib:GetFamilyLeader(tostring(CastleOwnFamily)) then
		if lualib:GetDayInt(player, "castellanDailyWelfare") == 0 then
			local a = lualib:Now()
			local head = string.find(a, " ") + 1
			local ending = string.find(a, ":") - 1
			local hour = string.sub(a, head, ending)
			if tonumber(hour) >=21 and tonumber(hour) <= 23 then
				if lualib:Player_AddIngot(player, 2000, true, "����ÿ��Ԫ������", "ϵͳ") then
					lualib:SetDayInt(player, "castellanDailyWelfare", 1)
				end
			else
				local str = "\"����21����23��֮������ȡ!\""
				lualib:ShowFormWithContent(player, "�ű���", "CastlellanWorshipWnd.MsgPrompt("..str..");")
			end
		else
			local str = "\"������ȡ������ÿ�ո���!\""
			lualib:ShowFormWithContent(player, "�ű���", "CastlellanWorshipWnd.MsgPrompt("..str..");")
		end
	else
		local str = "\"�����ǳ�����������ȡ����!\""
		lualib:ShowFormWithContent(player, "�ű���", "CastlellanWorshipWnd.MsgPrompt("..str..");")
	end
	return ""
end

function GetWeapon(player)
	local CastleOwnFamily = lualib:GetCastleOwnFamily("����")
	if player == lualib:GetFamilyLeader(tostring(CastleOwnFamily)) then
		
	else
		local str = "\"�����ǳ�����������ȡ����!\""
		lualib:ShowFormWithContent(player, "�ű���", "CastlellanWorshipWnd.MsgPrompt("..str..");")
	end
	return ""
end