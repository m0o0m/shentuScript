FangChenMi = {}
function FangChenMi.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_GUIHandle = GUI:WndCreateWnd(_Parent,"FangChenMi",1900010002,0,-2)
	if _GUIHandle ~= 0 then
	end
	_Parent = _GUIHandle

	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1900111000,405,6)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FangChenMi.OnClose")
	end
	FangChenMi.UIInit(_Parent)
end

--UI Logic Code Start
FangChenMi.WndHandle = 0

function FangChenMi.UIInit(_Handle)
	FangChenMi.WndHandle = _Handle
end

FangChenMi.main()
	
	
function FangChenMi.OnClose(_Handle,_Param)
	local _ParentHandle = GUI:WndGetParentM(_Handle)
	if _ParentHandle ~= 0 then 
		GUI:WndClose(_ParentHandle)
	end
end