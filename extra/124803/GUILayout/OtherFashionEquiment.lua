OtherFashionEquiment = {}
function OtherFashionEquiment.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_GUIHandle = GUI:WndCreateWnd(_Parent,"FashionWnd",0,0,0)
	if _GUIHandle ~= 0 then
	end
	_Parent = _GUIHandle
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"RoleEquiment",1820400161,320,70)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtherFashionEquiment.RoleEquimentLBtnUP")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"FashionEquiment",-1,90,136,164,216)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"ʱװ")
		GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
	end
	
	
	

	OtherFashionEquiment.UIInit(_Parent)
end

--UI Logic Code Start

OtherFashionEquiment.FashionSite = 18
function OtherFashionEquiment.UIInit(_Handle)
	local _Parent = GUI:WndGetParentM(_Handle);
	if _Parent ~= 0 then
		WndSetVisible(_Parent, "Equiment14", false);
		WndSetVisible(_Parent, "Equiment13", false);
		WndSetVisible(_Parent, "Equiment16", false);
		WndSetVisible(_Parent, "Equiment0", false);
		WndSetVisible(_Parent, "WingShow", false);
	end
	local _FashionEquimentHandle = GUI:WndFindWindow(_Handle, "FashionEquiment")
	if _FashionEquimentHandle ~= 0 then
		GUI:ItemCtrlSetItemDataAutoManager(_FashionEquimentHandle,true)
		GUI:ItemCtrlSetBigIcon(_FashionEquimentHandle, 2)
		GUI:ImageSetDrawCenter(_FashionEquimentHandle, true)
		GUI:WndSetSizeM(_FashionEquimentHandle, 164, 216)
		GUI:ItemCtrlSetBigIconOffset(_FashionEquimentHandle, 183, 224)

		local _OtherPlayerGUID = CL:GetViewEquipTarPlayerGUID()
		if CL:GetPlayerProperty32(_OtherPlayerGUID, 181) then
			local _Gender = LuaRet
			if _Gender == 1 then
				GUI:ItemCtrlSetDefaultImage(_FashionEquimentHandle, 1990401001)
			else
				GUI:ItemCtrlSetDefaultImage(_FashionEquimentHandle, 1990401002)
			end	
		end

		if CL:GetPlayerTargetEquipData() then
			local _FashionItemHandle = LuaRet[OtherFashionEquiment.FashionSite]
			if _FashionItemHandle ~= 0 then
				GUI:ItemCtrlSetGUIData(_FashionEquimentHandle, _FashionItemHandle)
			end
		end
	end
end
OtherFashionEquiment.main()


function OtherFashionEquiment.RoleEquimentLBtnUP(_Handle,_Param)
	local _ParentHandle = GUI:WndGetParentM(_Handle)
	if _ParentHandle ~= 0 then 
		local _Parent = GUI:WndGetParentM(_ParentHandle);
		GUI:WndClose(_ParentHandle)
		if _Parent ~= 0 then
			WndSetVisible(_Parent, "Equiment14", true);
			WndSetVisible(_Parent, "Equiment13", true);
			WndSetVisible(_Parent, "Equiment16", true);
			WndSetVisible(_Parent, "Equiment0", true);
			WndSetVisible(_Parent, "WingShow", true);
		end
	end
end