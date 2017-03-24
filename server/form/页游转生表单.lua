local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

	--   |3|HP|    |5|MP|    |21|����|    |23|װ��|    |25|����|    |10|�﹥��|    |11|�﹥��|    |12|ħ����|
	--	 |13|ħ����|    |14|������|    |15|������|    |6|�����|    |7|�����|    |8|ħ����|    |9|ħ����|
local rein_attvalue_t = 
{
	{--1ת
		{
		["3"] = 1221, ["10"] = 120, ["11"] = 25, ["6"] = 44, ["7"] = 21, ["8"] = 11, ["9"] = 9
		}, 
		{
		["3"] = 305, ["12"] = 120, ["13"] = 25, ["6"] = 44, ["7"] = 21, ["8"] = 11, ["9"] = 9
		}, 
		{
		["3"] = 668, ["14"] = 120, ["15"] = 25, ["6"] = 44, ["7"] = 21, ["8"] = 11, ["9"] = 9
		}, 
		50000,
	}, 
	{--2ת
		{
		["3"] = 1613, ["10"] = 257, ["11"] = 58, ["6"] = 91, ["7"] = 50, ["8"] = 27, ["9"] = 22
		}, 
		{
		["3"] = 534, ["12"] = 257, ["13"] = 58, ["6"] = 91, ["7"] = 50, ["8"] = 27, ["9"] = 22
		}, 
		{
		["3"] = 1028, ["14"] = 257, ["15"] = 58, ["6"] = 91, ["7"] = 50, ["8"] = 27, ["9"] = 22
		}, 
		136800,
		
	}, 
	{--3ת
		{
		["3"] = 2061, ["10"] = 411, ["11"] = 100, ["6"] = 146, ["7"] = 87, ["8"] = 50, ["9"] = 39
		}, 
		{
		["3"] = 798, ["12"] = 411, ["13"] = 100, ["6"] = 146, ["7"] = 87, ["8"] = 50, ["9"] = 39
		}, 
		{
		["3"] = 1445, ["14"] = 411, ["15"] = 100, ["6"] = 146, ["7"] = 87, ["8"] = 50, ["9"] = 39
		}, 
		308300,
		
	}, 
	{--4ת
		{
		["3"] = 2571, ["10"] = 591, ["11"] = 159, ["6"] = 209, ["7"] = 131, ["8"] = 81, ["9"] = 59
		}, 
		{
		["3"] = 1102, ["12"] = 591, ["13"] = 159, ["6"] = 209, ["7"] = 131, ["8"] = 81, ["9"] = 59
		}, 
		{
		["3"] = 1925, ["14"] = 591, ["15"] = 159, ["6"] = 209, ["7"] = 131, ["8"] = 81, ["9"] = 59
		}, 
		573900,
		
	}, 
	{--5ת
		{
		["3"] = 3144, ["10"] = 797, ["11"] = 235, ["6"] = 279, ["7"] = 182, ["8"] = 119, ["9"] = 82
		}, 
		{
		["3"] = 1447, ["12"] = 797, ["13"] = 235, ["6"] = 279, ["7"] = 182, ["8"] = 119, ["9"] = 82
		}, 
		{
		["3"] = 2469, ["14"] = 797, ["15"] = 235, ["6"] = 279, ["7"] = 182, ["8"] = 119, ["9"] = 82
		}, 
		1043500,
	}, 
	{--6ת
		{
		["3"] = 3786, ["10"] = 1028, ["11"] = 327, ["6"] = 360, ["7"] = 240, ["8"] = 169, ["9"] = 111
		}, 
		{
		["3"] = 1835, ["12"] = 1028, ["13"] = 327, ["6"] = 360, ["7"] = 240, ["8"] = 169, ["9"] = 111
		}, 
		{
		["3"] = 3084, ["14"] = 1028, ["15"] = 327, ["6"] = 360, ["7"] = 240, ["8"] = 169, ["9"] = 111
		}, 
		1878500,
	}, 
	{--7ת
		{
		["3"] = 4498, ["10"] = 1285, ["11"] = 436, ["6"] = 451, ["7"] = 309, ["8"] = 147, ["9"] = 231
		}, 
		{
		["3"] = 2268, ["12"] = 1285, ["13"] = 436, ["6"] = 451, ["7"] = 309, ["8"] = 147, ["9"] = 231
		}, 
		{
		["3"] = 3771, ["14"] = 1285, ["15"] = 436, ["6"] = 451, ["7"] = 309, ["8"] = 147, ["9"] = 231
		}, 
		3192600,
	}, 
	{--8ת
		{
		["3"] = 5286, ["10"] = 1577, ["11"] = 571, ["6"] = 558, ["7"] = 389, ["8"] = 188, ["9"] = 308
		}, 
		{
		["3"] = 2960, ["12"] = 1577, ["13"] = 571, ["6"] = 558, ["7"] = 389, ["8"] = 188, ["9"] = 308
		}, 
		{
		["3"] = 4534, ["14"] = 1577, ["15"] = 571, ["6"] = 558, ["7"] = 389, ["8"] = 188, ["9"] = 308
		}, 
		5108200,
	}, 
	{--9ת
		{
		["3"] = 6625, ["10"] = 1903, ["11"] = 730, ["6"] = 683, ["7"] = 480, ["8"] = 239, ["9"] = 405
		}, 
		{
		["3"] = 3732, ["12"] = 1903, ["13"] = 730, ["6"] = 683, ["7"] = 480, ["8"] = 239, ["9"] = 405
		}, 
		{
		["3"] = 5891, ["14"] = 1903, ["15"] = 730, ["6"] = 683, ["7"] = 480, ["8"] = 239, ["9"] = 405
		}, 
		7662300,
	}, 
	{--10ת
		{
		["3"] = 8113, ["10"] = 2263, ["11"] = 915, ["6"] = 830, ["7"] = 582, ["8"] = 295, ["9"] = 524
		}, 
		{
		["3"] = 4587, ["12"] = 2263, ["13"] = 915, ["6"] = 830, ["7"] = 582, ["8"] = 295, ["9"] = 524
		}, 
		{
		["3"] = 7404, ["14"] = 2263, ["15"] = 915, ["6"] = 830, ["7"] = 582, ["8"] = 295, ["9"] = 524
		}, 
		11113500,
	}, 
	{--11ת
		{
		["3"] = 9758, ["10"] = 2726, ["11"] = 1121, ["6"] = 830, ["7"] = 582, ["8"] = 295, ["9"] = 524
		}, 
		{
		["3"] = 5529, ["12"] = 2726, ["13"] = 1121, ["6"] = 830, ["7"] = 582, ["8"] = 295, ["9"] = 524
		}, 
		{
		["3"] = 9080, ["14"] = 2726, ["15"] = 1121, ["6"] = 830, ["7"] = 582, ["8"] = 295, ["9"] = 524
		}, 
		16500000,
	}, 
	{--12ת
		{
		["3"] = 11567, ["10"] = 3230, ["11"] = 1361, ["6"] = 830, ["7"] = 582, ["8"] = 295, ["9"] = 524
		}, 
		{
		["3"] = 6562, ["12"] = 3230, ["13"] = 1361, ["6"] = 830, ["7"] = 582, ["8"] = 295, ["9"] = 524
		}, 
		{
		["3"] = 10928, ["14"] = 3230, ["15"] = 1361, ["6"] = 830, ["7"] = 582, ["8"] = 295, ["9"] = 524
		}, 
		21001600,
	}, 
	
}

