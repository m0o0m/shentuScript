local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

local tab_goods = 	
		{
			{{{"2000��Ԫ��",1},{"�߼�BOSS���־���",1,888,5},{"��ʯ�ᾧ��",1,888,5}},   --   keyname  count  yb  
			{{"��ש��",5},{"��ʯ�ᾧ��",1,888,5},{"������Ƭ��",1,888,5}},
			{{"���ž���",5},{"��ë",35,888,5},{"������Ƭ��",1,888,5}},
			{{"��������",5},{"�߼��ɾ�����",2,888,5},{"�߼���ѫ����",2,888,5}},
			{{"˫������8Сʱ��",5},{"��ʯ�ᾧ��",1,888,5},{"������Ƭ��",1,888,5}},
			{{"ת��������",5},{"��ë",35,888,5},{"�߼��ɾ�����",2,888,5}},
			{{"2000��Ԫ��",1},{"�߼�BOSS���־���",1,888,5},{"������Ƭ��",1,888,5}}},
			{0,0,0}
		}
function GetUIInit(player) 
	
	local past = tonumber(lualib:GetAllDays(0) - lualib:GetInt(player,"first_day")+1)    ----  2016 11 04 - 2016 11 03
	local tab = {{},{}}
	tab[1] = tab_goods[1][past]
	tab[2][1] = lualib:GetDayInt(player,"���ս����Ƿ���ȡ")
	tab[2][2] = tab_goods[1][past][2][4] - lualib:GetDayInt(player,"���ս�������2")
	tab[2][3] = tab_goods[1][past][3][4] - lualib:GetDayInt(player,"���ս�������3")
	
	local now = lualib:Str2Time(lualib:Now())    --2016-11-03 11:14:03
	local Day = lualib:GetDay(now)                 --03
	local Month = lualib:GetMonth(now)             --11 
	local Year = lualib:GetYear(now) 		        --2016
	tab[2][4]  = tonumber(lualib:Str2Time(Year.."-"..Month.."-"..Day.." 23:59:59"))- now
	tab[2][5]  = 7-past
	lualib:ShowFormWithContent(player,"�ű���","SevenWnd.Init("..serialize(tab)..");")
	return ""
end

function GetFree(player)
	local past = tonumber(lualib:GetAllDays(0) - lualib:GetInt(player,"first_day")+1)
	if lualib:AddItem(player,tab_goods[1][past][1][1],tab_goods[1][past][1][2],true,"���շ������", "���շ���") then --����Ʒ
		lualib:SetDayInt(player,"���ս����Ƿ���ȡ",1)
	end
		local past = tonumber(lualib:GetAllDays(0) - lualib:GetInt(player,"first_day")+1)    ----  2016 11 04 - 2016 11 03
	local tab = {{},{}}
	tab[1] = tab_goods[1][past]
	tab[2][1] = lualib:GetDayInt(player,"���ս����Ƿ���ȡ")
	tab[2][2] = tab_goods[1][past][2][4] - lualib:GetDayInt(player,"���ս�������2")
	tab[2][3] = tab_goods[1][past][3][4] - lualib:GetDayInt(player,"���ս�������3")
	
	local now = lualib:Str2Time(lualib:Now())    --2016-11-03 11:14:03
	local Day = lualib:GetDay(now)                 --03
	local Month = lualib:GetMonth(now)             --11 
	local Year = lualib:GetYear(now) 		        --2016
	tab[2][4]  = tonumber(lualib:Str2Time(Year.."-"..Month.."-"..Day.." 23:59:59"))- now
	tab[2][5]  = 7-past
	lualib:ShowFormWithContent(player,"�ű���","SevenWnd.Init("..serialize(tab)..");")
	return ""
end

function buyGoods(player,num)
	num = tonumber(num)+1
	local past = tonumber(lualib:GetAllDays(0) - lualib:GetInt(player,"first_day")+1)
	local index = tab_goods[1][past][num][4] - lualib:GetDayInt(player,"���ս�������"..num)
	local ingot = lualib:GetIngot(player)
	if ingot >= tab_goods[1][past][num][3] then 
		if index >0 then 
			if lualib:Player_SubIngot(player, tab_goods[1][past][num][3], false, "���ս�������", "ϵͳ") then
				if lualib:AddItem(player,tab_goods[1][past][num][1],tab_goods[1][past][num][2],true,"���շ�������", "���շ���") then --����Ʒ
					local int = lualib:GetDayInt(player,"���ս�������"..num)
					lualib:SetDayInt(player,"���ս�������"..num,int+1)
					local past = tonumber(lualib:GetAllDays(0) - lualib:GetInt(player,"first_day")+1)    ----  2016 11 04 - 2016 11 03
					local tab = {{},{}}
					tab[1] = tab_goods[1][past]
					tab[2][1] = lualib:GetDayInt(player,"���ս����Ƿ���ȡ")
					tab[2][2] = tab_goods[1][past][2][4] - lualib:GetDayInt(player,"���ս�������2")
					tab[2][3] = tab_goods[1][past][3][4] - lualib:GetDayInt(player,"���ս�������3")
					
					local now = lualib:Str2Time(lualib:Now())    --2016-11-03 11:14:03
					local Day = lualib:GetDay(now)                 --03
					local Month = lualib:GetMonth(now)             --11 
					local Year = lualib:GetYear(now) 		        --2016
					tab[2][4]  = tonumber(lualib:Str2Time(Year.."-"..Month.."-"..Day.." 23:59:59"))- now
					tab[2][5]  = 7-past
					lualib:ShowFormWithContent(player,"�ű���","SevenWnd.Init("..serialize(tab)..");")
					return ""
				end
			end
		else
			lualib:SysPromptMsg(player,"���մ���������")
		end
	else
		lualib:SysPromptMsg(player,"Ԫ������")
	end
	return ""
end