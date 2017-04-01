local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")

	
--�̻�ʯ��ʼ��	
local YunHun_ATT = 
{

--�����̻�ʯ
	["�ͼ������̻�ʯ"] = 
	{
		{3,3,3,},
		{5,8,15,},
		1000,
	},
	["�м������̻�ʯ"] = 
	{
		{3,3,3,},
		{8,15,30,},
		1500,
	},
	["�߼������̻�ʯ"] = 
	{
		{3,3,3,},
		{15,30,40,},
		3000,
	},
	["��Ʒ�����̻�ʯ"] = 
	{
		{3,3,3,},
		{30,40,50,},
		7500,
	},
	
--����̻�ʯ
	["�ͼ�����̻�ʯ"] = 
	{
		{7,6,7,6,7,6},
		{1,5,3,8,10,15},
		1000,
	},
	["�м�����̻�ʯ"] = 
	{
		{7,6,7,6,7,6},
		{3,8,10,15,20,30},
		1500,
	},
	["�߼�����̻�ʯ"] = 
	{
		{7,6,7,6,7,6},
		{10,15,20,30,25,40},
		3000,
	},
	["��Ʒ����̻�ʯ"] = 
	{
		{7,6,7,6,7,6},
		{20,30,25,40,40,60},
		7500,
	},

--ħ���̻�ʯ	
	["�ͼ�ħ���̻�ʯ"] = 
	{
		{9,8,9,8,9,8,},
		{1,5,3,8,10,15},
		1000,
	},
	["�м�ħ���̻�ʯ"] = 
	{
		{9,8,9,8,9,8,},
		{3,8,10,15,20,30},
		1500,
	},
	["�߼�ħ���̻�ʯ"] = 
	{
		{9,8,9,8,9,8,},
		{10,15,20,30,25,40},
		3000,
	},
	["��Ʒħ���̻�ʯ"] = 
	{
		{9,8,9,8,9,8,},
		{20,30,25,40,40,60},
		7500,
	},
	
--�﹥�̻�ʯ
	["�ͼ��﹥�̻�ʯ"] = 
	{
		{11,10,11,10,11,10,},
		{1,5,3,8,10,15},
		1000,
		
	},
	["�м��﹥�̻�ʯ"] = 
	{
		{11,10,11,10,11,10,},
		{3,8,10,15,20,30},
		1500,
	},
	["�߼��﹥�̻�ʯ"] = 
	{
		{11,10,11,10,11,10,},
		{10,15,20,30,25,40},
		3000,
	},
	["��Ʒ�﹥�̻�ʯ"] = 
	{
		{11,10,11,10,11,10,},
		{20,30,25,40,40,60},
		7500,
	},
	
--ħ���̻�ʯ	
	["�ͼ�ħ���̻�ʯ"] = 
	{
		{13,12,13,12,13,12,},
		{1,5,3,8,10,15},
		1000,
	},
	["�м�ħ���̻�ʯ"] = 
	{
		{13,12,13,12,13,12,},
		{3,8,10,15,20,30},
		1500,
	},
	["�߼�ħ���̻�ʯ"] = 
	{
		{13,12,13,12,13,12,},
		{10,15,20,30,25,40},
		3000,
	},
	["��Ʒħ���̻�ʯ"] = 
	{
		{13,12,13,12,13,12,},
		{20,30,25,40,40,60},
		7500,
	},
	
--�����̻�ʯ	
	["�ͼ������̻�ʯ"] = 
	{
		{15,14,15,14,15,14,},
		{1,5,3,8,10,15},
		1000,
	},
	["�м������̻�ʯ"] = 
	{
		{15,14,15,14,15,14,},
		{3,8,10,15,20,30},
		1500,
	},
	["�߼������̻�ʯ"] = 
	{
		{15,14,15,14,15,14,},
		{10,15,20,30,25,40},
		3000,
	},
	["��Ʒ�����̻�ʯ"] = 
	{
		{15,14,15,14,15,14,},
		{20,30,25,40,40,60},
		7500,
	},
}



	
--�̻�������Ե�Ȩ��	
local YunHun = 
{
	["�ͼ������̻�ʯ"] = {100, 100, 100},
	["�м������̻�ʯ"] = {100, 100, 100},
	["�߼������̻�ʯ"] = {100, 100, 100},
	["��Ʒ�����̻�ʯ"] = {100, 100, 100},
	["�ͼ�����̻�ʯ"] = {100, 100, 100},
	["�м�����̻�ʯ"] = {100, 100, 100},
	["�߼�����̻�ʯ"] = {100, 100, 100},
	["��Ʒ����̻�ʯ"] = {100, 100, 100},
	["�ͼ�ħ���̻�ʯ"] = {100, 100, 100},
	["�м�ħ���̻�ʯ"] = {100, 100, 100},
	["�߼�ħ���̻�ʯ"] = {100, 100, 100},
	["��Ʒħ���̻�ʯ"] = {100, 100, 100},
	["�ͼ��﹥�̻�ʯ"] = {100, 100, 100},
	["�м��﹥�̻�ʯ"] = {100, 100, 100},
	["�߼��﹥�̻�ʯ"] = {100, 100, 100},
	["��Ʒ�﹥�̻�ʯ"] = {100, 100, 100},
	["�ͼ�ħ���̻�ʯ"] = {100, 100, 100},
	["�м�ħ���̻�ʯ"] = {100, 100, 100},
	["�߼�ħ���̻�ʯ"] = {100, 100, 100},
	["��Ʒħ���̻�ʯ"] = {100, 100, 100},
	["�ͼ������̻�ʯ"] = {100, 100, 100},
	["�м������̻�ʯ"] = {100, 100, 100},
	["�߼������̻�ʯ"] = {100, 100, 100},
	["��Ʒ�����̻�ʯ"] = {100, 100, 100},
}


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

