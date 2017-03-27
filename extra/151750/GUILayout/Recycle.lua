Recycle = {}
function Recycle.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    _Parent = GUI:WndCreateWnd(_Parent,"Recycle",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,0, 0)
    end

    --大背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage",0,0,0)
    if _GUIHandle ~= 0 then
       GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX, _DeviceSizeY)
    end

    --第二层背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage0",0,30,64)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,1076, 446)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage1",0,54,82)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,512, 342)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage2",0,570,82)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,512, 342)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"wing_Lefttitle",1850100038,415,20)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"title_edit",568,34,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:EditSetTextM(_GUIHandle,"回 收")
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"wing_Righttitle",1850100039,625,20)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"LTitleImg",1850500021,100,86)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Ltitle_edit",300,108,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:EditSetTextM(_GUIHandle,"背 包")
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"RTitleImg",1850500021,628,86)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Rtitle_edit",828,108,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:EditSetTextM(_GUIHandle,"XXX")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423,_DeviceSizeX - 70, 8)
    if _GUIHandle ~= 0 then
        --GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Recycle.closeWnd")
    end
    
    Recycle.UIInit(_Parent)
end

--UI Logic Code Start

Recycle.WndHandle = 0
function Recycle.UIInit(_Handle)
    Recycle.WndHandle = _Handle 
    --CenterWnd(Recycle.WndHandle)
    local BgImg = GUI:WndFindWindow(Recycle.WndHandle, "BgImage")
    if BgImg then
        GUI:ImageSetAroundImage(BgImg, 1850300016, 1850300018, 1850300022, 1850300024, 1850300020, 1850300017, 1850300023, 1850300019, 1850300021)
    end
    --第二层背景
    BgImg = GUI:WndFindWindow(Recycle.WndHandle, "BgImage0")
    if BgImg then
        GUI:ImageSetAroundImage(BgImg, 1850700035, 1850700037, 1850700041, 1850700043, 1850700039, 1850700036, 1850700042, 1850700038, 1850700040)
    end 

    BgImg = GUI:WndFindWindow(Recycle.WndHandle, "BgImage1")
    if BgImg then
        GUI:ImageSetAroundImage(BgImg, 1850900016, 1850900018, 1850900022, 1850900024, 1850900020, 1850900017, 1850900023, 1850900019, 1850900021)
    end 

    BgImg = GUI:WndFindWindow(Recycle.WndHandle, "BgImage2")
    if BgImg then
        GUI:ImageSetAroundImage(BgImg, 1850900016, 1850900018, 1850900022, 1850900024, 1850900020, 1850900017, 1850900023, 1850900019, 1850900021)
    end 
end


Recycle.main()