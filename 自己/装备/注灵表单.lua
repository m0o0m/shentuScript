local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")

	
--蕴魂石初始化	
local YunHun_ATT = 
{

--生命蕴魂石
	["低级生命蕴魂石"] = 
	{
		{3,3,3,},
		{5,8,15,},
		1000,
	},
	["中级生命蕴魂石"] = 
	{
		{3,3,3,},
		{8,15,30,},
		1500,
	},
	["高级生命蕴魂石"] = 
	{
		{3,3,3,},
		{15,30,40,},
		3000,
	},
	["极品生命蕴魂石"] = 
	{
		{3,3,3,},
		{30,40,50,},
		7500,
	},
	
--物防蕴魂石
	["低级物防蕴魂石"] = 
	{
		{7,6,7,6,7,6},
		{1,5,3,8,10,15},
		1000,
	},
	["中级物防蕴魂石"] = 
	{
		{7,6,7,6,7,6},
		{3,8,10,15,20,30},
		1500,
	},
	["高级物防蕴魂石"] = 
	{
		{7,6,7,6,7,6},
		{10,15,20,30,25,40},
		3000,
	},
	["极品物防蕴魂石"] = 
	{
		{7,6,7,6,7,6},
		{20,30,25,40,40,60},
		7500,
	},

--魔防蕴魂石	
	["低级魔防蕴魂石"] = 
	{
		{9,8,9,8,9,8,},
		{1,5,3,8,10,15},
		1000,
	},
	["中级魔防蕴魂石"] = 
	{
		{9,8,9,8,9,8,},
		{3,8,10,15,20,30},
		1500,
	},
	["高级魔防蕴魂石"] = 
	{
		{9,8,9,8,9,8,},
		{10,15,20,30,25,40},
		3000,
	},
	["极品魔防蕴魂石"] = 
	{
		{9,8,9,8,9,8,},
		{20,30,25,40,40,60},
		7500,
	},
	
--物攻蕴魂石
	["低级物攻蕴魂石"] = 
	{
		{11,10,11,10,11,10,},
		{1,5,3,8,10,15},
		1000,
		
	},
	["中级物攻蕴魂石"] = 
	{
		{11,10,11,10,11,10,},
		{3,8,10,15,20,30},
		1500,
	},
	["高级物攻蕴魂石"] = 
	{
		{11,10,11,10,11,10,},
		{10,15,20,30,25,40},
		3000,
	},
	["极品物攻蕴魂石"] = 
	{
		{11,10,11,10,11,10,},
		{20,30,25,40,40,60},
		7500,
	},
	
--魔攻蕴魂石	
	["低级魔攻蕴魂石"] = 
	{
		{13,12,13,12,13,12,},
		{1,5,3,8,10,15},
		1000,
	},
	["中级魔攻蕴魂石"] = 
	{
		{13,12,13,12,13,12,},
		{3,8,10,15,20,30},
		1500,
	},
	["高级魔攻蕴魂石"] = 
	{
		{13,12,13,12,13,12,},
		{10,15,20,30,25,40},
		3000,
	},
	["极品魔攻蕴魂石"] = 
	{
		{13,12,13,12,13,12,},
		{20,30,25,40,40,60},
		7500,
	},
	
--道攻蕴魂石	
	["低级道攻蕴魂石"] = 
	{
		{15,14,15,14,15,14,},
		{1,5,3,8,10,15},
		1000,
	},
	["中级道攻蕴魂石"] = 
	{
		{15,14,15,14,15,14,},
		{3,8,10,15,20,30},
		1500,
	},
	["高级道攻蕴魂石"] = 
	{
		{15,14,15,14,15,14,},
		{10,15,20,30,25,40},
		3000,
	},
	["极品道攻蕴魂石"] = 
	{
		{15,14,15,14,15,14,},
		{20,30,25,40,40,60},
		7500,
	},
}



	
--蕴魂各个属性的权重	
local YunHun = 
{
	["低级生命蕴魂石"] = {100, 100, 100},
	["中级生命蕴魂石"] = {100, 100, 100},
	["高级生命蕴魂石"] = {100, 100, 100},
	["极品生命蕴魂石"] = {100, 100, 100},
	["低级物防蕴魂石"] = {100, 100, 100},
	["中级物防蕴魂石"] = {100, 100, 100},
	["高级物防蕴魂石"] = {100, 100, 100},
	["极品物防蕴魂石"] = {100, 100, 100},
	["低级魔防蕴魂石"] = {100, 100, 100},
	["中级魔防蕴魂石"] = {100, 100, 100},
	["高级魔防蕴魂石"] = {100, 100, 100},
	["极品魔防蕴魂石"] = {100, 100, 100},
	["低级物攻蕴魂石"] = {100, 100, 100},
	["中级物攻蕴魂石"] = {100, 100, 100},
	["高级物攻蕴魂石"] = {100, 100, 100},
	["极品物攻蕴魂石"] = {100, 100, 100},
	["低级魔攻蕴魂石"] = {100, 100, 100},
	["中级魔攻蕴魂石"] = {100, 100, 100},
	["高级魔攻蕴魂石"] = {100, 100, 100},
	["极品魔攻蕴魂石"] = {100, 100, 100},
	["低级道攻蕴魂石"] = {100, 100, 100},
	["中级道攻蕴魂石"] = {100, 100, 100},
	["高级道攻蕴魂石"] = {100, 100, 100},
	["极品道攻蕴魂石"] = {100, 100, 100},
}


