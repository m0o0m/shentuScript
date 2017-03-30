local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
local data = {
				[1] = 0, --vip�ȼ�
				[2] = 0, --��ֵԪ����
				[3] = 0, --��һ�ȼ�����Ԫ����
				[4] = 0, --��Ϊvip����
				[5] = 0, --�����Ƿ���ȡ������buff
				["item"] = {
					{{"��ɽѩ����",1},{"��ש��",1},{"�ɾ�����",1},{"���ž���",1},{"ת��������",1},{"��������",1}},
					{{"��ë",30},{"��ɽѩ����",1},{"���ӵ�׹",1},{"�ɾ�����",2},{"���ž���",2},{"��������",2}},
					{{"��ʯ�ᾧ��",5},{"��ɽѩ����",1},{"��ש��",2},{"�ɾ�����",3},{"���ž���",3},{"��������",3}},
					{{"��ʯ�ᾧ��",8},{"��ɽѩ����",1},{"��ש��",5},{"�ɾ�����",4},{"���ž���",4},{"��������",4}},
					{{"��ʯ�ᾧ��",1},{"��ɽѩ����",1},{"��ש��",8},{"�ɾ�����",5},{"���ž���",4},{"��������",5}},
					{{"�߼�BOSS���־���",5},{"������Ƭ��",5},{"��ש��",10},{"�߼��ɾ�����",1},{"���ž���",6},{"��������",5}},
					{{"������Ƭ��",1},{"��ɽѩ����",1},{"��ש��",12},{"�߼��ɾ�����",2},{"���ž���",7},{"��������",2}},
					{{"����BOSS���־���",1},{"��ɽѩ����",1},{"��ש��",14},{"�߼��ɾ�����",3},{"���ž���",8},{"��������8Сʱ",1}},
					{{"��ʯ�ᾧ��",1},{"��ɽѩ����",1},{"��ש��",16},{"�߼��ɾ�����",4},{"���ž���",9},{"��������8Сʱ",2}},
					{{"��ë",99},{"������Ƭ��",1},{"��ש��",18},{"�߼��ɾ�����",5},{"���ž���",10},{"��������8Сʱ",2}},	
						
				},
				["buff_img"] = {
					{1806000090,1806000087,1806000093},
					{1806000094,1806000088,1806000098},
					{1806000091,1806000089,1806000096},
					{1806000095,1806000089,1806000097},
					{1806000092,1806000089,1806000098},
					{1806000096,1806000089,1806000094},
					{1806000098,1806000089,1806000095},
					{1806000097,1806000089,1806000096},
					{1806000096,1806000089,1806000097},
					{1806000094,1806000089,1806000098},	
						
				}

}
function main(player)
	local vip_table = {100,10000,50000,100000,200000,500000,800000,1000000,2000000,5000000}
	
	data[1] = lualib:GetVipLevel(player)
	data[2] = lualib:GetTotalBill(player)
	if data[1] ~= 0 then
		data[3] = vip_table[data[1]+1]
	else
		data[3] = vip_table[1]
	end	
	data[4] = lualib:GetDBNum("vip_person")
	data[5] = lualib:GetDayInt(player,"����buff")
	data[6] = lualib:GetVipLevel(player)
	local table_data = serializeSc(data)
	local rewardStateTb = {}
	local str = tostring(lualib:Player_GetAccountID(player))
	for i = 1, data[1] do
		local str1 = str .. "vipReward".. i
		rewardStateTb[i] = lualib:GetDBNum(str1)
		--lualib:SysPromptMsg(player,"server��"..rewardStateTb[i])
	end
	rewardStateTb["length"] = data[1]
	lualib:ShowFormWithContent(player,"�ű���Sc","VIPWnd.Vip_updata("..table_data..","..serializeSc(rewardStateTb)..");")
	return ""
end

function getExpUP(player)
	if lualib:GetDayInt(player,"����buff") ~= 0 then
		return ""
	end
	local buff = {"1��VIP����","2��VIP����","3��VIP����","4��VIP����","5��VIP����","6��VIP����","7��VIP����","8��VIP����","9��VIP����","10��VIP����"}
	local level = lualib:GetVipLevel(player)
	if level == 0 then
		local str = "\"��ֵ������ɳ�ΪVIP\""
		lualib:ShowFormWithContent(player,"�ű���","GameMainBar.CommonRechage("..str..")")
		return ""
	end
	lualib:AddBuff(player,buff[level],0)

	--lualib:ShowFormWithContent(player,"�ű���","PlayerHeaderInfo.delEffectToVIP()")	--ɾ��VIPͼ����Ч
	lualib:ShowFormWithContent(player,"�ű���Sc","VIPWnd.delEffectToGetEXPbuff();")	--ɾ��VIP���水ť��Ч
	lualib:SetDayInt(player,"����buff",1)
	IfDelBtnEffect(player)
	--lualib:ShowFormWithContent(player,"�ű���","Vip_updata("..table_data..")")
	main(player)
	return ""
end

function GetVipGift(player, curPage)
	local index = tonumber(curPage)
	local rewardTb = data["item"][index]
	local str = tostring(lualib:Player_GetAccountID(player)).."vipReward"..index
	local l = lualib:GetDBNum(str)
	--lualib:SysPromptMsg(player,"var number :"..l)
	if lualib:GetVipLevel(player) >= index then
		if l == 0 then
			if lualib:Player_GetBagFree(player) < 6 then
				lualib:SysMsg_SendTriggerMsg(player, "�����ռ䲻������Ҫ6�����ӣ�")
				return ""
			else
				for i = 1, 6 do
					if lualib:AddItem(player, rewardTb[i][1], rewardTb[i][2], true, "vip���", "ϵͳ") then
						
					end
				end
				
				if lualib:SetDBNum(str,99) then
					--lualib:SysPromptMsg(player,"set var successfully")
					main(player)
				end
				SendVipGiftFlag(player)
				IfDelBtnEffect(player)
			end
		else
			lualib:SysPromptMsg(player, "���Ѿ���ȡ���������")
		end
	else
		lualib:SysPromptMsg(player, "����vip�ȼ����㣡")
	end
	return ""
end
function SendVipGiftFlag(player)
	local rewardStateTb = {}
	local vipLevel = lualib:GetVipLevel(player)
	local str = tostring(lualib:Player_GetAccountID(player))
	for i = 1, vipLevel do
		local str1 = str .. "vipReward".. i
		rewardStateTb[i] = lualib:GetDBNum(str1)
	end
	rewardStateTb["length"] = vipLevel
	lualib:ShowFormWithContent(player,"�ű���Sc","VIPWnd.getRewardFlag("..serialize(rewardStateTb)..");")
end

--�Ƿ�ɾ��VIP��ť��˸
function IfDelBtnEffect(player)
	if 0 == lualib:GetDayInt(player,"����buff") then
		return ""
	else
		local viplevel = lualib:GetVipLevel(player)
		for i = 1, viplevel do
			local str = tostring(lualib:Player_GetAccountID(player)).."vipReward"..i
			if 0 == lualib:GetDBNum(str) then
				return ""
			end
		end
	end
	lualib:ShowFormWithContent(player,"�ű���","PlayerHeaderInfo.delEffectToVIP()")	--ɾ��VIPͼ����Ч
end



