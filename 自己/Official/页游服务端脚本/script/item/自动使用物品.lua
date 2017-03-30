function on_create(item)
	lualib:AddTrigger(item,lua_trigger_item_pickup,"on_item_pickup")
end

function on_item_pickup(player,item,ItemId,ItemKey)
	if lualib:HasItem(player,item) == true then
		lualib:ApplyItem(player,item,true)
		return true
	elseif lualib:HasItem(player,item) == false then
		print(ItemKey.."该道具不在角色的背包，无法使用")
	elseif lualib:HasItem(player,item) ~= true and lualib:HasItem(player,item) ~= false then
		print(ItemKey.."导致的系统错误")
	end
	
end