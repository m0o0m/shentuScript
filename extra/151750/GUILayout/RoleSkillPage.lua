RoleSkillPage = {}
function RoleSkillPage.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    _Parent = GUI:WndCreateWnd(_Parent,"RoleSkillPage",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end

    --左边的九宫格背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage1",0,40,80)
    if _GUIHandle ~= 0 then
         GUI:WndSetSizeM(_GUIHandle,440, 436)
    end

    --右上背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage2",0,500,80)
    if _GUIHandle ~= 0 then
         GUI:WndSetSizeM(_GUIHandle,600, 154)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"DisPlayItem",0,562,110,71,69)
    if _GUIHandle ~= 0 then
    end
     
    _GUIHandle = GUI:EditCreate(_Parent,"DisSkillName",668,109,14,25)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"DisSkillLv",877,106,15,29)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"LineImg",1850500022,662,141)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"DisSkillDesc",665,160,12,28)
    if _GUIHandle ~= 0 then
    end

    --右下背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage3",0,500,252)
    if _GUIHandle ~= 0 then
         GUI:WndSetSizeM(_GUIHandle,600, 264)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"UpSkillLv",812,282,2,2)
    if _GUIHandle ~= 0 then
         GUI:EditSetTextM(_GUIHandle,"技能学习")
         GUI:EditSetFontCenter(_GUIHandle)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"UpSkillLvBg",1850500021,613,263)
    if _GUIHandle ~= 0 then
    end

     _GUIHandle = GUI:EditCreate(_Parent,"CanLearnSkillLv",534,328,2,2)
    if _GUIHandle ~= 0 then
         GUI:EditSetTextM(_GUIHandle,"Lv 30可学习\r\n未获得该技能书,获得方式如下:")
    end

    _GUIHandle = GUI:EditCreate(_Parent,"LearnSkillType",534,406,2,2)
    if _GUIHandle ~= 0 then
         GUI:EditSetTextM(_GUIHandle,"1.前往书店老板处购买")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"BuySkillBtn",1850500017,910, 373)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"购买")
    end

--[[
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill0",0,18,40,42,42)
    if _GUIHandle ~= 0 then
        GUI:ItemCtrlSetIconSize(_GUIHandle,42,42)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill1",0,18,106,42,42)
    if _GUIHandle ~= 0 then
         GUI:ItemCtrlSetIconSize(_GUIHandle,42,42)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill2",0,18,174,42,42)
    if _GUIHandle ~= 0 then
         GUI:ItemCtrlSetIconSize(_GUIHandle,42,42)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill3",0,18,240,42,42)
    if _GUIHandle ~= 0 then
         GUI:ItemCtrlSetIconSize(_GUIHandle,42,42)
    end

    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill4",0,18,306,42,42)
    if _GUIHandle ~= 0 then
         GUI:ItemCtrlSetIconSize(_GUIHandle,42,42)
    end  


    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Skill5",0,18,374,42,42)
    if _GUIHandle ~= 0 then
         GUI:ItemCtrlSetIconSize(_GUIHandle,42,42)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"DownBtn",1832500017,348,218)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"UpBtn",1832500019,348,140)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Name0",100,50,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Level0",260,50,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Name1",100,117,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Level1",260,117,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Name2",100,184,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Level2",260,184,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Name3",100,251,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Level3",260,251,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Name4",100,318,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Level4",260,318,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"Image0",1832500024,400,20)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"Image1",1832500024,400,110)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"Image2",1832500024,400,200)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"Image3",1832500024,400,290)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"Image4",1832500024,400,380)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"Image5",1832500024,485,20)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"Image6",1832500024,485,110)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"Image7",1832500024,485,200)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"Image8",1832500024,485,290)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"Image9",1832500024,485,380)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"ShortCut0",0,414, 31)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"ShortCut1",0,414,121)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"ShortCut2",0,414,211)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"ShortCut3",0,414,301)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"ShortCut4",0,414,391)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"ShortCut5",0,490,31)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"ShortCut6",0,490,121)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"ShortCut7",0,490,211)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"ShortCut8",0,490,301)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"ShortCut9",0,490,391)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey0",1832500021,290,50)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey1",1832500021,290,118)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey2",1832500021,290,176)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey3",1832500021,290,244)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey4",1832500021,290,312)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"HotKey5",1832500021,290,380)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Level5",260,385,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Name5",100,385,0,0)
    if _GUIHandle ~= 0 then
    end
    ]]--


    RoleSkillPage.UIInit(_Parent)
end

--UI Logic Code Start
function RoleSkillPage.UIInit(_Handle)
    RoleSkillPage.WndHandle = _Handle

    local BgImg1 = GUI:WndFindWindow(RoleSkillPage.WndHandle, "BgImage1")
    if BgImg1 then
        GUI:ImageSetAroundImage(BgImg1, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
    end 

    local BgImg2 = GUI:WndFindWindow(RoleSkillPage.WndHandle, "BgImage2")
    if BgImg2 then
        GUI:ImageSetAroundImage(BgImg2, 1850400015, 1850400017, 1850400021, 1850400023, 1850400019, 1850400016, 1850400022, 1850400018, 1850400020)
    end 

    local BgImg3 = GUI:WndFindWindow(RoleSkillPage.WndHandle, "BgImage3")
    if BgImg3 then
        GUI:ImageSetAroundImage(BgImg3, 1850400015, 1850400017, 1850400021, 1850400023, 1850400019, 1850400016, 1850400022, 1850400018, 1850400020)
    end 
end

RoleSkillPage.main()




