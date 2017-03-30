local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
require("form/ActivityDegree_s")

-----------------------------------------------------------------table-----------------------------------------------------------------------------
----武器1，护腕3，戒指9，项链8，攻击(根据职业三选一)
local shux1 = {	
	{{11,10},{13,12},{15,14}},
	{{2,1},{4,3},{6,5},{8,6},{10,8},{13,9},{16,11},{19,13},{23,15},{27,17},{31,20},{40,27}}, 	
} 
----衣服4，腰带7，鞋子6，头盔2，攻击,物防，魔防
local shux2 = {
	{{{11,10},{13,12},{15,14}},{7,6},{9,8}},
	{{{2,1},{2,2},{2,2}},{{3,1},{5,4},{4,4}},{{4,1},{7,6},{6,6}},{{4,2},{10,9},{8,8}},{{5,2},{12,11},{10,10}},{{6,3},{16,12},{13,12}},{{7,4},{19,14},{16,15}},
	{{9,6},{23,17},{19,18}},{{11,7},{27,20},{21,20}},{{13,10},{31,24},{25,23}},{{15,12},{38,28},{29,27}},{{18,15},{44,32},{34,30}}},	
}
----护盾 15    物防，魔防
local shux3 = {
	{{7,6},{9,8}},
	{{{2,2},{2,2}},{{3,3},{3,3}},{{4,4},{5,5}},{{5,5},{7,7}},{{7,7},{9,8}},{{9,9},{11,10}},{{11,11},{12,11}},{{14,14},{16,13}},{{17,17},{19,17}},
	{{21,20},{21,21}},{{27,22},{24,23}},{{34,24},{27,26}}},	
}
----宝石11， 魂珠13, 吊坠18     攻击
local shux4 = {	
	{{11,10},{13,12},{15,14}},
	{{2,1},{4,3},{6,5},{8,6},{10,8},{13,9},{16,11},{19,13},{23,15},{27,17},{31,20},{40,27}}, 	
}
----勋章10     攻击
local shux5 = {   
	{{11,10},{13,12},{15,14}},
	{{2,1},{4,3},{6,4},{8,5},{10,6},{12,8},{14,9},{16,11},{19,13},{23,15},{27,18},{33,23}},
}

----每级注灵升级所需要的灵力值
local req_ll = {8,26,68,131,235,377,566,821,1149,1586,2157,2873}

function item_set(player,item)
	local itemlevel = lualib:Item_GetLevel(item)
	local subtype = lualib:Item_GetSubType(player, item) 
	if subtype ~= 18 then
		if subtype == 5 or subtype == 12 or subtype == 14 or (subtype >= 16 and subtype < 19) then
			lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"该装备不可蕴魂\");")
			return ""
		end
	end
	if subtype == 1 or subtype == 2 or subtype == 3 or subtype == 4 or subtype == 6 or subtype == 7 or subtype == 8 or subtype == 9 then
		if itemlevel < 60 then
			lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"装备等级过低，无法蕴魂\");")
			return ""
		end
	end
	--玩家拥有灵力值数据
	local lingli_have = lualib:GetInt(player,"linglizhi")
	local item_data = serialize(item)
	lualib:ShowFormWithContent(player,"脚本表单","ZhulWnd.updata("..item_data..","..lingli_have..");")
	return ""
	
end	



