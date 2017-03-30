local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
require("form/ActivityDegree_s")
-----------------------------------------------------------------table-----------------------------------------------------------------------------
local lingli_have = {8,34,102,233,468,845,1411,2232,3381,4967,7124,9997}
local lingli_huis = {8,34,102,229,463,761,1270,2009,2874,4223,6057,8500}


function item_set(player,item)
	local ll_have = 0
	local ll_huis = 0
	--获取物品注灵等级
	local zhul_lv = lualib:GetInt(item,"zhul_level")
	if zhul_lv < 1 then 
		--return "该装备没有被蕴魂，所以没有魂力可回收！！！"
		lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"该装备没有被蕴魂，所以没有魂力可回收！！！\");")
		return ''
	else
		ll_have = lualib:GetInt(player,"linglizhi")
		ll_huis = lingli_huis[zhul_lv]
	end
	local item_data = serialize(item)
	lualib:ShowFormWithContent(player,"脚本表单","Zhul_hs.updata("..item_data..","..ll_have..","..ll_huis..");")
	return ""
	
end	

function huis_item(player,item)
	--获取物品注灵等级
	local zhul_lv = lualib:GetInt(item, "zhul_level")	
	if zhul_lv == 0 then
		--return "该装备没有被蕴魂，所以没有魂力可回收！！！"
		lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"该装备没有被蕴魂，所以没有魂力可回收！！！\");")
		return ''
	end
	local ll_huis = lingli_huis[zhul_lv]
	local old_lingli = lualib:GetInt(player,"linglizhi")
	local new_lingli = old_lingli + ll_huis
	--设置玩家新的注灵值,设置装备注灵等级归零
	if not lualib:SetInt(item,"zhul_level",0) or not lualib:SetInt(player,"linglizhi", new_lingli) then
		lualib:ShowFormWithContent(player,"脚本表单","WndAddEffect(nil,\"ForgeWnd,Zhul_hs,item\",3007000000,-135,-127,150,1);ForgeWnd.msg_up(\"魂力回收失败\");")
		return "注灵回收失败"
	end
	--清空注灵强化的各项物品属性
	for i = 10 , 19 do 
		if not lualib:SetInt(item,"_da"..i,0) then return "清空蕴魂强化属性失败！！！" end
		if not lualib:SetInt(item,"_dv"..i,0) then return "清空蕴魂强化属性失败！！！" end
	end 
	local lingliceshi = lualib:GetInt(player,"linglizhi")
	--向物品的主人通知物品属性更新.	
	lualib:Item_NotifyUpdate(player, item)
	local data = serialize(item)
	----------------每日活跃度记录精炼次数-----------------
	local count = lualib:GetDayInt(player,"activityDgr_jl")
	if 0 == count then
		lualib:SetDayInt(player,"activityDgr_jl", 1)
		lualib:SetDayInt(player, "totalActivityDegree", lualib:GetDayInt(player, "totalActivityDegree") + 10)
		ActivityDegree_setFlag(player)
	end
	----------------每日活跃度记录精炼次数END--------------
	lualib:ShowFormWithContent(player,"脚本表单","WndAddEffect(nil,\"ForgeWnd,Zhul_hs,item_magic\",3020200300,-190,-125,150,1);ForgeWnd.msg_up(\"装备魂力回收成功\");Zhul_hs.updata("..data..",".. lingliceshi ..",".. 0 ..");ForgeWnd.Get_EquipUpdate("..data..")")	
	--lualib:ShowFormWithContent(player,"脚本表单","WndAddEffect(nil,\"ForgeWnd,Zhul_hs,item\",3020200300,-225,-221,150,1)")
	--return "回收魂力成功"
	--lualib:ShowFormWithContent(player,"脚本表单","msg_up(\"回收魂力成功\");")
	return ''
	
	
	end
	

