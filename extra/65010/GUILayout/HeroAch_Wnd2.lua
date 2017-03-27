HeroAch_Wnd = {}
function HeroAch_Wnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"AchieveList",0,10,75)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
	_GUIHandle = GUI:ButtonCreate(_Parent,"GetAll",1851500004,920,430)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextM(_GUIHandle, "一键领取")
		GUI:WndSetTextColorM(_GUIHandle, 4293317508)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	-------------------------------------内框1--------------------------------
	_GUIHandle = GUI:ImageCreate(_Parent,"BackGround1",0,30,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false);
		GUI:WndSetParam(_GUIHandle, 0);
		GUI:WndSetSizeM(_GUIHandle,377, 490);
		GUI:ImageSetAroundImage(_GUIHandle, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011);
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"AchieveBtn1",1850600012,47,0)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.List");
        GUI:WndSetParam(_GUIHandle, 1);
        GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 228, 192, 142));
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false);
		
    end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"AchieveBtn2",1850600012, 47,58)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.List")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 228, 192, 142))
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		
    end

	
	_GUIHandle = GUI:ButtonCreate(_Parent,"AchieveBtn3",1850600012,47,117)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.List")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 228, 192, 142))
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		
    end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"AchieveBtn4",1850600012,47,177)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.List")
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 228, 192, 142))
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		
    end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"AchieveBtn5", 1850600012, 47, 238)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.List")
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 228, 192, 142))
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		
    end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"AchieveBtn6",1850600012,47,299)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.List")
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 228, 192, 142))
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		
    end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"AchieveBtn7",1850600012,47,359)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.List")
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 228, 192, 142))
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"AchieveBtn8",1850600012,47,418)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.List")
        GUI:WndSetParam(_GUIHandle, 8)
        GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 228, 192, 142))
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
		
    end
	
	-------------------------------------内框1--------------------------------

	
	
	-------------------------------------内框2--------------------------------
	
