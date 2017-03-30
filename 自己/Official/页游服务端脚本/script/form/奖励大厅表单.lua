local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")

--lualib:SetFormAllowFunc({"Get_item",""});  --check client submitForm
local q_group = {  --������
	["dsadsadsadsa"] = 1,
}
local sign_item_list = {
	{{"��שС",5},{"BOSS���־���",2},{"ת��������",1},{"˫������4Сʱ",1},{"���鵤С",1}},
	{{"��שС",5},{"BOSS���־���",8},{"ת��������",2},{"˫������4Сʱ",1},{"���鵤С",1}},
	{{"��שС",5},{"BOSS���־���",10},{"ת��������",2},{"˫������4Сʱ",1},{"���鵤��",1}},
	{{"��שС",8},{"BOSS���־���",14},{"ת��������",3},{"˫������4Сʱ",2},{"���鵤��",1}},
	{{"��שС",10},{"500��Ԫ��",1},{"BOSS���־���",26},{"ת��������",5},{"˫������8Сʱ",2},{"���鵤��",1}},
}
local login_item_list = {
	{
		{{"���ս���",1},{"��������",2},{"ת��������",2},{"����ʯ",1},{"��ɽѩ��С",1}},
		{{"��������",1},{"��������",2},{"ת��������",2},{"����ʯ",1},{"��ɽѩ��С",1}},
		{{"��֮ͥ��",1},{"��������",2},{"ת��������",2},{"����ʯ",1},{"��ɽѩ��С",1}},
	},
	{
		{{"��ë",20},{"���ž���",2},{"ת��������",2},{"��������",2},{"������ҩˮ",1}},
		{{"��ë",20},{"���ž���",2},{"ת��������",2},{"��������",2},{"ħ����ҩˮ",1}},		
		{{"��ë",20},{"���ž���",2},{"ת��������",2},{"��������",2},{"������ҩˮ",1}},
	},
	{{"500��Ԫ��",10},{"��������",2},{"���ž���",2},{"����������",4},{"HPǿ��ҩˮ",1}},
	{{"��ש��",5},{"500��Ԫ��",2},{"���ž���",2},{"��������",2},{"˫������4Сʱ",1}},
	{{"�ı�����2Сʱ",1},{"500��Ԫ��",2},{"���ž���",2},{"��שС",3},{"˫������4Сʱ",1}},
	{{"�߼�BOSS���־���",1},{"500��Ԫ��",2},{"���ž���",2},{"����������",4},{"��שС",4}},
	{
		{{"���鵤��",1},{"500��Ԫ��",2},{"���ž���",2},{"ʥ���ָ",1},{"��שС",5}},
		{{"���鵤��",1},{"500��Ԫ��",2},{"���ž���",2},{"ʥħ��ָ",1},{"��שС",5}},
		{{"���鵤��",1},{"500��Ԫ��",2},{"���ž���",2},{"ʥ���ָ",1},{"��שС",5}},
	}
}

--�Ƿ���ʾ�콱ͼƬ
function get_image_list(player)
	local table_image = {0,0,0,0,0,0}
	--����
	local day_time = lualib:GetDayInt(player,"online_times")
	local this_time = lualib:OnlineTimeEx(player)
	local all_time = day_time + this_time	
	local online_gift = {900,1800,3600,7200}
	for i = 1 , 4 do 
		local b  = lualib:GetDayInt(player,"Online_Is_Get"..i)
		if b == 0 and all_time >= online_gift[i] then
			table_image[2] = 1
			break
		end
	end
	--������Ա
	if 1 == lualib:GetInt(player, "isSuperVip") then
		if 30 > lualib:Time2Str("%d", lualib:GetAllTime()) - lualib:Time2Str("%d",lualib:GetInt(player, "beSuperVipTime")) then
			if 0 == lualib:GetInt(player,"FirstSuperVipGift") or 0 == lualib:GetDayInt(player, "SuperVipDayGift") then
				table_image[3] = 1
			end
		end
	end

	--����
	local isGetAll7DayRWD = lualib:GetInt(player, 'isGetAll7DayRWD')
	if isGetAll7DayRWD == 1 then 
		lualib:ShowFormWithContent(player, "�ű���", "RewardHall.DelOnloginRewardBtn()")
	else
		local login_day = lualib:GetInt(player,"login_days")
		if login_day > 7 then
			login_day = 7
		end	
		for i = 1 , login_day do 
			local a = lualib:GetInt(player,"Login_Is_Get"..i)
			if a == 0 then
				table_image[4] = 1
				break
			end
		end
	end
	--����
	local hour = lualib:GetInt(player,"logout_hour")
	if hour > 0 then
		table_image[5] = 1
	end
	
	lualib:ShowFormWithContent(player, "�ű���", "RewardHall.image_list("..serialize(table_image)..")")
	return ""
