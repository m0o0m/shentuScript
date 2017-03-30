function on_accept(player,quest_id)
	local item_tab = lualib:GetItemsByKeys(player,"乾坤囊",false,true,false,false)
	a = tostring(#item_tab)
	if #item_tab == 1 then
		local item_guid = item_tab[1]
		if lualib:InBag(player,item_guid) == true then
			if lualib:ApplyItem(player,item_guid,true) then
				lualib:ShowFormWithContent(player,"脚本表单", "GameMainBar.Taskitem(".. 4 ..");")
			end
		end
	elseif #item_tab > 1 then
		for i=1,#item_tab do
			local item_guid = item_tab[i]
			if lualib:InBag(player,item_guid) == true then
				if lualib:ApplyItem(player,item_guid,true) then
					lualib:ShowFormWithContent(player,"脚本表单", "GameMainBar.Taskitem(".. 4 ..");")
				end
			end
		end	
	elseif #item_tab == 0 then	
	end
	return true
  end