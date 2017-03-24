local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")
require("system/serializer")

local items1 = {--��1����Ф��������
	"����1",
	"��ţ1",
	"����1",
	"î��1",
	"����1",
	"����1",
	"����1",
	"δ��1",
	"���1",
	"�ϼ�1",
	"�繷1",
	"����1",
}

local items2 = {--��2����Ф��������
	"����2",
	"��ţ2",
	"����2",
	"î��2",
	"����2",
	"����2",
	"����2",
	"δ��2",
	"���2",
	"�ϼ�2",
	"�繷2",
	"����2",
}

local items3 = {--��3����Ф��������
	"����3",
	"��ţ3",
	"����3",
	"î��3",
	"����3",
	"����3",
	"����3",
	"δ��3",
	"���3",
	"�ϼ�3",
	"�繷3",
	"����3",
}

local map_t = {
{"��Ф��ͼ1", 59, 131},   --��һ����Ф��ͼ
{"�����ֻ�", 64, 73},   --�ڶ�����Ф��ͼ
{"����ħս����", 71, 100},   --��������Ф��ͼ
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
	lack[i]  = "��"
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
lualib:ShowFormWithContent(player, "�ű���", str);
	 str = "Sx_sc_c1 = "..lv1	
lualib:ShowFormWithContent(player, "�ű���", str);
	 str = "Sx_sc_c2 = "..lv2	
lualib:ShowFormWithContent(player, "�ű���", str);
	 str = "Sx_sc_c3 = "..lv3	
lualib:ShowFormWithContent(player, "�ű���", str);
lualib:ShowFormWithContent(player,"form�ļ���","��Ф��ͼ")	
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
	lualib:MsgBox(player, "#COLORCOLOR_PURPLE#�뽫��Ӧ����Фװ�����벢�����á�")
	return""
	end	
	lualib:Player_MapMoveXY(player, map_t[num][1], map_t[num][2], map_t[num][3], 3)
	lualib:SysMsg_SendBroadcastColor("���["..lualib:Name(player).."],ͨ����Ф���ͽ��� "..lualib:KeyName2Name(map_t[num][1],5).."", "", 1, 12)
	return""
end
