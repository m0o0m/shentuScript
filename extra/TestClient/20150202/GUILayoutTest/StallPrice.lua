StallPrice = {}
function StallPrice.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1931300005,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,251, 186)
    end
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check0",1930001000,"",22,51)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check1",1930001000,"",134,52)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Price",87,90,116,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"OK",1930001006,38,139)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"确定")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Cancle",1930001006,134,139)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"取消")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    StallPrice.UIInit(_Parent)
end

--UI Logic Code Start
function StallPrice.UIInit(_Handle)
	StallPrice.WndHandle = _Handle
	GUI:WndSetSizeM(StallPrice.WndHandle, 277, 211)
	GUI:WndSetMoveWithLBM(StallPrice.WndHandle)
end
StallPrice.main()