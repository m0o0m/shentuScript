AutoFightItem = {}
function AutoFightItem.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _Parent = GUI:WndCreateWnd(_Parent,"AutoFightItem",0,50,80)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUIBackImage",1831500009,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ComboBoxCreate(_Parent,"ComboBox",0,140,312,0,0,150)
    if _GUIHandle ~= 0 then
    end

      _GUIHandle = GUI:EditCreate(_Parent,"Edit",316,282,100,30)
    if _GUIHandle ~= 0 then
    end
    

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check0",1831800008,"",440,282)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check1",1831800008,"",558,282)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SaveSet",1831100015,360,336)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,194,182,160))
        GUI:WndSetTextM(_GUIHandle,"保存设置")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"StartFight",1831100015,530,336)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,194,182,160))
        GUI:WndSetTextM(_GUIHandle,"开始挂机")
    end
    
    AutoFightItem.UIInit(_Parent)
end

--UI Logic Code Start
function AutoFightItem.UIInit(_Handle)
end
AutoFightItem.main()