function zhul_item(player,item,job)
	local job = tonumber(job)
	local itemlevel = lualib:Item_GetLevel(item)
	local subtype = lualib:Item_GetSubType("",item)
	--获取物品注灵等级
	local zhul_lv = lualib:GetInt(item, "zhul_level")
	local zhul_next_lv = zhul_lv + 1
	
	--注灵等级大于12级不能注灵
	if zhul_lv >= 12 then 
		lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"你已达到最高蕴魂等级12级。\");")
		return "" 
	end
	
	--获取玩家灵力--灵力不足无法注灵
	local lingli = lualib:GetInt(player,"linglizhi")
	local req_lingli = req_ll[zhul_next_lv]
	if lingli < req_lingli then 
		--return "魂力不足，无法蕴魂" 
		lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"魂力不足，无法蕴魂\");")
		return ''
	end	
	if 0 == job then
		job = lualib:Job(player)
	end
	----------------att属性增加提示--------------
	local equipmentIsEquiped = false;
	for i = 1, 17 do 
		local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
		if Guid ~= "" then
			if Guid == item then 
				equipmentIsEquiped = true;
				break;
			end
		end
	end
	local tb = 
	{
		["a1"] = {0,0},--物攻(下限，上限)
		["a2"] = {0,0},--魔攻
		["a3"] = {0,0},--道攻
		["a4"] = {0,0},--物防
		["a5"] = {0,0},--魔防
		["a6"] = {0,0},--生命
	}
	----------------att属性增加提示--------------
	local k = 10	
	----装备注灵att属性 使用了编号10到19，共十条属性
	----武器1，护腕3，戒指9，项链8，攻击(根据职业三选一)
	if subtype == 1 or subtype == 3 or subtype == 8 or subtype == 9 then
		if itemlevel < 80 and zhul_lv >= 10 then return "此装备60级到80级最高蕴魂等级为10级。" end
		if itemlevel >= 100 then
			for i = 1, 3 do	
				tb["a"..i][1] = shux1[2][zhul_next_lv][1];
				tb["a"..i][2] = shux1[2][zhul_next_lv][2];
				local old_prop_min = lualib:GetInt(item,"_dv"..k)
				local new_prop_min = old_prop_min + shux1[2][zhul_next_lv][1]
				if not lualib:SetInt(item,"_da"..k, shux1[1][i][1]) then return "设置注灵Att属性K失败" end			
				if not lualib:SetInt(item,"_dv"..k, new_prop_min) then return "设置注灵Att属性V失败" end				
				k = k + 1	
				local old_prop_max = lualib:GetInt(item,"_dv"..k)
				local new_prop_max = old_prop_max + shux1[2][zhul_next_lv][2]
				if not lualib:SetInt(item,"_da"..k, shux1[1][i][2]) then return "设置注灵Att属性K失败" end				
				if not lualib:SetInt(item,"_dv"..k, new_prop_max) then return "设置注灵Att属性v失败" end
				k = k + 1				
			end
		else
			tb["a"..job][1] = shux1[2][zhul_next_lv][1];
			tb["a"..job][2] = shux1[2][zhul_next_lv][2];
			local old_prop_min = lualib:GetInt(item,"_dv"..k)
			local new_prop_min = old_prop_min + shux1[2][zhul_next_lv][1]
			if not lualib:SetInt(item,"_da"..k, shux1[1][job][1]) then return "设置注灵Att属性K失败" end			
			if not lualib:SetInt(item,"_dv"..k, new_prop_min) then return "设置注灵Att属性V失败" end			
			k = k + 1	
			local old_prop_max = lualib:GetInt(item,"_dv"..k)
			local new_prop_max = old_prop_max + shux1[2][zhul_next_lv][2]
			if not lualib:SetInt(item,"_da"..k, shux1[1][job][2]) then return "设置注灵Att属性K失败" end				
			if not lualib:SetInt(item,"_dv"..k, new_prop_max) then return "设置注灵Att属性v失败" end
		end
				
	----衣服4，腰带7，鞋子6，头盔2，---攻击, 物防, 魔防
	elseif subtype == 2 or subtype == 4 or subtype == 6 or subtype == 7 then
		if itemlevel < 80 and zhul_lv >= 10 then 
			--return "此装备60级到80级最高蕴魂等级为10级。"
			lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"此装备60级到80级最高蕴魂等级为10级。\");")
			return ''
		end
		for i = 1 , 3 do 
			if i == 1 then
				if itemlevel >= 100 then
					
					for j = 1 , 3 do 
						tb["a"..j][1] = shux2[2][zhul_next_lv][1][1];
						tb["a"..j][2] = shux2[2][zhul_next_lv][1][2];
						local old_prop_min = lualib:GetInt(item,"_dv"..k)
						local new_prop_min = old_prop_min + shux2[2][zhul_next_lv][1][1]
						if not lualib:SetInt(item,"_da"..k, shux2[1][1][j][1]) then return "设置注灵Att属性K失败" end			
						if not lualib:SetInt(item,"_dv"..k, new_prop_min) then return "设置注灵Att属性V失败" end
						
						k = k + 1	
						local old_prop_max = lualib:GetInt(item,"_dv"..k)
						local new_prop_max = old_prop_max + shux2[2][zhul_next_lv][1][2]
						if not lualib:SetInt(item,"_da"..k, shux2[1][1][j][2]) then return "设置注灵Att属性K失败" end				
						if not lualib:SetInt(item,"_dv"..k, new_prop_max) then return "设置注灵Att属性v失败" end
						k = k + 1							
					end
				else	
					tb["a"..job][1] = shux2[2][zhul_next_lv][1][1];
					tb["a"..job][2] = shux2[2][zhul_next_lv][1][2];
					local old_prop_min = lualib:GetInt(item,"_dv"..k)
					local new_prop_min = old_prop_min + shux2[2][zhul_next_lv][1][1]
					if not lualib:SetInt(item,"_da"..k, shux2[1][1][job][1]) then return "设置注灵Att属性K失败" end			
					if not lualib:SetInt(item,"_dv"..k, new_prop_min) then return "设置注灵Att属性V失败" end
						
					k = k + 1	
					local old_prop_max = lualib:GetInt(item,"_dv"..k)
					local new_prop_max = old_prop_max + shux2[2][zhul_next_lv][1][2]
					if not lualib:SetInt(item,"_da"..k, shux2[1][1][job][2]) then return "设置注灵Att属性K失败" end				
					if not lualib:SetInt(item,"_dv"..k, new_prop_max) then return "设置注灵Att属性v失败" end
						
					k = k + 1
				end	
			else
				local old_prop_min = lualib:GetInt(item,"_dv"..k)
				local new_prop_min = old_prop_min + shux2[2][zhul_next_lv][i][1]
				if not lualib:SetInt(item,"_da"..k, shux2[1][i][1]) then return "设置注灵Att属性K失败" end			
				if not lualib:SetInt(item,"_dv"..k, new_prop_min) then return "设置注灵Att属性V失败" end
						
				k = k + 1	
				local old_prop_max = lualib:GetInt(item,"_dv"..k)
				local new_prop_max = old_prop_max + shux2[2][zhul_next_lv][i][2]
				if not lualib:SetInt(item,"_da"..k, shux2[1][i][2]) then return "设置注灵Att属性K失败" end				
				if not lualib:SetInt(item,"_dv"..k, new_prop_max) then return "设置注灵Att属性v失败" end
				
				k = k + 1	
				
			end 
			tb["a4"][1] = shux2[2][zhul_next_lv][2][1];
			tb["a4"][2] = shux2[2][zhul_next_lv][2][2];
			tb["a5"][1] = shux2[2][zhul_next_lv][3][1];
			tb["a5"][2] = shux2[2][zhul_next_lv][3][2];
		end
		
	----护盾 15    物防，魔防	
	elseif subtype == 15 then
		for i = 1, 2 do	
			local old_prop_min = lualib:GetInt(item,"_dv"..k)
			local new_prop_min = old_prop_min + shux3[2][zhul_next_lv][i][1]
			if not lualib:SetInt(item,"_da"..k, shux3[1][i][1]) then return "设置注灵Att属性K失败" end			
			if not lualib:SetInt(item,"_dv"..k, new_prop_min) then return "设置注灵Att属性V失败" end
						
			k = k + 1	
			local old_prop_max = lualib:GetInt(item,"_dv"..k)
			local new_prop_max = old_prop_max + shux3[2][zhul_next_lv][i][2]
			if not lualib:SetInt(item,"_da"..k, shux3[1][i][2]) then return "设置注灵Att属性K失败" end				
			if not lualib:SetInt(item,"_dv"..k, new_prop_max) then return "设置注灵Att属性v失败" end
			k = k + 1
		end
		tb["a4"][1] = shux3[2][zhul_next_lv][1][1];
		tb["a4"][2] = shux3[2][zhul_next_lv][1][2];
		tb["a5"][1] = shux3[2][zhul_next_lv][2][1];
		tb["a5"][2] = shux3[2][zhul_next_lv][2][2];
	----宝石  11  , 魂珠 13 , 吊坠18  攻击
	elseif subtype == 11 or subtype == 13 or subtype == 18 then
		for i = 1, 3 do	
			tb["a"..i][1] = shux4[2][zhul_next_lv][1];
			tb["a"..i][2] = shux4[2][zhul_next_lv][2];
			local old_prop_min = lualib:GetInt(item,"_dv"..k)
			local new_prop_min = old_prop_min + shux4[2][zhul_next_lv][1]
			if not lualib:SetInt(item,"_da"..k, shux4[1][i][1]) then return "设置注灵Att属性K失败" end			
			if not lualib:SetInt(item,"_dv"..k, new_prop_min) then return "设置注灵Att属性V失败" end
			
			k = k + 1	
			local old_prop_max = lualib:GetInt(item,"_dv"..k)
			local new_prop_max = old_prop_max + shux4[2][zhul_next_lv][2]
			if not lualib:SetInt(item,"_da"..k, shux4[1][i][2]) then return "设置注灵Att属性K失败" end				
			if not lualib:SetInt(item,"_dv"..k, new_prop_max) then return "设置注灵Att属性v失败" end
			k = k + 1
		end
	----勋章10     攻击
	elseif subtype == 10 then
		for i = 1, 3 do	
			tb["a"..i][1] = shux5[2][zhul_next_lv][1];
			tb["a"..i][2] = shux5[2][zhul_next_lv][2];
			local old_prop_min = lualib:GetInt(item,"_dv"..k)
			local new_prop_min = old_prop_min + shux5[2][zhul_next_lv][1]
			if not lualib:SetInt(item,"_da"..k, shux5[1][i][1]) then return "设置注灵Att属性K失败" end			
			if not lualib:SetInt(item,"_dv"..k, new_prop_min) then return "设置注灵Att属性V失败" end
			
			k = k + 1	
			local old_prop_max = lualib:GetInt(item,"_dv"..k)
			local new_prop_max = old_prop_max + shux5[2][zhul_next_lv][2]
			if not lualib:SetInt(item,"_da"..k, shux5[1][i][2]) then return "设置注灵Att属性K失败" end			
			if not lualib:SetInt(item,"_dv"..k, new_prop_max) then return "设置注灵Att属性v失败" end
			k = k + 1	
		end
	end
	
	local new_lingli = lingli - req_lingli
	lualib:SetInt(player,"linglizhi",new_lingli )
	--lualib:OnGloryTrigger(player, lua_glory_trigger_jinglian, item, 0, "注灵", "")
	if not lualib:SetInt(item,"zhul_level",zhul_next_lv) then
		lualib:ShowFormWithContent(player,"脚本表单","WndAddEffect(nil,\"ForgeWnd,ZhulWnd,item\",3007000000,-135,-127,150,1);ForgeWnd.msg_up(\"蕴魂失败\");")
		return "蕴魂失败"
	end
	if equipmentIsEquiped then 
		if not (tb["a1"][1] <= 0 and tb["a1"][2] <= 0 and tb["a2"][1] <= 0 and tb["a2"][2] <= 0 and tb["a3"][1] <= 0 and tb["a3"][2] <= 0 and tb["a4"][1] <= 0 and tb["a4"][2] <= 0 and tb["a5"][1] <= 0 and tb["a5"][2] <= 0 and tb["a6"][1] <= 0) then	
			local tab = ""
			for i=1,6 do
				tab = tab .. i .. ","
				tab = tab .. tb["a"..i][1] .. ","
				if i == 6 then
					tab = tab .. tb["a"..i][2]
				else
					tab = tab .. tb["a"..i][2] .. "#"
				end
			end
			lualib:ShowFormWithContent(player, "属性改变表单", tab)
		end
	end
	
	----------------每日活跃度记录精炼次数-----------------
	local count = lualib:GetDayInt(player,"activityDgr_jl")
	if 0 == count then
		lualib:SetDayInt(player,"activityDgr_jl", 1)
		lualib:SetDayInt(player, "totalActivityDegree", lualib:GetDayInt(player, "totalActivityDegree") + 10)
		ActivityDegree_setFlag(player)
	end
	----------------每日活跃度记录精炼次数END--------------
	lualib:Item_NotifyUpdate(player, item)
	local data = serialize(item)
	if lualib:HasQuest(player, 10002) then
		lualib:ForceQuestReady(player, 10002)
	end
	lualib:ShowFormWithContent(player, "脚本表单", "WndAddEffect(nil,\"ForgeWnd,ZhulWnd,item_magic\",3020200600,-175,-160,150,1);WndAddEffect(nil,\"ForgeWnd,ZhulWnd,nengliang\",1089400000,110,0,150,1);ForgeWnd.msg_up(\"装备蕴魂强化加"..zhul_next_lv.."成功\");ZhulWnd.updata("..data..","..new_lingli..");ForgeWnd.Get_EquipUpdate("..data..")"	)
	return ''
end

function get_Zhuling(player)
	
	local lingli = lualib:GetInt(player,"linglizhi")
	--lualib:SysPromptMsg(player,""..lingli)
	lualib:ShowFormWithContent(player,"脚本表单","ZhulWnd.get_Zhuling("..lingli..");")
	return ''
end	



