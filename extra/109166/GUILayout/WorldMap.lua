WorldMap = {}
function WorldMap.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_GUIHandle = GUI:WndCreateWnd(_Parent,"GUI_2",1912000004,96,12)
	if _GUIHandle ~= 0 then
		GUI:WndSetIsESCClose(_GUIHandle,true)
		GUI:WndSetMoveWithLBM(_GUIHandle)
		GUI:WndSetMagicUI(_GUIHandle,1)
	end
	_Parent = _GUIHandle
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1910000020,805,6)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.CloseOnLBtnUp")
	end
	
	WorldMap.UIInit(_Parent)
end

--UI Logic Code Start


WorldMap.Lists = 
{
	{"��ɽ��", "��ɽ��", 1912000020, 286, 346}, 
	{"�������", "�����ؾ�", 1912000024, 126, 342}, 
	{"���ٳ�", "���ٳ�", 1912000028, 610, 183}, 
	{"������", "���¹�", 1912000032, 585, 275}, 
	{"����ɭ��", "ԭʼɭ��", 1912000036, 245, 226}, 
	{"���ִ�", "���ִ�", 1912000040, 355, 430}, 
	{"�����", "�����", 1912000044, 543, 410}, 
	{"���߹�", "����Ͽ��", 1912000048, 430, 250}, 
	{"����", "����", 1912000052, 405, 177}, 
	{"����", "���Ǳ�", 1912000056, 505, 177}, 
	{"��ħ��", "��ħ��", 1912000060, 105, 275}, 
	{"���´���", "���´���", 1912000064, 185, 305}, 
	{"����", "����", 1912000068, 77, 144}, 
	{"ѩ��", "ѩ��", 1912000072, 505, 108}, 
	{"���µ�", "�һ���", 1912000088, 280, 127}, 
	{"������", "������", 1912000092, 486, 320}, 
}

function WorldMap.UIInit(_Handle)
	for k, v in ipairs(WorldMap.Lists) do
		local _GUIHandle = GUI:ButtonCreate(_Handle,"MapBtn"..(k-1),v[3],v[4],v[5])
		if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "WorldMap.OnLBtnUp")
			GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
			GUI:WndSetParam(_GUIHandle, k)
			GUI:WndSetTextColorM(_GUIHandle, GUI:MakeColor(254, 226, 78, 255))
			GUI:ButtonSetTextFont(_GUIHandle,"SIMLI18")
			GUI:WndSetTextM(_GUIHandle,v[2])
		end
	end
end


WorldMap.main()
	
function WorldMap.OnLBtnUp(_Handle,_Param)
	if _Handle ~= 0 then 
		local _Param = GUI:WndGetParam(_Handle)
		if _Param >= 1 and _Param <= #WorldMap.Lists then
			local _KeyName = WorldMap.Lists[_Param][1]
			UI:OpenBigMapWithKeyName(_KeyName)
			local _ParentHandle = GUI:WndGetParentM(_Handle)
			if _ParentHandle ~= 0 then
				GUI:WndClose(_ParentHandle)
			end	
		end
	end
end

	
	
function WorldMap.CloseOnLBtnUp(_Handle,_Param)
	if _Handle ~= 0 then 
		local _ParentHandle = GUI:WndGetParentM(_Handle)
		if _ParentHandle ~= 0 then
			GUI:WndClose(_ParentHandle)
		end
	end
end