local level_repair = {[81] = 30300,[82] = 45000,[83] = 48500,[84] = 52400,[85] = 58300,[86] = 63700,[87] = 93500,[88] = 102400,[89] = 112500,[90] = 124000,
[91] = 137600,[92] = 167500,[93] = 196400,[94] = 248900,[95] = 306100,[96] = 442100,[97] = 509100,[98] = 586000,[99] = 667000,[100] = 786300,[101] = 995600}


function show_update(player)
	local reinlevel = lualib:GetInt(player,"reinLevel")
	local job = lualib:Job(player)
	local repair = lualib:GetInt(player,"ReinRepair")
	local next_level = reinlevel + 1
	local a = {}
	if reinlevel ~= 0 then
		a = rein_attvalue_t[reinlevel][job]
	end
	local b = {}
	local c = 0
	if reinlevel < 12 then
		b = rein_attvalue_t[next_level][job]
		c = rein_attvalue_t[next_level][4]
	end
	local tab = {a,b,reinlevel,job,repair,c}
	local table_data = serialize(tab)
	lualib:ShowFormWithContent(player,"�ű���","RoleRein.update("..table_data..");")
	return ""
end	

function GetRepair(player)
	local num = lualib:GetDayInt(player,"zhuans_exchange")
	if num >= 3 then
		lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "����ȼ��һ�ת����Ϊ�Ѵ�3�Σ������ٴζһ�")
		return ""
	end				
	local level = lualib:Level(player)
	if level < 81 or level > 101 then
		lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "���ĵȼ��޷��һ���Ϊ")
		return ""
	end
	lualib:SetInt(player,"ReinRepair",lualib:GetInt(player,"ReinRepair") + level_repair[level])
	lualib:SetDayInt(player,"zhuans_exchange",num + 1)
	l = level - 1
	lualib:SetLevel(player, l)
	local repair = lualib:GetInt(player,"ReinRepair")
	local a = lualib:GetDayInt(player,"zhuans_exchange")
	local b = 3 - a 
	local str = "RoleReinPoint.RepairChange("..repair..");EditSetText(nil,\"RoleReinPoint,ConvertCountEdit\",\""..b.."\");"
	if b == 0 then
		str = str .. "RoleReinPoint.ButEnable();"
	end
	lualib:ShowFormWithContent(player,"�ű���",str)
	lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "�һ��ɹ�")
	return ""
