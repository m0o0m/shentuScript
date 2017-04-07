local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")


local YunHun_ATT = 
{

--生命蕴魂石
	["低级生命蕴魂石"] = {
		3, 3, {5,8,15,},
	},
	["中级生命蕴魂石"] = {
		3, 3, {8,15,30,},
	},
	["高级生命蕴魂石"] = {
		3, 3, {15,30,40,},
	},
	["极品生命蕴魂石"] = {
		3, 3, {30,40,50,},
	},
	
--物防蕴魂石
	["低级物防蕴魂石"] = {
		{7, 7, {1, 3, 10},},
		{6, 6, {5, 8, 15},},
	},
	["中级物防蕴魂石"] = 
	{
		{7, 7, {1, 3, 10},},
		{6, 6, {5, 8, 15},},
	},
	["高级物防蕴魂石"] = 
	{
		{7, 7, {1, 3, 10},},
		{6, 6, {5, 8, 15},},
	},
	["极品物防蕴魂石"] = 
	{
		{7, 7, {1, 3, 10},},
		{6, 6, {5, 8, 15},},
	},

--魔防蕴魂石	
	["低级魔防蕴魂石"] = 
	{
		{9, 9, {1, 3, 10},},
		{8, 8, {5, 8, 15},},
	},
	["中级魔防蕴魂石"] = 
	{
		{9, 9, {1, 3, 10},},
		{8, 8, {5, 8, 15},},
	},
	["高级魔防蕴魂石"] = 
	{
		{9, 9, {1, 3, 10},},
		{8, 8, {5, 8, 15},},
	},
	["极品魔防蕴魂石"] = 
	{
		{9, 9, {1, 3, 10},},
		{8, 8, {5, 8, 15},},
	},
	
--物攻蕴魂石
	["低级物攻蕴魂石"] = 
	{
		{10, 10, {1, 3, 10},},
		{11, 11, {5, 8, 15},},
	},
	["中级物攻蕴魂石"] = 
	{
		{10, 10, {1, 3, 10},},
		{11, 11, {5, 8, 15},},
	},
	["高级物攻蕴魂石"] = 
	{
		{10, 10, {1, 3, 10},},
		{11, 11, {5, 8, 15},},
	},
	["极品物攻蕴魂石"] = 
	{
		{10, 10, {1, 3, 10},},
		{11, 11, {5, 8, 15},},
	},
	
--魔攻蕴魂石	
	["低级魔攻蕴魂石"] = 
	{
		{13, 13, {1, 3, 10},},
		{12, 12, {5, 8, 15},},
	},
	["中级魔攻蕴魂石"] = 
	{
		{13, 13, {1, 3, 10},},
		{12, 12, {5, 8, 15},},
	},
	["高级魔攻蕴魂石"] = 
	{
		{13, 13, {1, 3, 10},},
		{12, 12, {5, 8, 15},},
	},
	["极品魔攻蕴魂石"] = 
	{
		{13, 13, {1, 3, 10},},
		{12, 12, {5, 8, 15},},
	},
	
--道攻蕴魂石	
	["低级道攻蕴魂石"] = 
	{
		{15, 15, {1, 3, 10},},
		{14, 14, {5, 8, 15},},
	},
	["中级道攻蕴魂石"] = 
	{
		{15, 15, {1, 3, 10},},
		{14, 14, {5, 8, 15},},
	},
	["高级道攻蕴魂石"] = 
	{
		{15, 15, {1, 3, 10},},
		{14, 14, {5, 8, 15},},
	},
	["极品道攻蕴魂石"] = 
	{
		{15, 15, {1, 3, 10},},
		{14, 14, {5, 8, 15},},
	},
}