--[[
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_8",1851500000,443,117)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,664, 123)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_9",1851500000,443,243)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,664, 123)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_10",1851500000,443,370)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,664, 123)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_0",1850400004,483,244)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,66, 66)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_3",1850400004,483,270)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,66, 66)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_4",1850400004,483,398)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,66, 66)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item1",0,483,144,65,64)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,65, 64)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item2",0,483,270,65,66)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,65, 66)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item3",0,483,398,65,65)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,65, 65)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_12",589,145,237,31)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_13",698,177,97,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_14",589,177,108,31)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"????ú")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_15",1850300005,811,181)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,37, 25)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_16",852,179,106,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_17",1851500010,969,141)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,117, 68)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_18",1850000307,975,153)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"? ?")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,107, 47)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_19",590,272,237,31)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_20",699,304,97,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_21",590,304,108,31)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"????ú")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_22",1850300005,812,308)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,37, 25)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_23",853,306,106,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_24",1851500010,970,268)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,117, 68)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_25",1850000307,976,280)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"? ?")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,107, 47)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_26",589,398,237,31)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_27",698,430,97,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_28",589,430,108,31)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"????ú")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_29",1850300005,811,434)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,37, 25)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndChild_30",852,432,106,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_31",1851500010,969,394)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,117, 68)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_32",1850000307,975,406)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"? ?")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,107, 47)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	--]]
	-------------------------------------内框2--------------------------------
	
	
    win1_Parent = GUI:WndCreateWnd(_Parent,"AchieveItem1",0,470,28)
    if win1_Parent ~= 0 then
        GUI:WndSetSizeM(win1_Parent,16, 16)
		GUI:WndSetVisible(win1_Parent, false)
    end


    _GUIHandle = GUI:ButtonCreate(win1_Parent,"back",1802200004,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,493, 78)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ImageCreate(win1_Parent,"Icon",0,20,15)
    if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,45, 45)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end


    _GUIHandle = GUI:ImageCreate(win1_Parent,"State",1851500009,300,5)
    if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,94, 65)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end


    _GUIHandle = GUI:ButtonCreate(win1_Parent,"GetBtn",1850000307,380,20)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.get")
        GUI:WndSetTextM(_GUIHandle,"领取")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,80, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4293317508)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(win1_Parent,"AchieveName",80,10,200,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291932770)
        GUI:EditSetTextM(_GUIHandle,"")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end



    _GUIHandle = GUI:EditCreate(win1_Parent,"Ach",80,50,70,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291932770)
        GUI:EditSetTextM(_GUIHandle,"成就积分:")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end



    _GUIHandle = GUI:EditCreate(win1_Parent,"Integral",140,50,100,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"10000")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end



    _GUIHandle = GUI:ImageCreate(win1_Parent,"image",1800000051,210,53)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 14)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end


    _GUIHandle = GUI:EditCreate(win1_Parent,"AchieveGold",230,50,100,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"1000000")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end



    win2_Parent = GUI:WndCreateWnd(_Parent,"AchieveItem2",0,470,108)
    if win2_Parent ~= 0 then
        GUI:WndSetSizeM(win2_Parent,16, 16)
		GUI:WndSetVisible(win1_Parent, false)
    end


    _GUIHandle = GUI:ButtonCreate(win2_Parent,"back",1802200004,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,493, 78)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ImageCreate(win2_Parent,"Icon",0,20,15)
    if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,45, 45)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end


    _GUIHandle = GUI:ImageCreate(win2_Parent,"State",1800000294,300,5)
    if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,94, 65)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end


    _GUIHandle = GUI:ButtonCreate(win2_Parent,"GetBtn",1800000129,380,20)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.get")
        GUI:WndSetTextM(_GUIHandle,"领取")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,80, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4293317508)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(win2_Parent,"AchieveName",80,10,200,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291932770)
        GUI:EditSetTextM(_GUIHandle,"")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end



    _GUIHandle = GUI:EditCreate(win2_Parent,"Ach",80,50,70,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291932770)
        GUI:EditSetTextM(_GUIHandle,"成就积分:")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end



    _GUIHandle = GUI:EditCreate(win2_Parent,"Integral",140,50,100,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"10000")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end



    _GUIHandle = GUI:ImageCreate(win2_Parent,"image",1800000051,210,53)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 14)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end


    _GUIHandle = GUI:EditCreate(win2_Parent,"AchieveGold",230,50,100,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"1000000")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end



    win3_Parent = GUI:WndCreateWnd(_Parent,"AchieveItem3",0,470,188)
    if win3_Parent ~= 0 then
        GUI:WndSetSizeM(win3_Parent,16, 16)
		GUI:WndSetVisible(win1_Parent, false)
    end


    _GUIHandle = GUI:ButtonCreate(win3_Parent,"back",1802200004,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,493, 78)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ImageCreate(win3_Parent,"Icon",0,20,15)
    if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,45, 45)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end


    _GUIHandle = GUI:ImageCreate(win3_Parent,"State",1800000294,300,5)
    if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,94, 65)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end


    _GUIHandle = GUI:ButtonCreate(win3_Parent,"GetBtn",1800000129,380,20)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.get")
        GUI:WndSetTextM(_GUIHandle,"领取")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,80, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4293317508)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(win3_Parent,"AchieveName",80,10,200,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291932770)
        GUI:EditSetTextM(_GUIHandle,"")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end



    _GUIHandle = GUI:EditCreate(win3_Parent,"Ach",80,50,70,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291932770)
        GUI:EditSetTextM(_GUIHandle,"成就积分:")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end



    _GUIHandle = GUI:EditCreate(win3_Parent,"Integral",140,50,100,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"10000")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end



    _GUIHandle = GUI:ImageCreate(win3_Parent,"image",1800000051,210,53)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 14)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end


    _GUIHandle = GUI:EditCreate(win3_Parent,"AchieveGold",230,50,100,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"1000000")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end



    win4_Parent = GUI:WndCreateWnd(_Parent,"AchieveItem4",0,470,268)
    if win4_Parent ~= 0 then
        GUI:WndSetSizeM(win4_Parent,16, 16)
		GUI:WndSetVisible(win1_Parent, false)
    end


    _GUIHandle = GUI:ButtonCreate(win4_Parent,"back",1802200004,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,493, 78)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ImageCreate(win4_Parent,"Icon",0,20,15)
    if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,45, 45)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end


    _GUIHandle = GUI:ImageCreate(win4_Parent,"State",1800000294,300,5)
    if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,94, 65)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end


    _GUIHandle = GUI:ButtonCreate(win4_Parent,"GetBtn",1800000129,380,20)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.get")
        GUI:WndSetTextM(_GUIHandle,"领取")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,80, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4293317508)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(win4_Parent,"AchieveName",80,10,200,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291932770)
        GUI:EditSetTextM(_GUIHandle,"")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end



    _GUIHandle = GUI:EditCreate(win4_Parent,"Ach",80,50,70,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291932770)
        GUI:EditSetTextM(_GUIHandle,"成就积分:")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end



    _GUIHandle = GUI:EditCreate(win4_Parent,"Integral",140,50,100,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"10000")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end



    _GUIHandle = GUI:ImageCreate(win4_Parent,"image",1800000051,210,53)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 14)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end


    _GUIHandle = GUI:EditCreate(win4_Parent,"AchieveGold",230,50,100,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"1000000")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end



    win5_Parent = GUI:WndCreateWnd(_Parent,"AchieveItem5",0,470,348)
    if win5_Parent ~= 0 then
        GUI:WndSetSizeM(win5_Parent,16, 16)
		GUI:WndSetVisible(win1_Parent, false)
    end


    _GUIHandle = GUI:ButtonCreate(win5_Parent,"back",1802200004,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,493, 78)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ImageCreate(win5_Parent,"Icon",0,20,15)
    if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,45, 45)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end


    _GUIHandle = GUI:ImageCreate(win5_Parent,"State",1800000294,300,5)
    if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,94, 65)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end


    _GUIHandle = GUI:ButtonCreate(win5_Parent,"GetBtn",1800000129,380,20)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.get")
        GUI:WndSetTextM(_GUIHandle,"领取")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,80, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4293317508)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:EditCreate(win5_Parent,"AchieveName",80,10,200,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291932770)
        GUI:EditSetTextM(_GUIHandle,"")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end



    _GUIHandle = GUI:EditCreate(win5_Parent,"Ach",80,50,70,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291932770)
        GUI:EditSetTextM(_GUIHandle,"成就积分:")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end



    _GUIHandle = GUI:EditCreate(win5_Parent,"Integral",140,50,100,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"10000")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end



    _GUIHandle = GUI:ImageCreate(win5_Parent,"image",1800000051,210,53)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 14)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end


    _GUIHandle = GUI:EditCreate(win5_Parent,"AchieveGold",230,50,100,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"1000000")
        GUI:EditSetCanEdit(_GUIHandle, false)
    end




    _GUIHandle = GUI:ButtonCreate(_Parent,"up_page",1800000372,980,90)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.up_page")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26,70)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"down_page",1800000376,980,190)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.down_page")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26,70)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    HeroAch_Wnd.UIInit(_Parent)
