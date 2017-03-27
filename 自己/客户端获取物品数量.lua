
function CrystalSelWnd2:item_filter()
    local DATA = self.ItemList
    self.ItemList = {}
    for i = 1 , #DATA do 
		local boolIsPile = 0;
        local KeyName = ""
		if CL:GetItemEntityPropByGUID(DATA[i], ITEM_PROP_KEYNAME) then
			KeyName = tostring(LuaRet);
		end
		local Type = 0
		if CL:GetItemEntityPropByGUID(DATA[i], ITEM_PROP_TYPE) then
			Type = tonumber(LuaRet);
		end
		-- dbg("KeyName=////////////////"..KeyName);
		if KeyName ~= "" then
			local index = KeyName:find("宝石");
			if index ~= nil and Type ~= 1 then 
				for k = 1, #self.ItemList do 
					if KeyName == self.ItemList[k][5] then 
						if CL:GetItemEntityPropByGUID(DATA[i], ITEM_PROP_ENTITY_AMOUNT) then
							local count = tonumber(LuaRet);
							dbg("堆叠count======================"..count)
							self.ItemList[k][4] = self.ItemList[k][4] + count;
							boolIsPile = 1;  --要是堆叠过了,就做一个标记,后面看到这个标记就不执行后续代码
							break;
						end
					end
				end
				if boolIsPile == 0 then 
					local ele = {};
					ele[1] = DATA[i];
					if CL:GetItemEntityPropByGUID(DATA[i], ITEM_PROP_QUALITY) then 
						local quality = LuaRet;
						ele[2] = quality;
					end
					
					if CL:GetItemEntityPropByGUID(DATA[i], ITEM_PROP_ID) then 
						local ID = LuaRet;
						ele[3] = ID;
					end
					
					if CL:GetItemEntityPropByGUID(DATA[i], ITEM_PROP_ENTITY_AMOUNT) then
						local count = tonumber(LuaRet);
						ele[4] = count;
						dbg("count======================"..count)
					end
					ele[5] = KeyName;
					table.insert(self.ItemList, ele);
				end
			end
		end
		
    end
	function compare1(a, b)
		return a[2] > b[2];
	end
	table.sort(self.ItemList, compare1);
	
	-- function compare2(a, b)
		-- return a[3] < b[3];
	-- end
	-- table.sort(self.ItemList, compare2);
	
end