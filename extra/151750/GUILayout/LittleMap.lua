LittleMap = {}
function LittleMap.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

	local _DiffX = _DeviceSizeX - 200
	local _DiffY = 4
    if _Parent ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"BigMap",1850000020, _DiffX, _DiffY)
    if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 200, 70)
    end

	_GUIHandle = GUI:EditCreate(_Parent,"MapName", _DiffX + 40, _DiffY + 12, 127, 18) 
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255, 0, 255, 12))
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end    

	_GUIHandle = GUI:EditCreate(_Parent,"ZoneInfo", _DiffX + 17, _DiffY + 38, 127, 18)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255,0,255,0)) 
    end

	_GUIHandle = GUI:EditCreate(_Parent,"PlayerPos", _DiffX + 90, _DiffY + 38, 127, 18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255, 153,	 153, 0))
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
	
	
    
    LittleMap.UIInit(_Parent)
end

--UI Logic Code Start
function LittleMap.UIInit(_Handle)
	LittleMap._wnd = _Handle
end

function LittleMap.AddActivityMagic()
	local handle = GetWindow(LittleMap._wnd, "activityMagic")
	if handle ~= 0 then
        GUI:WndSetVisible(handle, true)
	end
end

function LittleMap.DelActivityMagic()
end

function LittleMap.HideActivitySchedule()

end

function LittleMap.ShowActivitySchedule()

end

LittleMap.main()




