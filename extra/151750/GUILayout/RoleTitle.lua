RoleTitle = {}
function RoleTitle.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _Parent = GUI:WndCreateWnd(_Parent,"RoleTitle",0,38,64)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1832500013,0,-16)
    if _GUIHandle ~= 0 then  
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"CurTitleEdit",100,40,180,30)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ShowTitle",1831800002,120,310)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"显示称号")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HideTitle",1831800002,230,310)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"隐藏称号")
    end

    _GUIHandle = GUI:ListBoxCreate(_Parent, "TitlesLB", 25, 100, 300, 200)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"CurTitleDescRE",22,354,280,60)
    if _GUIHandle ~= 0 then
    end
    
    RoleTitle.UIInit(_Parent)
end

--UI Logic Code Start
function RoleTitle.UIInit(_Handle)
end

RoleTitle.main()




