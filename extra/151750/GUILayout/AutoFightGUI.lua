AutoFightGUI = {}
function AutoFightGUI.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
     _Parent = GUI:WndCreateWnd(_Parent,"AutoFightGUI",0,50,80)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUIBackImage",1831500008,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check0",1831800008,"",24,34)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check1",1831800008,"",146,34)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check2",1831800008,"",274,34)
    if _GUIHandle ~= 0 then
    end
        
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check3",1831800008,"",24,126)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check4",1831800008,"",24,232)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check5",1831800008,"",274,232)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check6",1831800008,"",24,270)
    if _GUIHandle ~= 0 then
    end
     
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check7",1831800008,"",274,270)
    if _GUIHandle ~= 0 then
    end
    
    --[[_GUIHandle = GUI:CheckBoxCreate(_Parent,"Check8",1831800008,"",500,62)
    if _GUIHandle ~= 0 then
    end
      
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check9",1831800008,"",500,148)
    if _GUIHandle ~= 0 then
    end]]--
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SaveSet",1831100015,160,360)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,194,182,160))
        GUI:WndSetTextM(_GUIHandle,"保存设置")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"StartFight",1831100015,430,360)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,194,182,160))
        GUI:WndSetTextM(_GUIHandle,"开始挂机")
    end
    
    --[[_GUIHandle = GUI:EditCreate(_Parent,"InputTick",500,188,100,30)
    if _GUIHandle ~= 0 then
        GUI:EditSetCanEdit(_GUIHandle, false) 
        GUI:EditSetTextM(_GUIHandle,"100")
    end]]--
    
    --[[_GUIHandle = GUI:ComboBoxCreate(_Parent,"ComboxSkill",0,490,130,0,0,150)
    if _GUIHandle ~= 0 then
    end]]--
    
    
    
    AutoFightGUI.UIInit(_Parent)
end

--UI Logic Code Start
function AutoFightGUI.UIInit(_Handle)
end
AutoFightGUI.main()