end


--ÿ��ǩ��
function get_item_list(player)	
	local Is_sign = lualib:GetDayInt(player,"sign_today")
	local month_now =  lualib:GetMonth(0)
	local Sign_s = lualib:GetStr(player,"sign_table"..month_now)	
	local Sign_t = {}	
	if Sign_s == "" then
		for i = 1 , 31 do 
			Sign_t[i] = 0 
		end
		Sign_s = json.encode(Sign_t)
		lualib:SetStr(player,"sign_table"..month_now,Sign_s)
		local a = month_now - 1
		if month_now == 1 then
			a = 12
		end
		lualib:SetStr(player,"sign_table"..a,Sign_s)
		for i = 1 , 5 do 
			lualib:SetInt(player,"Is_Get"..i,0)
		end	
	else
		Sign_t = json.decode(Sign_s)
	end		
	local year_now =  lualib:GetYear(0)
	local day_now =  lualib:GetDay(0)
	local week_now =  lualib:GetWeek(0)
	local days = get_days(year_now,month_now)
	local firstday_week = get_week(day_now,week_now)
	local month_old = month_now - 1
	local year_old = year_now
	if month_now == 1 then
		month_old = 12
		year_old = year_old - 1
	end	
	local yest_days = get_days(year_old,month_old)	
	local get_item_day = {}
	for i = 1 , 5 do 
		get_item_day[i] = lualib:GetInt(player,"Is_Get"..i)
	end	
	local table_date = {days,yest_days,firstday_week,day_now,Sign_t,Is_sign,sign_item_list,month_now,get_item_day}
	lualib:ShowFormWithContent(player, "�ű���", "Sign_in.showInfo("..serialize(table_date)..")")
	return ""
end	
--��ȡǩ������
function Get_item(player,param)	
	local tab = {2,5,10,17,22}
	local index = tonumber(param)
	local Is_get = lualib:GetInt(player,"Is_Get"..index)
	if Is_get == 1 then
		lualib:SysPromptMsg(player, "�������Ѿ���ȡ"..tab[index].."��ǩ���������޷��ٴ���ȡ")
		return ""
	end
	local month_now =  lualib:GetMonth(0)
	local Sign_s = lualib:GetStr(player,"sign_table"..month_now)	
	local Sign_t = json.decode(Sign_s)	
	local signnum = 0
	for i = 1 , #Sign_t do 
		if Sign_t[i] == 1 then
			signnum = signnum + 1
		end	
	end	
	if signnum < tab[index] then
		lualib:SysPromptMsg(player, "ǩ����������")
		return ""
	end	
	
	local gift_award = sign_item_list[index]
	local freeBag = lualib:Player_GetBagFree(player)
	if freeBag < #gift_award then
		lualib:SysPromptMsg(player, "��������!����������")
		return ""
	end
	for i = 1, #gift_award do
		local bind = true
		lualib:AddItem(player, gift_award[i][1], gift_award[i][2], bind, "��ȡǩ������", player)
		--lualib:SysPromptMsg(player, "��ȡǩ������:"..lualib:KeyName2Name(gift_award[i][1], 4).." + "..gift_award[i][2].."!")
	end
	lualib:SetInt(player,"Is_Get"..index,1)
	lualib:ShowFormWithContent(player, "�ű���", "Sign_in.change("..index..")")
	lualib:SysPromptMsg(player, "ǩ��"..tab[index].."�ζ�Ӧ������ȡ�ɹ�")
	return ""
end	

