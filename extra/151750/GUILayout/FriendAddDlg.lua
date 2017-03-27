FriendAddDlg = {}
function FriendAddDlg.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    _Parent = GUI:WndCreateWnd(_Parent,"FriendAddDlg",0,_DeviceSizeX / 2 - 253 ,100)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1850600016,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423,452,0)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FriendAddDlg.Close")
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"ImgBg",0,40,70)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,430, 140)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"EditBg",1830900036,95,125)
    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndSetSizeM(_GUIHandle,320, 46)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Tip",120,90,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"下面输入玩家名称(最多六个字)")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"PlayerName",100,134,200,20)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Title",253,32,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"添加好友")
        GUI:EditSetFontCenter(_GUIHandle)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"OK",1850000307,80,222)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"确定添加")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FriendAddDlg.AddFriend")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Cancel",1850000307,300,222)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"取消添加")
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FriendAddDlg.Close")
    end

    FriendAddDlg.UIInit(_Parent)
end

--UI Logic Code Start
FriendAddDlg.AddName = ""
function FriendAddDlg.UIInit(_Handle)
    FriendAddDlg.WndHandle = _Handle

    local BgImg1 = GUI:WndFindWindow(FriendAddDlg.WndHandle, "ImgBg")
    if BgImg1 then
        GUI:ImageSetAroundImage(BgImg1, 1850600025, 1850600027, 1850600031, 1850600033, 1850600029, 1850600026, 1850600032, 1850600028, 1850600030)
    end 
end

function FriendAddDlg.AddFriend()
    local _GUIHandle = GUI:WndFindChildM(FriendAddDlg.WndHandle, "PlayerName")
    if _GUIHandle ~= 0 then
        local name = GUI:EditGetTextM(_GUIHandle)
        FriendWindow.addFriend(name)
    end
    GUI:WndClose(FriendAddDlg.WndHandle)
end

function FriendAddDlg.Close()
    GUI:WndClose(FriendAddDlg.WndHandle)
end

FriendAddDlg.main()




