FashionEquiment = {}
function FashionEquiment.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_GUIHandle = GUIWndCreateWnd(_Parent,"FashionWnd",1800900089,23,43)
	if _GUIHandle ~= 0 then
	end
	_Parent = _GUIHandle
	
	
	_GUIHandle = GUIButtonCreate(_Parent,"RoleEquiment",1800900090,188,17)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FashionEquiment.RoleEquimentLBtnUP")
		GUIButtonSetDownTextPosChange(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUICheckBoxCreate(_Parent,"ShowFashion",1900112013,"显示时装",53,290)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "FashionEquiment.FashionShowChange")
		GUIWndSetTextM(_GUIHandle,"显示时装")
		GUIWndSetTextColorM(_GUIHandle,4290950816)
		GUICheckBoxSetAutoChange(_GUIHandle,true)
	end
	
	
	_GUIHandle = GUIItemCtrlCreate(_Parent,"FashionEquiment",-1,12,18,164,216)
	if _GUIHandle ~= 0 then
		GUIWndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "FashionEquiment.ItemOnRBTNUp")
		GUIWndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FashionEquiment.ItemOnLBTNUp")
		GUIWndSetHint(_GUIHandle,"时装")
		GUIItemCtrlSetRBtnUse(_GUIHandle,false)
	end
	

	FashionEquiment.UIInit(_Parent)
end

--UI Logic Code Start
FashionEquiment.WndHandle = 0
FashionEquiment.CurFashionItemGUID = ""
FashionEquiment.FashionSite = 18



function FashionEquiment.UIInit(_Handle)
	FashionEquiment.WndHandle = _Handle
	local _FashionEquimentHandle = GUIWndFindWindow(_Handle, "FashionEquiment")
	if _FashionEquimentHandle ~= 0 then
		GUIItemCtrlSetItemDataAutoManager(_FashionEquimentHandle,true)
		GUIItemCtrlSetBigIcon(_FashionEquimentHandle, 2)
		GUIImageSetDrawCenter(_FashionEquimentHandle, true)
		GUIWndSetSizeM(_FashionEquimentHandle, 164, 216)
		GUIWndAddTimerBrief(_FashionEquimentHandle,30,"FashionEquiment.OnUpdata")
		GUIItemCtrlSetBigIconOffset(_FashionEquimentHandle, 114, 123)

		if CLGetPlayerSelfProperty32(181) then
			local _Gender = as3.tolua(LuaRet)
			if _Gender == 1 then
				GUIItemCtrlSetDefaultImage(_FashionEquimentHandle, 1990401001)
			else
				GUIItemCtrlSetDefaultImage(_FashionEquimentHandle, 1990401002)
			end	
		end

		local _FashionItemDataHandle = CLGetEquimentItemDataPart(FashionEquiment.FashionSite)
		if _FashionItemDataHandle ~= 0 then
			GUIItemCtrlSetGUIData(_FashionEquimentHandle, _FashionItemDataHandle)
		end
	end

	local _ShowFashionHandle = GUIWndFindWindow(_Handle, "ShowFashion")
	if _ShowFashionHandle ~= 0 then
		local _ShowFashion = CLGetShowFashion()
		GUICheckBoxSetCheck(_ShowFashionHandle, _ShowFashion)
	end
end

FashionEquiment.main()
	
	
function FashionEquiment.FashionShowChange(_Handle,_Param)
	local _ShowFashion = GUICheckBoxGetCheck(_Handle)
	CLShowFashion(_ShowFashion)
end

	
	
function FashionEquiment.RoleEquimentLBtnUP(_Handle,_Param)
	local _ParentHandle = GUIWndGetParentM(_Handle)
	if _ParentHandle ~= 0 then 
		GUIWndClose(_ParentHandle)
	end
end

function FashionEquiment.OnUpdata()
	local _FashionEquimentHandle = GUIWndFindWindow(FashionEquiment.WndHandle, "FashionEquiment")
	if _FashionEquimentHandle ~= 0 then
		local _FashionEquimentGUID = CLGetPlayerSelfEquipGUID(FashionEquiment.FashionSite)
		if _FashionEquimentGUID ~= "" then
			if FashionEquiment.CurFashionItemGUID ~= _FashionEquimentGUID then
				FashionEquiment.CurFashionItemGUID = _FashionEquimentGUID
				local _FashionItemDataHandle = CLGetEquimentItemDataPart(FashionEquiment.FashionSite)
				GUIItemCtrlSetGUIData(_FashionEquimentHandle, _FashionItemDataHandle)
			end
		else
			GUIItemCtrlClearItemData(_FashionEquimentHandle)
			FashionEquiment.CurFashionItemGUID = 0
		end
	end
end

function FashionEquiment.ItemOnLBTNUp(_Handle,_Param)
	local ItemGUIData = CLGetMouseGUIItemData()
	if ItemGUIData ~= 0 then
		CLGetItemGUIDataPropByType(ItemGUIData, ITEMGUIDATA_ITEMGUID)
		local _ItemGUID = as3.tolua(LuaRet)
		CLPlayerMoveItem(_ItemGUID, FashionEquiment.FashionSite)
		CLClearMouseGUIItemData()
	else
		local _FashionItemDataHandle = CLGetEquimentItemDataPart(FashionEquiment.FashionSite)
		CLSetMouseGUIItemData(_FashionItemDataHandle)
	end
end


function FashionEquiment.ItemOnRBTNUp(_Handle,_Param)
	local _FashionItemDataHandle = CLGetEquimentItemDataPart(FashionEquiment.FashionSite)
	if _FashionItemDataHandle ~= 0 then
		if CLGetItemGUIDataPropByType(_FashionItemDataHandle,ITEMGUIDATA_ITEMGUID) then
			local _ItemGUID = as3.tolua(LuaRet)
			if 	_ItemGUID ~= "" then
				local _PackageFreeSiteIdx = CLPlayerGetPakageFreeSiteIdx()
				if _PackageFreeSiteIdx > 0 then
					CLPlayerMoveItem(_ItemGUID, _PackageFreeSiteIdx + 22)
				end
			end
		end
	end
end
	
	
