local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

function main(npc, player)
	lualib:ShowFormWithContent(player,"脚本表单","CLOnOpenPakage()")
	local count={{},{},{},{},{}}
	local ItemTble = lualib:BagItemList(player,true,false,false)
	if #ItemTble ~= 0  then 
		for i=1,#ItemTble do 
			local item_type = lualib:Item_GetType(player,ItemTble[i] ) 
			
			if item_type == 1 then 
				local level = lualib:Item_GetLevel(ItemTble[i])
				local lever_1 = pd_level(player,ItemTble[i],level)
				if lever_1~=0 then 
					count[lever_1][(#count[lever_1])+1] = ItemTble[i]
				end
			end
		end
	end
	lualib:ShowFormWithContent(player,"form文件表单","物品回收员UI#"..serialize(count))
	
    return ""
end

function pd_level(player,itemlist,level)
	local reinlevel = lualib:GetInt(itemlist,"reinLevel")
	local dengji = 0 
	if reinlevel == 0 then  
		if  level <=69 then 
			dengji = 1
		elseif 70<=level  and level <=79 then 
			dengji = 2
		elseif 80<=level  and level <=89 then 
			dengji = 3
		end
	elseif reinlevel == 1 then  
		dengji = 4
	elseif reinlevel >= 2 then  
		dengji = 5
	end
	return tonumber(dengji)
end