FashionEquiment = {}
function FashionEquiment.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_GUIHandle = GUI:WndCreateWnd(_Parent,"FashionWnd",0,0,0)
	if _GUIHandle ~= 0 then
		local _Equipment = GetWindow(_Parent, "RoleEquiment");
		if _Equipment ~= 0 then
			GUI:WndSetVisible(_Equipment, false);
		end
	end
	_Parent = _GUIHandle
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"RoleEquiment",1820400161,341,58)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FashionEquiment.RoleEquimentLBtnUP")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:CheckBoxCreate(_Parent,"ShowFashion",1900112013,"显示时装",170,382)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "FashionEquiment.FashionShowChange")
		GUI:WndSetTextM(_GUIHandle,"显示时装")
		GUI:WndSetTextColorM(_GUIHandle,4290950816)
		GUI:CheckBoxSetAutoChange(_GUIHandle,true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"FashionEquiment",-1,100,110,164,216)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbUp, "FashionEquiment.ItemOnRBTNUp")
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "FashionEquiment.ItemOnLBTNUp")
		GUI:WndSetHint(_GUIHandle,"时装")
		GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
	end
	

	FashionEquiment.UIInit(_Parent)
end

--UI Logic Code Start
FashionEquiment.WndHandle = 0
FashionEquiment.CurFashionItemGUID = ""
FashionEquiment.FashionSite = 18



function FashionEquiment.UIInit(_Handle)
	FashionEquiment.WndHandle = _Handle
	local _FashionEquimentHandle = GUI:WndFindWindow(_Handle, "FashionEquiment")
	if _FashionEquimentHandle ~= 0 then
		GUI:ItemCtrlSetItemDataAutoManager(_FashionEquimentHandle,true)
		GUI:ItemCtrlSetBigIcon(_FashionEquimentHandle, 2)
		GUI:ImageSetDrawCenter(_FashionEquimentHandle, true)
		GUI:WndAddTimerBrief(_FashionEquimentHandle,30,"FashionEquiment.OnUpdata")
		GUI:ItemCtrlSetBigIconOffset(_FashionEquimentHandle, 200, 215)

		if CL:GetPlayerSelfProperty32(181) then
			local _Gender = LuaRet
			if _Gender == 1 then
				GUI:ItemCtrlSetDefaultImage(_FashionEquimentHandle, 1990401001)
			else
				GUI:ItemCtrlSetDefaultImage(_FashionEquimentHandle, 1990401002)
			end	
		end

		local _FashionItemDataHandle = CL:GetEquimentItemDataPart(FashionEquiment.FashionSite)
		if _FashionItemDataHandle ~= 0 then
			GUI:ItemCtrlSetGUIData(_FashionEquimentHandle, _FashionItemDataHandle)
		end
	end

	local _ShowFashionHandle = GUI:WndFindWindow(_Handle, "ShowFashion")
	if _ShowFashionHandle ~= 0 then
		local _ShowFashion = CL:GetShowFashion()
		GUI:CheckBoxSetCheck(_ShowFashionHandle, _ShowFashion)
	end
end

FashionEquiment.main()
	
	
function FashionEquiment.FashionShowChange(_Handle,_Param)
	local _ShowFashion = GUI:CheckBoxGetCheck(_Handle)
	CL:ShowFashion(_ShowFashion)
end

	
	
function FashionEquiment.RoleEquimentLBtnUP(_Handle,_Param)
	local _ParentHandle = GUI:WndGetParentM(_Handle)
	if _ParentHandle ~= 0 then 
		GUI:WndClose(_ParentHandle)
	end
	local _Equipment = GetWindow(_ParentHandle, "parent,RoleEquiment");
	if _Equipment ~= 0 then
		GUI:WndSetVisible(_Equipment, true);
	end
end

function FashionEquiment.OnUpdata()
	local _FashionEquimentHandle = GUI:WndFindWindow(FashionEquiment.WndHandle, "FashionEquiment")
	if _FashionEquimentHandle ~= 0 then
		local _FashionEquimentGUID = CL:GetPlayerSelfEquipGUID(FashionEquiment.FashionSite)
		if _FashionEquimentGUID ~= "" then
			if FashionEquiment.CurFashionItemGUID ~= _FashionEquimentGUID then
				FashionEquiment.CurFashionItemGUID = _FashionEquimentGUID
				local _FashionItemDataHandle = CL:GetEquimentItemDataPart(FashionEquiment.FashionSite)
				GUI:ItemCtrlSetGUIData(_FashionEquimentHandle, _FashionItemDataHandle)
			end
		else
			GUI:ItemCtrlClearItemData(_FashionEquimentHandle)
			FashionEquiment.CurFashionItemGUID = 0
		end
	end
end

function FashionEquiment.ItemOnLBTNUp(_Handle,_Param)
	local ItemGUIData = CL:GetMouseGUIItemData()
	if ItemGUIData ~= 0 then
		CL:GetItemGUIDataPropByType(ItemGUIData, ITEMGUIDATA_ITEMGUID)
		local _ItemGUID = LuaRet
		CL:PlayerMoveItem(_ItemGUID, FashionEquiment.FashionSite)
		CL:ClearMouseGUIItemData()
	else
		local _FashionItemDataHandle = CL:GetEquimentItemDataPart(FashionEquiment.FashionSite)
		CL:SetMouseGUIItemData(_FashionItemDataHandle)
	end
end


function FashionEquiment.ItemOnRBTNUp(_Handle,_Param)
	local _FashionItemDataHandle = CL:GetEquimentItemDataPart(FashionEquiment.FashionSite)
	if _FashionItemDataHandle ~= 0 then
		if CL:GetItemGUIDataPropByType(_FashionItemDataHandle,ITEMGUIDATA_ITEMGUID) then
			local _ItemGUID = LuaRet
			if 	_ItemGUID ~= "" then
				local _PackageFreeSiteIdx = CL:PlayerGetPakageFreeSiteIdx()
				if _PackageFreeSiteIdx > 0 then
					CL:PlayerMoveItem(_ItemGUID, _PackageFreeSiteIdx + 22)
				end
			end
		end
	end
end