function Qiandao(player)
	local Is_sign = lualib:GetDayInt(player,"sign_today")
	if Is_sign == 1 then
		lualib:SysPromptMsg(player, "�������Ѿ�ǩ����")
		return ""
	end
	local day_now =  lualib:GetDay(0)
	local month_now =  lualib:GetMonth(0)
	local Sign_s = lualib:GetStr(player,"sign_table"..month_now)
	local Sign_t = json.decode(Sign_s)
	Sign_t[day_now] = 1
	Sign_s = json.encode(Sign_t)
	lualib:SetStr(player,"sign_table"..month_now,Sign_s)
	lualib:SetDayInt(player,"sign_today",1)
	lualib:ShowFormWithContent(player, "�ű���", "Sign_in.QianUpdate()")
	lualib:SysPromptMsg(player, "ǩ���ɹ�")
	return ""
end	


--��ȡָ�����µ�����
function get_days(year,month)        
        local bigmonth = "(1)(3)(5)(7)(8)(10)(12)"
        local strmonth = "(" .. month .. ")"       
        if month == 2 then
            if year % 4 == 0 or (year % 400 == 0 and year % 400 ~= 0) then
                return 29
            else
                return 28
            end
        elseif string.find(bigmonth, strmonth) ~= nil then
            return 31
        else
            return 30
        end
end
--��һ�������
function get_week(day,week_now)
	local week = week_now - (day - 1 ) % 7
	if week < 0 then
		week = week + 7
	end	
	return week
end


local superVipGift = {
	{5000, "FirstSuperVipGift"}, --������Ա ��������Ԫ���������
	{200, "SuperVipDayGift"}, --������Ա ÿ�շ���Ԫ���������
	{30, "SuperVipDays"}, --������Ա �������������
	{5000, "isSuperVip"}, --���򳬼���Ա Ԫ���������
	5000 --��ֵԪ������
}
--������Ա
function getSuperVipGift(player)
	if 0 == lualib:GetInt(player, superVipGift[4][2]) then
		lualib:SysPromptMsg(player, "����δ��Ϊ������Ա��")
		return ""
	end
	local days = lualib:GetInt(player, superVipGift[3][2])
	if superVipGift[3][1] <= days then
		lualib:SysPromptMsg(player, "���Ѿ���ȡ�곬����Ա30�췵����")
		return ""
	end
	if 1 == lualib:GetDayInt(player, superVipGift[2][2]) then
		lualib:SysPromptMsg(player, "�������Ѿ���ȡ��������Ա������")
		return ""
	end

	if lualib:SetDayInt(player, superVipGift[2][2], 1) and lualib:SetInt(player, superVipGift[3][2], days + 1) then
		if not lualib:AddIngot(player, superVipGift[2][1], "������Աÿ�շ���", player) then
			lualib:SysPromptMsg(player, "δ֪������ӽ�ɫԪ��ʧ�ܡ�")
		else
			lualib:SysPromptMsg(player, "��ȡ�˳�����Աÿ�շ�����"..superVipGift[2][1].."Ԫ��")
			lualib:ShowFormWithContent(player, "�ű���", "SuperVip.changeBtn3State()")
			get_image_list(player)
			Is_magic(player)
		end
	end
	return ""
end

