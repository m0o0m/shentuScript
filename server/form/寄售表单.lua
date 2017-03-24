local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")



function Main(player)
	local rmb = lualib:GetInt(player, "rmbPoint");
	lualib:ShowFormWithContent(player, "�ű���", "TradeWnd:Updata("..rmb..")");
	return ""
end


--�ͻ�����ʾʹ�ã�����Ʒ��name�ֶ�
local data = 
{	
	--���ռ۸��{name,  ���ռ۸�}
	{"1�����", 1},
	{"5�����", 5},
	{"10�����", 10},
	{"50�����", 50},
	{"100�����", 100},
	{"��ҵ��", 200},
	{"����1-2", 400},
	{"����1-3", 600},
	{"����2-1", 800},
	{"����2-2", 1000},
	{"����2-3", 1200},
	{"����3-1", 1400},
	{"����3-2", 1600},
	{"����3-3", 1800},
	{"����4-1", 2000},
	{"����4-2", 2200},
	{"����4-3", 2400},
	{"������", 1000},
	{"�׻���", 1000},
	{"��ȸ��", 1000},
	{"�����", 1000},
	{"ս����6", 1000},
	{"������6", 1000},
	{"������6", 1000},
}


--�����ж�ʹ�ã�����Ʒ��keyname�ֶ�
local DATA = 
{	
	--���ռ۸��{������,  ���ռ۸�}
	{"1�����", 1},
	{"5�����", 5},
	{"10�����", 10},
	{"50�����", 50},
	{"100�����", 100},
	{"��ҵ��", 200},
	{"����1-2", 400},
	{"����1-3", 600},
	{"����2-1", 800},
	{"����2-2", 1000},
	{"����2-3", 1200},
	{"����3-1", 1400},
	{"����3-2", 1600},
	{"����3-3", 1800},
	{"����4-1", 2000},
	{"����4-2", 2200},
	{"����4-3", 2400},
	{"������", 1000},
	{"�׻���", 1000},
	{"��ȸ��", 1000},
	{"�����", 1000},
	{"ս����6", 1000},
	{"������6", 1000},
	{"������6", 1000},
}
function RMBRecycle_Main(player )
	lualib:ShowFormWithContent(player, "�ű���", "TradeWnd_1:Updata("..serialize(data)..")");
	return ""
end

function RMBRecycle_Recycle(player, index);
	index = tonumber(index);
	local tab = DATA[index]
	if not tab then 
		return "�����б���û�ж�Ӧ����"
	end 
	local keyname = tab[1];
	local count = lualib:ItemCount(player, keyname);
	if count <= 0 then 
		return "���ı�����û�С�"..data[index][1].."�����װ��"
	else
		if not lualib:TakeItem(player, keyname, 1, "ɾ����:���۱���RMB����", player) then
			return "ɾ������ʧ��"
		end
		local rmb = lualib:GetInt(player, "rmbPoint");
		rmb = rmb + tab[2];
		lualib:SetInt(player, "rmbPoint", rmb);
		Main(player);
		local db_sub_tb = {};
		local player_name = lualib:Name(player);
		db_sub_tb[1] = data[index][1]; --name
		db_sub_tb[2] = tab[2];		--price
		db_sub_tb[3] = player_name; --player_name
		db_sub_tb[4] = 0;	--hasBeenBought
		db_sub_tb[5] = keyname;	--item _KeyName
		local DBStr_RMBRecycle = {}
		local str = lualib:GetDBStr("DBStr_RMBRecycle");
		if str ~= nil and str ~= "" and str ~= "0" then
			DBStr_RMBRecycle  = deserialize(str);
		end
		table.insert(DBStr_RMBRecycle, 1, db_sub_tb);
		lualib:SetDBStr("DBStr_RMBRecycle", serialize(DBStr_RMBRecycle));
		return "��ϲ���ɹ����ա�"..data[index][1].."��,��á�"..tab[2].."��RMB"
	end 
	return ""
end



function EquipRecycle_Main(player)
	local DBStr_RMBRecycle = {}
	local str = lualib:GetDBStr("DBStr_RMBRecycle");
	if str ~= nil and str ~= "" and str ~= "0" then
		DBStr_RMBRecycle  = deserialize(str);
		if type(DBStr_RMBRecycle) ~= "table" then 
			return "���ݿ����ݽṹ����,���Ǳ�ṹ"
		end
	end
	lualib:ShowFormWithContent(player, "�ű���", "TradeWnd_2:Updata("..serialize(DBStr_RMBRecycle)..")");
	return ""
end

