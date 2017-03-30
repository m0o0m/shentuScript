local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")

local gift1_award = 
{
    {
	--սʿ
		{
		--��
			{"���ս��",1,1},
			{"���ͷ��",1,1},
			{"�������",1,1},
			{"�������",2,1},
			{"����ָ",2,1},
			{"���ѥ��",1,1},
			{"�������",1,1}
		},
		{
		--Ů
			{"���ս��",1,1},
			{"���ͷ��",1,1},
			{"�������",1,1},
			{"�������",2,1},
			{"����ָ",2,1},
			{"���ѥ��",1,1},
			{"�������",1,1}
		}
	},
    {
	--��ʦ
		{
		--��
			{"ħ�귨��",1,1},
			{"ħ��ͷ��",1,1},
			{"ħ������",1,1},
			{"ħ������",2,1},
			{"ħ���ָ",2,1},
			{"ħ��ѥ��",1,1},
			{"ħ������",1,1}
		},
		{
		--Ů
			{"ħ������",1,1},
			{"ħ��ͷ��",1,1},
			{"ħ������",1,1},
			{"ħ������",2,1},
			{"ħ���ָ",2,1},
			{"ħ��ѥ��",1,1},
			{"ħ������",1,1}
		}
	},
    {
	--��ʿ
		{
		--��
			{"�������",1,1},
			{"����ͷ��",1,1},
			{"��������",1,1},
			{"��������",2,1},
			{"�����ָ",2,1},
			{"����ѥ��",1,1},
			{"��������",1,1}
		},
		{
		--Ů
			{"�������",1,1},
			{"����ͷ��",1,1},
			{"��������",1,1},
			{"��������",2,1},
			{"�����ָ",2,1},
			{"����ѥ��",1,1},
			{"��������",1,1}
		}
	}	
}
local gift2_award = 
{
    {"ֱ������������",1,1},
    {"��ʯ������",5,1},
    {"����BOSS�ٻ���",1,1},
    {"������ƬС",8,1},	
    {"˫������8Сʱ",1,1},	
    {"��ש��",5,1},	
    {"ת����",4,1}
}
local gift3_award = 
{
    {"������ש",1,1},
    {"������Ƭ��",8,1},
    {"�߼�ת����",1,1},
    {"ת����",4,1},	
    {"��������8Сʱ",1,1},	
    {"���ž���",2,1},	
    {"�߼��ɾ�����",6,1}
}
local gift4_award = 
{
   {
	--սʿ
		{"ʥ��ս��",1,1},
		{"��ʯ�ᾧ��",1,1},
		{"������Ƭ��",5,1},
		{"�߼�ת����",8,1},
		{"��������8Сʱ",1,1},
		{"��שС",5,1},
		{"�߼�BOSS���־���",5,1}
	},
	{
	--��ʦ
		{"ʥħ����",1,1},
		{"��ʯ�ᾧ��",1,1},
		{"������Ƭ��",5,1},
		{"�߼�ת����",8,1},
		{"��������8Сʱ",1,1},
		{"��שС",5,1},
		{"�߼�BOSS���־���",5,1}
	},
	{
	--��ʿ
		{"ʥ�����",1,1},
		{"��ʯ�ᾧ��",1,1},
		{"������Ƭ��",5,1},
		{"�߼�ת����",8,1},
		{"��������8Сʱ",1,1},
		{"��שС",5,1},
		{"�߼�BOSS���־���",5,1}
	}
}

local gift_cost = {888,2888,8888,16888}

local gift_name = {"��װ���","�������","�������","�������"}

