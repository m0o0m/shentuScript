DealerWnd = {}
function DealerWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    _Parent = GUI:WndCreateWnd(_Parent,"DealerWnd",0,0,0)
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

    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage2",0,46,130)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,1048, 316)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"GoldImg",1850300005,45,32)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"GoldEdit",90,32,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"YuanBaoImg",1850300006,195,32)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"IngotEdit",240,32,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BindYuanBaoImg",1850300007,345,32)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"BindIngotEdit",390,32,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"button1",1850900000,477,4)
    if _GUIHandle ~= 0 then
       -- GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerWnd.XueFu")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"button2",1850900004,625,4)
    if _GUIHandle ~= 0 then
       -- GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerWnd.HuDun")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"button3",1850900008,773,4)
    if _GUIHandle ~= 0 then
       -- GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerWnd.BaoShi")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"button4",1850900012,921,4)
    if _GUIHandle ~= 0 then
       -- GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerWnd.HunZhu")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423,_DeviceSizeX - 70, 8)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BTN_SELLLIST",1832800011,55,80)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"寄售列表")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BTN_BUYLIST",1832800011,155,80)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"收购列表")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BTN_MINELIST",1832800011,255,80)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"我的交易")
    end
    
    DealerWnd.UIInit(_Parent)
end

--UI Logic Code Start
function DealerWnd.UIInit(_Handle)
    DealerWnd.WndHandle = _Handle

    
    local _EditHandle = GUI:WndFindWindow(DealerWnd.WndHandle, "GoldEdit")
    if _EditHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty64(ROLE_PROP64_GOLD) then 
            Property = LuaRet
        end  
         GUI:EditSetTextM(_EditHandle,Property)   
    end

    _EditHandle = GUI:WndFindWindow(DealerWnd.WndHandle, "IngotEdit")
    if _EditHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty64(ROLE_PROP64_INGOT) then 
            Property = LuaRet
        end  
         GUI:EditSetTextM(_EditHandle,Property)   
    end

    _EditHandle = GUI:WndFindWindow(DealerWnd.WndHandle, "BindIngotEdit")
    if _EditHandle ~= 0 then
        local Property = 0
        if CL:GetPlayerSelfProperty64(ROLE_PROP64_BIND_INGOT) then 
            Property = LuaRet
        end  
         GUI:EditSetTextM(_EditHandle,Property)   
    end
    
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

    local BgImg2 = GUI:WndFindWindow(_Handle, "BgImage2")
    if BgImg2 then
        GUI:ImageSetAroundImage(BgImg2, 1850600025, 1850600027, 1850600031, 1850600033, 1850600029, 1850600026, 1850600032, 1850600028, 1850600030)
    end 
end
DealerWnd.main()




