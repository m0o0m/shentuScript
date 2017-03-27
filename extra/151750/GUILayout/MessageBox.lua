MessageBox_ = {}
function MessageBox_.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1800000280,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,277, 211)
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"MessageText",27,50,215,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"MessageBox_OK",1800000134,60,152)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"是")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,70, 37)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"MessageBox_Cancle",1800000134,145,152)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"否")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,70, 37)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"GUICheck",1932300020,"",58,109)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"MessageBox_Close",1800000043,234,4)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
    end
        MessageBox_.UIInit(_Parent)
end

--UI Logic Code Start
function MessageBox_.UIInit(_Handle)
end
MessageBox_.main()