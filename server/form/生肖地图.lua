local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")
require("system/serializer")

local items1 = {--第1套生肖索引名表
	"子鼠1",
	"丑牛1",
	"寅虎1",
	"卯兔1",
	"辰龙1",
	"巳蛇1",
	"午马1",
	"未羊1",
	"申猴1",
	"酉鸡1",
	"戌狗1",
	"亥猪1",
}

local items2 = {--第2套生肖索引名表
	"子鼠2",
	"丑牛2",
	"寅虎2",
	"卯兔2",
	"辰龙2",
	"巳蛇2",
	"午马2",
	"未羊2",
	"申猴2",
	"酉鸡2",
	"戌狗2",
	"亥猪2",
}

local items3 = {--第3套生肖索引名表
	"子鼠3",
	"丑牛3",
	"寅虎3",
	"卯兔3",
	"辰龙3",
	"巳蛇3",
	"午马3",
	"未羊3",
	"申猴3",
	"酉鸡3",
	"戌狗3",
	"亥猪3",
}

local map_t = {
{"生肖地图1", 59, 131},   --第一套生肖地图
{"六道轮回", 64, 73},   --第二套生肖地图
{"《神魔战场》", 71, 100},   --第三套生肖地图
}


local wei = {414,415,416,417,418,419,420,421,422,423,424,425}

function  main(player)
local lack = {}	
local lv1 = 0
local lv2 = 0 
local lv3 = 0
	for i = 1,12 do 
	 ack = lualib:Player_GetItemGuid(player,wei[i]) 
	if ack  ~= "0" then 
	lack[i] = lualib:KeyName(ack)
	else 
	lack[i]  = "无"
	end
	end
for i=1,#items1 do 
if  items1[i]  == lack[i] then 
	lv1 =lv1+1
	end	
	end
	
	for i=1,#items2 do 
if  items2[i]  == lack[i] then 
	lv2 =lv2+1
	end	
	end
	
  for i=1,#items3 do 
if  items3[i]  == lack[i] then 
	lv3 =lv3+1
	end	
	end
	 str = "Sx_sc_jya = "..serialize(lack)
lualib:ShowFormWithContent(player, "脚本表单", str);
	 str = "Sx_sc_c1 = "..lv1	
lualib:ShowFormWithContent(player, "脚本表单", str);
	 str = "Sx_sc_c2 = "..lv2	
lualib:ShowFormWithContent(player, "脚本表单", str);
	 str = "Sx_sc_c3 = "..lv3	
lualib:ShowFormWithContent(player, "脚本表单", str);
lualib:ShowFormWithContent(player,"form文件表单","生肖地图")	
	return	""
end


function jinru(player,num) 
local num = tonumber(num)	
local item = {}
local shul = 0
if num == 1 then 
	item = items1
elseif num == 2 then 
    item = items2
elseif num == 3 then 
    item = items3
end
	for i = 1,12 do 
	 ack = lualib:Player_GetItemGuid(player,wei[i]) 	
	if ack  ~= "0" then 
	name = lualib:KeyName(ack)
	if item[i] == name then 
		shul = shul+1
	end
	end
	end
if shul < 12 then 
	lualib:MsgBox(player, "#COLORCOLOR_PURPLE#请将对应的生肖装备集齐并穿戴好。")
	return""
	end	
	lualib:Player_MapMoveXY(player, map_t[num][1], map_t[num][2], map_t[num][3], 3)
	lualib:SysMsg_SendBroadcastColor("玩家["..lualib:Name(player).."],通过生肖传送进入 "..lualib:KeyName2Name(map_t[num][1],5).."", "", 1, 12)
	return""
end