end



function show_num(player)
	local a = lualib:GetDayInt(player,"zhuans_exchange")
	local num = 3 - a 
	local str = "EditSetText(nil,\"RoleReinPoint,ConvertCountEdit\",\""..num.."\");"
	if num == 0 then
		str = str .. "RoleReinPoint.ButEnable();"
	end
	lualib:ShowFormWithContent(player,"�ű���",str)
	return ""
end	

function BuyRepair(player,index)
	local yb = lualib:GetIngot(player) 
	if tonumber(index) == 1 then 		
		if yb < 1000 then
			lualib:ShowFormWithContent(player,"�ű���","RoleReinPoint.msgbox();")	
			return ""
		else
			local num = lualib:GetDayInt(player,"ReinSenior"..index)
			if num > 19 then
				lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "����ʹ�ø߼�ת�����Ѵ�20�Σ�������ʹ��")
				return ""
			else				
				if not lualib:Player_SubIngot(player, 1000, false, "��Ԫ��:����߼�ת����", "ϵͳ") then
					lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "�۳�Ԫ��ʧ��")
					return ""
				end
				lualib:SetInt(player,"ReinRepair",lualib:GetInt(player,"ReinRepair") + 50000)
				lualib:SetDayInt(player,"ReinSenior"..index,num + 1)
				local repair = lualib:GetInt(player,"ReinRepair")
				lualib:ShowFormWithContent(player,"�ű���","RoleReinPoint.RepairChange("..repair..");")
			end	
		end	
	elseif tonumber(index) == 2 then
		if yb < 9888 then
			lualib:ShowFormWithContent(player,"�ű���","RoleReinPoint.msgbox();")	
			return ""
		else
			local num = lualib:GetDayInt(player,"ReinSenior"..index)
			if num > 9 then
				lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "����ʹ�ó���ת�����Ѵ�10�Σ�������ʹ��")
				return ""
			else	
				if not lualib:Player_SubIngot(player, 9888, false, "��Ԫ��:���򳬼���ת����", "ϵͳ") then
					lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "�۳�Ԫ��ʧ��")
					return ""
				end
				lualib:SetInt(player,"ReinRepair",lualib:GetInt(player,"ReinRepair") + 500000)
				lualib:SetDayInt(player,"ReinSenior"..index,num + 1)
				local repair = lualib:GetInt(player,"ReinRepair")
				lualib:ShowFormWithContent(player,"�ű���","RoleReinPoint.RepairChange("..repair..");")
			end	
		end	
	end
	lualib:RunClientScript(player, "MsgShow", "AE_create_msg", "����ɹ�")
	return ""
end	

function zhuanshen(player)
	local job = lualib:Job(player)
	local reinNum = lualib:GetInt(player, "reinLevel")
	local next_rein_lv = reinNum + 1
	if lualib:Level(player) < 80 then
		lualib:ShowFormWithContent(player,"�ű���","RoleRein.msg_up(\"��ǰ�ȼ��޷�ת��\");")
		return ""
	end
	
	if reinNum >= 12 then
		lualib:ShowFormWithContent(player,"�ű���","RoleRein.msg_up(\"���Ѵﵽ���ת���ȼ�12ת\");")
		return ""
	end
	
	local repair = lualib:GetInt(player,"ReinRepair")
	local req_repair = rein_attvalue_t[next_rein_lv][4]
	if req_repair > repair then
		lualib:ShowFormWithContent(player,"�ű���","RoleRein.msg_up(\"ת����Ϊ���㣬�޷�ת��\");")
		return ""
	end	
	local i = 1
	for k , v in pairs(rein_attvalue_t[next_rein_lv][job]) do 
		lualib:SetDynamicAttr(player, i, tonumber(k), v)
		i = i + 1
	end	
	local surRepair = repair - req_repair
	lualib:SetInt(player,"ReinRepair",surRepair)
	if lualib:SetInt(player,"reinLevel",next_rein_lv) then
		if next_rein_lv == 5 then
			lualib:ShowFormWithContent(player, "�ű���","GameMainBar.OpenCrtstalFun()")
		end
	end
	lualib:NotifyVar(player, "reinLevel")
	local s = "CLTipCacheClear()"
	lualib:ShowFormWithContent(player,"�ű���",s)
	--lualib:SysPromptMsg(player, "��ִ��")       --�������
	--lualib:SetInt(player,"jjc_rongyao",next_rein_lv)
	show_update(player)
	lualib:ShowFormWithContent(player,"�ű���","RoleRein.msg_up(\"ת���ɹ�\");")
	return ""
end
