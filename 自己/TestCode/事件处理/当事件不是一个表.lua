function f()
	print("����")
end
local a = { [1] = f}

----------------------------------------------------------------------------------------
--UI�¼�����----------------------------------------------------------------------------
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



---�¼�ע���ں�����֤���¼��Ӷ���һ����