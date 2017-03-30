local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

local hs_tab = {
		{{5000,0},{5000,0},{5000,0}},
		{{10000,0},{10000,0},{10000,0}},
		{{30000,0},{30000,0},{30000,0}},
		{{60000,0},{60000,0},{60000,0}},
		{{100000,75},{100000,75},{100000,0}},              --50级武器衣服 首饰
		{{1800000,100},{1700000,100},{1500000,0}},                
		{{5500000,300},{5000000,300},{4500000,0}},               
		{{18000000,900},{16000000,900},{15000000,0}},            
		{{40000000,0},{35000000,0},{30000000,0}}, 
		{{50000000,0},{47500000,0},{45000000,0}}, 
		}

function main(player,param)
	local state = tonumber(param)
	if state == 0 or state == 3 then  
		--lualib:ShowFormWithContent(player,"脚本表单","CL:OnOpenPakage()")
		lualib:ShowFormWithContent(player,"form文件表单","物品回收员UI")
	end
	return ""
end

function main2(player)
	local count={{},{},{},{},{}}
	--local ItemTble = lualib:BagItemList(player,true,false,false)
	local ItemTble = tab_make_all(player)
	if #ItemTble ~= 0  then 
		for i=1,#ItemTble do 
			local level = lualib:Item_GetLevel(ItemTble[i])
			local lever_1 = tonumber(pd_level_1(player,ItemTble[i],level))
			if lever_1 > 0 then
				count[lever_1][(#count[lever_1])+1] = ItemTble[i]
			end 
		end
	end
	local clink = lualib:GetInt(player,"tf_clink")
	lualib:ShowFormWithContent(player,"脚本表单","Recycle.mainUI("..serialize(count)..","..clink..")")
	clink = lualib:GetInt(player,"回收点击")
	if clink == 1 then
		lualib:AddTimerEx(player,585466,18000,1,"Scrip","")
	end
--	lualib:ShowFormWithContent(player,"form文件表单","物品回收员UI#"..serialize(count).."#"..clink)
	return ""
end


function Scrip(player)
	
	local clink = lualib:GetInt(player,"回收点击") 
	if clink ~= 0 then
		lualib:ShowFormWithContent(player,"脚本表单","Recycle.ClickEdit1("..clink..")")
		lualib:AddTimerEx(player,5466232,2000,1,"on_time",player)
	end
	return ""
end

function on_time(player)
	if lualib:HasTimer(player,5466232)  then
		lualib:DisableTimer(player,5466232)  
	end
	if lualib:HasTimer(player,585466)  then
		lualib:DisableTimer(player,585466)  
	end
	lualib:ShowFormWithContent(player,"脚本表单","Recycle.Close();CLContinueTask();")
	
end


function pd_level_1(player,itemlist,level)
	
	local reinlevel = lualib:GetInt(itemlist,"item_rein")
	local dengji = 0 
	if reinlevel == 0 then  
		if  level <=69 then 
			dengji = 1
		elseif 70<=level  and level <=79 then 
			dengji = 2
		elseif 80<=level and level <=99 then 
			dengji = 3
		end
	elseif reinlevel == 1 then  
		dengji = 4
	elseif reinlevel == 2 then  
		dengji = 5
	end 
	return tonumber(dengji)
	
end

function hs(player,str)

	lualib:SetInt(player,"回收点击",0)
	lualib:SetInt(player,"tf_clink",1)
	local itemlist = deserialize(str)
	local all_exp_s= 0   --经验
	local hp_fragment = 0     --血符碎片
	local all_bgold = 0       --绑定金币
	local tab_guid = {}
	local tab_exp = {}
	for s = 1, #itemlist do 
		local item_type = lualib:Item_GetType(player,itemlist[s]) 
		local key_name = lualib:KeyName(itemlist[s]) 
		local item_name = lualib:Name(itemlist[s])    
		if item_type ==1 then 
			if string.find(key_name,"乌木剑")  or string.find(key_name,"粗布") then 
				--if lualib:Item_Destroy(player,itemlist[s] , "回收装备",player) then 
					
				--if lualib:DelItem(player,lualib:KeyName(itemlist[s]),1,2,"回收装备",player) then 
					all_exp_s = all_exp_s + 1000
					tab_guid[#tab_guid+1] = itemlist[s]
				--[[	lualib:Player_AddExp(player, 1000 , "回收装备获得经验", "物品回收员")
				else 
					lualib:SysPromptMsg(player, "回收失败".. item_name)
				end--]]
			else  
				local level = lualib:Item_GetLevel(itemlist[s])
				local lever_1 = pd_level(player,itemlist[s],level)
				local item_subtype = lualib:Item_GetSubType(player, itemlist[s]) 
				local item_subtype_1= pd_subtype(player,item_subtype)
				if lever_1 ~= 0 and item_subtype_1 ~= 0 then
					--if lualib:Item_Destroy(player,itemlist[s] , "回收装备",player) then  
					--if lualib:DelItem(player,lualib:KeyName(itemlist[s]),1,2,"回收装备",player) then 
						if item_subtype_1 == 3 then 
							if lever_1 == 6 then 
								all_bgold = all_bgold + 50000
							elseif lever_1 == 7 then 
								all_bgold = all_bgold + 70000	
							elseif lever_1 == 8 then 
								all_bgold = all_bgold + 150000	
							end
						end
						tab_guid[#tab_guid+1] = itemlist[s]
						--lualib:Player_AddExp(player, hs_tab[lever_1][item_subtype_1][1] , "回收装备获得经验", "物品回收员")
						all_exp_s = all_exp_s + hs_tab[lever_1][item_subtype_1][1]
						hp_fragment = hp_fragment + hs_tab[lever_1][item_subtype_1][2]
					--[[else 
						lualib:SysPromptMsg(player, "回收失败".. item_name)
					end--]]
				end 
			end
		end
	end  
	if #tab_guid >0 then 
		if lualib:DelItemsBatch(player, tab_guid,"回收装备", "物品回收员") then 
			if all_exp_s ~= 0 then 
				lualib:Player_AddExp(player, all_exp_s , "回收装备获得经验", "物品回收员")
				lualib:SysPromptMsg(player, "本次回收共获得:"..all_exp_s.."经验")
				lualib:ShowFormWithContent(player,"form文件表单","ExpUI#"..all_exp_s)
				lualib:ShowFormWithContent(player,"脚本表单","Recycle.Clean()")
			end 
			if hp_fragment ~= 0 then
				lualib:SysPromptMsg(player, "本次回收共获得:"..hp_fragment.."护符碎片")
				local fragment = lualib:GetInt(player,"xuefu_chip") 
				fragment=fragment+hp_fragment
				lualib:SetInt(player,"xuefu_chip",fragment)
				local varTb = {"xuefu_chip", "hudun_chip", "baoshi_chip", "hunzhu_chip"}
				local equipLvTb = {"xuefu_level", "hudun_level", "baoshi_level", "hunzhu_level"}
				local count = 0
				local varRequireTb = {
									["xuefu_chip"]= {200,200,500,1000,2000,4000,7000,11000,16000,22000,29000,37000,46000,56000,68000,82000,98000,116000,136000,160000,188000,220000,260000,308000,364000,99999999},
									["hudun_chip"]= {100,100,200,350,550,800,1100,1450,1850,2300,99999999},
									["baoshi_chip"]= {40,90,150,220,375,935,2340,4400,7020,11705,99999999},
									["hunzhu_chip"]= {40,70,120,230,810,1190,1550,1820,2630,3590,4010,4690,5660,5980,6440,7070,14010,17270,20890,24930,30250,99999999},
								}
				for i = 1, 4 do
					local chipName = varTb[i]
					local Level = lualib:GetInt(player, equipLvTb[i])
					if lualib:GetInt(player, chipName ) >= varRequireTb[varTb[i]][Level+1] then
						count = count + 1
					end
				end
				--lualib:SysPromptMsg(player, ""..count)
				if count > 0 then
					lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.SlNum("..count..")")
				end
				
			end 
			if all_bgold ~= 0 then
				lualib:AddBindGold(player, all_bgold, "物品回收员", "系统")
				lualib:SysPromptMsg(player, "本次回收共获得:"..all_bgold.."绑定金币")
			end
			
			main2(player)
			local id_tab = {38,48,57}
			for i=1,3 do  
				if lualib:HasQuest(player, id_tab[i]+1) then 
					lualib:AddTimerEx(player,5466232,2000,1,"on_time",player)
				end
			end
		end
	end
	if lualib:BagFree(player, true, false, false) ~= 0 then
		local str = 
	[[
		local handle = GetWindow(GameMainBar._wnd, "EmptyPackage2")
		if handle ~= 0 then
			GUIWndSetVisible(handle, false)
		end
	]]
		lualib:ShowFormWithContent(player,"脚本表单", str)
	end
	return ""
	
end

function pd_level(player,itemlist,level)
	
	local reinlevel = lualib:GetInt(itemlist,"item_rein") 
	local dengji = 0 
	if reinlevel == 0 then  
		if  2 <=level  and level <= 9 then 
			dengji = 1
		elseif 10 <= level  and level <= 29 then 
			dengji = 2
		elseif 30<=level  and level <=39 then 
			dengji = 3
		elseif 40<=level  and level <=49 then 
			dengji = 4
		elseif 50<=level  and level <=59 then 
			dengji = 5
		elseif 60<=level  and level <=69 then 
			dengji = 6
		elseif 70<=level  and level <=79 then 
			dengji = 7
		elseif 80<=level  and level <=99 then 
			dengji = 8
		end
	elseif reinlevel == 1 then  
		dengji = 9
	elseif reinlevel == 2 then  
		dengji = 10
	end 
	return tonumber(dengji)
	
end

function pd_subtype(player,subtype)    --武器 衣服 首饰
	
	local item_subtype = 0
	if subtype==1 then 
		item_subtype=1
	elseif subtype== 4 then 
		item_subtype= 2
	else 
		item_subtype= 3
	end
	return item_subtype
	
end

function hs_exp(player,tab)  --显示可以回收的装备数量和经验
	local itemlist = tab_make_all(player)
	if #tab > 0 then 
		local tab = deserialize(tab)
		for i=#itemlist,1,-1 do 
			for j=#tab,1,-1 do 
				if tab[j]==itemlist[i] then 
					table.remove(itemlist,i)
				end
			end
		end
	end
	local all_exp_s= 0
	for s = #itemlist,1,-1 do 
		local item_type = lualib:Item_GetType(player,itemlist[s]) 
		local key_name = lualib:KeyName(itemlist[s]) 
		if item_type ==1 then 
			if string.find(key_name,"乌木剑")  or string.find(key_name,"粗布") then
				all_exp_s = all_exp_s + 1000
			else 
				local level = lualib:Item_GetLevel(itemlist[s])
				local lever_1 = pd_level(player,itemlist[s],level) 
				local item_subtype = lualib:Item_GetSubType(player, itemlist[s]) 
				local item_subtype_1= pd_subtype(player,item_subtype)
				if lever_1 > 0 and item_subtype_1 > 0 then 	 
					all_exp_s = all_exp_s + hs_tab[lever_1][item_subtype_1][1]
				else
					table.remove(itemlist,s)
				end
			end
		end
	end
	lualib:ShowFormWithContent(player, "脚本表单", "Recycle.update("..all_exp_s..","..#itemlist.. ");")
	return ""
	
end

function tab_make_all(player)  --获取包裹中所有的装备
	
	local ItemTble = lualib:BagItemList(player,true,false,false)
	local tab={}
	for i=1,#ItemTble do
		--local num = lualib:GetInt(ItemTble[i],"item_clink")  
		--if num ~= 1 then 
			local item_type = lualib:Item_GetType(player,ItemTble[i]) 
			local item_subtype = lualib:Item_GetSubType(player, ItemTble[i]) 
			local key_name = lualib:KeyName(ItemTble[i]) 
			if item_type == 1 and item_subtype < 10 and item_subtype ~= 5 then 
				local baoshi = lualib:GetStr(ItemTble[i], "EquipHole1")
				local zhul_lv = lualib:GetInt(ItemTble[i], "zhul_level")
				local jl_level = lualib:Equip_GetRefineLevel(player, ItemTble[i])
				local reinlevel = lualib:GetInt(ItemTble[i],"item_rein") 
				if not string.find(key_name,"霸业") and not string.find(baoshi,"级") and zhul_lv == 0 and jl_level == 0 and reinlevel < 3 then
					tab[#tab+1] = ItemTble[i]
				end
			end
		--end
	end
	return tab
	
end

function hs_all(player,tab)
	local itemlist = tab_make_all(player)
	if #tab > 0 then 
		local tab = deserialize(tab)
		for i=#itemlist,1,-1 do 
			for j=#tab,1,-1 do 
				if tab[j]==itemlist[i] then 
					table.remove(itemlist,i)
				end
			end
		end
	end
	hs(player,serialize(itemlist))
	return ""
end

function Distanced(player)
	
	local  map_guid = lualib:MapGuid(player)
	local npc_guid = lualib:Map_GetMapNpc(map_guid,"巫山城物品回收员") 
	if npc_guid == "" then
		lualib:ShowFormWithContent(player,"脚本表单","Recycle.Close()") 
	end	
	local dis = lualib:Distance(npc_guid,player)
	if dis > 8 then
		lualib:ShowFormWithContent(player,"脚本表单","Recycle.Close()")
	end	 
	return ""
	
end

--[[function Offequip(player,guid)
	local level = lualib:Item_GetLevel(guid)
	local i = pd_level_1(player,guid,level) 
	local item_type = lualib:Item_GetType(player,guid)  
	local item_subtype = lualib:Item_GetSubType(player, guid) 
	local key_name = lualib:KeyName(guid)
	if item_type == 1 and item_subtype < 10 and item_subtype ~= 5 and i ~= 0 then 
		local baoshi = lualib:GetStr(guid, "EquipHole1")
		local zhul_lv = lualib:GetInt(guid, "zhul_level")
		local jl_level = lualib:Equip_GetRefineLevel(player, guid)
		if not string.find(key_name,"霸业") and not string.find(baoshi,"级") and zhul_lv == 0 and jl_level == 0 then 
			lualib:ShowFormWithContent(player,"脚本表单","Recycle.Backooo(".. tostring(i) ..")")  
		end
	end 
	return ""  
end
--]]