function becomeSuperVip(player, flag)
	if 1 == lualib:GetInt(player, superVipGift[4][2]) then
		lualib:SysPromptMsg(player, "���Ѿ��ǳ�����Ա�ˡ�")
		return ""
	end

	if superVipGift[5] > lualib:GetTotalBill(player) then
		if "1" == flag then
			lualib:ShowFormWithContent(player, "�ű���", [[SuperVipWnd.MsgUp("���볬����Ա��Ҫ�ۼƳ�ֵ�ﵽ]]..superVipGift[5]..[[Ԫ��")]])
		else
			lualib:ShowFormWithContent(player, "�ű���", [[SuperVip.MsgUp("���볬����Ա��Ҫ�ۼƳ�ֵ�ﵽ]]..superVipGift[5]..[[Ԫ��")]])
		end
		return ""
	end

	local userID = lualib:UserID(player)
	if 1 == lualib:GetDBNum(superVipGift[4][2]..userID) then
		lualib:SysPromptMsg(player, "ͬһ�˺���ֻ����1��������Ա��")
		return ""
	end



	if lualib:SubIngot(player, superVipGift[4][1], "���򳬼���Ա", player) then
		lualib:SetInt(player, superVipGift[4][2], 1)
		lualib:SetDBNum(superVipGift[4][2]..userID, 1)
		lualib:SetInt(player, superVipGift[3][2], 0)
		lualib:SetInt(player, superVipGift[1][2], 0)
		lualib:SetDayInt(player, superVipGift[2][2], 0)
		local h = tonumber(lualib:Time2Str("%H", lualib:GetAllTime()))
		local m = tonumber(lualib:Time2Str("%M", lualib:GetAllTime()))
		local s = tonumber(lualib:Time2Str("%S", lualib:GetAllTime()))
		--���óɽ���0��
		lualib:SetInt(player, "beSuperVipTime",lualib:GetAllTime() - h*3600 - m*60 - s)
		get_image_list(player)
		Is_magic(player)
		lualib:SysPromptMsg(player, "��ϲ����Ϊ������Ա��")
		if "1" == flag then
		lualib:ShowFormWithContent(player, "�ű���", "SuperVipWnd.changeBtn()")
		else
			lualib:ShowFormWithContent(player, "�ű���", "SuperVip.changeBtnState()")
		end
	else
		if "1" == flag then
			lualib:ShowFormWithContent(player, "�ű���", "SuperVipWnd.msgbox()")
		else
			lualib:ShowFormWithContent(player, "�ű���", "SuperVip.msgbox()")
		end
		
	end
	return ""
end

function getFirstSuperVipGift(player)
	if 0 == lualib:GetInt(player, superVipGift[4][2]) then
		lualib:SysPromptMsg(player, "����δ��Ϊ������Ա��")
		return ""
	end
	if 1 == lualib:GetInt(player, superVipGift[1][2]) then
		lualib:SysPromptMsg(player, "���Ѿ���ȡ��������Ա����������")
		return ""
	end
	if lualib:SetInt(player, superVipGift[1][2], 1) then
		if not lualib:AddIngot(player, superVipGift[1][1], "������Ա��������", player) then
			lualib:SysPromptMsg(player, "δ֪������ӽ�ɫԪ��ʧ�ܡ�")
		else
			lualib:SysPromptMsg(player, "��ȡ�˳�����Ա����������"..superVipGift[1][1].."Ԫ��")
			lualib:ShowFormWithContent(player, "�ű���", "SuperVip.changeBtn2State()")
			get_image_list(player)
			Is_magic(player)
		end
	end
	return ""
end

function RewardHall_resetSuperVip(player)
	local startTime_int = lualib:GetInt(player, "beSuperVipTime")
	local endTime_int = startTime_int + 30*24*60*60	--����ʱ��
	local nowTime_int = lualib:GetAllTime()	--��ǰʱ��
	if nowTime_int >= endTime_int then
		lualib:SetInt(player, "isSuperVip", 0)
	end
end

function get_SuperVip_Info(player)
	--lualib:SysPromptMsg(player, "get_SuperVip_Info")
	local _Ret = {}
	_Ret[1] = lualib:GetInt(player, superVipGift[4][2]) --�Ƿ��ǳ�����Ա
	_Ret[2] = lualib:Time2Str("%d", lualib:GetAllTime() - lualib:GetInt(player, "beSuperVipTime")) + 1 --�ڼ���
	--lualib:SysPromptMsg(player, lualib:Time2Str("%H:%M:%S", lualib:GetInt(player, "beSuperVipTime")))
	_Ret[3] = lualib:GetInt(player, superVipGift[1][2]) --�Ƿ���ȡ����������
	_Ret[4] = lualib:GetDayInt(player, superVipGift[2][2]) --�Ƿ���ȡ��ÿ�շ���
	--for i = 1, #_Ret do	lualib:SysPromptMsg(player, "_Ret["..i.."] = ".._Ret[i]) end
	lualib:ShowFormWithContent(player, "�ű���", "SuperVip.showInfo("..serialize(_Ret)..")")
	return ""
end


