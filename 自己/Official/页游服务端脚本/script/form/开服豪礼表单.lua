local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/ScriptPackage")

--lualib:SetFormAllowFunc({"NewServerGift1_main", "NewServerGift1_Buy", "GrowthFundMain", "BuyGrowthFund", "NewServerGift3_main", "NewServerGift3_Gamble"})

-----------------------ͼ����ʾ-----------------------------
function ShowIconOfNewServerGift(player)
	--AddSEIcon(player, 2, -5, "��������", 1800200099, "����ʱ", "OpenNewServerGift","","")
	
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	startServerTime_str = startServerTime_str:gsub("%d%d:%d%d:%d%d", "00:00:00")
	--lualib:SysPromptMsg(player, startServerTime_str)
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --����ʱ�䣨�룩
	local activityEndTime_int = startServerTime_int + 7*24*60*60  	 --�����ʱ��
	local restTime_int = 0															
	local nowTime_int = lualib:GetAllTime()							--��ǰʱ��
	if nowTime_int >= activityEndTime_int then 
		--lualib:SysPromptMsg(player, "���������ѽ���")
		return ""
	end
	local level = lualib:Level(player)
	if level < 60 then
		return ""
	end
	local clientType = lualib:GetClientType(player) 
	if clientType == 0 then
		AddSEIcon(player,2, -6, "��������", 1800200067, "����ʱ", "OpenNewServerGift","","�������������")
		AddIconMagic(player, "��������",3020300700, -40,-40, 150)
	elseif clientType == 1 then 
		AddSEIcon(player,2, -6, "��������", 1800200099, "����ʱ", "OpenNewServerGift","","�������������")
		AddIconMagic(player, "��������",3020300700, -40,-40, 150)
	end	
	return ""
end

-----------------------ͼ�걻���-----------------------------
function OpenNewServerGift(player)
	local level = lualib:Level(player)
	if level < 60 then
		return ""
	end
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	--lualib:SysPromptMsg(player, startServerTime_str)
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --����ʱ�䣨�룩
	local gambleEndTime_int = startServerTime_int + 2*24*60*60  	 --ת�̻����ʱ��
	local fundEndTime_int = startServerTime_int + 3*24*60*60  	 --ת�̻����ʱ��
	local nowTime_int = lualib:GetAllTime()							--��ǰʱ��
	local index = 0 												--�ж��ĸ��������,���߿ͻ���
	if nowTime_int >= gambleEndTime_int then 
		index = 1
	end
	if nowTime_int >= fundEndTime_int then 
		index = 2
	end
	lualib:ShowFormWithContent(player, "form�ļ���", "NewServerGift#"..index)
    return ""
end



--------------------------------------------------------------------------ÿ���޹�----------------------------------------------------------

