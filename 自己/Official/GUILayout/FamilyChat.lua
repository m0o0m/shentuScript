FamilyChat = {}
function FamilyChat.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1931000005,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,568, 322)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"ChatContentRE",12,13,523,294)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"ChatVScrBar",1930001010,1930001014,1930001022,1931100021,543,11,296)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,296, 14)
        GUI:ScrollBarSetSetp(_GUIHandle,2)
    end
    
    
    FamilyChat.UIInit(_Parent)
end

--UI Logic Code Start
function FamilyChat.UIInit(_Handle)
end
FamilyChat.main()




