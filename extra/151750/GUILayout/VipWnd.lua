VipWnd = {}
function VipWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
        _Parent = GUI:WndCreateWnd(_Parent,"VipWnd",0,168,50)
    if _Parent ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1831100001,31,95)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,740, 400)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_HEAD",1831100000,31,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,739, 95)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"",1830900034,332,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,145, 31)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"",1830900040,220,75)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,538, 404)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1832500014,710,10)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,39, 39)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"VipBtn0",1830900035,52,90)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"购买VIP道具")
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,255,215,0))
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"VipBtn1",1830900035,52,125)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"VipBtn2",1830900035,52,160)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"VipBtn3",1830900035,52,195)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"VipBtn4",1830900035,52,230)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"VipBtn5",1830900035,52,265)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"VipBtn6",1830900035,52,300)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"VipBtn7",1830900035,52,335)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"VipBtn8",1830900035,52,370)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"VipBtn9",1830900035,52,405)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Vip0",1830900001,242,82)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Vip1",1830900001,288,82)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Vip2",1830900001,334,82)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Vip3",1830900001,380,82)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Vip4",1830900001,428,82)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Vip5",1830900001,474,82)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Vip6",1830900001,518,82)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Vip7",1830900001,562,82)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Vip8",1830900001,646,82)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Vip9",1830900001,698,82)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipItem0",0,242,220)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipItem1",0,328,220)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipItem2",0,414,220)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipItem3",0,500,220)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipItem4",0,586,220)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipItem5",0,672,220)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipItem6",0,242,330)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipItem7",0,328,330)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipItem8",0,414,330)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipItem9",0,500,330)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipItem10",0,586,330)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"VipItem11",0,672,330)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"VipItemName0",270,292,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:EditSetTextM(_GUIHandle,"")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"VipItemName1",356,292,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:EditSetTextM(_GUIHandle,"")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"VipItemName2",442,292,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:EditSetTextM(_GUIHandle,"")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"VipItemName3",528,292,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:EditSetTextM(_GUIHandle,"")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"VipItemName4",614,292,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:EditSetTextM(_GUIHandle,"")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"VipItemName5",700,292,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:EditSetTextM(_GUIHandle,"")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"VipItemName6",270,402,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:EditSetTextM(_GUIHandle,"")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"VipItemName7",356,402,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:EditSetTextM(_GUIHandle,"")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"VipItemName8",442,402,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:EditSetTextM(_GUIHandle,"")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"VipItemName9",528,402,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:EditSetTextM(_GUIHandle,"")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"VipItemName10",614,402,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:EditSetTextM(_GUIHandle,"")
    end
     
    _GUIHandle = GUI:EditCreate(_Parent,"VipItemName11",700,402,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:EditSetTextM(_GUIHandle,"")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"VipItemDesc",245,132,490,83)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ButtonBuyVip",1830900037,580,430)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ButtonLv",1830900022,710,435)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"PrevBtn",1832800013,350,435)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"NextBtn",1832800015,460,435)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"PageEdit",410,442,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"1")
    end
    
    VipWnd.UIInit(_Parent)
end

--UI Logic Code Start
function VipWnd.UIInit(_Handle)
end
VipWnd.main()