--��Ʒ��keyName, �ѵ�����, ԭ��, �ּ�, ÿ���޹�����
local NewServerGift1_PRODUCT = 
{	
	[1] = { --��1��
		[1] = {"������Ƭ��",    1, 1000, 888, 1},    --9����Ʒ��
		[2] = {"�߼��ɾ�����", 10, 5000, 4250, 1},	 --8.5����Ʒ��
		[3] = {"����ת����",    1, 10000, 7999, 1},	 --8����Ʒ��
		[4] = {"������Ƭ��",    1, 10000, 7999, 1},	 --8����Ʒ��
	},
	[2] = { --��2��
		[1] = {"��ʯ�ᾧ��",       1, 1000, 888, 1},    --9����Ʒ��
		[2] = {"�߼�BOSS���־���", 5, 5000, 4250, 1},	 --8.5����Ʒ��
		[3] = {"������Ƭ��",       1, 10000, 7999, 1},	 --8����Ʒ��
		[4] = {"��ʯ�ᾧ��",       1, 10000, 7999, 1},	 --8����Ʒ��
	},
	[3] = { --��3��
		[1] = {"�߼�BOSS���־���", 1, 1000, 888, 1},    --9����Ʒ��
		[2] = {"����Կ��",        25, 5000, 4250, 1},	 --8.5����Ʒ��
		[3] = {"����ת����", 		1, 10000, 7999, 1},	 --8����Ʒ��
		[4] = {"��ʯ�ᾧ��", 		1, 10000, 7999, 1},	 --8����Ʒ��
	},
	[4] = { --��4��
		[1] = {"��ë",				 35, 1050, 888, 1},    --9����Ʒ��
		[2] = {"����Կ��", 			25, 5000, 4250, 1},	 --8.5����Ʒ��
		[3] = {"������Ƭ��", 		1, 10000, 7999, 1},	 --8����Ʒ��
		[4] = {"����BOSS���־���", 1, 10000, 7999, 1},	 --8����Ʒ��
	},
	[5] = { --��5��
		[1] = {"��ë",				 35, 1050, 888, 1},    --9����Ʒ��
		[2] = {"�߼��ɾ�����", 		10, 5000, 4250, 1},	 --8.5����Ʒ��
		[3] = {"������Ƭ��", 		1, 10000, 7999, 1},	 --8����Ʒ��
		[4] = {"����BOSS���־���", 1, 10000, 7999, 1},	 --8����Ʒ��
	},
	[6] = { --��6��
		[1] = {"��ʯ�ᾧ��", 		1, 1000, 888, 1},    --9����Ʒ��
		[2] = {"����Կ��", 			25, 5000, 4250, 1},	 --8.5����Ʒ��
		[3] = {"��ë", 				350, 10500, 7999,1},	 --8����Ʒ��
		[4] = {"��ʯ�ᾧ��", 		1, 10000, 7999, 1},	 --8����Ʒ��
	},
	[7] = { --��7��
		[1] = {"��ʯ�ᾧ��", 	1, 1000, 888, 1},    --9����Ʒ��
		[2] = {"����Կ��", 		25, 5000, 4250, 1},	 --8.5����Ʒ��
		[3] = {"��ë", 			350, 10500, 7999, 1},	 --8����Ʒ��
		[4] = {"������Ƭ��",	 1, 10000, 7999, 1},	 --8����Ʒ��
	},
}

function NewServerGift1_main(player)
	
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	startServerTime_str = startServerTime_str:gsub("%d%d:%d%d:%d%d", "00:00:00")
	--lualib:SysPromptMsg(player, startServerTime_str)
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --����ʱ�䣨�룩
	local activityEndTime_int = startServerTime_int + 7*24*60*60  	 --�����ʱ��
	local restTime_int = 0															
	local nowTime_int = lualib:GetAllTime()							--��ǰʱ��
	if nowTime_int >= activityEndTime_int then 
		lualib:SysPromptMsg(player, "ÿ��������ѽ���")
		return ""
	else
		restTime_int = activityEndTime_int - nowTime_int			--�ʣ��ʱ��	
	end
	local dayNum = math.ceil((nowTime_int - startServerTime_int)/(24*60*60))			--��ڼ���
	--lualib:SysPromptMsg(player, ''..dayNum)
	if  not NewServerGift1_PRODUCT[dayNum] then 
		return ""
	end
	
	local DATA = {} 
	DATA[1] = restTime_int
	DATA[2] = NewServerGift1_PRODUCT[dayNum]
	local BUYCOUNT = {}
	for i = 1, 4 do 
		local count = lualib:GetDayInt(player, "limitBuyProduct"..i)
		BUYCOUNT[i] = NewServerGift1_PRODUCT[dayNum][i][5] - count
	end
	DATA[3] = BUYCOUNT
	
	lualib:ShowFormWithContent(player,"�ű���","NewServerGift1:updata("..serialize(DATA)..")")
	return ""
end


