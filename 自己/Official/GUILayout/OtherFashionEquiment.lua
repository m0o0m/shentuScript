OtherFashionEquiment = {}
function OtherFashionEquiment.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_GUIHandle = GUI:WndCreateWnd(_Parent,"FashionWnd",1930200125,15,56)
	if _GUIHandle ~= 0 then
	end
	_Parent = _GUIHandle
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"RoleEquiment",1930200142,188,17)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtherFashionEquiment.RoleEquimentLBtnUP")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"FashionEquiment",-1,23,40,164,216)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"ʱװ")
		GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
	end
	
	
	

	OtherFashionEquiment.UIInit(_Parent)
end

--UI Logic Code Start

OtherFashionEquiment.FashionSite = 18
function OtherFashionEquiment.UIInit(_Handle)
	local _FashionEquimentHandle = GUI:WndFindWindow(_Handle, "FashionEquiment")
	if _FashionEquimentHandle ~= 0 then
		GUI:ItemCtrlSetItemDataAutoManager(_FashionEquimentHandle,true)
		GUI:ItemCtrlSetBigIcon(_FashionEquimentHandle, 2)
		GUI:ImageSetDrawCenter(_FashionEquimentHandle, true)
		GUI:WndSetSizeM(_FashionEquimentHandle, 164, 216)
		GUI:ItemCtrlSetBigIconOffset(_FashionEquimentHandle, 116, 128)

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
		GUI:WndClose(_ParentHandle)
	end
end
	
	

	
	

	
	

	
	

	
	

	
	

	
	
