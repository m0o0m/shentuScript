StallLog = {}
function StallLog.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1931300002,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,220, 383)
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"LogText",15,40,174,322)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1930001002,190,6)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
    end
    
    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"VScrollBar",1930001010,1930001014,1930001022,1931100021,192,42,320)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,320, 14)
    end
    
    
    
    StallLog.UIInit(_Parent)
end

--UI Logic Code Start
function StallLog.UIInit(_Handle)
end
StallLog.main()