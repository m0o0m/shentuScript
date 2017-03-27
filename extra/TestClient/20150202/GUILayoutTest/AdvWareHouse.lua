AdvWareHouse = {}


function AdvWareHouse.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = _Parent

    local _BackImage = GUI:ImageCreate(_GUIHandle, "GUI_2", 1930400002, 0, -2)
    if _BackImage ~= 0 then
    end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1900111000,378,6)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "AdvWareHouse.CloseOLBtn")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"ToShopMall",1930001006,80,220)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle, "前往商城")
		local _TextColor = CL:MakeARGB(255, 194,182,160)
		GUI:WndSetTextColorM(_GUIHandle,_TextColor)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "AdvWareHouse.GameMallOLBtn")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"SortOut",1930001006,265,220)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle, "仓库整理")
		local _TextColor = CL:MakeARGB(255, 194,182,160)
		GUI:WndSetTextColorM(_GUIHandle,_TextColor)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "AdvWareHouse.SortOutOLBtn")
	end

	local _PageYPos = 30;
	_GUIHandle = GUI:ButtonCreate(_Parent,"Page0",1930100005,-25,_PageYPos)
	if _GUIHandle ~= 0 then
		GUI:ButtonSetIsActivePageBtn(_GUIHandle,true)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "AdvWareHouse.PageOnLBtn")
	end
	_PageYPos = _PageYPos + 40

	_GUIHandle = GUI:ButtonCreate(_Parent,"Page1",1930100009,-25,_PageYPos)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "AdvWareHouse.PageOnLBtn")
	end
	_PageYPos = _PageYPos + 40

	_GUIHandle = GUI:ButtonCreate(_Parent,"Page2",1930100013,-25,_PageYPos)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "AdvWareHouse.PageOnLBtn")
	end
	_PageYPos = _PageYPos + 40

	_GUIHandle = GUI:ButtonCreate(_Parent,"Page3",1930100017,-25,_PageYPos)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "AdvWareHouse.PageOnLBtn")
	end
	_PageYPos = _PageYPos + 40

	for _YIdx = 1, 4 do
		for _XIdx = 1, 10 do
			local _ItemIdx = (_YIdx - 1) * 10 + (_XIdx - 1)
			local _ItemID = "Item".._ItemIdx
			local _XPos = (_XIdx - 1) * 37 + 23
			local _YPos = (_YIdx - 1) * 37 + 46
			_GUIHandle = GUI:ItemCtrlCreate(_Parent,_ItemID,0,_XPos,_YPos,34,34)
			if _GUIHandle ~= 0 then
				
			end
		end
	end
	AdvWareHouse.UIInit(_Parent)
end

--UI Logic Code Start
AdvWareHouse.WndHandle = 0
function AdvWareHouse.UIInit(_Handle)
	AdvWareHouse.WndHandle = _Handle
	local _Parent = _Handle

end

AdvWareHouse.main()


function AdvWareHouse.CloseOLBtn(_Handle,_Param)
	GUI:WndClose(AdvWareHouse.WndHandle)
end


function AdvWareHouse.GameMallOLBtn(_Handle,_Param)
	CL:OpenGameFormDlg("商城",-1,-1);	
end


function AdvWareHouse.SortOutOLBtn(_Handle,_Param)
	CL:DoItemArrange(2)
end


function AdvWareHouse.PageOnLBtn(_Handle,_Param)
	for _PageIdx = 0, 3 do 
		local _PageBtnID = "Page".._PageIdx
		local _BtnHandle = GUI:WndFindChildM(AdvWareHouse.WndHandle, _PageBtnID)
		if _BtnHandle ~= 0 then
			GUI:ButtonSetIsActivePageBtn(_BtnHandle, false)
		end
	end

	local _PageID = GUI:WndGetParam(_Handle)
	local _PageBtnID = "Page".._PageID
	local _BtnHandle = GUI:WndFindChildM(AdvWareHouse.WndHandle, _PageBtnID)
	if _BtnHandle ~= 0 then
		GUI:ButtonSetIsActivePageBtn(_BtnHandle, true)
		GUI:WndSetParam(AdvWareHouse.WndHandle, _PageID)
	end
end

