SocialWindow = {}
function SocialWindow.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    _Parent = GUI:WndCreateWnd(_Parent,"SocialWindow",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end

    --大背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage",0,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX, _DeviceSizeY)
    end

    --第二层背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage0",0,17,63)
    if _GUIHandle ~= 0 then
         GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX - 34, _DeviceSizeY - 80)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"MailPageBtn",1850600000,586,5)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"FriendPageBtn",1850600004,742,4)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"FamilyPageBtn",1850600008,895,4)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423,_DeviceSizeX - 70, 8)
    if _GUIHandle ~= 0 then
    end


    SocialWindow.UIInit(_Parent)
end

--UI Logic Code Start
function SocialWindow.UIInit(_Handle)
    SocialWindow.WndHandle = _Handle
    local BgImg = GUI:WndFindWindow(SocialWindow.WndHandle, "BgImage")
    if BgImg then
        GUI:ImageSetAroundImage(BgImg, 1850300016, 1850300018, 1850300022, 1850300024, 1850300020, 1850300017, 1850300023, 1850300019, 1850300021)
    end

    --第二层背景
    local BgImg0 = GUI:WndFindWindow(_Handle, "BgImage0")
    if BgImg0 then
        GUI:ImageSetAroundImage(BgImg0, 1850300025, 1850300027, 1850300031, 1850300033, 1850300029, 1850300026, 1850300032, 1850300028, 1850300030)
    end 
end
SocialWindow.main()




