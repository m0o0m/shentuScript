local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

local tab_goods = 	
		{
			{{{"2000绑定元宝",1},{"高级BOSS积分精魄",1,888,5},{"宝石结晶中",1,888,5}},   --   keyname  count  yb  
			{{"金砖中",5},{"宝石结晶中",1,888,5},{"魂珠碎片中",1,888,5}},
			{{"玛雅卷轴",5},{"羽毛",35,888,5},{"魂珠碎片中",1,888,5}},
			{{"副本卷轴",5},{"高级成就令牌",2,888,5},{"高级功勋卷轴",2,888,5}},
			{{"双倍经验8小时绑",5},{"宝石结晶中",1,888,5},{"魂珠碎片中",1,888,5}},
			{{"转生神殿卷轴",5},{"羽毛",35,888,5},{"高级成就令牌",2,888,5}},
			{{"2000绑定元宝",1},{"高级BOSS积分精魄",1,888,5},{"魂珠碎片中",1,888,5}}},
			{0,0,0}
		}
function GetUIInit(player) 
	
	local past = tonumber(lualib:GetAllDays(0) - lualib:GetInt(player,"first_day")+1)    ----  2016 11 04 - 2016 11 03
	local tab = {{},{}}
	tab[1] = tab_goods[1][past]
	tab[2][1] = lualib:GetDayInt(player,"七日奖励是否领取")
	tab[2][2] = tab_goods[1][past][2][4] - lualib:GetDayInt(player,"七日奖励购买2")
	tab[2][3] = tab_goods[1][past][3][4] - lualib:GetDayInt(player,"七日奖励购买3")
	
	local now = lualib:Str2Time(lualib:Now())    --2016-11-03 11:14:03
	local Day = lualib:GetDay(now)                 --03
	local Month = lualib:GetMonth(now)             --11 
	local Year = lualib:GetYear(now) 		        --2016
	tab[2][4]  = tonumber(lualib:Str2Time(Year.."-"..Month.."-"..Day.." 23:59:59"))- now
	tab[2][5]  = 7-past
	lualib:ShowFormWithContent(player,"脚本表单","SevenWnd.Init("..serialize(tab)..");")
	return ""
end

function GetFree(player)
	local past = tonumber(lualib:GetAllDays(0) - lualib:GetInt(player,"first_day")+1)
	if lualib:AddItem(player,tab_goods[1][past][1][1],tab_goods[1][past][1][2],true,"七日返利免费", "七日返利") then --给物品
		lualib:SetDayInt(player,"七日奖励是否领取",1)
	end
		local past = tonumber(lualib:GetAllDays(0) - lualib:GetInt(player,"first_day")+1)    ----  2016 11 04 - 2016 11 03
	local tab = {{},{}}
	tab[1] = tab_goods[1][past]
	tab[2][1] = lualib:GetDayInt(player,"七日奖励是否领取")
	tab[2][2] = tab_goods[1][past][2][4] - lualib:GetDayInt(player,"七日奖励购买2")
	tab[2][3] = tab_goods[1][past][3][4] - lualib:GetDayInt(player,"七日奖励购买3")
	
	local now = lualib:Str2Time(lualib:Now())    --2016-11-03 11:14:03
	local Day = lualib:GetDay(now)                 --03
	local Month = lualib:GetMonth(now)             --11 
	local Year = lualib:GetYear(now) 		        --2016
	tab[2][4]  = tonumber(lualib:Str2Time(Year.."-"..Month.."-"..Day.." 23:59:59"))- now
	tab[2][5]  = 7-past
	lualib:ShowFormWithContent(player,"脚本表单","SevenWnd.Init("..serialize(tab)..");")
	return ""
end

function buyGoods(player,num)
	num = tonumber(num)+1
	local past = tonumber(lualib:GetAllDays(0) - lualib:GetInt(player,"first_day")+1)
	local index = tab_goods[1][past][num][4] - lualib:GetDayInt(player,"七日奖励购买"..num)
	local ingot = lualib:GetIngot(player)
	if ingot >= tab_goods[1][past][num][3] then 
		if index >0 then 
			if lualib:Player_SubIngot(player, tab_goods[1][past][num][3], false, "七日奖励购买", "系统") then
				if lualib:AddItem(player,tab_goods[1][past][num][1],tab_goods[1][past][num][2],true,"七日返利购买", "七日返利") then --给物品
					local int = lualib:GetDayInt(player,"七日奖励购买"..num)
					lualib:SetDayInt(player,"七日奖励购买"..num,int+1)
					local past = tonumber(lualib:GetAllDays(0) - lualib:GetInt(player,"first_day")+1)    ----  2016 11 04 - 2016 11 03
					local tab = {{},{}}
					tab[1] = tab_goods[1][past]
					tab[2][1] = lualib:GetDayInt(player,"七日奖励是否领取")
					tab[2][2] = tab_goods[1][past][2][4] - lualib:GetDayInt(player,"七日奖励购买2")
					tab[2][3] = tab_goods[1][past][3][4] - lualib:GetDayInt(player,"七日奖励购买3")
					
					local now = lualib:Str2Time(lualib:Now())    --2016-11-03 11:14:03
					local Day = lualib:GetDay(now)                 --03
					local Month = lualib:GetMonth(now)             --11 
					local Year = lualib:GetYear(now) 		        --2016
					tab[2][4]  = tonumber(lualib:Str2Time(Year.."-"..Month.."-"..Day.." 23:59:59"))- now
					tab[2][5]  = 7-past
					lualib:ShowFormWithContent(player,"脚本表单","SevenWnd.Init("..serialize(tab)..");")
					return ""
				end
			end
		else
			lualib:SysPromptMsg(player,"今日次数已用完")
		end
	else
		lualib:SysPromptMsg(player,"元宝不足")
	end
	return ""
end