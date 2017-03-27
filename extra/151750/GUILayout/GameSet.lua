GameSet = {}
function GameSet.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    _Parent = GUI:WndCreateWnd(_Parent,"GameSet",0,0,0)
    if _Parent ~= 0 then
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

    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage1",0,32,80)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,1074, 434)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"GameSetAccount",1850800016,746, 5)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"GameHelp",1850800028,890, 5)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423,_DeviceSizeX - 70, 8)
    if _GUIHandle ~= 0 then
    end
    
    GameSet.UIInit(_Parent)
end

--UI Logic Code Start
function GameSet.UIInit(_Handle)
    GameSet.WndHandle = _Handle
     local BgImg = GUI:WndFindWindow(_Handle, "BgImage")
    if BgImg then
        GUI:ImageSetAroundImage(BgImg, 1850300016, 1850300018, 1850300022, 1850300024, 1850300020, 1850300017, 1850300023, 1850300019, 1850300021)
    end

    --第二层背景
    local BgImg0 = GUI:WndFindWindow(_Handle, "BgImage0")
    if BgImg0 then
        GUI:ImageSetAroundImage(BgImg0, 1850300025, 1850300027, 1850300031, 1850300033, 1850300029, 1850300026, 1850300032, 1850300028, 1850300030)
    end 

     local BgImg1 = GUI:WndFindWindow(_Handle, "BgImage1")
    if BgImg1 then
        GUI:ImageSetAroundImage(BgImg1, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
    end 
end
GameSet.main()




