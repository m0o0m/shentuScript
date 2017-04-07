local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")

	
local YunHun_ATT = 
{

--�����̻�ʯ
	["�ͼ������̻�ʯ"] = {
		1, 3, {5,8,15,},
	},
	["�м������̻�ʯ"] = {
		1, 3, {8,15,30,},
	},
	["�߼������̻�ʯ"] = {
		1, 3, {15,30,40,},
	},
	["��Ʒ�����̻�ʯ"] = {
		1, 3, {30,40,50,},
	},
	
--����̻�ʯ
	["�ͼ�����̻�ʯ"] = {
		{1, 7, {1, 3, 10},},
		{2, 6, {5, 8, 15},},
	},
	["�м�����̻�ʯ"] = 
	{
		{1, 7, {1, 3, 10},},
		{2, 6, {5, 8, 15},},
	},
	["�߼�����̻�ʯ"] = 
	{
		{1, 7, {1, 3, 10},},
		{2, 6, {5, 8, 15},},
	},
	["��Ʒ����̻�ʯ"] = 
	{
		{1, 7, {1, 3, 10},},
		{2, 6, {5, 8, 15},},
	},

--ħ���̻�ʯ	
	["�ͼ�ħ���̻�ʯ"] = 
	{
		{1, 9, {1, 3, 10},},
		{2, 8, {5, 8, 15},},
	},
	["�м�ħ���̻�ʯ"] = 
	{
		{1, 9, {1, 3, 10},},
		{2, 8, {5, 8, 15},},
	},
	["�߼�ħ���̻�ʯ"] = 
	{
		{1, 9, {1, 3, 10},},
		{2, 8, {5, 8, 15},},
	},
	["��Ʒħ���̻�ʯ"] = 
	{
		{1, 9, {1, 3, 10},},
		{2, 8, {5, 8, 15},},
	},
	
--�﹥�̻�ʯ
	["�ͼ��﹥�̻�ʯ"] = 
	{
		{1, 11, {1, 3, 10},},
		{2, 10, {5, 8, 15},},
	},
	["�м��﹥�̻�ʯ"] = 
	{
		{1, 11, {1, 3, 10},},
		{2, 10, {5, 8, 15},},
	},
	["�߼��﹥�̻�ʯ"] = 
	{
		{1, 11, {1, 3, 10},},
		{2, 10, {5, 8, 15},},
	},
	["��Ʒ�﹥�̻�ʯ"] = 
	{
		{1, 11, {1, 3, 10},},
		{2, 10, {5, 8, 15},},
	},
	
--ħ���̻�ʯ	
	["�ͼ�ħ���̻�ʯ"] = 
	{
		{1, 13, {1, 3, 10},},
		{2, 12, {5, 8, 15},},
	},
	["�м�ħ���̻�ʯ"] = 
	{
		{1, 13, {1, 3, 10},},
		{2, 12, {5, 8, 15},},
	},
	["�߼�ħ���̻�ʯ"] = 
	{
		{1, 13, {1, 3, 10},},
		{2, 12, {5, 8, 15},},
	},
	["��Ʒħ���̻�ʯ"] = 
	{
		{1, 13, {1, 3, 10},},
		{2, 12, {5, 8, 15},},
	},
	
--�����̻�ʯ	
	["�ͼ������̻�ʯ"] = 
	{
		{1, 15, {1, 3, 10},},
		{2, 14, {5, 8, 15},},
	},
	["�м������̻�ʯ"] = 
	{
		{1, 15, {1, 3, 10},},
		{2, 14, {5, 8, 15},},
	},
	["�߼������̻�ʯ"] = 
	{
		{1, 15, {1, 3, 10},},
		{2, 14, {5, 8, 15},},
	},
	["��Ʒ�����̻�ʯ"] = 
	{
		{1, 15, {1, 3, 10},},
		{2, 14, {5, 8, 15},},
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

local tCost = 
{
	                   --���Ľ��
	["�ͼ������̻�ʯ"] = {10000},
	["�м������̻�ʯ"] = {10000},
	["�߼������̻�ʯ"] = {10000},
	["��Ʒ�����̻�ʯ"] = {10000},
	["�ͼ�����̻�ʯ"] = {10000},
	["�м�����̻�ʯ"] = {10000},
	["�߼�����̻�ʯ"] = {10000},
	["��Ʒ����̻�ʯ"] = {10000},
	["�ͼ�ħ���̻�ʯ"] = {10000},
	["�м�ħ���̻�ʯ"] = {10000},
	["�߼�ħ���̻�ʯ"] = {10000},
	["��Ʒħ���̻�ʯ"] = {10000},
	["�ͼ��﹥�̻�ʯ"] = {10000},
	["�м��﹥�̻�ʯ"] = {10000},
	["�߼��﹥�̻�ʯ"] = {10000},
	["��Ʒ�﹥�̻�ʯ"] = {10000},
	["�ͼ�ħ���̻�ʯ"] = {10000},
	["�м�ħ���̻�ʯ"] = {10000},
	["�߼�ħ���̻�ʯ"] = {10000},
	["��Ʒħ���̻�ʯ"] = {10000},
	["�ͼ������̻�ʯ"] = {10000},
	["�м������̻�ʯ"] = {10000},
	["�߼������̻�ʯ"] = {10000},
	["��Ʒ�����̻�ʯ"] = {10000},
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
		lualib:SetDynamicAttr(item_guid1, YunHun_ATT[keyname][1], YunHun_ATT[keyname][2], YunHun_ATT[keyname][3][index])
	else
		lualib:SetDynamicAttr(item_guid1, YunHun_ATT[keyname][1][1], YunHun_ATT[keyname][1][2], YunHun_ATT[keyname][1][3][index])
		lualib:SetDynamicAttr(item_guid1, YunHun_ATT[keyname][2][1], YunHun_ATT[keyname][2][2], YunHun_ATT[keyname][2][3][index])
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

