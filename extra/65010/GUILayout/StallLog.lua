StallLog = {}
function StallLog.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1802000002,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,392, 524)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Title",1801500062,142,0)
    if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,109, 27)
    end
		
    _GUIHandle = GUI:RichEditCreate(_Parent,"LogText",21,57,334,420)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1800000043,360,3)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
    end
    
    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"VScrollBar",1930001010,1930001014,1930001022,1931100021,355,57,420)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,420, 14)
    end
    
    
    
        StallLog.UIInit(_Parent)
end

--UI Logic Code Start
function StallLog.UIInit(_Handle)
end
StallLog.main()