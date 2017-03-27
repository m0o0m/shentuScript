AutoProtectItem = {}
function AutoProtectItem.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _Parent = GUI:WndCreateWnd(_Parent,"AutoProtectItem",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check",1831800008,"",0,5)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,27, 27)
    end
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox",0,32,30,0,0,150)
    if _GUIHandle ~= 0 then
    end
 
    _GUIHandle = GUI:ImageCreate(_Parent,"GUIImage0",1831800001,200,5)
    if _GUIHandle ~= 0 then
       GUI:ImageSetFitSize(_GUIHandle, true)  
       GUI:WndSetSizeM(_GUIHandle,60, 25)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUIImage1",1831800001,265,5)
    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)  
        GUI:WndSetSizeM(_GUIHandle,60, 25)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"InputValue",205,14,60,30)
    if _GUIHandle ~= 0 then
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetTextM(_GUIHandle,"100")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"InputTime",265,14,60,30)
    if _GUIHandle ~= 0 then
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetTextM(_GUIHandle,"1000")
    end
    
    
    
    AutoProtectItem.UIInit(_Parent)
end

--UI Logic Code Start
function AutoProtectItem.UIInit(_Handle)
end

AutoProtectItem.main()