local tCost = 
{
	                   --消耗金币
	["低级生命蕴魂石"] = {10000},
	["中级生命蕴魂石"] = {10000},
	["高级生命蕴魂石"] = {10000},
	["极品生命蕴魂石"] = {10000},
	["低级物防蕴魂石"] = {10000},
	["中级物防蕴魂石"] = {10000},
	["高级物防蕴魂石"] = {10000},
	["极品物防蕴魂石"] = {10000},
	["低级魔防蕴魂石"] = {10000},
	["中级魔防蕴魂石"] = {10000},
	["高级魔防蕴魂石"] = {10000},
	["极品魔防蕴魂石"] = {10000},
	["低级物攻蕴魂石"] = {10000},
	["中级物攻蕴魂石"] = {10000},
	["高级物攻蕴魂石"] = {10000},
	["极品物攻蕴魂石"] = {10000},
	["低级魔攻蕴魂石"] = {10000},
	["中级魔攻蕴魂石"] = {10000},
	["高级魔攻蕴魂石"] = {10000},
	["极品魔攻蕴魂石"] = {10000},
	["低级道攻蕴魂石"] = {10000},
	["中级道攻蕴魂石"] = {10000},
	["高级道攻蕴魂石"] = {10000},
	["极品道攻蕴魂石"] = {10000},
}



function main(player, keyname)
	-- lualib:SysCenterMsg(0,"测试消息==========================", player)
	local DATA = {};
	DATA[1] = tCost[keyname][1];
	lualib:ShowFormWithContent(player, "脚本表单", "Inherit:Updata("..serialize(DATA)..")");
	return ""
end	



function Inherit(player, item_guid1, item_guid2)
	-- lualib:SysPromptMsg(player, "item_guid1"..item_guid1..";item_guid2="..item_guid2);
	if item_guid1 == item_guid2 then 
		lualib:ShowFormWithContent(player,"脚本表单","win_msg_up(\"请放入不同装备\");")
		return ""
	end


	-- local gold = lualib:GetInt(item_guid2, "yunhun_consume");
	local keyName = lualib:GetStr(item_guid1, "yunhun_keyname");
	if keyName == "" then
		lualib:ShowFormWithContent(player,"脚本表单","win_msg_up(\"没有蕴魂属性可供传承\");")
		return "" 
	end
		-- lualib:SysPromptMsg(player, "金币不足keyName"..keyName);

	local gold = tCost[keyName][1];
	if not gold then 
		return "gold为nil"
	end
	local bind_gold = lualib:GetBindGold(player)
	local n_gold = lualib:GetGold(player)
	if gold > bind_gold + n_gold  then
		lualib:ShowFormWithContent(player,"脚本表单","win_msg_up(\"金币不足\");")
		return ""
	end	
	
	if bind_gold >= gold then
		if not lualib:Player_SubGold(player, gold, true, "扣绑定金币:强化", "系统") then
			return "金币扣除失败"
		end
	else
		if not lualib:Player_SubGold(player, bind_gold, true, "扣绑定金币:强化", "系统") then
			return "金币扣除失败"
		end
		local jb = gold - bind_gold
		if not lualib:Player_SubGold(player, jb, false, "扣金币:强化", "系统") then
			return "金币扣除失败"
		end
	end	

	--转移keyName
	local keyName = lualib:GetStr(item_guid1, "yunhun_keyname");
	lualib:SetStr(item_guid2, "yunhun_keyname", keyName);
	lualib:SetStr(item_guid1, "yunhun_keyname", "");
	--转移概率
	local index = lualib:GetInt(item_guid1, "yunhun_random");
	lualib:SetInt(item_guid2, "yunhun_random", index);
	lualib:SetInt(item_guid1, "yunhun_random", 0);
	--转移属性
	for i = 1 , 2 do 
		local tAttr = lualib:GetDynamicAttr(item_guid1, i)
		local attr_name  = tAttr["attr_name"];
		local attr_value = tAttr["attr_value"];
		if attr_value ~= nil and attr_value ~= 0 then 
			lualib:SetDynamicAttr(item_guid2, i, attr_name, attr_value)
		end
		lualib:SetDynamicAttr(item_guid1, i, 0, 0)
	end
	
	lualib:Item_NotifyUpdate(player, item_guid1);
	lualib:Item_NotifyUpdate(player, item_guid2);
	lualib:ShowFormWithContent(player,"脚本表单","Inherit:ClearItemCtr()")
	lualib:ShowFormWithContent(player,"脚本表单","win_msg_up(\"蕴魂传承成功\");")

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


