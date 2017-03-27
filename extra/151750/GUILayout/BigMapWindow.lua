BigMapWindow = {}
function BigMapWindow.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()
 
    --大背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage",0,0,0)
    if _GUIHandle ~= 0 then
       GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX, _DeviceSizeY)
    end

    --第二层背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage0",0,31,56)
    if _GUIHandle ~= 0 then
         GUI:WndSetSizeM(_GUIHandle,1074, 454)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage1",0,34,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,676, 446)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage2",0,724,106)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,378, 400)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"wing_Lefttitle",1850100038,415,20)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"title_edit",515,24, 100,20)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:EditSetTextM(_GUIHandle,"当前地图")
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"wing_Righttitle",1850100039,625,20)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CloseBtn",1850000423,_DeviceSizeX - 70, 8)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,52, 52)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"NPCFilterBtn",1851900001,748,64)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"NPC")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BigMapCtrl",0,48,104)
    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndSetSizeM(_GUIHandle,650, 394)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"NearbyPlayerFilterBtn",1851900001,866,64)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"附近玩家")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"MapNameBgImg",1851900000,80,66)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"RolePosEdit",380,74,200,20)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"MapNameEdit",200,74,200,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextColor(_GUIHandle, 4292121907)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end

     -- _GUIHandle = GUI:ListBoxCreate(_Parent, "MonsNPCNearbyPlayerLB", 752,128, 360, 380)
     -- if _GUIHandle ~= 0 then
     -- end
    
    BigMapWindow.UIInit(_Parent)
end

BigMapWindow.WndHandle = 0
BigMapWindow.ClipWndHandle = 0
BigMapWindow.jumpAndNpcList = {}
--UI Logic Code Start
function BigMapWindow.UIInit(_Handle)
    BigMapWindow.WndHandle = _Handle
    local BgImg = GUI:WndFindWindow(BigMapWindow.WndHandle, "BgImage")
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
        GUI:ImageSetAroundImage(BgImg2, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
    end

    local _ClipWndHandle = GUI:WndCreateWnd(_Handle,"BigMapWndClipWnd",0,740,120)
    if _ClipWndHandle then
        GUI:WndSetFlagsM(_ClipWndHandle, flg_wndBase_useBkBuffer)
        GUI:WndSetSizeM(_ClipWndHandle, 360, 360)
        BigMapWindow.ClipWndHandle = _ClipWndHandle
    end

    UI:Lua_AddDelayTask("BigMapWindow.CreateUI()", 100, 1)
end


function BigMapWindow.GetJumpAndNpcListCount()
    local listCount = 0
    CL:GetJumpAndNPCStringList()
        local tb = LuaRet
        local i = 1
        for i = 1, #tb do
            -- msg("v = "..tostring(LuaRet[i]))
            -- msg("i = "..tostring(i))
            BigMapWindow.jumpAndNpcList[i] = LuaRet[i]
            listCount = listCount + 1
        end
    
    --msg("leng = "..listCount)
    return listCount
end

function BigMapWindow.CreateUI()
    local listCount = BigMapWindow.GetJumpAndNpcListCount()

    local _Parent = BigMapWindow.ClipWndHandle
    
    for i = 1, listCount do
        local intervalY = 71
        local indexStr = tostring(i - 1)
        local _GUIHandle = GUI:ButtonCreate(_Parent,"CellBackButton"..indexStr,1850600012,0,0 + intervalY * (i - 1))
        if _GUIHandle ~= 0 then
            GUI:WndSetParam(_GUIHandle, i-1)
            GUI:WndSetSizeM(_GUIHandle,337, 71)
            GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "BigMapWindow.SelNpcUp")
            dbg("dddddd = "..tostring(BigMapWindow.jumpAndNpcList[i]))
            -- if i == 1 then
            --     GUI:WndSetTextM(_GUIHandle, "云游散人")
            -- end

            -- if i == 2 then
            --     GUI:WndSetTextM(_GUIHandle, "巫山城跳转点")
            -- end
            
            GUI:WndSetTextM(_GUIHandle, BigMapWindow.jumpAndNpcList[i])
            
            
        end
    end
end

function BigMapWindow.SelNpcUp(_Handle)
    local text =  GUI:WndGetText(_Handle)
    CL:NPCListBoxOnLButtonUp(text)
end


BigMapWindow.main()




