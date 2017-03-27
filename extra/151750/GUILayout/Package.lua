Package = {}
function Package.main()

	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0

	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()

	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage1",0,0,0)
	if _GUIHandle ~= 0 then
		 GUI:ImageSetAroundImage(_GUIHandle, 1850300016, 1850300018, 1850300022, 1850300024, 1850300020, 1850300017, 1850300023, 1850300019, 1850300021)
		 GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX, _DeviceSizeY)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage2",0,40,60)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle,1850700026,1850700028,1850700032,1850700034,1850700030,1850700027,1850700033,1850700029,1850700031)
		GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX-75, _DeviceSizeY-180)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage3",0,40,110)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle,1850400006,1850400008,1850400012,1850400014,1850400010,1850400007,1850400013,1850400009,1850400011)
		GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX-75, _DeviceSizeY-180)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423,_DeviceSizeX-68,8)
	if _GUIHandle ~= 0 then
			GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "Package.Close")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Page0",1851900001,630,65)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"一")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Page1",1851900001,749,65)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"二")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Page2",1851900001,869,65)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"三")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Page3",1851900001,989,65)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"四")
		
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Page4",1851900001,1109,65)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"五")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Baitan",1850000268,883,191)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"摆  摊")
		GUI:ButtonSetStateTextColor(_GUIHandle,0,MakeARGB(255, 244, 184, 114))
		GUI:ButtonSetStateTextColor(_GUIHandle,1,MakeARGB(255, 244, 184, 114))
		GUI:ButtonSetStateTextColor(_GUIHandle,2,MakeARGB(255, 244, 184, 114))
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"SettlePackage",1850000268,883,277)
	if _GUIHandle ~= 0 then
	GUI:WndSetTextM(_GUIHandle,"整  理")
		GUI:ButtonSetStateTextColor(_GUIHandle,0,MakeARGB(255, 244, 184, 114))
		GUI:ButtonSetStateTextColor(_GUIHandle,1,MakeARGB(255, 244, 184, 114))
		GUI:ButtonSetStateTextColor(_GUIHandle,2,MakeARGB(255, 244, 184, 114))
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Recycle",1850000268,883,361)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"装备回收")
		GUI:ButtonSetStateTextColor(_GUIHandle,0,MakeARGB(255, 244, 184, 114))
		GUI:ButtonSetStateTextColor(_GUIHandle,1,MakeARGB(255, 244, 184, 114))
		GUI:ButtonSetStateTextColor(_GUIHandle,2,MakeARGB(255, 244, 184, 114))
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "Package.OpenRecycle")
	end

	_GUIHandle = GUI:EditCreate(_Parent,"GUI_HEAD",547,15,80,20)
	if _GUIHandle ~= 0 then
		GUI:EditSetFontM(_GUIHandle,"SIMLI18")
		GUI:EditSetTextM(_GUIHandle,"背 包")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 198, 165, 55))
	end 
	
	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_HEAD_LEFT",1850100038,445,15)
	if _GUIHandle ~= 0 then
		
	end
	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_HEAD_RIGHT",1850100039,615,15)
	if _GUIHandle ~= 0 then
		
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"GUIImage1",1850300005,60,78)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"金币")
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"GUIImage4",1852600016,200,78)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"绑定金币")
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"GUIImage3",1850300006,340,78)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"元宝")
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"GUIImage2",1850300007,480,78)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"绑定元宝")
	end

	_GUIHandle = GUI:EditCreate(_Parent,"YuanBao",380,80,80,20)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"0")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 198, 165, 55))
	end

	_GUIHandle = GUI:EditCreate(_Parent,"BindYuanBao",520,80,80,20)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"0")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 198, 165, 55))
	end

	_GUIHandle = GUI:EditCreate(_Parent,"YinLiang",100,80,80,20)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"0")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 198, 165, 55))
	end

	_GUIHandle = GUI:EditCreate(_Parent,"BindYinLiang",240,80,80,20)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextM(_GUIHandle,"0")
		GUI:WndSetHint(_GUIHandle,"绑定金币")
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 198, 165, 55))
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"GUIImage0",1850400024,793,126)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item0",1850400004,66,126,66,66)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item1",1850400004,156,126,66,66)
	if _GUIHandle ~= 0 then
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item2",1850400004,245,126,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item3",1850400004,335,126,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item4",1850400004,425,126,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item5",1850400004,515,126,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item6",1850400004,605,126,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item7",1850400004,695,126,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item8",1850400004,66,201,66,66)
    if _GUIHandle ~= 0 then
    end

	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item9",1850400004,156,201,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item10",1850400004,245,201,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item11",1850400004,335,201,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item12",1850400004,425,201,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item13",1850400004,515,201,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item14",1850400004,605,201,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item15",1850400004,695,201,66,66)
    if _GUIHandle ~= 0 then
    end
	
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item16",1850400004,66,276,66,66)
    if _GUIHandle ~= 0 then
    end

	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item17",1850400004,156,276,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item18",1850400004,245,276,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item19",1850400004,335,276,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item20",1850400004,425,276,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item21",1850400004,515,276,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item22",1850400004,605,276,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item23",1850400004,695,276,66,66)
    if _GUIHandle ~= 0 then
    end
	
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item24",1850400004,66,351,66,66)
    if _GUIHandle ~= 0 then
    end

	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item25",1850400004,156,351,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item26",1850400004,245,351,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item27",1850400004,335,351,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item28",1850400004,425,351,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item29",1850400004,515,351,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item30",1850400004,605,351,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item31",1850400004,695,351,66,66)
    if _GUIHandle ~= 0 then
    end
	
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item32",1850400004,66,426,66,66)
    if _GUIHandle ~= 0 then
    end

	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item33",1850400004,156,426,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item34",1850400004,245,426,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item35",1850400004,335,426,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item36",1850400004,425,426,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item37",1850400004,515,426,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item38",1850400004,605,426,66,66)
    if _GUIHandle ~= 0 then
    end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item39",1850400004,695,426,66,66)
    if _GUIHandle ~= 0 then
    end
	
    Package.UIInit(_Parent)
end

--UI Logic Code Start
Package.wndHandle = 0
function Package.UIInit(_Handle)
dbg("Package.UIInit")
	Package.wndHandle = _Handle
	for i = 0,4 do 
		local handle = GetWindow(_Handle,"Page"..i)
		if handle ~= 0 then 
			GUI:ButtonSetStateTextColor(handle,0,MakeARGB(255, 244, 184, 114))
			GUI:ButtonSetStateTextColor(handle,1,MakeARGB(255, 244, 184, 114))
			GUI:ButtonSetStateTextColor(handle,2,MakeARGB(255, 244, 184, 114))
		end
	end
	for i = 0,10 do 
		
		RDItemCtrlSetGUIDataPropByKeyName(_Handle, "Item"..i, "霸业神剑", 1, false)
		dbg("RDItemCtrlSetGUIDataPropByKeyName")
	end
	for i=11,20 do 
	
		RDItemCtrlSetGUIDataPropByItemID(_Handle, "Item"..i, 10052, 1, false)
		dbg("RDItemCtrlSetGUIDataPropByItemID")
	end
end

function Package.OpenRecycle()
	UI:Lua_OpenWindow(0 , "RecycleWnd.lua")
end

function Package.Close(_Handle)
	GUI:WndClose(Package.wndHandle)
end

Package.main()