function NewServerGift1_Buy(player, index)
	
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	startServerTime_str = startServerTime_str:gsub("%d%d:%d%d:%d%d", "00:00:00")
	--lualib:SysPromptMsg(player, startServerTime_str)
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --����ʱ�䣨�룩
	local activityEndTime_int = startServerTime_int + 7*24*60*60  	 --�����ʱ��
	local restTime_int = 0											--�ʣ��ʱ��				
	local nowTime_int = lualib:GetAllTime()
	if nowTime_int >= activityEndTime_int then 
		lualib:SysPromptMsg(player, "ÿ��������ѽ���")
		return ""
	else
		restTime_int = activityEndTime_int - nowTime_int
	end
	local dayNum = math.ceil((nowTime_int - startServerTime_int)/(24*60*60))			--��ڼ���
	
	if  not NewServerGift1_PRODUCT[dayNum] then 
		return ""
	end
	
	
	local index = tonumber(index)
	local limit = lualib:GetDayInt(player, "limitBuyProduct"..index)
	if limit >= NewServerGift1_PRODUCT[dayNum][index][5] then 
		lualib:ShowFormWithContent(player, "�ű���", "NewServerGift1:msg_up('�����޹���������'"..","..index..")") 
		return "" 
	end
	
	if not lualib:Player_IsIngotEnough(player, NewServerGift1_PRODUCT[dayNum][index][4], false) then
		lualib:ShowFormWithContent(player, "�ű���", "NewServerGift:ChargeMsgBox()") 
		return ""
	end
	
	if lualib:GetBagFree(player) < 1 then
		lualib:ShowFormWithContent(player, "�ű���", "NewServerGift1:msg_up('��������!'"..","..index..")") 
		return ""
	end
	
	if lualib:Player_SubIngot(player, NewServerGift1_PRODUCT[dayNum][index][4], false, "ÿ���޹��", player) then
		lualib:AddItem(player, NewServerGift1_PRODUCT[dayNum][index][1], NewServerGift1_PRODUCT[dayNum][index][2], true, "ÿ���޹��", player)
		lualib:SetDayInt(player, "limitBuyProduct"..index, lualib:GetDayInt(player, "limitBuyProduct"..index) + 1)
		local count = lualib:GetDayInt(player,"limitBuyProduct"..index)
		local remainTimes = NewServerGift1_PRODUCT[dayNum][index][5] - count
		lualib:ShowFormWithContent(player, "�ű���", "NewServerGift1:UpdataLimitCount("..index..","..remainTimes..")")
		--********************************--
		local indexx = lualib:GetDBNum("consumeTerm")
		local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + tonumber(NewServerGift1_PRODUCT[dayNum][index][4])
		RecordTop10ConsumeInfo(player,totalYb)
		--********************************--
	end
	return ""
end