--获取权重选项
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
	lualib:SysCenterMsg(0,"测试消息==========================", player)
	local DATA = {};
	DATA[1] = item_guid;
	lualib:ShowFormWithContent(player, "脚本表单", "ZhulWnd:UpData("..serialize(DATA)..")");
	return ""
end	



function YunHun_item(player, item_guid1, item_guid2)
	lualib:SysPromptMsg(player, "item_guid1"..item_guid1..";item_guid2="..item_guid2);
	
	local gold = lualib:GetInt(item_guid2, "yunhun_consume");
	local bind_gold = lualib:GetBindGold(player)
	local n_gold = lualib:GetGold(player)
	if gold > bind_gold + n_gold  then
		lualib:ShowFormWithContent(player,"脚本表单","win_msg_up(\"金币不足\");")
		lualib:SysPromptMsg(player, "金币不足");
		return ""
	end	
	
	if bind_gold >= gold then
		if not lualib:Player_SubGold(player, gold, true, "扣绑定金币:强化", "系统") then
			-- lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"金币扣除失败\");")
			return "金币扣除失败"
		end
	else
		if not lualib:Player_SubGold(player, bind_gold, true, "扣绑定金币:强化", "系统") then
			-- lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"金币扣除失败\");")
			return "金币扣除失败"
		end
		local jb = gold - bind_gold
		if not lualib:Player_SubGold(player, jb, false, "扣金币:强化", "系统") then
			-- lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"金币扣除失败\");")
			return "金币扣除失败"
		end
	end	
	local keyname = lualib:KeyName(item_guid2);
	local rate_tab = {};
	local index = 0;
	rate_tab = YunHun[keyname];
	index = get_table_key(rate_tab);
	if index == 0 and rate_tab == nil then 
		return "获取权重选项出错"
	end
	local strStoneType = keyname:match("级(.-)蕴魂石")
	-- lualib:SysPromptMsg(player, "strStoneType--------------------------------------"..strStoneType);
	
	if strStoneType == "生命" then 
	-- lualib:SysPromptMsg(player, "YunHun_ATT[keyname][1][index]--------------------------------------"..YunHun_ATT[keyname][2][index]);
		if not lualib:SetDynamicAttr(item_guid1, 1, YunHun_ATT[keyname][1][index], YunHun_ATT[keyname][2][index]) then
			return "===注灵失败==="
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
			return "===注灵失败==="
		end
		k = k + 1;
		iAttrSite = iAttrSite + 1;
		if not lualib:SetDynamicAttr(item_guid1, iAttrSite, YunHun_ATT[keyname][1][k], YunHun_ATT[keyname][2][k]) then
			return "===注灵失败==="
		end
	end
	
	lualib:SetStr(item_guid1, "yunhun_keyname", keyname);
	lualib:SetInt(item_guid1, "yunhun_random", index);
	lualib:Item_NotifyUpdate(player, item_guid1);
	OfferData(player, item_guid1);
	lualib:DelItem(player, keyname, 1, 2, "注灵表单", player);
	local count = lualib:ItemCount(player, keyname)
	if count <= 0 then 
		lualib:ShowFormWithContent(player,"脚本表单","ZhulWnd:ClearItemCtr2()")
	else
		local item = ""
		local ItemTble = lualib:BagItemList(player,true,false,false) --获得玩家包裹中所有物品的GUID
		for i = 1, #ItemTble do 
			
			local KName = lualib:KeyName(ItemTble[i]);
			if KName == keyname then 
				item = ItemTble[i];
				lualib:ShowFormWithContent(player,"脚本表单","ZhulWnd:RefillItemCtr2("..serialize(item)..")")
				break;
			end
		end 
		
	end 
	lualib:ShowFormWithContent(player,"脚本表单","win_msg_up(\"蕴魂成功\");")
	lualib:SysPromptMsg(player, "蕴魂成功");
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
		lualib:ShowFormWithContent(player,"脚本表单","QianghWnd.Script2("..num..")")
	end
	return ""
end 

