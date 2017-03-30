local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")

function main(player,item)
	local tab_wing = 
	{
		{"天使之翼","圣蓝之翼","金羽之翼","冰龙之翼","雷霆闪电翼","流澜之翼","九霄神天翼","赤炎之羽","风魂之羽","玄灵之翼","双龙翼"},
		{5,5,10,10,20,20,30,30,40,40},--对应翅膀等级每次点击培养所需的羽根	
		{10000,10000,20000,20000,60000,60000,120000,120000,240000,240000},----所需金币
		{12,48,132,352,500,900,828,1136,1400,2000},--对应翅膀等级每次升级所需培养
		0,  --升阶等级
		0,  --当天培养
		0,  --包裹内羽根数量
	}
	
	local wing = 
	{
		{"天使之翼","圣蓝之翼","金羽之翼","冰龙之翼","雷霆闪电翼","流澜之翼","九霄神天翼","赤炎之羽","风魂之羽","玄灵之翼","双龙翼"},
		{12,48,132,352,500,900,828,1136,1400,2000},--对应翅膀等级每次升级所需培养
	}
	local item_guid = lualib:Player_GetItemGuid(player,14)
	if item_guid == "" then
		lualib:SysPromptMsg(player, "没有装备翅膀,主线任务获得翅膀后再使用此道具")
		return false
	else
		if lualib:GetBagFree(player) < 1 then
			lualib:SysPromptMsg(player,"您的背包满了，请先清理背包在进行升级")
			return false
		end
		local wing_l = lualib:GetInt(player,"wing_level")
		if wing_l < 2 then 
			if not lualib:AddItem(player,wing[1][3],1,true,"直升二级翅膀神符", player) then --给物品
				return false
			end
			lualib:SetInt(player,"wing_level",2)
			lualib:SetDayInt(player,"wing_peiy",0)
			lualib:DelItemEx(player, wing[1][wing_l + 1], 1, 2, true, true, false, false, "直升二级翅膀神符", "直升二级翅膀神符")
			
			local wing_l = lualib:GetInt(player,"wing_level")
			local wing_p = lualib:GetDayInt(player,"wing_peiy")
			local num = lualib:ItemCount(player, "羽毛")
			tab_wing[5] = wing_l
			tab_wing[6] = wing_p
			tab_wing[7] = num
			local table_data = serialize(tab_wing)
			local str = [[
			local _handle = GetWindow(nil,"WingWnd")
			if _handle ~= 0 then 
			]]
			.."wing_data("..table_data..")"
			.."end"
			lualib:ShowFormWithContent(player,"脚本表单",str)
		else
			local wing_p = lualib:GetDayInt(player,"wing_peiy")
			wing_p = wing_p + 50
			if wing_p < wing[2][wing_l + 1] then
				lualib:SetDayInt(player,"wing_peiy",wing_p)
				wing_l = lualib:GetInt(player,"wing_level")
				local index = wing_l + 1
				local num = lualib:ItemCount(player, "羽毛")
				local str = [[
				local _handle = GetWindow(nil,"WingWnd")
				if _handle ~= 0 then 
				]]
				.."peiy_update("..index..","..wing_p..","..num..")"
				.."end"
				lualib:ShowFormWithContent(player,"脚本表单",str)
				lualib:SysCenterMsg(0,"成功获得<翅膀祝福值>50点",player)
			else
				if not lualib:AddItem(player,wing[1][wing_l+2],1,true,"直升二级翅膀神符", player) then --给物品
					return false
				end
				lualib:DelItemEx(player, wing[1][wing_l + 1], 1, 2, true, true, false, false, "直升二级翅膀神符", "直升二级翅膀神符")
				lualib:SetDayInt(player,"wing_peiy",0)
				lualib:SetInt(player,"wing_level",wing_l + 1)	
				
				local wing_l = lualib:GetInt(player,"wing_level")
				local wing_p = lualib:GetDayInt(player,"wing_peiy")
				local num = lualib:ItemCount(player, "羽毛")
				tab_wing[5] = wing_l
				tab_wing[6] = wing_p
				tab_wing[7] = num
				local table_data = serialize(tab_wing)
				local str = [[
				local _handle = GetWindow(nil,"WingWnd")
				if _handle ~= 0 then 
				]]
				.."wing_data("..table_data..")"
				.."end"
				lualib:ShowFormWithContent(player,"脚本表单",str)
			end
		end
	end
	return true 
end