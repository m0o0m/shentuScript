InputBox = {}
function InputBox.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1931500010,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,265, 135)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"TextEdit",38,59,185,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextColor(_GUIHandle, MakeARGB(255, 210, 202, 102))
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ConfirmBtn",1930001006,55,92)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"»∑  »œ")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884516)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CancelBtn",1930001006,151,92)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"πÿ  ±’")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884516)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"TitleEdit",39,31,185,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetTextColor(_GUIHandle, MakeARGB(255, 210, 202, 102))
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CloseBtn",1930001002,234,6)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
    end
    
    InputBox.UIInit(_Parent)
end

--UI Logic Code Start
function InputBox.UIInit(_Handle)
end
InputBox.main()