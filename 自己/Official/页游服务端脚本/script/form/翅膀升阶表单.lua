local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
require("system/ScriptPackage")
require("form/新开服活动")

local tab_wing = {
	{"天使之翼","圣蓝之翼","金羽之翼","冰龙之翼","雷霆闪电翼","流澜之翼","九霄神天翼","赤炎之羽","风魂之羽","玄灵之翼","双龙翼"},
	{5,5,10,10,20,20,30,30,40,40},--对应翅膀等级每次点击培养所需的羽根	
	{10000,10000,20000,20000,60000,60000,120000,120000,240000,240000},----所需金币
	{12,48,132,352,500,900,828,1136,1400,2000},--对应翅膀等级每次升级所需培养
	0,  --升阶等级
	0,  --当天培养
	0,  --包裹内羽根数量
	
}

function main(player)
	local wing_l = lualib:GetInt(player,"wing_level")
	local wing_p = lualib:GetDayInt(player,"wing_peiy")
	local num = lualib:ItemCount(player, "羽毛")
	tab_wing[5] = wing_l
	tab_wing[6] = wing_p
	tab_wing[7] = num
	local allDays = lualib:GetAllDays(0)
	local allSeconds = lualib:GetAllTime()
	tab_wing[8] = (allDays+1)*24*60*60 - allSeconds - 8*60*60    --到早上0点的时间
	local table_data = serialize(tab_wing)
	lualib:ShowFormWithContent(player,"脚本表单","wing_data("..table_data..");")
	return ""
end

function begin(player,param)
	local wing_l = lualib:GetInt(player,"wing_level")
	local index = wing_l + 1 
	local wing_p = lualib:GetDayInt(player,"wing_peiy")
	local num = lualib:ItemCount(player, "羽毛")
	local gold = tab_wing[3][index]
	
	local item_guid = lualib:Player_GetItemGuid(player,14)
	if item_guid == "" then
		lualib:ShowFormWithContent(player,"脚本表单","WingWnd.msg_up(\"翅膀不在装备栏中，无法升阶\");")
		return ""
	else
		local name = lualib:KeyName(item_guid)
		if name ~= tab_wing[1][index] then
			lualib:ShowFormWithContent(player,"脚本表单","WingWnd.msg_up(\"翅膀"..tab_wing[1][index].."不在装备栏中，无法升阶\");")
			return ""
		end
	end	
	
	local bind_gold = lualib:GetBindGold(player)
	local n_gold = lualib:GetGold(player)
	if gold > bind_gold + n_gold  then
		lualib:ShowFormWithContent(player,"脚本表单","WingWnd.msg_up(\"金币不足\");")
		return ""
	end	
	
	if num < tab_wing[2][index] then
		if tonumber(param) == 1 then
			local need_yu = tab_wing[2][index] - num
			local need_yb = need_yu * 30 
			if need_yb > lualib:GetIngot(player) then
				lualib:ShowFormWithContent(player,"脚本表单","WingWnd.msgbox();")
				return ""
			else
				if not lualib:Player_SubIngot(player, need_yb, false, "扣元宝:翅膀升级，自动培养", "系统") then
					lualib:ShowFormWithContent(player,"脚本表单","WingWnd.msg_up(\"自动购买羽毛失败\");")
					return ""
				else
					--********************************--
					local indexx = lualib:GetDBNum("consumeTerm")
					local totalYb = lualib:GetInt(player, "IndividalTotalConsumeYB"..indexx) + tonumber(need_yb)
					RecordTop10ConsumeInfo(player,totalYb)
					--********************************--
				end
				if not lualib:AddItem(player,"羽毛",need_yu,true,"翅膀升级，自动购买", player) then --给物品
					lualib:ShowFormWithContent(player,"脚本表单","WingWnd.msg_up(\"请联系客服\");")
					return ""
				end
			end
		else
			lualib:ShowFormWithContent(player,"脚本表单","WingWnd.msg_up(\"羽毛不足\");")
			return "" 
		end	
	end
	if bind_gold >= gold then
		if not lualib:Player_SubGold(player, gold, true, "扣绑定金币:翅膀升级", "系统") then
			return ""
		end
	else
		if not lualib:Player_SubGold(player, bind_gold, true, "扣绑定金币:翅膀升级", "系统") then
			return ""
		end
		local jb = gold - bind_gold
		if not lualib:Player_SubGold(player, jb, false, "扣金币:翅膀升级", "系统") then
			return ""
		end
	end	
	if not lualib:DelItem(player, "羽毛", tab_wing[2][index], 2, "翅膀升阶", "翅膀升阶") then
		lualib:ShowFormWithContent(player,"脚本表单","WingWnd.msg_up(\"扣除羽毛失败\");")
		return ""
	end
	local rand = lualib:GenRandom(4,5)
	wing_p = rand + wing_p
	if wing_p >= tab_wing[4][index] then
		
		if lualib:GetBagFree(player) < 1 then
			lualib:ShowFormWithContent(player,"脚本表单","ShenLuWnd.msg_up(\"您的背包满了，请先清理背包在进行升级\");")
			return "您的背包满了，请先清理背包在进行升级！！"
		end
		
		if not lualib:DelItemEx(player, tab_wing[1][index], 1, 2, true, true, true, true, "翅膀升阶", "翅膀升阶") then 
			lualib:ShowFormWithContent(player,"脚本表单","WingWnd.msg_up(\"删除道具失败\");")
			return ""
		end
		if not lualib:AddItem(player,tab_wing[1][index+1],1,true,"翅膀升阶", player) then --给物品
			lualib:ShowFormWithContent(player,"脚本表单","WingWnd.msg_up(\"请联系客服\");")
			return ""
		else
			lualib:ApplyEquipEx(player,tab_wing[1][index+1])   --给玩家穿装备
			lualib:ShowFormWithContent(player,"脚本表单","WndAddEffect(nil,\"WingWnd,yu_image\",3006800000,-198,-155,150,1);")	
		end
		
		lualib:SetDayInt(player,"wing_peiy",0)
		lualib:SetInt(player,"wing_level",wing_l + 1)	
		lualib:OnGloryTrigger(player, 16, "", 0, "翅膀升阶", "")
		main(player)
	else
		lualib:SetInt(player, "FIRST_OPEN_WINGWINDOW",11)
		lualib:ShowFormWithContent(player,"脚本表单"," WingWnd.HidePrompt();")
		lualib:SetDayInt(player,"wing_peiy",wing_p)
		local num = lualib:ItemCount(player, "羽毛")
		lualib:ShowFormWithContent(player,"脚本表单","peiy_update("..index..","..wing_p..","..num..");")
	end	
	return ""