--------------------------------------------------------------------------�ɳ�����----------------------------------------------------------
function GrowthFundMain(player)
	
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)  --����ʱ�䣨�룩
	local restTime = 0
	local allTime = lualib:GetAllTime()
	local startDay = math.ceil((allTime - StartServerTime_int)/(24*60*60)) --�����ڼ���
	--lualib:SysPromptMsg(player, "������"..startDay.."��")
	--if startDay >= 1 and startDay <= 3 then 
		restTime = 3*24*60*60 - (allTime - StartServerTime_int)  --�ʣ��ʱ��
		if restTime < 0 then
			restTime = 0
		end
	--end
	----------------------------------------------------------------------------------------------------------------------------------------
	local data = {}              --data[1] = �Ƿ��ֵ  data[2] = �Ƿ����    data[3] =  {}�����׶��Ƿ���ȡ��1:����ȡ 0��δ��ȡ   data[4] = ���ת���ȼ�  data[5] = ʣ��ʱ��
								--data[6] = ʣ������
	local sale = lualib:GetDBNum("SaleOfGrowthFund")	
	restNum = 100 - sale
	data[6] = restNum						
	--[[							
	local str = lualib:GetDBStr("newServiceGrowthFund")
	if str ~= nil and str ~= "" then
		local tb = json.decode(str)
		data[6] = tonumber(100-#tb)
	else
		data[6] = 100
	end
	--]]
	if lualib:GetTotalBill(player) > 0 then
		data[1] = 1
	else
		data[1] = 0
	end
	data[2] = tonumber(lualib:GetInt(player, "hasBoughtGrowthFund"))
	local fundAwardFlag = {}
	for i = 1, 5 do
		fundAwardFlag[i] = lualib:GetInt(player, "fundAwardFlag"..i)
	end
	data[3] = fundAwardFlag
	data[4] = lualib:GetInt(player, "reinLevel")
	data[5] = restTime
	
	lualib:ShowFormWithContent(player,"�ű���","NewServerGift2:updata("..serialize(data)..");")
	return ""
end


function BuyGrowthFund(player)
	--lualib:SysPromptMsg(player, "sdadasdasd")
	----------------------------------------------------------------------------------------------------------------------------------------
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)  --����ʱ�䣨�룩
	local restTime = 0
	local allTime = lualib:GetAllTime()
	local startDay = math.ceil((allTime - StartServerTime_int)/(24*60*60)) --�����ڼ���
	--lualib:SysPromptMsg(player, "������"..startDay.."��")
	--if startDay >= 1 and startDay <= 3 then 
		restTime = 3*24*60*60 - (allTime - StartServerTime_int)  --�ʣ��ʱ��
		if restTime < 0 then
			restTime = 0
		end
	--end
	----------------------------------------------------------------------------------------------------------------------------------------
	
	local hasPlayerBought = lualib:GetInt(player, "hasBoughtGrowthFund")
	if hasPlayerBought == 1 then 
		lualib:SysPromptMsg(player, "���Ѿ�����˳ɳ�����")
		return ""
	end
	
	local sale = lualib:GetDBNum("SaleOfGrowthFund")
	--lualib:SysPromptMsg(player, ""..sale)
	if sale <= 100 then
		local ingot = lualib:GetIngot(player)
		if ingot < 1000 then
			--lualib:SysPromptMsg(player, "Ԫ�����㣬���ֵ")
			lualib:ShowFormWithContent(player, "�ű���", "GameMainBar.YbTopUP_Dlg()")    --��ֵ����
		else
			if lualib:Player_SubIngot(player, 1000, false, "BuyGrowthFund", "system") then
				lualib:SetInt(player, "hasBoughtGrowthFund",1)
				lualib:SetDBNum("SaleOfGrowthFund", sale + 1 )
				lualib:SysPromptMsg(player, "����ɳ�����ɹ�")
			else
				return "δ֪ԭ��Ԫ���۳�ʧ��"
			end
		end
	else
		lualib:SysPromptMsg(player, "100�ݳɳ������Ѿ�������")
	end
	GrowthFundMain(player)
	return ""
	

end



--��ȡ��������������������
--local fundAwardTb = {["3"]=1500, ["4"]=2500, ["5"]=5000, ["6"]=10000, ["8"]=50000}
local fundAwardTb = 
{
	{3, 4, 5, 6, 8},
	{1500, 2500, 5000, 10000, 50000},
}