-----------------------ͼ����ʾ-----------------------------
function openServiceActivities_show(player)
	local state1 = lualib:GetInt(player, "specialGift_gift1")
	local state2 = lualib:GetInt(player, "specialGift_gift2")
	local state3 = lualib:GetInt(player, "specialGift_gift3")
	local state4 = lualib:GetInt(player, "specialGift_gift4")
	AddSEIcon(player, 1, -5, "�����", 1800200047, "����ʱ", "openServiceActivities","","�����")
	local tab_last = {350,100,50,15,3}
	local tab_level = {70,80,85,90,95}
	local tab_wing_reward = {{"��ë","˫������4Сʱ��","��שС",40,1,2},          --���ɸ��ı�ṹ
						{"��ë","˫������8Сʱ��","��שС",200,1,4},
						{"��ë","��������8Сʱ��","��שС",500,1,6},
						{"��ë","�ı�����8Сʱ��","��שС",1000,1,8},
						{"��ë","�屶����8Сʱ��","��שС",2000,1,10},
						{2,3,5,7,9} 
						}
	local baoshi_count = {40,90,150,220,375,935,2340,4400,7020,11705,0}
	local buttonWin3_table = 
	{	
		[0] = {120,350,800,2000,4500,8000,12000},
	}
	local hunzhu_count = {40,70,120,230,810,1190,1550,1820,2630,3590,4010,4690,5660,5980,6440,7070,14010,17270,20890,24930,30250,0}
	local buttonWin4_table = 
	{	
		[0] = {120,250,600,1200,2500,6000,10000},
	}
	local startServerTime_str = lualib:GetConstVar("StartServerTime")
	local startServerTime_int = lualib:Str2Time(startServerTime_str)  --����ʱ�䣨�룩
	local nowTime_int = lualib:GetAllTime()
	local activityEndTime_int = startServerTime_int + 7*24*60*60  	 --�����ʱ�� 
	if nowTime_int > activityEndTime_int then 
		return ""
	end
	--�ȼ�,��һ�쵽������
	local activityStartTime_int1 = startServerTime_int	 			--���ʼʱ�� 
	if nowTime_int > activityStartTime_int1 then 
		for i = 1, 5 do
			local restCount = tab_last[i] - lualib:GetDBNum("kf_level_reward"..i);
			if restCount > 0 then 
				if lualib:GetInt(player,"kf_level_get_item"..i) == 0 then 
					local level = lualib:Level(player);
					if level > tab_level[i] then 
						
						AddIconMagicSc(player, "�����",3020300100, 20, -16, 180);
						return "";
						
					end
				end
			end
		end
	end
	
	--����,�ڶ��쵽������
	local activityStartTime_int2 = startServerTime_int + 24*60*60	 --���ʼʱ�� 
	if nowTime_int > activityStartTime_int2 then 
		for i = 1, 5 do   
			if lualib:GetInt(player,"kf_wing_get_item"..i) == 0 then    --�Ƿ���ȡ��  
				if lualib:GetInt(player,"wing_level") >= tab_wing_reward[6][i] then 
					AddIconMagicSc(player, "�����",3020300100, 20, -16, 180);
					return "";
				end
			end
		end
	end
	
	
	--����,�����쵽������
	local activityStartTime_int3 = startServerTime_int + 2*24*60*60	 --���ʼʱ��  
	if nowTime_int > activityStartTime_int3 then 
		local baoshi_level = lualib:GetInt(player, "baoshi_level")	
		local count = 0
		count = count + lualib:GetInt(player, "baoshi_chip")
		if baoshi_level > 0 then 
			for i = 1, baoshi_level do 
				count = count + baoshi_count[i]
			end
		end
		
			--���۵���Ƭ�������ﵽ���콱����
		local level = 0 
		for i = 1, 8 do 
			if i == 8 then 
				level = 7
				break
			end
			if count < buttonWin3_table[0][i] then 
				level = i - 1
				break
			end
		end
		
			--�Ƿ��Ѿ������
		for i = 1, level do 
			if lualib:GetInt(player, "kaifu_baoshi_isGet"..i) == 0 then 
				AddIconMagicSc(player, "�����",3020300100, 20, -16, 180);
				return "";						
			end
		end
	end
	--����,�����쵽������
	local activityStartTime_int4 = startServerTime_int + 3*24*60*60	 --���ʼʱ�� 
	if nowTime_int > activityStartTime_int4 then 
		local hunzhu_level = lualib:GetInt(player, "hunzhu_level")	
		local count2 = 0
		count2 = count2 + lualib:GetInt(player, "hunzhu_chip")
		if hunzhu_level > 0 then 
			for i = 1, hunzhu_level do 
				count2 = count2 + hunzhu_count[i]
			end
		end
		
			--���۵���Ƭ�������ﵽ���콱����
		local level2 = 0 
		for i = 1, 8 do 
			if i == 8 then 
				level2 = 7
				break
			end
			if count2 < buttonWin4_table[0][i] then 
				level2 = i - 1
				break
			end
		end
		
			--�Ƿ��Ѿ������
		for i = 1, level2 do 
			if lualib:GetInt(player, "kaifu_hunzhu_isGet"..i) == 0 then
				AddIconMagicSc(player, "�����",3020300100, 20, -16, 180);
				return "";
			end
		end
	end
	--�ʳ�����,��һ�쵽������
	local activityStartTime_int5 = startServerTime_int 			 --���ʼʱ�� 
	local activityEndTime_int5 = startServerTime_int + 4*24*60*60  	 --�����ʱ�� 
	if nowTime_int > activityStartTime_int5 and nowTime_int < activityEndTime_int5 then 
		local CastleOwnFamily = lualib:GetCastleOwnFamily("����")
		if CastleOwnFamily ~= "" then 
			if player == lualib:GetFamilyLeader(tostring(CastleOwnFamily)) then
				if lualib:GetInt(CastleOwnFamily,"�ʳ�����") == 0 then 
					AddIconMagicSc(player, "�����",3020300100, 20, -16, 180);
					return "";
				end
			end
		end
	end
	--���ѻ���,������һ��24Сʱ
	local activityStartTime_int6 = startServerTime_int 			 --���ʼʱ�� 
	local activityEndTime_int6 = startServerTime_int + 24*60*60  	 --�����ʱ�� 
	if nowTime_int > activityStartTime_int6 and nowTime_int < activityEndTime_int6 then 
		local index = lualib:GetDBNum("consumeTerm");
		if index <= lualib:GetDBNum("consumeTerm") then
			local Top10InfoArr = {{}}   --difine array record Top5 Information ;    Top10InfoArr[][1]=playerName    Top10InfoArr[][2]=yb
			local str = ""
			str = lualib:GetDBStr("top10ConsumeChartInfo"..index);
			if str ~= nil and str ~= "" then
				Top10InfoArr = json.decode(str);
				local name = lualib:Name(player);
				for k, v in ipairs(Top10InfoArr) do 
					if name == v[1] then 
						AddIconMagicSc(player, "�����",3020300100, 20, -16, 180);
						return "";
					end
				end
			end
		end
	end
	return ""