end

function Auto_begin(player,param)
	local timer_id = lualib:GetInt(player,"wingtimerid")
	if timer_id ~= 0 then
		lualib:DisableTimer(player,timer_id)
		lualib:SetInt(player,"wingtimerid",0) 
	else
		timer_id = lualib:GenTimerId(player)
		lualib:SetInt(player,"wingtimerid",timer_id)
		lualib:AddTimerEx(player,timer_id,150,-1,"ShengJiWing",""..param)
	end	
	return ""
end	

function WinClose(player)
	local timer_id = lualib:GetInt(player,"wingtimerid")
	if timer_id ~= 0 then
		lualib:DisableTimer(player,timer_id)
		lualib:SetInt(player,"wingtimerid",0) 
		lualib:ShowFormWithContent(player,"脚本表单", "WingWnd.Changetext()")
	end
	return ""
end	

function ShengJiWing(player,timerid,param)
	local wing_l = lualib:GetInt(player,"wing_level")
	local index = wing_l + 1 
	local wing_p = lualib:GetDayInt(player,"wing_peiy")
	local num = lualib:ItemCount(player, "羽毛")
	local gold = tab_wing[3][index]
	
	local item_guid = lualib:Player_GetItemGuid(player,14)
	if item_guid == "" then
		if timerid ~= nil then
			lualib:DisableTimer(player,timerid)
			lualib:SetInt(player,"wingtimerid",0) 		
			lualib:ShowFormWithContent(player,"脚本表单","WingWnd.Changetext()")
		end	
		lualib:ShowFormWithContent(player,"脚本表单","WingWnd.msg_up(\"翅膀不在装备栏中，无法升阶\");")
		return ""
	else
		local name = lualib:KeyName(item_guid)
		if name ~= tab_wing[1][index] then
			if timerid ~= nil then
				lualib:DisableTimer(player,timerid) 
				lualib:SetInt(player,"wingtimerid",0) 
				lualib:ShowFormWithContent(player,"脚本表单","WingWnd.Changetext()")
			end	
			lualib:ShowFormWithContent(player,"脚本表单","WingWnd.msg_up(\"翅膀不在装备栏中，无法升阶\");")
			return ""
		end
	end	
	
	local bind_gold = lualib:GetBindGold(player)
	local n_gold = lualib:GetGold(player)
	if gold > bind_gold + n_gold  then
		if timerid ~= nil then
			lualib:DisableTimer(player,timerid) 
			lualib:SetInt(player,"wingtimerid",0) 
			lualib:ShowFormWithContent(player,"脚本表单","WingWnd.Changetext()")
		end	
		lualib:ShowFormWithContent(player,"脚本表单","WingWnd.msg_up(\"金币不足\");")
		return ""
	end	
	
	if num < tab_wing[2][index] then
		if tonumber(param) == 1 then
			local need_yu = tab_wing[2][index] - num
			local need_yb = need_yu * 30 
			if need_yb > lualib:GetIngot(player) then
				if timerid ~= nil then
					lualib:DisableTimer(player,timerid) 
					lualib:SetInt(player,"wingtimerid",0) 
					lualib:ShowFormWithContent(player,"脚本表单","WingWnd.Changetext()")
				end	
				lualib:ShowFormWithContent(player,"脚本表单","WingWnd.msgbox();")	
				return ""
			else
				if not lualib:Player_SubIngot(player, need_yb, false, "扣元宝:翅膀升级，自动培养", "系统") then
					if timerid ~= nil then
						lualib:DisableTimer(player,timerid) 
						lualib:SetInt(player,"wingtimerid",0)
						lualib:ShowFormWithContent(player,"脚本表单","WingWnd.Changetext()")
					end	
					lualib:ShowFormWithContent(player,"脚本表单","WingWnd.msg_up(\"自动购买羽毛失败\");")	
					return ""
				end
				if not lualib:AddItem(player,"羽毛",need_yu,true,"翅膀升级，自动购买", player) then --给物品
					if timerid ~= nil then
						lualib:DisableTimer(player,timerid) 
						lualib:SetInt(player,"wingtimerid",0) 
						lualib:ShowFormWithContent(player,"脚本表单","WingWnd.Changetext()")
					end	
					lualib:ShowFormWithContent(player,"脚本表单","WingWnd.msg_up(\"请联系客服\");")	
					return ""
				end
			end
		else
			if timerid ~= nil then
				lualib:DisableTimer(player,timerid) 
				lualib:SetInt(player,"wingtimerid",0) 
				lualib:ShowFormWithContent(player,"脚本表单","WingWnd.Changetext()")
			end	
			lualib:ShowFormWithContent(player,"脚本表单","WingWnd.msg_up(\"羽毛不足\");")			
			return "" 
		end	
	end
	
	if bind_gold >= gold then
		if not lualib:Player_SubGold(player, gold, true, "扣绑定金币:翅膀升级", "系统") then
			if timerid ~= nil then
				lualib:DisableTimer(player,timerid) 
				lualib:SetInt(player,"wingtimerid",0) 
				lualib:ShowFormWithContent(player,"脚本表单","WingWnd.Changetext()")
			end	
			return ""
		end
	else
		if not lualib:Player_SubGold(player, bind_gold, true, "扣绑定金币:翅膀升级", "系统") then
			if timerid ~= nil then
				lualib:DisableTimer(player,timerid) 
				lualib:SetInt(player,"wingtimerid",0) 
				lualib:ShowFormWithContent(player,"脚本表单","WingWnd.Changetext()")
			end	
			return ""
		end
		local jb = gold - bind_gold
		if not lualib:Player_SubGold(player, jb, false, "扣金币:翅膀升级", "系统") then
			if timerid ~= nil then
				lualib:DisableTimer(player,timerid) 
				lualib:SetInt(player,"wingtimerid",0) 
				lualib:ShowFormWithContent(player,"脚本表单","WingWnd.Changetext()")
			end	
			return ""
		end
	end	
	
	if not lualib:DelItem(player, "羽毛", tab_wing[2][index], 2, "翅膀升阶", "翅膀升阶") then
		if timerid ~= nil then
			lualib:DisableTimer(player,timerid) 
			lualib:SetInt(player,"wingtimerid",0) 
			lualib:ShowFormWithContent(player,"脚本表单","WingWnd.Changetext()")
		end	
		lualib:ShowFormWithContent(player,"脚本表单","WingWnd.msg_up(\"扣除羽毛失败\");")
		return ""
	end
	local rand = lualib:GenRandom(4,5)
	wing_p = rand + wing_p
	if wing_p >= tab_wing[4][index] then
		if lualib:GetBagFree(player) < 1 then
			lualib:ShowFormWithContent(player,"脚本表单","ShenLuWnd.msg_up(\"您的背包满了，请先清理背包在进行升级\");")
			return "您的背包满了，请先清理背包在进行升级！！"
		end
		
		if not lualib:DelItemEx(player, tab_wing[1][index], 1, 2, true, true, true, true, "翅膀升阶", "翅膀升阶") then 
			lualib:ShowFormWithContent(player,"脚本表单","WingWnd.msg_up(\"删除道具失败\");")
			return ""
		end
		
		if not lualib:AddItem(player,tab_wing[1][index+1],1,true,"翅膀升阶", player) then --给物品
			lualib:ShowFormWithContent(player,"脚本表单","WingWnd.msg_up(\"请联系客服\");")
			return ""
		else
			
			lualib:ShowFormWithContent(player,"脚本表单","WndAddEffect(nil,\"WingWnd,yu_image\",3006800000,-198,-155,150,1);")	
		end
		lualib:ApplyEquipEx(player,tab_wing[1][index+1])   --给玩家穿装备
		lualib:SetDayInt(player,"wing_peiy",0)
		lualib:SetInt(player,"wing_level",wing_l + 1)	
		if timerid ~= nil then
			lualib:DisableTimer(player,timerid) 
			lualib:SetInt(player,"wingtimerid",0) 
			lualib:ShowFormWithContent(player,"脚本表单","WingWnd.Changetext()")
		end		
		lualib:OnGloryTrigger(player, 16, "", 0, "翅膀升阶", "")
		main(player)
		AddKaiFuMagicOnWingLevelUp(player)  --翅膀升级时触发新开服活动特效
	else
		lualib:SetDayInt(player,"wing_peiy",wing_p)
		local num = lualib:ItemCount(player, "羽毛")
		lualib:ShowFormWithContent(player,"脚本表单","peiy_update("..index..","..wing_p..","..num..");")
	end	
	return ""
end