--��½����
function Get_login_itemlist(player)
	local login_day = lualib:GetInt(player,"login_days")
	if login_day > 7 then 
		login_day = 7 
	end	
	local get_item_day = {}
	for i = 1 , 7 do 
		get_item_day[i] = lualib:GetInt(player,"Login_Is_Get"..i)
	end	
	local job = lualib:Job(player)
	local table_date = {login_item_list[1][job],login_item_list[2][job],login_item_list[3],login_item_list[4],login_item_list[5],login_item_list[6],
	login_item_list[7][job],login_day,get_item_day}
	lualib:ShowFormWithContent(player, "�ű���", "OnloginReward.showInfo("..serialize(table_date)..")")
	return ""
end	

--��ȡ��½����
function Login_Get_item(player,param)	
	local index = tonumber(param)
	local Is_get = lualib:GetInt(player,"Login_Is_Get"..index)
	if Is_get == 1 then
		lualib:SysPromptMsg(player, "���Ѿ���ȡ"..index.."���½�������޷��ٴ���ȡ")
		return ""
	end
	local gift_award = login_item_list[index]
	if index < 3 or index == 7 then
		local job = lualib:Job(player)
		gift_award = gift_award[job]
	end	
	local freeBag = lualib:Player_GetBagFree(player)
	if freeBag < #gift_award then
		lualib:SysPromptMsg(player, "��������!����������")
		return ""
	end
	for i = 1, #gift_award do
		local bind = true
		lualib:AddItem(player, gift_award[i][1], gift_award[i][2], bind, "��ȡ��½����", player)
		--lualib:SysPromptMsg(player, "��ȡ��½����:"..lualib:KeyName2Name(gift_award[i][1], 4).." + "..gift_award[i][2].."!")
	end
	lualib:SetInt(player,"Login_Is_Get"..index,1)
	local login_day = lualib:GetInt(player,"login_days")	
	if login_day > 7 then
		login_day = 7
	end	
	local b = 0
	for i = 1 , login_day do 
		local a = lualib:GetInt(player,"Login_Is_Get"..i)
		if a == 0 then
			b = 1
			break
		end
	end
	lualib:ShowFormWithContent(player, "�ű���", "OnloginReward.change("..index..","..b..")")
	if login_day == 7 then
		local a = 0
		for i = 1 , 7 do
			if lualib:GetInt(player,"Login_Is_Get"..i) == 0 then
				a = 1 
				break
			end
		end
		if a == 0 then 
			lualib:SetInt(player,"isGetAll7DayRWD",1)
			--lualib:NotifyVar(player, "isGetAll7DayRWD")
			lualib:ShowFormWithContent(player, "�ű���", "RewardHall.DelOnloginRewardBtn()")
		end
	end
	if index > 1 then 
		
		for i = index - 1, 1, -1 do 
			local isGet = lualib:GetInt(player,"Login_Is_Get"..i)
			if isGet == 0 then 
				lualib:ShowFormWithContent(player, "�ű���", "OnloginReward.ChangeTab("..i..")");
				break;
			end	
		end
	end
	get_image_list(player)
	Is_magic(player)
	lualib:SysPromptMsg(player, "��¼"..index.."���Ӧ������ȡ�ɹ�!")
	return ""
end	

function off_line_exp(player)
	local hour = lualib:GetInt(player,"logout_hour")
	local a = lualib:GetInt(player,"lastRewardIndex")
	lualib:ShowFormWithContent(player, "�ű���", "OffLineExp.Info("..hour..","..a..")")
	return ""
end	

