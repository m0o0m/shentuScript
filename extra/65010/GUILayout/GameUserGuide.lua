GameUserGuide = {}
function GameUserGuide.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"DescBk",1801700003,1,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,585, 305)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Tree",0,5,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,122, 272)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"ItemName",239,28,238,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"ItemDesc",154,57,386,238)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"ScrollBar",1800000085,1800000089,1800000001,1800000005,555,56,240)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,240, 15)
    end
    
    
    
    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"TreeScrollBar",1800000085,1800000089,1800000001,1800000005,128,21,272)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,272, 15)
    end
    
    
        GameUserGuide.UIInit(_Parent)
end

--UI Logic Code Start
function GameUserGuide.UIInit(_Handle)
end
GameUserGuide.main()