end

-------------------ͼ�걻���-----------------------
function openServiceActivities(player,param)
	local tips1 = 0
	--lualib:SysPromptMsg(player,"1"..tostring(param))
	if param ~= "" and param ~= nil then
		tips1 = tonumber(param)
	end
	--lualib:ShowFormWithContent(player, "form�ļ���", "OpenServiceActivities#".. tips1)
	--lualib:ShowFormWithContent(player, "form�ļ���", "ServiceActivities#".. tips1)
	local clientType = lualib:GetClientType(player) 
		if clientType == 0 then
			--lualib:SysPromptMsg(player, 'ServiceActivities')
			--lualib:ShowFormWithContent(player, "form�ļ���", "ServiceActivities#")
			lualib:ShowFormWithContent(player, "�ű���", [[UI:Lua_OpenWindow(0, 'ServiceActivities.lua')]])
		elseif clientType == 1 then 
			lualib:ShowFormWithContent(player, "�ű���Sc", "UI.Asc_OpenWindow(0, \"ServiceActivities.sc\");")
		end
	
    return ""
end

function get_gift_info(player,param)
	param=tonumber(param)
	if param == 1 then
		local job = lualib:Job(player)
		local gender = lualib:Gender(player)
		local gf1 =  gift1_award[job][gender]
		local gf4 =  gift4_award[job]
		local state1 = lualib:GetInt(player, "specialGift_gift1")
		local state2 = lualib:GetInt(player, "specialGift_gift2")
		local state3 = lualib:GetInt(player, "specialGift_gift3")
		local state4 = lualib:GetInt(player, "specialGift_gift4")
		local StartServerTime = lualib:GetConstVar("StartServerTime")
		local StartServerTime_int = lualib:Str2Time(StartServerTime)  --����ʱ�䣨�룩

		local allTime = lualib:GetAllTime()
		local startDay = math.ceil((allTime - StartServerTime_int)/(24*60*60)) --�����ڼ���
		local ret = {gift_name,gift_cost,{state1,state2,state3,state4},{gf1,gift2_award,gift3_award,gf4},startDay}
		
		lualib:ShowFormWithContent(player, "�ű���Sc", "ServiceActivities.showInfo("..serializeSc(ret)..");")
	end
	return ""
