FriendItem = {}
function FriendItem.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    _Parent = GUI:WndCreateWnd(_Parent,"FriendItem",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,610, 30)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"HighLightImg",1850400005,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,610, 30)
        GUI:ImageSetFitSize(_GUIHandle, true)   
    end

    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit",60,0,100,40)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"名称")
        GUI:EditSetFontCenter(_GUIHandle)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"LvEdit",218,0,100,40)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"100")
        GUI:EditSetFontCenter(_GUIHandle)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"JobEdit",338,0,100,40)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"战士")
        GUI:EditSetFontCenter(_GUIHandle)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"StatusEdit",500,0,100,40)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"状态")
        GUI:EditSetFontCenter(_GUIHandle)
    end

    FriendItem.UIInit(_Parent)
end

--UI Logic Code Start
function FriendItem.UIInit(_Handle)    
    FriendItem.WndHandle = _Handle
end


FriendItem.main()

