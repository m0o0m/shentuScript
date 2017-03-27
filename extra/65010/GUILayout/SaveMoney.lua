SaveMoney = {}
function SaveMoney.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"SaveMoney",1804600011,504,210)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,256, 192)
		GUI:WndSetIsESCClose(_Parent, true)
		GUI:WndSetMoveWithLBM(_Parent)
		GUI:WndSetMagicUI(_Parent,3)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"BackImg",1800800005,75,90)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,144, 22)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"closeWnd",1800000068,228,4)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "SaveMoney.WndClose")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,24, 24)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"Title",108,9,60,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294352189)
		GUI:EditSetTextM(_GUIHandle,"仓库")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"NameEdit1",25,92,100,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"countEdit",80,90,120,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetBNumber(_GUIHandle, true)
		GUI:EditSetMaxCharNum(_GUIHandle,15)
		GUI:EditSetMaxCharNum(_GUIHandle,15)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"saveMoney",1800000134,50,145)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "SaveMoney.Sure")
		GUI:WndSetTextM(_GUIHandle,"确  定")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,70, 37)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"drawMoney",1800000134,150,145)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "SaveMoney.WndClose")
		GUI:WndSetTextM(_GUIHandle,"取  消")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,70, 37)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	
	SaveMoney.UIInit(_Parent)
end

--UI Logic Code Start
SaveMoney.WndHandle = 0
SaveMoney.Type = 0

function SaveMoney.UIInit(_handle)
	SaveMoney.WndHandle = _handle
	GUI:WndSetSizeM(_handle, 277, 211)
	local wnd = GUI:WndFindWindow(SaveMoney.WndHandle, 'NameEdit1') 
	if _Type == 1 then
		GUI:EditSetTextM(wnd,"存款数：")
	else
		GUI:EditSetTextM(wnd,"取款数：")
	end
end

function SaveMoney.wndClose(_handle)
	local wnd = GUI:WndFindWindow(0, 'SaveMoney') 
	if wnd == 0 then
		SaveMoney = nil
	end
end

function SaveMoney.SetType(_Type)
	SaveMoney.Type=_Type
end

function SaveMoney.Sure()
	local wnd = GUI:WndFindWindow(SaveMoney.WndHandle, 'countEdit') 
	if SaveMoney.Type == 1 then
		CL:WareHouseSetGold(0, GUI:EditGetInt(wnd))
	else
		CL:WareHouseSetGold(1, GUI:EditGetInt(wnd))
	end
	GUI:WndClose(SaveMoney.WndHandle)
end

function SaveMoney.WndClose(_Handle,_Param)
	GUI:WndClose(SaveMoney.WndHandle)
end

SaveMoney.main()