function EquipRecycle_BuyBack(player, index)
	index = tonumber(index);
	local DBStr_RMBRecycle = {}
	local str = lualib:GetDBStr("DBStr_RMBRecycle");
	if str ~= nil and str ~= "" and str ~= "0" then
		DBStr_RMBRecycle  = deserialize(str);
		if type(DBStr_RMBRecycle) ~= "table" then 
			return "���ݿ����ݽṹ����,���Ǳ�ṹ"
		end
	end
	local tab = DBStr_RMBRecycle[index]
	if not tab then 
		return ""
	end 
	local bool = tab[4];
	if bool == 1 then 
		return "��Ʒ�Ѿ�������"
	end
	local price = tab[2];
	local rmb = lualib:GetInt(player, "rmbPoint");
	if price > rmb then 
		return "RMB��������,�޷�����"
	end
	if lualib:GetBagFree(player) < 1 then
		return "�����ռ䲻��"
	end
	local Item_KeyName = tab[5];
	if not lualib:AddItem(player, Item_KeyName, 1, false, "����Ʒ:���۱�����Ʒ�ع�", player) then --����Ʒ
	   return "����Ҽӵ���ʧ��"
	end
	rmb = rmb - price;
	lualib:SetInt(player, "rmbPoint", rmb);
	Main(player);
	DBStr_RMBRecycle[index][4] = 1;
	lualib:SetDBStr("DBStr_RMBRecycle", serialize(DBStr_RMBRecycle));
	lualib:ShowFormWithContent(player, "�ű���", "TradeWnd_2:Updata("..serialize(DBStr_RMBRecycle)..")");
	return ""
end



local AWARD = 
{	--{��Ҫװ��+����}....desc="��������",val=����RMB����,num=��������
	{{"�ļ��һ𽣷�", 1}, desc = "�ļ�����ն", val = 300, num = 1},
	{{"�ļ�����ն", 1}, desc = "�ļ�����ն", val = 300, num = 1},
	{{"�ļ�ħ����", 1}, desc = "�ļ�ħ����", val = 300, num = 1},
	{{"�ļ�������", 1}, desc = "�ļ�������", val = 300, num = 1},
	{{"�ļ����ǻ���", 1}, desc = "�ļ����ǻ���", val = 300, num = 1},
	{{"�ļ��ٻ�����", 1}, desc = "�ļ��ٻ���", val = 300, num = 1},
	{{"�ļ��ٻ�����", 1}, desc = "�ļ��ٻ�����", val = 300, num = 1},
	{{"ս����2����", 1}, desc = "���������", val = 100, num = 1},
	{{"������2����", 1}, desc = "�Ȼ�����", val = 100, num = 1},
	{{"������2����", 1}, desc = "��ң�ȡ����", val = 100, num = 1},
	{{"ս����3����", 1}, desc = "ڤ�������", val = 500, num = 1},
	{{"������3����", 1}, desc = "���������", val = 500, num = 1},
	{{"������3����", 1}, desc = "��ڤ�����", val = 500, num = 1},
	{{"ս����4����", 1}, desc = "��������", val = 500, num = 1},
	{{"������4����", 1}, desc = "ħ������", val = 500, num = 1},
	{{"������4����", 1}, desc = "���������", val = 500, num = 1},
	{{"ս�·�3��", 1}, desc = "��ħս��", val = 50, num = 1},
	{{"ս�·�3Ů", 1}, desc = "ʥս����", val = 50, num = 1},
	{{"���·�3��", 1}, desc = "��ʥ����", val = 50, num = 1},
	{{"���·�3Ů", 1}, desc = "��������", val = 50, num = 1},
	{{"���·�3��", 1}, desc = "�������", val = 50, num = 1},
	{{"���·�3Ů", 1}, desc = "��ʦ����", val = 50, num = 1},
	{{"ս�·�4��", 1}, desc = "����ս�ס��С�", val = 200, num = 1},
	{{"ս�·�4Ů", 1}, desc = "����ս�ס�Ů��", val = 200, num = 1},
	{{"���·�4��", 1}, desc = "����ħ�¡��С�", val = 200, num = 1},
	{{"���·�4Ů", 1}, desc = "����ħ�¡�Ů��", val = 200, num = 1},
	{{"���·�4��", 1}, desc = "��â���ۡ��С�", val = 200, num = 1},
	{{"���·�4Ů", 1}, desc = "��â���ۡ�Ů��", val = 200, num = 1},
	{{"ս�·�5��", 1}, desc = "��������ս��", val = 1000, num = 1},
	{{"ս�·�5Ů", 1}, desc = "��������ս��", val = 1000, num = 1},
	{{"���·�5��", 1}, desc = "��������ħ��", val = 1000, num = 1},
	{{"���·�5Ů", 1}, desc = "��������ħ��", val = 1000, num = 1},
	{{"���·�5��", 1}, desc = "��������ʥ��", val = 1000, num = 1},
	{{"���·�5Ů", 1}, desc = "��������ʥ��", val = 1000, num = 1},
	{{"������", 1}, desc = "ʮɱ", val = 1000, num = 1},
}
local file = "������־.txt"--�洢���ּ�¼��ϸ��¼
local files = "���ּ�¼.txt"--�洢���ּ�¼json������
local remains = 24*60*60	--��ʱ����ʱ��[��λ��]

function TimeLimitRecycle_Main(player)
	
	local startServerTime_str = lualib:GetConstVar("StartServerTime");
	local startServerTime_int = lualib:Str2Time(startServerTime_str);  
	local nowTime_int = lualib:GetAllTime();
	local activityEndTime_int = startServerTime_int + 24*60*60;  	
	local restTime_int = 0;
	if nowTime_int > activityEndTime_int then 
	else
		restTime_int = activityEndTime_int - nowTime_int;
	end
	local DATA = {};
	DATA[1] = restTime_int;
	DATA[2] = AWARD;
	lualib:ShowFormWithContent(player, "�ű���", "TradeWnd_4:Updata("..serialize(DATA)..")");
	return ""
