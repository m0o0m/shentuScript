MessageBox_ = {}
function MessageBox_.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1804600011,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,256, 192)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent, "Title", 1801500066, 95, 2)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"MessageText",27,55,215,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"MessageBox_OK",1803700007,33,148)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"ÊÇ")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,88, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"MessageBox_Cancle",1803700007,136,148)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"·ñ")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,88, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"GUICheck",1932300020,"",58,109)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"MessageBox_Close",1800000068,224,6)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,24, 24)
    end
        MessageBox_.UIInit(_Parent)
end

--UI Logic Code Start
function MessageBox_.UIInit(_Handle)
end
MessageBox_.main()