end

--UI Logic Code Start
HeroAch_Wnd.buttonIndex = 1
HeroAch_Wnd.WndHandle = 0
HeroAch_Wnd.Achievetab = {}
HeroAch_Wnd.str = ""
HeroAch_Wnd.page = 1
HeroAch_Wnd.Integral = {}
HeroAch_Wnd.num = {0,0,0,0,0,0,0,0}
HeroAch_Wnd.image = {1804600035,1804600036,1804600037,1804600038,1804600039,1804600040,1804600041,1804600042,1804600043,1804600035}
HeroAch_Wnd.image1 = {1804600026,1804600027,1804600028,1804600029,1804600030,1804600031,1804600032,1804600033,1804600034,1804600026}

function HeroAch_Wnd.UIInit(_Parent)
    HeroAch_Wnd.WndHandle = _Parent

    GUI:WndRegistScript(HeroAch_Wnd.WndHandle, RDWndBaseCL_wnd_close , "HeroAch_Wnd.wndClose")
    RegisterUIEvent(LUA_EVENT_ONACHIVELIST,"获取成就列表","AchieveUpdata")

    ButtonSetIsActivePageBtn(_Parent,"ach_button1",true)
    UI:Lua_SubmitForm("成就积分表单", "main", "")
    CL:GetGloryList()
    local _GUIHandle = 0
    for i = 1, 9 do
        _GUIHandle = GUI:WndFindChildM(_Parent, "AchieveBtn"..i)
        if _GUIHandle ~= 0 then
            GUI:ButtonSetTextFont(_GUIHandle,"SIMLI18")
        end
    end
