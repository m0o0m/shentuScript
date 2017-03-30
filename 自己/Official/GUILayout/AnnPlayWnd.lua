AnnPlayWnd = {}
function AnnPlayWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1904000007,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,282, 180)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"TitleEdit",68,41,144,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"AnnDescRichEdit",43,73,196,56)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    AnnPlayWnd.UIInit(_Parent)
end

--UI Logic Code Start
function AnnPlayWnd.UIInit(_Handle)
end
AnnPlayWnd.main()