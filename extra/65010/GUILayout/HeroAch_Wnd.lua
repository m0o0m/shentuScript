HeroAch_Wnd = {}
function HeroAch_Wnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"AchieveList",0,10,75)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end


    _GUIHandle = GUI:ButtonCreate(_Parent,"AchieveBtn1",1800000102,5,5)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.List")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,114, 43)
        GUI:WndSetTextColorM(_GUIHandle, 4293317508)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"AchieveBtn2",1800000102,5,50)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.List")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,114, 43)
        GUI:WndSetTextColorM(_GUIHandle, 4293317508)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"AchieveBtn3",1800000102,5,95)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.List")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,114, 43)
        GUI:WndSetTextColorM(_GUIHandle, 4293317508)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"AchieveBtn4",1800000102,5,140)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.List")
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,114, 43)
        GUI:WndSetTextColorM(_GUIHandle, 4293317508)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"AchieveBtn5",1800000102,5,185)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.List")
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,114, 43)
        GUI:WndSetTextColorM(_GUIHandle, 4293317508)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"AchieveBtn6",1800000102,5,230)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.List")
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,114, 43)
        GUI:WndSetTextColorM(_GUIHandle, 4293317508)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"AchieveBtn7",1800000102,5,275)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.List")
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,114, 43)
        GUI:WndSetTextColorM(_GUIHandle, 4293317508)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"AchieveBtn8",1800000102,5,320)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.List")
        GUI:WndSetParam(_GUIHandle, 8)
        GUI:WndSetSizeM(_GUIHandle,114, 43)
        GUI:WndSetTextColorM(_GUIHandle, 4293317508)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

	
	_GUIHandle = GUI:ImageCreate(_Parent,"AchieveCount1",0,99,5)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,19, 41)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"AchieveCount2",0,99,50)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,19, 41)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"AchieveCount3",0,99,95)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,19, 41)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"AchieveCount4",0,99,140)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,19, 41)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"AchieveCount5",0,99,185)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,19, 41)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"AchieveCount6",0,99,230)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,19, 41)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"AchieveCount7",0,99,275)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,19, 41)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"AchieveCount8",0,99,320)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,19, 41)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
    win1_Parent = GUI:WndCreateWnd(_Parent,"AchieveItem1",0,140,8)
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


    _GUIHandle = GUI:ImageCreate(win1_Parent,"State",1800000294,300,5)
    if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,94, 65)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end


    _GUIHandle = GUI:ButtonCreate(win1_Parent,"GetBtn",1800000129,380,20)
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



    win2_Parent = GUI:WndCreateWnd(_Parent,"AchieveItem2",0,140,88)
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



    win3_Parent = GUI:WndCreateWnd(_Parent,"AchieveItem3",0,140,168)
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



    win4_Parent = GUI:WndCreateWnd(_Parent,"AchieveItem4",0,140,248)
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



    win5_Parent = GUI:WndCreateWnd(_Parent,"AchieveItem5",0,140,328)
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




    _GUIHandle = GUI:ButtonCreate(_Parent,"up_page",1800000372,631,90)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "HeroAch_Wnd.up_page")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26,70)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"down_page",1800000376,631,190)
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
        ImageSetImageID(HeroAch_Wnd.WndHandle,"AchieveItem"..b..",State",1800000294)
        if tonumber(tab[i][2]) ~= 2 then
            GUI:WndSetVisible(_handle,false)
            if tonumber(tab[i][2]) == 3 then
                ImageSetImageID(HeroAch_Wnd.WndHandle,"AchieveItem"..b..",State",1800000293)
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