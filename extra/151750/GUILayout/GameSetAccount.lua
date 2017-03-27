GameSetAccount = {}
function GameSetAccount.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    _Parent = GUI:WndCreateWnd(_Parent,"GameSetAccount",0,0,0)
    if _Parent ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Edit1",130,124,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle, "当前账号:")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Edit2",130,171,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle, "角色名:")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Edit3",130,217,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle, "服务器:")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Account",230,124,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"RoleName",210,171,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Server",210,217,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle, "65010")
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"LineImage",1850600020,80,280)
    if _GUIHandle ~= 0 then
    end
     
    _GUIHandle = GUI:ButtonCreate(_Parent,"ExitToSelect",1850000307,122,316)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"重选角色")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"btn1",1850000307,282,316)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"二级密码")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"btn2",1850000307,442,316)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"服务条款")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"btn3",1850000307,602,316)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"隐私政策")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"btn4",1850000307,762,316)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"论坛")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"btn5",1850000307,922,316)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"官方网站")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"btn6",1850000307,122,394)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"客服")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"btn7",1850000307,282,394)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"注销账号")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ExitGame",1850000307,442,394)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"退出游戏")
    end

    GameSetAccount.UIInit(_Parent)
end

--UI Logic Code Start
function GameSetAccount.UIInit(_Handle)
    GameSetAccount.WndHandle = _Handle
    
end
GameSetAccount.main()