function GetGrowthFundAward(player, param)
	--lualib:SysPromptMsg(player, "GetGrowthFundAward;index=="..param)
	local index = tonumber(param)
	local reinLevel = lualib:GetInt(player, "reinLevel")
	local hasBought = lualib:GetInt(player, "hasBoughtGrowthFund")
	if hasBought == 0 then									--����û�ҵ����
		lualib:SysPromptMsg(player, "��û������ɳ�����")		
		return ""
	else													
		if reinLevel < fundAwardTb[1][index] then					--ת���ȼ�δ�ﵽ
			--lualib:SysPromptMsg(player, "GetGrowthFundAward;reinLevel=="..reinLevel)
			lualib:SysPromptMsg(player, "����ת���ȼ����㣡")
			return ""
		else
			if lualib:GetInt(player, "fundAwardFlag"..index) == 0 then
				if lualib:AddIngot(player, fundAwardTb[2][index], "�ɳ�������", "��������ϵͳ") then
					lualib:SetInt(player, "fundAwardFlag"..index, 1)
					lualib:SysPromptMsg(player, "��ȡ�ɳ�����ɹ�")
					GrowthFundMain(player)
				end
			else
				lualib:SysPromptMsg(player, "������ȡ���ý׶εĳɳ�����")
			end
		end
	end
	return ""
end





------------------------------------------------------------------ת��----------------------------------------------------------------------
--ת�̴���, �ۼƳ�ֵ, ת������
local GAME_ROLE = 
	{ 
		[1] = {1000, 1000},
		[2] = {2000, 2000},
		[3] = {5000, 5000},
		[4] = {10000, 10000},
		[5] = {15000, 15000},
	}

local GAMBLE_AWARD = 
	{	
		--����
		{1.15,  1.2,   1.25, 1.35, 1.5,  2, 3, 10},
		--Ȩ��
		{10000, 7500,  1500,  300,  60, 15, 5,  1},
	} 


function NewServerGift3_main(player)
	
	
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --����ʱ�䣨�룩
	local activityEndTime_int = startServerTime_int + 2*24*60*60  	 --�����ʱ��
	local restTime_int = 0											--�ʣ��ʱ��				
	local nowTime_int = lualib:GetAllTime()
	if nowTime_int >= activityEndTime_int then 
		lualib:SysPromptMsg(player, "ת�̻�ѽ���")
		return ""
	else
		restTime_int = activityEndTime_int - nowTime_int
	end
	
	--���н�ɫ����һ���˻������Ͷע����
	local useID = lualib:UserID(player)
	local varName = "gamble_"..useID 
	local gambleCounts = lualib:GetDBNum(varName)
	--lualib:SysPromptMsg(player, 'gambleCounts='..gambleCounts)
	--[[
	local bindPlayer = lualib:GetDB(useID.."_gamble")
	if bindPlayer ~= "" and bindPlayer ~= player then 
		local index = -1
		lualib:ShowFormWithContent(player, "�ű���", "NewServerGift3:UpData("..index..");")	
		return "�ǰ��˻�"
	end
	--]]
	
	--local gambleCounts = lualib:GetInt(player, "Gamble")
	--local index = gambleCounts + 1
	--lualib:SysPromptMsg(player, ''..index)
	local accumulateCharge = lualib:GetTotalBill(player) 
	local record_str = lualib:GetDBStr("NewServerGift_Gamble_Record")
	
	local GAMBLE_RECORD = {} 
	if record_str ~= nil and record_str ~= "" then
		--lualib:SysPromptMsg(player, 'main'..record_str)
		GAMBLE_RECORD = deserialize(record_str)
	end
	
	local DATA = {}	
	DATA[1] = restTime_int
	DATA[2] = GAME_ROLE
	DATA[3] = gambleCounts
	DATA[4] = accumulateCharge
	DATA[5] = GAMBLE_RECORD
	lualib:ShowFormWithContent(player,"�ű���","NewServerGift3:UpData("..serialize(DATA)..")")
	return ""
end


	
--��ȡȨ��ѡ��
function get_table_key(RATE)
	local maxs = 0
	local RATE_ADD_UP = {}
	for i = 1, #RATE do
		maxs = maxs + RATE[i]
		RATE_ADD_UP[i] = maxs
	end
	
	local key = 1
	local rand = math.random(1, maxs)
	for i = 1, #RATE_ADD_UP do
		if rand <= RATE_ADD_UP[i] then
			key = i
			break
		end
	end
	return key
end



