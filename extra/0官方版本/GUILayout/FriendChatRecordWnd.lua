FriendChatRecordWnd = {}
function FriendChatRecordWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1901300071,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,224, 340)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"FriendChatRecordRE",5,6,192,328)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"VScrollBar",1900100104,1900100108,1900100100,1900100120,203,7,328)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,308, 18)
        GUI:ScrollBarSetSetp(_GUIHandle,2)
    end
    
    
    
    FriendChatRecordWnd.UIInit(_Parent)
end

--UI Logic Code Start
function FriendChatRecordWnd.UIInit(_Handle)
end
FriendChatRecordWnd.main()




