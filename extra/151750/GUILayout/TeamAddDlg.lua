TeamAddDlg = {}
function TeamAddDlg.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _Parent = GUI:WndCreateWnd(_Parent,"TeamAddDlg",0,30,320)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1830800034,0,0)
    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)    
        GUI:WndSetSizeM(_GUIHandle,300, 200)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1832500014,242, 0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"GUIimage0",1830900036,40,75)
    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)    
        GUI:WndSetSizeM(_GUIHandle,220, 40)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"PlayerName",45,85,200,30)
    if _GUIHandle ~= 0 then
    end  

      _GUIHandle = GUI:EditCreate(_Parent,"StaticPlayerName",20,40,0,0)
    if _GUIHandle ~= 0 then
         GUI:EditSetCanEdit(_GUIHandle, false)
         GUI:EditSetTextM(_GUIHandle,"请输入要添加的玩家姓名")
    end 
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"OK",1831100015,20,140)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"确定")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Cancel",1831100015,160,140)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"关闭")
    end
    
    TeamAddDlg.UIInit(_Parent)
end

--UI Logic Code Start
function TeamAddDlg.UIInit(_Handle)
end
TeamAddDlg.main()




