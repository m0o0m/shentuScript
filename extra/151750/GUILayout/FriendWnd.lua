FriendWnd = {}
function FriendWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    _Parent = GUI:WndCreateWnd(_Parent,"FriendWnd",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end

    --左边背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage1",0,32,80)
    if _GUIHandle ~= 0 then
         GUI:WndSetSizeM(_GUIHandle,378, 367)
    end

    --右边背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage2",0,426,80)
    if _GUIHandle ~= 0 then
         GUI:WndSetSizeM(_GUIHandle,676, 434)
    end

    --右边中间背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage3",0,438,128)
    if _GUIHandle ~= 0 then
         GUI:WndSetSizeM(_GUIHandle,650, 320)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"MoreOptions",1850000307,852, 452)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"更多操作")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit",530,96,2,2)
    if _GUIHandle ~= 0 then
         GUI:EditSetTextM(_GUIHandle,"名称")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"LvEdit",670,96,2,2)
    if _GUIHandle ~= 0 then
         GUI:EditSetTextM(_GUIHandle,"等级")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"JobEdit",760,96,2,2)
    if _GUIHandle ~= 0 then
         GUI:EditSetTextM(_GUIHandle,"职业")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"StatusEdit",920,96,2,2)
    if _GUIHandle ~= 0 then
         GUI:EditSetTextM(_GUIHandle,"状态")
    end

    
    _GUIHandle = GUI:ButtonCreate(_Parent,"AddBtn",1850000307,154,456)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle, "添加好友")
    end
    
    --[[
    _GUIHandle = GUI:ButtonCreate(_Parent,"ViewBtn",1831800002,30,475)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"查看资料")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"DelBtn",1831800002,140,420)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"移除名单")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"TeamBtn",1831800002,140,475)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"邀请组队")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"PriBtn",1831800002,250,420)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"发起私聊")
    end

    ]]--

    --_GUIHandle = GUI:ListBoxCreate(_Parent, "FriendLB", 448, 140, 630, 298)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"FriendBtn",1850600012,52,101)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"我的好友")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"RecentContactBtn",1850600012,52,177)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle, "最近")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"BlackListBtn",1850600012,52,254)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle, "仇人")
    end  

    FriendWnd.UIInit(_Parent)
end

--UI Logic Code Start
function FriendWnd.UIInit(_Handle)
    
    FriendWnd.WndHandle = _Handle

    local BgImg1 = GUI:WndFindWindow(_Handle, "BgImage1")
    if BgImg1 then
        GUI:ImageSetAroundImage(BgImg1, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
    end 

    local BgImg2 = GUI:WndFindWindow(_Handle, "BgImage2")
    if BgImg2 then
        GUI:ImageSetAroundImage(BgImg2, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
    end 

    local BgImg3 = GUI:WndFindWindow(_Handle, "BgImage3")
    if BgImg3 then
        GUI:ImageSetAroundImage(BgImg3, 1850600025, 1850600027, 1850600031, 1850600033, 1850600029, 1850600026, 1850600032, 1850600028, 1850600030)
    end 

end
FriendWnd.main()