--��ȡ���߽���
function off_line_getexp(player,param)
	local hour = lualib:GetInt(player,"logout_hour")
	if hour == 0 then
		lualib:SysPromptMsg(player, "�޽�������ȡ")
		return ""
	end	
	local index = tonumber(param)
	local exps = 0
	local yb = 0 
	if index == 1 then
		exps = hour * 600000
		if not lualib:Player_AddExp(player, exps, "�Ӿ��飺���߾���", "system")  then
			lualib:SysPromptMsg(player, "�����������")
			return ""
		end
	elseif index == 2 then
		yb = hour * 13
		local ingot = lualib:GetIngot(player)
		if yb > ingot then
			lualib:ShowFormWithContent(player,"�ű���","GameMainBar.YbTopUP_Dlg()") 
			return ""
		end
		exps = hour * 600000 * 2
		if lualib:SubIngot(player, yb, "��Ԫ�������߾���", player) then
			if not lualib:Player_AddExp(player, exps, "�Ӿ��飺���߾���", "system")  then
				lualib:SysPromptMsg(player, "�����������")
				return ""
			end
		else
			lualib:SysPromptMsg(player, "���߾���۳�Ԫ��ʧ��!")
			return ""
		end
	elseif index == 3 then
		yb = hour * 38
		local ingot = lualib:GetIngot(player)
		if yb > ingot then
			lualib:ShowFormWithContent(player,"�ű���","GameMainBar.YbTopUP_Dlg()") 
			return ""
		end
		exps = hour * 600000 * 5
		if lualib:SubIngot(player, yb, "��Ԫ�������߾���", player) then
			if not lualib:Player_AddExp(player, exps, "�Ӿ��飺���߾���", "system")  then
				lualib:SysPromptMsg(player, "�����������")
				return ""
			end
		else
			lualib:SysPromptMsg(player, "���߾���۳�Ԫ��ʧ��!")
			return ""
		end
	end
	lualib:SetInt(player,"logout_hour",0)
	lualib:SetInt(player,"lastRewardIndex",index)
	lualib:ShowFormWithContent(player, "�ű���", "OffLineExp.Vis("..index..");")
	Is_magic(player)
	return ""
end




--[[function Active_Get(player, str)
	local libao = lualib:GetInt(player, "libao")
    local code = str
	if libao == 1 then
		lualib:SysPromptMsg(player, "���Ѿ�����������")
		return ""
	end
	if q_group[code] == 1 then
		local bagfree = lualib:BagFree(player, true, false, false)
		if bagfree < 1 then
			lualib:SysPromptMsg(player, "�����ռ䲻�㣬��Ҫ1������λ�ã�")
			return ""
		end
		if lualib:AddItem(player, "CQBY�������", 1, true, "���������", player) == true then
			lualib:SetInt(player, "libao", 1)
		else
			lualib:SysPromptMsg(player, "��ӵ���ʧ�ܣ�")
			return ""
		end
		lualib:SysPromptMsg(player, "��ϲ�㣬��ȡ����������ɹ���")
		return ""
	else
		lualib:SysPromptMsg(player, "��������������޷���ȡ")
	end
    return ""
end--]]
local code_gift_bag = {
							["va"] = {"va_flag", "VIP���1", 1500},
							["vb"] = {"vb_flag", "ý�����3", 1500},
							["vc"] = {"vc_flag", "VIP���2", 400},
						}

local code_gift_bag_two = {
							["yilewan1"] = {"jhm_flag1","�������",30000},
							["yilewan2"] = {"jhm_flag1","ý�����1",20000},
							["yilewan3"] = {"jhm_flag1","����1",20000},
							["yilewan4"] = {"jhm_flag1","���������",10000},
							["yilewan5"] = {"jhm_flag1","�������",10000},
							["yilewan6"] = {"jhm_flag1","�������1",10000},
							["yilewan7"] = {"jhm_flag1","�������1",10000},
							["yilewan8"] = {"jhm_flag1","�������2",3000},
							["yilewan9"] = {"jhm_flag1","�������2",3000},
							["yilewan10"] = {"jhm_flag1","����2",3000},
							["yilewan11"] = {"jhm_flag1","ý�����2",1500},
						}

