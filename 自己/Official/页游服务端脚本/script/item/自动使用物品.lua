function on_create(item)
	lualib:AddTrigger(item,lua_trigger_item_pickup,"on_item_pickup")
end

function on_item_pickup(player,item,ItemId,ItemKey)
	if lualib:HasItem(player,item) == true then
		lualib:ApplyItem(player,item,true)
		return true
	elseif lualib:HasItem(player,item) == false then
		print(ItemKey.."�õ��߲��ڽ�ɫ�ı������޷�ʹ��")
	elseif lualib:HasItem(player,item) ~= true and lualib:HasItem(player,item) ~= false then
		print(ItemKey.."���µ�ϵͳ����")
	end
	
end