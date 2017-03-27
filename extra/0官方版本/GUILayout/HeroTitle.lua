HeroTitle = {}
function HeroTitle.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1900800001,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,246, 350)
    end
    
    
    _GUIHandle = GUI:ListBoxCreate(_Parent,"TitlesLB",6,38,233,206)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"CurTitleEdit",91,8,116,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ShowTitle",1900800020,101,249)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,68, 24)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HideTitle",1900800024,171,248)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,68, 24)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"CurTitleDescRE",9,277,228,56)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    HeroTitle.UIInit(_Parent)
end

--UI Logic Code Start
function HeroTitle.UIInit(_Handle)
end
HeroTitle.main()