function Active_Get(player, code)
	if code == "" or code == nil then
		lualib:SysPromptMsg(player, "��������ȷ�ļ�����")
		return ""
	end
	
	local bagfree = lualib:BagFree(player, true, false, false)
	if bagfree < 1 then
		lualib:SysPromptMsg(player, "�����ռ䲻�㣬��Ҫ1������λ�ã�")
		return ""
	end
	local id = lualib:Player_GetAccountID(player)
	if code_gift_bag_two[code] ~= nil then
		local flag = lualib:GetDBNum(code_gift_bag_two[code][1]..id)
		if flag == 1 then
			lualib:SysPromptMsg(player, "���Ѿ�����������")
			return ""
		end
		
		local s_flag = lualib:GetDBNum("s_"..code_gift_bag_two[code][1])
		if s_flag >= code_gift_bag_two[code][3] then
			lualib:SysPromptMsg(player, "������Ѿ���ȡ��")
			return ""
		end
		
		lualib:SetDBNumEx(code_gift_bag_two[code][1]..id, 1, 2)
		lualib:SetDBNumEx("s_"..code_gift_bag_two[code][1], s_flag + 1, 2)
		lualib:AddItem(player, code_gift_bag_two[code][2], 1, true, code_gift_bag_two[code][2], player)
		lualib:SysPromptMsg(player, "��ϲ�㣬��ȡ����������ɹ���")
		return ""
	end
	
	local len_n = string.len(code)
	if len_n ~= 14 then
		lualib:SysPromptMsg(player, "��������ȷ�ļ�����")
		return ""
	end
	
	local sign = string.sub(code, 1, 2)
	if code_gift_bag[sign] == nil then
		lualib:SysPromptMsg(player, "��������ȷ�ļ�����")
		return ""
	end
	
	--va201601102405
	local time_str = lualib:Time2Str("%Y-%m-%d", lualib:GetAllTime())
	local t_s1 = string.sub(code, 3, 6)
	local t_s2 = string.sub(code, 8, 9)
	local t_s3 = string.sub(code, 11, 12)
	if t_s1.."-"..t_s2.."-"..t_s3 ~= time_str then
		lualib:SysPromptMsg(player, "��������ȷ�ļ�����")
		return ""
	end
	
	local t_s4 = string.sub(code, 7, 7)
	local t_s5 = string.sub(code, 10, 10)
	local t_s6 = string.sub(code, 13, 14)
	local c_count = tonumber(t_s4..t_s5..t_s6)
	if c_count == 0 or c_count == nil then
		lualib:SysPromptMsg(player, "��������ȷ�ļ�����")
		return ""
	end
	
	if c_count > code_gift_bag[sign][3] then
		lualib:SysPromptMsg(player, "��������ȷ�ļ�����")
		return ""
	end
	
	local flag = lualib:GetDBNum(code_gift_bag[sign][1]..id)
	if flag == 1 then
		lualib:SysPromptMsg(player, "���Ѿ�����������")
		return ""
	end
	
	local s_flag = lualib:GetDBNum("s_"..code_gift_bag[sign][1])
	if s_flag >= code_gift_bag[sign][3] then
		lualib:SysPromptMsg(player, "������Ѿ���ȡ��")
		return ""
	end
	
	local indate = lualib:GetDBNum(code)
	if indate == 1 then
		lualib:SysPromptMsg(player, "�˼������Ѿ�ʹ�ù�")
		return ""
	end
	
	lualib:SetDBNumEx(code_gift_bag[sign][1]..id, 1, 2)
	lualib:SetDBNumEx(code, 1, 2)
	lualib:SetDBNumEx("s_"..code_gift_bag[sign][1], s_flag + 1, 2)
	
	lualib:AddItem(player, code_gift_bag[sign][2], 1, true,code_gift_bag[sign][2], player)
	lualib:SysPromptMsg(player, "��ϲ�㣬��ȡ����������ɹ���")
	return ""
end


function guanbi(player)
    return ""
end

--��Ч�Ƿ�ɾ��
function Is_magic(player)
	local login_day = lualib:GetInt(player,"login_days")
	if login_day > 7 then
		login_day = 7
	end	
	for i = 1 , login_day do 
		local a = lualib:GetInt(player,"Login_Is_Get"..i)
		if a == 0 then
			lualib:SetInt(player,"RewardMagic",1)
			return ""
		end
	end

	--������Ա
	if 1 == lualib:GetInt(player, "isSuperVip") then
		if 30 > lualib:Time2Str("%d", lualib:GetAllTime()) - lualib:Time2Str("%d",lualib:GetInt(player, "beSuperVipTime")) then
			if 0 == lualib:GetInt(player,"FirstSuperVipGift") or 0 == lualib:GetDayInt(player, "SuperVipDayGift") then
				lualib:SetInt(player,"RewardMagic",1)
				return ""
			end
		end
	end

	local hour = lualib:GetInt(player,"logout_hour")
	if hour > 0 then
		lualib:SetInt(player,"RewardMagic",1)
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
			return ""
		end
	end	
	
	lualib:SetInt(player,"RewardMagic",0)
	--lualib:ShowFormWithContent(player, "�ű���", "LittleMap.redSpotsF()")
	DelIconMagic(player, "��������")
	return ""
end