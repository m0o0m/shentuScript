AutoFightProtect = {}
function AutoFightProtect.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _Parent = GUI:WndCreateWnd(_Parent,"AutoFightProtect",0,50,60)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
     
    _GUIHandle = GUI:ImageCreate(_Parent,"GUIimage3",1831500007,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check0",1831800008,"",14,378)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check1",1831800008,"",362,378)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check2",1831800008,"",275,-4)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SaveSet",1831100015,420,320)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,194,182,160))
        GUI:WndSetTextM(_GUIHandle,"保存设置")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"StartFight",1831100015,560,320)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,194,182,160))
        GUI:WndSetTextM(_GUIHandle,"开始挂机")
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUIimage0",1831800001,115,378)
    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)  
        GUI:WndSetSizeM(_GUIHandle,60, 25)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUIimage1",1831800001,460,378)
    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)  
       GUI:WndSetSizeM(_GUIHandle,60, 25)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Input0",120,389,100,30)
    if _GUIHandle ~= 0 then
       GUI:EditSetCanEdit(_GUIHandle, false) 
        GUI:EditSetTextM(_GUIHandle,"100")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Input1",465,389,100,30)
    if _GUIHandle ~= 0 then
       GUI:EditSetCanEdit(_GUIHandle, false) 
        GUI:EditSetTextM(_GUIHandle,"100")
    end
    
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox0",0,180,405,0,0,150)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox1",0,530,405,0,0,150)
    if _GUIHandle ~= 0 then
    end
    
    
    
    AutoFightProtect.UIInit(_Parent)
end

--UI Logic Code Start
function AutoFightProtect.UIInit(_Handle)
end
AutoFightProtect.main()