function OfferData(player,item_guid)
	lualib:SysCenterMsg(0,"������Ϣ==========================", player)
	local DATA = {};
	DATA[1] = item_guid;
	lualib:ShowFormWithContent(player, "�ű���", "ZhulWnd:UpData("..serialize(DATA)..")");
	return ""
end	



function YunHun_item(player, item_guid1, item_guid2)
	lualib:SysPromptMsg(player, "item_guid1"..item_guid1..";item_guid2="..item_guid2);
	
	local gold = lualib:GetInt(item_guid2, "yunhun_consume");
	local bind_gold = lualib:GetBindGold(player)
	local n_gold = lualib:GetGold(player)
	if gold > bind_gold + n_gold  then
		lualib:ShowFormWithContent(player,"�ű���","win_msg_up(\"��Ҳ���\");")
		lualib:SysPromptMsg(player, "��Ҳ���");
		return ""
	end	
	
	if bind_gold >= gold then
		if not lualib:Player_SubGold(player, gold, true, "�۰󶨽��:ǿ��", "ϵͳ") then
			-- lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"��ҿ۳�ʧ��\");")
			return "��ҿ۳�ʧ��"
		end
	else
		if not lualib:Player_SubGold(player, bind_gold, true, "�۰󶨽��:ǿ��", "ϵͳ") then
			-- lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"��ҿ۳�ʧ��\");")
			return "��ҿ۳�ʧ��"
		end
		local jb = gold - bind_gold
		if not lualib:Player_SubGold(player, jb, false, "�۽��:ǿ��", "ϵͳ") then
			-- lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"��ҿ۳�ʧ��\");")
			return "��ҿ۳�ʧ��"
		end
	end	
	local keyname = lualib:KeyName(item_guid2);
	local rate_tab = {};
	local index = 0;
	rate_tab = YunHun[keyname];
	index = get_table_key(rate_tab);
	if index == 0 and rate_tab == nil then 
		return "��ȡȨ��ѡ�����"
	end
	local strStoneType = keyname:match("��(.-)�̻�ʯ")
	-- lualib:SysPromptMsg(player, "strStoneType--------------------------------------"..strStoneType);
	
	if strStoneType == "����" then 
	-- lualib:SysPromptMsg(player, "YunHun_ATT[keyname][1][index]--------------------------------------"..YunHun_ATT[keyname][2][index]);
		if not lualib:SetDynamicAttr(item_guid1, 1, YunHun_ATT[keyname][1][index], YunHun_ATT[keyname][2][index]) then
			return "===ע��ʧ��==="
		end
	else
		local k = 0;
		local iAttrSite = 1;
		if index == 1 then
			k = 1;
		elseif index == 2 then 
			k = 3;
		elseif index == 3 then 
			k = 5;
		end 
		if not lualib:SetDynamicAttr(item_guid1, iAttrSite, YunHun_ATT[keyname][1][k], YunHun_ATT[keyname][2][k]) then
			return "===ע��ʧ��==="
		end
		k = k + 1;
		iAttrSite = iAttrSite + 1;
		if not lualib:SetDynamicAttr(item_guid1, iAttrSite, YunHun_ATT[keyname][1][k], YunHun_ATT[keyname][2][k]) then
			return "===ע��ʧ��==="
		end
	end
	
	lualib:SetStr(item_guid1, "yunhun_keyname", keyname);
	lualib:SetInt(item_guid1, "yunhun_random", index);
	lualib:Item_NotifyUpdate(player, item_guid1);
	OfferData(player, item_guid1);
	lualib:DelItem(player, keyname, 1, 2, "ע���", player);
	local count = lualib:ItemCount(player, keyname)
	if count <= 0 then 
		lualib:ShowFormWithContent(player,"�ű���","ZhulWnd:ClearItemCtr2()")
	else
		local item = ""
		local ItemTble = lualib:BagItemList(player,true,false,false) --�����Ұ�����������Ʒ��GUID
		for i = 1, #ItemTble do 
			
			local KName = lualib:KeyName(ItemTble[i]);
			if KName == keyname then 
				item = ItemTble[i];
				lualib:ShowFormWithContent(player,"�ű���","ZhulWnd:RefillItemCtr2("..serialize(item)..")")
				break;
			end
		end 
		
	end 
	lualib:ShowFormWithContent(player,"�ű���","win_msg_up(\"�̻�ɹ�\");")
	lualib:SysPromptMsg(player, "�̻�ɹ�");
	return ""
end	

function get_old_prop(player,item,index)
	local tab = lualib:Equip_GetExtProp(player, item, tonumber(index))	
	local old_prop = 0
	if #tab ~= 0 then
		old_prop = tab[1]
	end
	return old_prop
end

function num_set(player,str)
	local level = lualib:Level(player)
	if level  >= 60 then 
		lualib:SetInt(player,str,1)  
		local num = lualib:GetInt(player,"Qiang_tip2")  
		lualib:NotifyVar(player,str)
		lualib:ShowFormWithContent(player,"�ű���","QianghWnd.Script2("..num..")")
	end
	return ""
end 

