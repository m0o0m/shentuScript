GameUserGuide = {}
function GameUserGuide.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"DescBk",1931100018,1,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,583, 262)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
	_GUIHandle = GUI:ImageCreate(_Parent,"Tree",0,5,11)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,122, 230)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"ItemName",239,16,238,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"ItemDesc",154,45,386,196)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end

    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"ScrollBar",1930001010,1930001014,1930001022,1930300015,555,44,200)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,200, 18)
    end
	
    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"TreeScrollBar",1930001010,1930001014,1930001022,1930300015,128,16,235)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,235, 18)
    end

    GameUserGuide.UIInit(_Parent)
end

--UI Logic Code Start
function GameUserGuide.UIInit(_Handle)
end
GameUserGuide.main()




