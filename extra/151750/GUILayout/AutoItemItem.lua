AutoItemItem = {}
function AutoItemItem.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:EditCreate(_Parent,"ItemNameEdit", 80,55, 0, 0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"HighLevelCheck",1831800008,"",251,42)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"AutoPickCheck",1831800008,"",412,42)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:CheckBoxCreate(_Parent,"AutoShowNameCheck",1831800008,"",576,42)
    if _GUIHandle ~= 0 then
    end

    AutoItemItem.UIInit(_Parent)
end

--UI Logic Code Start
function AutoItemItem.UIInit(_Handle)
end
AutoItemItem.main()




