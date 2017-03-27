function f()
	print("您好")
end
local a = { [1] = f}

----------------------------------------------------------------------------------------
--UI事件机制----------------------------------------------------------------------------
----------------------------------------------------------------------------------------
function RegisterUIEvent(EventID,_Tag,_EventFunc)
	if UIEvent == nil then
		UIEvent = {}
	end
	if UIEvent[EventID] == nil then
		UIEvent[EventID] = {}
	end
	UIEvent[EventID][_Tag] = _EventFunc
end



---事件注册借口函数保证了事件坑定是一个表