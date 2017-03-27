ExtPakageDlg = {}
function ExtPakageDlg.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"ExtPakageDlg",0,34,500)
    if _Parent ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1832800018,0,0)
    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndSetSizeM(_GUIHandle,340, 150)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1832500014,290,5)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item0",0,20,73,64,64)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item1",0,95,73,64,64)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item2",0,170,73,64,64)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item3",0,245,73,64,64)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"",120,25,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"请放入扩展道具")
    end
    
    ExtPakageDlg.UIInit(_Parent)
end

--UI Logic Code Start
function ExtPakageDlg.UIInit(_Handle)
end
ExtPakageDlg.main()