end

function HeroAch_Wnd.visible(vis)
	if tonumber(vis) == 1 then 
		local handle = GetWindow(nil,"AchieveWnd,image3")
		if handle ~= 0 then  
			GUI:WndSetVisible(handle,true)
		end
	end 
end

function Hero_jif(data,num,vis)
	HeroAch_Wnd.visible(vis)
    HeroAch_Wnd.Integral = data
	num = tonumber(num)
	if num == 0 then
		return 
	end	
	if num < 10 then
		ImageSetImageID(AchieveWnd.WndHandle,"image2",HeroAch_Wnd.image1[num])  
	else
		num = 9
		ImageSetImageID(AchieveWnd.WndHandle,"image2",HeroAch_Wnd.image1[num])  
	end	
end

function AchieveUpdata()
    HeroAch_Wnd.Achievetab = {}
    local Achievetab = LuaParam[1]
    HeroAch_Wnd.str = ""
    for i = 1 , #Achievetab do
        local tab = Achievetab[i]
        local index = tab[4]
		if index ~= nil then
			if HeroAch_Wnd.Achievetab[index] == nil then
				HeroAch_Wnd.Achievetab[index] = {}
			end	
			table.insert(HeroAch_Wnd.Achievetab[index],tab)
		end
    end
    local i = 1
	local State = 0
    for k, v in pairs(HeroAch_Wnd.Achievetab) do
        local _handle = GetWindow(HeroAch_Wnd.WndHandle,"AchieveBtn"..i,nil)
        if _handle == 0 then
            break
        end
		if i == 1 then
			HeroAch_Wnd.str = k 
        end
        WndSetTextM(_handle,nil,k)
		local num = 0 
		for j = 1 , #v do 
			if tonumber(v[j][2]) == 2 then
				num = num + 1
			end	
		end
		if num ~= 0 then
			State = 1
			if num > 9 then num = 9 end
			HeroAch_Wnd.num[i] = num
		end	
        i = i + 1
    end
	local sum = 0 
	if State == 1 then	
		for i = 1 , #HeroAch_Wnd.num do 
			if HeroAch_Wnd.num[i] > 0 then
				local num = HeroAch_Wnd.num[i]
				ImageSetImageID(HeroAch_Wnd.WndHandle,"AchieveCount"..i,HeroAch_Wnd.image[num])  
				local _handle = GetWindow(HeroAch_Wnd.WndHandle,"AchieveCount"..i,nil)		
				if _handle ~= 0 then 
					GUI:WndSetVisible(_handle,true)
				end	
			end		
		end
	end	
    list_update(HeroAch_Wnd.str,1)

end