function NewServerGift3_Gamble(player)
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --����ʱ�䣨�룩
	local activityEndTime_int = startServerTime_int + 2*24*60*60  	 --�����ʱ��
	local restTime_int = 0											--�ʣ��ʱ��				
	local nowTime_int = lualib:GetAllTime()
	if nowTime_int >= activityEndTime_int then 
		lualib:SysPromptMsg(player, "ת�̻�ѽ���")
		return ""
	end
	
	
	
	
	--���н�ɫ����һ���˻������Ͷע����
	--local gambleCounts = lualib:GetInt(player, "Gamble")
	local useID = lualib:UserID(player)
	local varName = "gamble_"..useID 
	local gambleCounts = lualib:GetDBNum(varName)
	if gambleCounts >= 5 then 
		--lualib:SysPromptMsg(player, "�ۼ�Ͷע��������5��")
		return ""
	end
	
	local index = gambleCounts + 1
	local accumulateCharge = lualib:GetTotalBill(player) 
	--lualib:SysPromptMsg(player, ""..accumulateCharge)
	local key = 0 
	if accumulateCharge >= GAME_ROLE[index][1] then 
		key = get_table_key(GAMBLE_AWARD[2])
	end
	
	--lualib:SysPromptMsg(player, ""..key)
	local awardTimes = 0 
	awardTimes = GAMBLE_AWARD[1][key]
	local awardIngot = GAME_ROLE[index][2] * awardTimes
	if not lualib:Player_IsIngotEnough(player, GAME_ROLE[index][2], false) then         --��Ǯ
		lualib:ShowFormWithContent(player, "�ű���", "NewServerGift:ChargeMsgBox()") 
		return ""
	end
	local angle = (key - 1) * 45 + 22
	lualib:ShowFormWithContent(player, "�ű���", "NewServerGift3:StartGamble("..angle..","..awardIngot..")")
	
	lualib:Player_SubIngot(player, GAME_ROLE[index][2], false, "����ת�̻", "����ת�̻")
	
	--lualib:SetInt(player, "Gamble", lualib:GetInt(player, "Gamble") + 1)   --����� ��Ϊ�浽DB
	local useID = lualib:UserID(player)
	local varName = "gamble_"..useID 
	lualib:SetDBNum(varName, index)
	local NEW_RECORD = {}													--��Ӽ�¼
	NEW_RECORD["name"] = lualib:Name(player)
	NEW_RECORD["award"] = awardTimes
	NEW_RECORD["totleIngot"] = awardIngot
	local record_str = lualib:GetDBStr("NewServerGift_Gamble_Record")
	local GAMBLE_RECORD = {} 
	if record_str ~= nil and record_str ~= "" then
		--lualib:SysPromptMsg(player, record_str)
		GAMBLE_RECORD = deserialize(record_str)
		table.insert(GAMBLE_RECORD, NEW_RECORD)
		if #GAMBLE_RECORD > 20 then
			table.remove(GAMBLE_RECORD, 1)
		end
	else
		--lualib:SysPromptMsg(player, "no.1")
		GAMBLE_RECORD[1] = NEW_RECORD
	end
	lualib:SetDBStr("NewServerGift_Gamble_Record", serialize(GAMBLE_RECORD))
	lualib:SetInt(player, "GambleAwardKey", 1)
	lualib:DelayCall(player, 4 * 1000 + 300, "AddIngotToPlayer", ""..awardIngot) 
	lualib:DelayCall(player, 4 * 1000 + 300, "NewServerGift3_main", "") 
	return ""
	
end


function AddIngotToPlayer(player, ingot)
	ingot = tonumber(ingot)
	local key = lualib:GetInt(player, "GambleAwardKey")
	if key == 1 then 
		lualib:Player_AddIngot(player, ingot, false, "����ת�̻", "����ת�̻")
		lualib:SetInt(player, "GambleAwardKey", 0)
	end
end