end

function get_gift_award(player,param)
	param=tonumber(param)
	local job = lualib:Job(player)
	local gender = lualib:Gender(player)
	local gf1 =  gift1_award[job][gender]
	local gf4 =  gift4_award[job]
	local gift_List = 
	{
		gf1,
		gift2_award,
		gift3_award,
		gf4
	}
	local gift_award = gift_List[param]
	local cost = gift_cost[param]
	local haveIngot = lualib:GetIngot(player)
	local state = lualib:GetInt(player, "specialGift_gift"..param)
	if state == 1 then
		lualib:ShowFormWithContent(player, "�ű���Sc", "ServiceActivities.awardBack(3,"..param..");")
		lualib:SysPromptMsg(player, "�����ֻ����ȡһ��!")
		return ""
	end
	local freeBag = lualib:Player_GetBagFree(player)
	if  freeBag < #gift_award then
		lualib:ShowFormWithContent(player, "�ű���Sc", "ServiceActivities.awardBack(4,"..param..");")
		lualib:SysPromptMsg(player, "��������!����������")
		return ""
	end
	if haveIngot >= cost then
		lualib:SubIngot(player,cost,"�������ػ����"..param,player)
	else
		lualib:ShowFormWithContent(player, "�ű���Sc", "ServiceActivities.awardBack(2,"..param..");")
		lualib:SysPromptMsg(player, "����Ԫ�����㣬��ȡ�������Ҫ����"..cost.."Ԫ��")
		lualib:ShowFormWithContent(player,"�ű���","GameMainBar.YbTopUP_Dlg()") 
		return ""
	end
	for i = 1, #gift_award do
		local bind = false
		if gift_award[i][3] == 1 then
			bind = true
		end
		lualib:AddItem(player, gift_award[i][1], gift_award[i][2], bind, "��ȡ�ػ��������", player)
		--lualib:SysMsg_SendWarnMsg(player, "��ȡ�ػ����������"..lualib:KeyName2Name(gift_award[i][1], 4).." + "..gift_award[i][2].."!")
		lualib:SysPromptMsg(player, "��ȡ�ػ����������"..lualib:KeyName2Name(gift_award[i][1], 4).." + "..gift_award[i][2].."!")
	end
	lualib:SetInt(player, "specialGift_gift"..param, 1)
	lualib:ShowFormWithContent(player, "�ű���Sc", "ServiceActivities.awardBack(1,"..param..");")
	
	for i = 1 , 4 do
		if lualib:GetInt(player, "specialGift_gift"..i) == 0 then
			break
		else
			if i == 4 then
				--DelIcon(player,"�����")
				--lualib:ShowFormWithContent(player, "�ű���", "OpenServiceActivities.CloseWnd()")
--[[				if  lualib:GetInt(player, "storeUp_flag") == 0 then          --��Ϸδ�ղء�δ����
					if lualib:GetInt(player, "award_download") == 0 then  
						DelIcon(player,"�ͻ�������")
						DelIcon(player,"�ղ���Ϸ")
						AddSEIcon(player, 1, -4,"�ղ���Ϸ", 1800200071, "����ʱ", "store_aaa","","")
						AddSEIcon(player, 1, -3, "�ͻ�������", 1800200067, "����ʱ", "download","","")
					else  --��Ϸδ�ղء�������
						DelIcon(player,"�ղ���Ϸ")
						AddSEIcon(player, 1, -3,"�ղ���Ϸ", 1800200071, "����ʱ", "store_aaa","","")
					end
				else
					if lualib:GetInt(player, "award_download") == 0 then   --��Ϸ���ղء�δ����
						DelIcon(player,"�ͻ�������")
						AddSEIcon(player, 1, -3, "�ͻ�������", 1800200067, "����ʱ", "download","","")
					end
				end	--]]		
			end
		end
	end 
	return ""
end

function close(player)
	return ""
end