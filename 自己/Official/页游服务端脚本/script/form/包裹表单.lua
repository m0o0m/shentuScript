local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer") 

function GetItem(player,tself,tbag)
	
	local item_tab = {}
	local tab_self = deserialize(tself)
	local tab_bag = deserialize(tbag)
	for j=1,#tab_bag do    
		local item_type = lualib:Item_GetSubType(player, tab_bag[j]) 
		if #tab_self["lua"..item_type] ~= 0 then 
			local item_level =lualib:Item_GetLevel(tab_bag[j]) 
			if item_level > tab_self["lua"..item_type][2] then
				local req = lualib:Item_GetSite(player, tab_bag[j]) 
				item_tab[#item_tab+1] = req
				lualib:SetInt(tab_bag[j],"item_clink",1)
			elseif tab_self["lua"..item_type][4] ~= nil then 
				if item_level > tab_self["lua"..item_type][4] then
					lualib:SetInt(tab_bag[j],"item_clink",1)
					local req = lualib:Item_GetSite(player, tab_bag[j]) 
					item_tab[#item_tab+1] = req
				else
					lualib:SetInt(tab_bag[j],"item_clink",0)
				end
			else
				lualib:SetInt(tab_bag[j],"item_clink",0)
			end
			if (item_type == 3 or item_type == 9) and #tab_self["lua"..item_type] == 2 then 
				lualib:SetInt(tab_bag[j],"item_clink",1)
				local req = lualib:Item_GetSite(player, tab_bag[j]) 
				item_tab[#item_tab+1] = req
			end
		else
			lualib:SetInt(tab_bag[j],"item_clink",1)
			local req = lualib:Item_GetSite(player, tab_bag[j]) 
			item_tab[#item_tab+1] = req 
		end
	end
	
--[[	local ItemTble = lualib:BagItemList(player,true,false,false) 
	local count_tab={{},{},{},{},{}}
	for i=1,#ItemTble do  
		local num = lualib:GetInt(ItemTble[i],"item_clink")
		if num ~= 1 then 
			local item_type = lualib:Item_GetType(player,ItemTble[i]) 
			local item_subtype = lualib:Item_GetSubType(player, ItemTble[i]) 
			local key_name = lualib:KeyName(ItemTble[i]) 
			if item_type == 1 and item_subtype < 10 and item_subtype ~= 5 then 
				local baoshi = lualib:GetStr(ItemTble[i], "EquipHole1")
				local zhul_lv = lualib:GetInt(ItemTble[i], "zhul_level")
				local jl_level = lualib:Equip_GetRefineLevel(player, ItemTble[i])
				if not string.find(key_name,"霸业") and not string.find(baoshi,"级") and zhul_lv == 0 and jl_level == 0 then 
					local level = lualib:Item_GetLevel(ItemTble[i])
					local lever_1 = tonumber(pd_level_1(player,ItemTble[i],level)) 
					if lever_1 > 0  then
						count_tab[lever_1][(#count_tab[lever_1])+1] = ItemTble[i]
					end 
				end
			end
		end 
	end

	--lualib:ShowFormWithContent(player,"脚本表单","
	--lualib:ShowFormWithContent(player,"脚本表单","Recycle.classify("..serialize(count)..")") 
	--  "Package.update("..serialize(item_tab)..");"..
	--str =str.."msg("..#item_tab..")"
	
	local str = "" 
	str =str.. "local Handle = GetWindow(nil, \"Recycle\")\n"
	str =str.."if Handle ~= 0 then\n"
	str =str.."Recycle.classify("..serialize(count_tab)..")\n"
	str = str .."end\n"
	lualib:ShowFormWithContent(player,"脚本表单","Package.update("..serialize(item_tab)..");"..str) 
	--]]
	return  ""
	
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