function list_update(str,index)
    local tab = HeroAch_Wnd.Achievetab[str]
    local a = tonumber(index)
    local b = 1
    if tab == nil then
        return
    end
    for i = a , #tab do
        local _handle = GetWindow(HeroAch_Wnd.WndHandle,"AchieveItem"..b,nil)
        if _handle == 0 then
            break
        end
        GUI:WndSetVisible(_handle,true)
        local _handle = GetWindow(HeroAch_Wnd.WndHandle,"AchieveItem"..b..",AchieveName",nil)

        EditSetText(_handle,nil,tostring(tab[i][5]))
        local _handle = GetWindow(HeroAch_Wnd.WndHandle,"AchieveItem"..b..",AchieveGold",nil)
        EditSetText(_handle,nil,tostring(tab[i][7]))
        local _handle = GetWindow(HeroAch_Wnd.WndHandle,"AchieveItem"..b..",Integral",nil)
		for m = 1, #HeroAch_Wnd.Integral do
			if HeroAch_Wnd.Integral[m][1] == str then
				EditSetText(_handle,nil,tostring(HeroAch_Wnd.Integral[m][i+1]))
			end
		end
        local _handle = GetWindow(HeroAch_Wnd.WndHandle,"AchieveItem"..b..",GetBtn",nil)
        GUI:WndSetParam(_handle,tab[i][1])
        GUI:WndAddProperty(_handle, "index", ""..i)
        GUI:WndAddProperty(_handle, "hang", ""..b)
        ImageSetImageID(HeroAch_Wnd.WndHandle,"AchieveItem"..b..",State",1851500010)
        if tonumber(tab[i][2]) ~= 2 then
            GUI:WndSetVisible(_handle,false)
            if tonumber(tab[i][2]) == 3 then
                ImageSetImageID(HeroAch_Wnd.WndHandle,"AchieveItem"..b..",State",1851500009)
            end
        else
            GUI:WndSetVisible(_handle,true)
            ImageSetImageID(HeroAch_Wnd.WndHandle,"AchieveItem"..b..",State",0)
        end
        if str == "神翼培养" then
            local image_t = {1990040550,1990040554,1990040556,1992000149,1992000291,1992000143}
            ImageSetImageID(HeroAch_Wnd.WndHandle,"AchieveItem"..b..",Icon",image_t[i])
        elseif str == "初出茅庐" then
            local image_t = {1891420568,1891420566,1891420567,1891420573}
            ImageSetImageID(HeroAch_Wnd.WndHandle,"AchieveItem"..b..",Icon",image_t[i])
        elseif str == "副本次数" then
            ImageSetImageID(HeroAch_Wnd.WndHandle,"AchieveItem"..b..",Icon",1891420581)
        elseif str == "强化次数" then
            ImageSetImageID(HeroAch_Wnd.WndHandle,"AchieveItem"..b..",Icon",1891420573)
        elseif str == "BOSS击杀" then
            ImageSetImageID(HeroAch_Wnd.WndHandle,"AchieveItem"..b..",Icon",1891420572)
        elseif str == "降妖除魔" then
            ImageSetImageID(HeroAch_Wnd.WndHandle,"AchieveItem"..b..",Icon",1891420570)
        elseif str == "等级修炼" then
            ImageSetImageID(HeroAch_Wnd.WndHandle,"AchieveItem"..b..",Icon",1891420569)
        elseif str == "累计登录" then
            ImageSetImageID(HeroAch_Wnd.WndHandle,"AchieveItem"..b..",Icon",1891420571)
        end
        b = b + 1
        if b == 6 then
            break
        end
    end

    for j = b , 5 do
        local _handle = GetWindow(HeroAch_Wnd.WndHandle,"AchieveItem"..j,nil)
        GUI:WndSetVisible(_handle,false)
    end
    local c = #tab - a + 1
    if a == 1 then
        local _handle = GetWindow(HeroAch_Wnd.WndHandle,"up_page",nil)
        GUI:WndSetEnableM(_handle,false)
    else
        local _handle = GetWindow(HeroAch_Wnd.WndHandle,"up_page",nil)
        GUI:WndSetEnableM(_handle,true)
    end
    if b > c then
            local _handle = GetWindow(HeroAch_Wnd.WndHandle,"down_page",nil)
            GUI:WndSetEnableM(_handle,false)
    else
        local _handle = GetWindow(HeroAch_Wnd.WndHandle,"down_page",nil)
        GUI:WndSetEnableM(_handle,true)

    end
end

