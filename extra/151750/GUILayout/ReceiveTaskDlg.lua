ReceiveTaskDlg = {}
function ReceiveTaskDlg.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"ReceiveTaskDlg",1850100032,107,202)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,784, 321)
		GUI:WndSetMoveWithLBM(_Parent)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"wndTitle",1850100030,320,13)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,137, 35)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"itemBkg1",1850500016,149,231)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,137, 35)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item1",0,153,234,68,63)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,65, 63)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
		
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"itemBkg2",1850500016,229,231)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,137, 35)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item2",0,233,234,68,63)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,65, 63)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"itemBkg3",1850500016,310,231)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,137, 35)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item3",0,313,234,68,63)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,65, 63)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"itemBkg4",1850500016,390,231)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,137, 35)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item4",0,393,234,68,63)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,65, 63)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"labelBkg",1850100031,109,179)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,167, 40)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"Lbl",150,177,100,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"任务奖励")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"operateBtn",1850000307,503,248)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"点击完成")
		GUI:WndSetSizeM(_GUIHandle,107, 47)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndSetTextOffset(_GUIHandle, 0, -6)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"closeBtn",1850000385,625,46)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,39, 39)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		GUI:WndRegistScript(_GUIHandle,1002, "ReceiveTaskDlg.CloseWnd")
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"contentBkg",0,140,70)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,480, 110)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600052, 1850600054, 1850600058, 1850600060, 1850600056,1850600053, 1850600059, 1850600055, 1850600057)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"descriptiveText",158,82,444,70)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:RichEditAppendString(_GUIHandle,"随便打几个字意思一下。啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊")
	end
	
	ReceiveTaskDlg.UIInit(_Parent)
end

--UI Logic Code Start
function ReceiveTaskDlg.UIInit(_Handle)
	ReceiveTaskDlg.handle = _Handle
	for i = 1, 4 do
		RDItemCtrlSetGUIDataPropByKeyName(_Handle,"item"..i,"霸业神剑",1,false)
	end
end

function ReceiveTaskDlg.CloseWnd()
	GUI:WndClose(ReceiveTaskDlg.handle)
end

ReceiveTaskDlg.main()