end

function TimeLimitRecycle_Recycle(player, index)
	local startServerTime_str = lualib:GetConstVar("StartServerTime");
	local startServerTime_int = lualib:Str2Time(startServerTime_str);  
	local nowTime_int = lualib:GetAllTime();
	local activityEndTime_int = startServerTime_int + 24*60*60;  	
	local restTime_int = 0;
	if nowTime_int > activityEndTime_int then 
		return "��ʱ����ʱ���ѽ���"
	end
	index = tonumber(index);
	local tab = AWARD[index]
	if not tab then 
		return "�����б���û�ж�Ӧ����TimeLimitRecycle"
	end 
	local keyname = tab[1][1];
	local count = lualib:ItemCount(player, keyname);
	if count <= 0 then 
		return "���ı�����û�С�"..tab.desc.."�����װ��"
	else
		if not lualib:TakeItem(player, keyname, 1, "ɾ����:���۱�����ʱ��������", player) then
			return "ɾ������ʧ��"
		end
		local rmb = lualib:GetInt(player, "rmbPoint");
		rmb = rmb + tab.val;
		lualib:SetInt(player, "rmbPoint", rmb);
		Main(player);
		--[[
		local db_sub_tb = {};
		local player_name = lualib:Name(player);
		-- lualib:SysPromptMsg(player, ""..name);
		db_sub_tb[1] = tab.desc; --name 
		db_sub_tb[2] = tab.val;	--price
		db_sub_tb[3] = player_name;
		db_sub_tb[4] = 0;	--hasBeenBought
		db_sub_tb[5] = tab[1][1];	--keyname
		local DBStr_RMBRecycle = {}
		local str = lualib:GetDBStr("DBStr_RMBRecycle");
		if str ~= nil and str ~= "" and str ~= "0" then
			DBStr_RMBRecycle  = deserialize(str);
		end
		table.insert(DBStr_RMBRecycle, db_sub_tb);
		lualib:SetDBStr("DBStr_RMBRecycle", serialize(DBStr_RMBRecycle));
		return "��ϲ���ɹ����ա�"..data[index][1].."��,��á�"..tab[2].."��RMB"
		--]]
		return "��ϲ���ɹ����ա�"..tab.desc.."��,��á�"..tab.val.."��RMB"
	end 
	return ""
end


function RMB2Ingot_Main(player)
	local DBStr_RMB2Ingot_Recharge = {}
	local str = lualib:GetDBStr("DBStr_RMB2Ingot_Recharge");
	if str ~= nil and str ~= "" and str ~= "0" then
		DBStr_RMB2Ingot_Recharge  = deserialize(str);
		if type(DBStr_RMB2Ingot_Recharge) ~= "table" then 
			return "���ݿ����ݽṹ����,���Ǳ�ṹ"
		end
	end
	lualib:ShowFormWithContent(player, "�ű���", "TradeWnd_3:Updata("..serialize(DBStr_RMB2Ingot_Recharge)..")");
	return ""
end

function RMB2Ingot_Recharge(player, num)
	num = tonumber(num);
	if num > 99999 then 
		return "����������ֹ���,���账��"
	end
	if num < 100 then 
		return "�������RMB��������100, 100RMB�����"
	end
	local rmb = lualib:GetInt(player, "rmbPoint");
	if num > rmb then 
		return "RMB��������,�޷���ɳ�ֵ"
	end
	rmb = rmb - num;
	lualib:SetInt(player, "rmbPoint", rmb);
	local ingot = num * 100;
	if not lualib:Player_AddIngot(player, ingot, false, "��Ԫ�������۱�:RMB�����һ�", player) then
		lualib:Error("RMB2Ingot_Recharge����Ҽ�Ԫ����������"..player..lualib:Name(player)..",����="..num);
	end
	local player_name = lualib:Name(player);
	local strTime = lualib:Now();
	local db_sub_tb = {};
	db_sub_tb[1] = player_name;
	db_sub_tb[2] = num;
	db_sub_tb[3] = strTime;
	local DBStr_RMB2Ingot_Recharge = {}
	local str = lualib:GetDBStr("DBStr_RMB2Ingot_Recharge");
	if str ~= nil and str ~= "" and str ~= "0" then
		DBStr_RMB2Ingot_Recharge  = deserialize(str);
		if type(DBStr_RMB2Ingot_Recharge) ~= "table" then 
			return "���ݿ����ݽṹ����,���Ǳ�ṹ"
		end
	end
	table.insert(DBStr_RMB2Ingot_Recharge, 1, db_sub_tb);
	lualib:SetDBStr("DBStr_RMB2Ingot_Recharge", serialize(DBStr_RMB2Ingot_Recharge));
	Main(player);
	RMB2Ingot_Main(player);
	return "��ϲ����ֵ�ɹ�!,��á�"..ingot.."��Ԫ��"
end