function HeroAch_Wnd.up_page(_handle)
    if HeroAch_Wnd.page == 1 then
        msg("已经第一页")
        return
    end
    HeroAch_Wnd.page = HeroAch_Wnd.page - 1
    --local index = (HeroAch_Wnd.page - 1) * 5 + 1
    local index = HeroAch_Wnd.page
    list_update(HeroAch_Wnd.str,index)
end



function HeroAch_Wnd.down_page(_handle)
    local max_a = 0
    for k, v in pairs(HeroAch_Wnd.Achievetab) do
        if k == HeroAch_Wnd.str then
            max_a = #v
        end
    end
    HeroAch_Wnd.page = HeroAch_Wnd.page + 1
    --local index = (HeroAch_Wnd.page - 1) * 5 + 1
    local index = HeroAch_Wnd.page
    if index > max_a then
        HeroAch_Wnd.page = HeroAch_Wnd.page - 1
        msg("已经是最后一页")
        return
    end
    list_update(HeroAch_Wnd.str,index)

end


function HeroAch_Wnd.get(_handle)
    local id = GUI:WndGetParam(_handle)
    CL:GetGloryAward(id)
	if _handle ~= 0 then
		GUI:WndSetVisible(_handle,false)
	end	
    local hang = GUI:WndGetProperty(_handle,"hang")
    ImageSetImageID(HeroAch_Wnd.WndHandle,"AchieveItem"..hang..",State",1800000293)
	local num = HeroAch_Wnd.num[HeroAch_Wnd.buttonIndex]
	if num > 1 then
		num = num - 1
		HeroAch_Wnd.num[HeroAch_Wnd.buttonIndex] = num
		ImageSetImageID(HeroAch_Wnd.WndHandle,"AchieveCount"..HeroAch_Wnd.buttonIndex,HeroAch_Wnd.image[num])  
	else	
		local _handle = GetWindow(HeroAch_Wnd.WndHandle,"AchieveCount"..HeroAch_Wnd.buttonIndex,nil)		
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle,false)
		end	
		HeroAch_Wnd.num[HeroAch_Wnd.buttonIndex] = 0
	end
    local index = tonumber(GUI:WndGetProperty(_handle,"index"))
    HeroAch_Wnd.Achievetab[HeroAch_Wnd.str][index][2] = 3
    local _handle = GetWindow(HeroAch_Wnd.WndHandle,"AchieveItem"..hang..",Integral",nil)
    local Integral = EditGetTextM(_handle)
	local sum = 0 
	for i = 1 , #HeroAch_Wnd.num do 
		sum = HeroAch_Wnd.num[i] + sum
	end
	if sum == 0 then
		ImageSetImageID(AchieveWnd.WndHandle,"image2",0)  
	else	
		if sum < 10 then
			ImageSetImageID(AchieveWnd.WndHandle,"image2",HeroAch_Wnd.image1[sum])  
		else
			sum = 9
			ImageSetImageID(AchieveWnd.WndHandle,"image2",HeroAch_Wnd.image1[sum])  
		end	
	end	
	
	GameMainBar.AchNum(sum)
	UI:Lua_SubmitForm("成就积分表单", "addIntegral", ""..Integral.."#"..sum)
end

function HeroAch_Wnd.List(_handle)
    for i = 1 , 9 do
        local handle = GetWindow(HeroAch_Wnd.WndHandle,"AchieveBtn"..i,nil)
        GUI:ButtonSetIsActivePageBtn(handle,false)
    end
	
	HeroAch_Wnd.buttonIndex = GUI:WndGetParam(_handle)
    GUI:ButtonSetIsActivePageBtn(_handle,true)
    HeroAch_Wnd.str = GUI:WndGetText(_handle)
    HeroAch_Wnd.page = 1
    list_update(HeroAch_Wnd.str,1)

end

function HeroAch_Wnd.wndClose()
    UnRegisterUIEvent(LUA_EVENT_ONACHIVELIST,"获取成就列表")
end

HeroAch_Wnd.main()