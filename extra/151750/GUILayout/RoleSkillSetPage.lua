RoleSkillSetPage = {}
function RoleSkillSetPage.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    _Parent = GUI:WndCreateWnd(_Parent,"RoleSkillSetPage",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end

    --左边的九宫格背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage1",0,40,80)
    if _GUIHandle ~= 0 then
         GUI:WndSetSizeM(_GUIHandle,440, 436)
    end

    --右背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage2",0,500,80)
    if _GUIHandle ~= 0 then
         GUI:WndSetSizeM(_GUIHandle,600, 436)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ClearSetBtn",1850000307,952,440)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"清除设置")
    end

    --9个技能按钮
    _GUIHandle = GUI:ButtonCreate(_Parent,"AttackBtn",1850000131,744,219)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillDestBtn1",1850500033,661,123)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillDestBtn2",1850500033,620,213)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillDestBtn3",1850500033,634,304)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillDestBtn4",1850500033,708,361)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillDestBtn5",1850500033,805,355)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillDestBtn6",1850500033,882,299)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillDestBtn7",1850500033,895,208)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillDestBtn8",1850500033,849,120)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SkillDestBtn9",1850500033,754,92)
    if _GUIHandle ~= 0 then
    end

    --技能图标
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillImg1",0,668,130)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillImg2",0,627,219)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillImg3",0,641,311)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillImg4",0,715,368)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillImg5",0,812,362)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillImg6",0,889,306)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillImg7",0,902,215)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillImg8",0,856,126)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"SkillImg9",0,761,99)
    if _GUIHandle ~= 0 then
    end
    

    --数字背景图
    _GUIHandle = GUI:ImageCreate(_Parent,"NumBgImg1",1850000031,757,92)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumBgImg2",1850000031,661,124)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumBgImg3",1850000031,619,215)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumBgImg4",1850000031,636,302)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumBgImg5",1850000031,710,362)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumBgImg6",1850000031,806,356)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumBgImg7",1850000031,885,298)
    if _GUIHandle ~= 0 then
    end
     
    _GUIHandle = GUI:ImageCreate(_Parent,"NumBgImg8",1850000031,899,209)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumBgImg9",1850000031,852,119)
    if _GUIHandle ~= 0 then
    end


    --数字
     _GUIHandle = GUI:ImageCreate(_Parent,"NumImg1",1850000115,763,95)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumImg2",1850000107,668,128)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumImg3",1850000108,625,219)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumImg4",1850000109,643,305)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumImg5",1850000110,716,366)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumImg6",1850000111,812,360)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumImg7",1850000112,891,303)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumImg8",1850000113,905,213)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NumImg9",1850000114,858,124)
    if _GUIHandle ~= 0 then
    end

    --清除按钮
    _GUIHandle = GUI:ButtonCreate(_Parent,"ClearBtn1",1850500008,709,117)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"ClearBtn2",1850500008,668,210)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ClearBtn3",1850500008,681,297)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ClearBtn4",1850500008,756,356)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ClearBtn5",1850500008,851,349)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ClearBtn6",1850500008,930,294)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ClearBtn7",1850500008,943,201)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ClearBtn8",1850500008,895,112)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ClearBtn9",1850500008,802,87)
    if _GUIHandle ~= 0 then
    end

    RoleSkillSetPage.UIInit(_Parent)
end

--UI Logic Code Start
function RoleSkillSetPage.UIInit(_Handle)
    RoleSkillSetPage.WndHandle = _Handle

    local BgImg1 = GUI:WndFindWindow(RoleSkillSetPage.WndHandle, "BgImage1")
    if BgImg1 then
        GUI:ImageSetAroundImage(BgImg1, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
    end 

    local BgImg2 = GUI:WndFindWindow(RoleSkillSetPage.WndHandle, "BgImage2")
    if BgImg2 then
        GUI:ImageSetAroundImage(BgImg2, 1850400015, 1850400017, 1850400021, 1850400023, 1850400019, 1850400016, 1850400022, 1850400018, 1850400020)
    end 
end

RoleSkillSetPage.main()




