TeamWnd = {}
function TeamWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0

	_GUIHandle = GUI:ImageCreate(_Parent,"BkImg",1807300001,0,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,744, 375)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"image0",1807300036,35,58)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,701, 351)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1805900080,715,5)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.closeWnd")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 38)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"TeamRoleHeadInfo",1807300000,353,6)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,80, 30)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"MyTeam",1806500017,43,64)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.MyTeamWnd_")
		GUI:WndSetTextM(_GUIHandle,"�ҵĶ���")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,77, 30)
		GUI:WndSetTextColorM(_GUIHandle, 4284768336)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"NearByTeam",1806500017,122,64)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.NearByTeamWnd_")
		GUI:WndSetTextM(_GUIHandle,"��������")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,77, 30)
		GUI:WndSetTextColorM(_GUIHandle, 4284768336)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"NearByPlayer",1806500017,201,64)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.NearByPlayerWnd")
		GUI:WndSetTextM(_GUIHandle,"�������")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,77, 30)
		GUI:WndSetTextColorM(_GUIHandle, 4284768336)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
    _GUIHandle = GUI:ButtonCreate(_Parent,"upPageBtn",1800000094,306,373)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.UpPgClicked")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 19)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"downPageBtn",1800000098,387,373)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.DownPgClicked")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 19)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end

	_GUIHandle = GUI:ImageCreate(_Parent,"image_bj",1807300012,328,370)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,57, 26)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:CheckBoxCreate(_Parent,"check_xz1",1807300030,"�Զ����",410,69)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "TeamWnd.clickimage")
		GUI:WndSetTextM(_GUIHandle,"�Զ����")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,73, 20)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:CheckBoxSetCheck(_GUIHandle, true)
	end
	
	
	
	_GUIHandle = GUI:CheckBoxCreate(_Parent,"check_xz2",1807300030,"�ֶ����",495,69)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "TeamWnd.clickimage")
		GUI:WndSetTextM(_GUIHandle,"�ֶ����")
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,73, 20)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:CheckBoxSetCheck(_GUIHandle, true)
	end
	
	
	
	_GUIHandle = GUI:CheckBoxCreate(_Parent,"check_xz3",1807300030,"�ܾ����",580,69)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "TeamWnd.clickimage")
		GUI:WndSetTextM(_GUIHandle,"�ܾ����")
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetSizeM(_GUIHandle,73, 20)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:CheckBoxSetCheck(_GUIHandle, true)
	end
	
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"yy",331,373,50,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetTextM(_GUIHandle,"1/1")
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		Player_page_Parent = GUI:WndCreateWnd(_Parent,"Player_page",0,10,85)
	if Player_page_Parent ~= 0 then
		GUI:WndSetSizeM(Player_page_Parent,16, 16)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(Player_page_Parent,"Player1",1807300026,52,24)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.clickWnd")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,127, 230)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	local Player1_Parent = _GUIHandle

	
	_GUIHandle = GUI:ImageCreate(Player1_Parent,"leader",0,4,5)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,16, 16)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
		
	_GUIHandle = GUI:ImageCreate(Player1_Parent,"header",0,11,11)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,16, 16)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end

	
	_GUIHandle = GUI:ImageCreate(Player1_Parent,"divider",1807300004,11,132)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle,false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,105, 14)
	end
	
		
	_GUIHandle = GUI:EditCreate(Player1_Parent,"RoleName",12,151,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player1_Parent,"RoleJob",12,171,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player1_Parent,"RoleLevel",12,191,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	
	_GUIHandle = GUI:ButtonCreate(Player_page_Parent,"Player2",1807300026,183,24)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.clickWnd")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,127, 230)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	local Player2_Parent = _GUIHandle

	
	_GUIHandle = GUI:ImageCreate(Player2_Parent,"leader",0,4,5)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,16, 16)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
		
	_GUIHandle = GUI:ImageCreate(Player2_Parent,"header",0,11,11)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,16, 16)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
		
	_GUIHandle = GUI:ImageCreate(Player2_Parent,"divider",1807300004,11,132)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle,false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,105, 14)
	end
	
	_GUIHandle = GUI:EditCreate(Player2_Parent,"RoleName",12,151,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player2_Parent,"RoleJob",12,171,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player2_Parent,"RoleLevel",12,191,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	
	_GUIHandle = GUI:ButtonCreate(Player_page_Parent,"Player3",1807300026,314,24)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.clickWnd")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetSizeM(_GUIHandle,127, 230)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	local Player3_Parent = _GUIHandle

	
	_GUIHandle = GUI:ImageCreate(Player3_Parent,"leader",0,4,5)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,16, 16)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
		
	_GUIHandle = GUI:ImageCreate(Player3_Parent,"header",0,11,11)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,16, 16)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
		
	_GUIHandle = GUI:ImageCreate(Player3_Parent,"divider",1807300004,11,132)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle,false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,105, 14)
	end
	
	_GUIHandle = GUI:EditCreate(Player3_Parent,"RoleName",12,151,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player3_Parent,"RoleJob",12,171,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player3_Parent,"RoleLevel",12,191,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	
	_GUIHandle = GUI:ButtonCreate(Player_page_Parent,"Player4",1807300026,445,24)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.clickWnd")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:WndSetSizeM(_GUIHandle,127, 230)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	local Player4_Parent = _GUIHandle

	
	_GUIHandle = GUI:ImageCreate(Player4_Parent,"leader",0,4,5)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,16, 16)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
		
	_GUIHandle = GUI:ImageCreate(Player4_Parent,"header",0,11,11)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,16, 16)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
		
	_GUIHandle = GUI:ImageCreate(Player4_Parent,"divider",1807300004,11,132)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle,false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,105, 14)
	end
	
	_GUIHandle = GUI:EditCreate(Player4_Parent,"RoleName",12,151,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player4_Parent,"RoleJob",12,171,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player4_Parent,"RoleLevel",12,191,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	
	_GUIHandle = GUI:ButtonCreate(Player_page_Parent,"Player5",1807300026,576,24)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.clickWnd")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 5)
		GUI:WndSetSizeM(_GUIHandle,127, 230)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	local Player5_Parent = _GUIHandle

	
	_GUIHandle = GUI:ImageCreate(Player5_Parent,"leader",0,4,5)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,16, 16)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
		
	_GUIHandle = GUI:ImageCreate(Player5_Parent,"header",0,11,11)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,16, 16)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(Player5_Parent,"divider",1807300004,11,132)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle,false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,105, 14)
	end
	
		
	_GUIHandle = GUI:EditCreate(Player5_Parent,"RoleName",12,151,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player5_Parent,"RoleJob",12,171,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player5_Parent,"RoleLevel",12,191,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	
	_GUIHandle = GUI:ButtonCreate(Player_page_Parent,"Up_page",1807300018,24,111)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.Up_page")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,29, 51)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(Player_page_Parent,"Down_page",1807300022,700,111)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.Down_page")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,29, 51)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	MyButton_Parent = GUI:WndCreateWnd(_Parent,"MyButton",0,10,300)
	if MyButton_Parent ~= 0 then
		GUI:WndSetSizeM(MyButton_Parent,16, 16)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(MyButton_Parent,"CreateTeam",1806100002,570,65)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.CreateTeam")
		GUI:WndSetTextM(_GUIHandle,"��������")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,88, 31)
		GUI:WndSetTextColorM(_GUIHandle, 4289108065)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	MyButton1_Parent = GUI:WndCreateWnd(_Parent,"MyButton1",0,10,300)
	if MyButton1_Parent ~= 0 then
		GUI:WndSetSizeM(MyButton1_Parent,16, 16)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(MyButton1_Parent,"Addplayer",1806100002,95,65)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.Addplayer")
		GUI:WndSetTextM(_GUIHandle,"��Ӻ���")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,88, 31)
		GUI:WndSetTextColorM(_GUIHandle, 4289108065)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(MyButton1_Parent,"ViewEquip",1806100002,190,65)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.ViewEquip")
		GUI:WndSetTextM(_GUIHandle,"�鿴װ��")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,88, 31)
		GUI:WndSetTextColorM(_GUIHandle, 4289108065)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(MyButton1_Parent,"OutTeam",1806100002,285,65)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.OutTeam")
		GUI:WndSetTextM(_GUIHandle,"�뿪����")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,88, 31)
		GUI:WndSetTextColorM(_GUIHandle, 4289108065)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(MyButton1_Parent,"OtherTeamer",1806100002,380,65)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.OtherTeamer")
		GUI:WndSetTextM(_GUIHandle,"�ƽ��ӳ�")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,88, 31)
		GUI:WndSetTextColorM(_GUIHandle, 4289108065)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(MyButton1_Parent,"DooutTeam",1806100002,475,65)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.DooutTeam")
		GUI:WndSetTextM(_GUIHandle,"�߳�����")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,88, 31)
		GUI:WndSetTextColorM(_GUIHandle, 4289108065)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(MyButton1_Parent,"DismissTeam",1806100002,570,65)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.DismissTeam")
		GUI:WndSetTextM(_GUIHandle,"��ɢ����")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,88, 31)
		GUI:WndSetTextColorM(_GUIHandle, 4289108065)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	NearyButton_Parent = GUI:WndCreateWnd(_Parent,"NearyButton",0,10,300)
	if NearyButton_Parent ~= 0 then
		GUI:WndSetSizeM(NearyButton_Parent,16, 16)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(NearyButton_Parent,"ReloadTeam",1806100002,38,65)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.ReloadTeam")
		GUI:WndSetTextM(_GUIHandle,"ˢ���б�")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,88, 31)
		GUI:WndSetTextColorM(_GUIHandle, 4289108065)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(NearyButton_Parent,"CreateTeam1",1806100002,475,65)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.CreateTeam")
		GUI:WndSetTextM(_GUIHandle,"��������")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,88, 31)
		GUI:WndSetTextColorM(_GUIHandle, 4289108065)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(NearyButton_Parent,"InTeam",1806100002,570,65)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.InTeam")
		GUI:WndSetTextM(_GUIHandle,"�������")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,88, 31)
		GUI:WndSetTextColorM(_GUIHandle, 4289108065)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	NearyPlayerList_Parent = GUI:WndCreateWnd(_Parent,"NearyPlayerList",0,30,109)
	if NearyPlayerList_Parent ~= 0 then
		GUI:WndSetSizeM(NearyPlayerList_Parent,16, 16)
	end
	
	
	_GUIHandle = GUI:EditCreate(NearyPlayerList_Parent,"RoleName",55,-3,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290548346)
		GUI:EditSetTextM(_GUIHandle,"�������")
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	
	_GUIHandle = GUI:EditCreate(NearyPlayerList_Parent,"RoleLevel",225,-3,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290548346)
		GUI:EditSetTextM(_GUIHandle,"��ҵȼ�")
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	
	_GUIHandle = GUI:EditCreate(NearyPlayerList_Parent,"Rolejob",380,-3,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290548346)
		GUI:EditSetTextM(_GUIHandle,"���ְҵ")
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	
	_GUIHandle = GUI:EditCreate(NearyPlayerList_Parent,"gonghui",555,-3,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290548346)
		GUI:EditSetTextM(_GUIHandle,"���ڹ���")
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	
	_GUIHandle = GUI:ButtonCreate(NearyPlayerList_Parent,"Player1",1807300032,11,22)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.clickWnd2")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,689, 37)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	local Player1_Parent = _GUIHandle

	
	_GUIHandle = GUI:EditCreate(Player1_Parent,"RoleName",43,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player1_Parent,"RoleLevel",213,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player1_Parent,"RoleJob",370,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player1_Parent,"Rolegh",545,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	
	_GUIHandle = GUI:ButtonCreate(NearyPlayerList_Parent,"Player2",1807300032,11,58)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.clickWnd2")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,689, 37)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	local Player2_Parent = _GUIHandle

	
	_GUIHandle = GUI:EditCreate(Player2_Parent,"RoleName",43,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player2_Parent,"RoleLevel",213,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player2_Parent,"RoleJob",370,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player2_Parent,"Rolegh",545,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	
	_GUIHandle = GUI:ButtonCreate(NearyPlayerList_Parent,"Player3",1807300032,11,94)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.clickWnd2")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetSizeM(_GUIHandle,689, 37)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	local Player3_Parent = _GUIHandle

	
	_GUIHandle = GUI:EditCreate(Player3_Parent,"RoleName",43,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player3_Parent,"RoleLevel",213,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player3_Parent,"RoleJob",370,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player3_Parent,"Rolegh",545,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	
	_GUIHandle = GUI:ButtonCreate(NearyPlayerList_Parent,"Player4",1807300032,11,130)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.clickWnd2")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:WndSetSizeM(_GUIHandle,689, 37)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	local Player4_Parent = _GUIHandle

	
	_GUIHandle = GUI:EditCreate(Player4_Parent,"RoleName",43,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player4_Parent,"RoleLevel",213,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player4_Parent,"RoleJob",370,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player4_Parent,"Rolegh",545,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	
	_GUIHandle = GUI:ButtonCreate(NearyPlayerList_Parent,"Player5",1807300032,11,166)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.clickWnd2")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 5)
		GUI:WndSetSizeM(_GUIHandle,689, 37)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	local Player5_Parent = _GUIHandle

	
	_GUIHandle = GUI:EditCreate(Player5_Parent,"RoleName",43,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player5_Parent,"RoleLevel",213,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player5_Parent,"RoleJob",370,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player5_Parent,"Rolegh",545,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	
	_GUIHandle = GUI:ButtonCreate(NearyPlayerList_Parent,"Player6",1807300032,11,202)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.clickWnd2")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 6)
		GUI:WndSetSizeM(_GUIHandle,689, 37)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	local Player6_Parent = _GUIHandle

	
	_GUIHandle = GUI:EditCreate(Player6_Parent,"RoleName",43,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player6_Parent,"RoleLevel",213,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player6_Parent,"RoleJob",370,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
		
	_GUIHandle = GUI:EditCreate(Player6_Parent,"Rolegh",545,8,100,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290485335)
		GUI:EditSetCanEdit(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	
	_GUIHandle = GUI:ButtonCreate(NearyPlayerList_Parent,"ReloadList",1806100002,18,256)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.ReloadList")
		GUI:WndSetTextM(_GUIHandle,"ˢ���б�")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,88, 31)
		GUI:WndSetTextColorM(_GUIHandle, 4289108065)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(NearyPlayerList_Parent,"Addplayer",1806100002,455,256)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.Addplayer")
		GUI:WndSetTextM(_GUIHandle,"��Ӻ���")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,88, 31)
		GUI:WndSetTextColorM(_GUIHandle, 4289108065)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ButtonCreate(NearyPlayerList_Parent,"InviteTeam",1806100002,550,256)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TeamWnd.InviteTeam")
		GUI:WndSetTextM(_GUIHandle,"�������")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,88, 31)
		GUI:WndSetTextColorM(_GUIHandle, 4289108065)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	

	TeamWnd.UIInit(_Parent)
end

--UI Logic Code Start
TeamWnd.handle = {"MyTeam","NearByTeam","NearByPlayer"}
TeamWnd.headimage = {
	{1801800012,1801800014,1801800016},
	{1801800013,1801800015,1801800017}
}
TeamWnd.WndHandle = 0
TeamWnd.nowPage = 1 --��ǰҳ��
TeamWnd.totalPage = 1 --��ҳ��
TeamWnd.team = 0  --���Ƿ��ж���
TeamWnd.teaml = 0  --���Ƿ��Ƕӳ�
TeamWnd.zhuangt = 1 --��ǰ���״̬
TeamWnd.TeamMember = {} --�����Աguid�б�
TeamWnd.page = 1
TeamWnd.name = ""  --���ѡ���������
TeamWnd.myname = "" --��ǰ�������
TeamWnd.NearTeam = {} --���������б�
TeamWnd.StartNum = 1  

function TeamWnd.UIInit(_GUIHandle)
	TeamWnd.WndHandle = _GUIHandle
	GUI:WndSetMoveWithLBM(TeamWnd.WndHandle)
	GUI:WndSetIsESCClose(TeamWnd.WndHandle,true)
	GUI:WndSetSizeM(TeamWnd.WndHandle, 744, 375)
	CenterWnd(_GUIHandle)
	
	GUI:WndRegistScript(TeamWnd.WndHandle, RDWndBaseCL_wnd_close , "TeamWnd.wndClose")
	RegisterUIEvent(LUA_EVENT_TRANSFERLEADERTEAM,"�ƽ��ӳ��ɹ�","MyTeamUpdata")
	RegisterUIEvent(LUA_EVENT_ONLEAVETEAM,"�뿪����ɹ�","TeamWnd.OnLeaveteam")	-- �Լ�or�����ɢ
	RegisterUIEvent(LUA_EVENT_ONLEAVETEAMEX,"�뿪����ɹ�EX","TeamWnd.OnLeaveteamEX")	-- ������Ա�뿪or����
	RegisterUIEvent(LUA_EVENT_ONJOINTEAM,"���³�Ա����","TeamWnd.NewPlayerJoin")
	RegisterUIEvent(LUA_EVENT_ONJOINTEAMEX,"���³�Ա����EX","TeamWnd.NewPlayerJoin")

	local _EditHandle = GUI:WndFindChildM(_GUIHandle, "Edit0")
	if _EditHandle ~= 0 then
		GUI:EditSetCanEdit(_EditHandle, false)
		GUI:EditSetFontM(_EditHandle,"SIMLI18")
	end
	
	local Myteam_handle = GUI:WndFindChildM(_GUIHandle, "MyTeam")
	if Myteam_handle ~= 0 then		
		TeamWnd.MyTeamWnd_(Myteam_handle)
		GUI:ButtonSetStateTextColor(Myteam_handle,0,MakeARGB(255, 100, 96, 80))
		GUI:ButtonSetStateTextColor(Myteam_handle,2,MakeARGB(255, 166, 152, 97))
	end
	
	local NearByTeam_handle = GUI:WndFindChildM(_GUIHandle, "NearByTeam")
	if NearByTeam_handle ~= 0 then
		GUI:ButtonSetStateTextColor(NearByTeam_handle,0,MakeARGB(255, 100, 96, 80))
		GUI:ButtonSetStateTextColor(NearByTeam_handle,2,MakeARGB(255, 166, 152, 97))
	end
	
	local NearByPlayer_handle = GUI:WndFindChildM(_GUIHandle, "NearByPlayer")
	if NearByPlayer_handle ~= 0 then
		GUI:ButtonSetStateTextColor(NearByPlayer_handle,0,MakeARGB(255, 100, 96, 80))
		GUI:ButtonSetStateTextColor(NearByPlayer_handle,0,MakeARGB(255, 100, 96, 80))
		GUI:ButtonSetStateTextColor(NearByPlayer_handle,2,MakeARGB(255, 166, 152, 97))
	end
	
	for i = 1, 5 do
		local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Player"..i..",header")
		if handle ~= 0 then
			GUI:WndSetCanRevMsg(handle, false)
		end
	end
	
	ButtonSetIsActivePageBtn(_GUIHandle,"MyTeam",true)
	if CL:GetPlayerSelfPropBase(1) then
		TeamWnd.myname = LuaRet
	end
	--���״̬��ʼ��
	MyTeamUpdata()
	if CL:GetRoleTeamStatus() then
		local index = LuaRet
		for i = 1 , 3 do 
			if i == tonumber(index) then
				TeamWnd.zhuangt = i
				local _handle = GetWindow(TeamWnd.WndHandle,"check_xz".. i)
				GUI:CheckBoxSetCheck(_handle,true)
			else
				local _handle = GetWindow(TeamWnd.WndHandle,"check_xz".. i)
				GUI:CheckBoxSetCheck(_handle,false)
			end	
		end	
	end	
	
	local handle = GetWindow(_GUIHandle,"NearyButton")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, false)
	end
	local handle = GetWindow(_GUIHandle,"NearyPlayerList")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, false)
	end
end

--�ҵĶ��������Ϣ
function MyTeamUpdata()
	if TeamWnd.WndHandle == 0 then
		return
	end	
	if not ButtonGetIsActivePageBtn(TeamWnd.WndHandle,"MyTeam") then
		return
	end
	TeamEmpty()
	if CL:GetTeamMemberGUIDList() then
		TeamWnd.TeamMember = LuaRet
		TeamWnd.team = 1
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
		GUI:WndSetVisible(handle,false)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
		GUI:WndSetVisible(handle,true)
	else
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
		GUI:WndSetVisible(handle,true)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
		GUI:WndSetVisible(handle,false)
		return
	end
	ImageSetImageID(TeamWnd.WndHandle,"Player_page,Player1,leader",1801800022)
	for i = 1 , #TeamWnd.TeamMember do 	
		local name = ""	
		local gender = 0
		local job = 1 
		local level = 1
		local Job_t = {"սʿ","��ʦ","��ʿ"}
		if CL:GetTeamPropByPlayerGUIDAll(TeamWnd.TeamMember[i],0) then
			name = LuaRet
			if i == 1 and TeamWnd.myname == name then
				TeamWnd.teaml = 1
			end
		end
		if CL:GetTeamPropByPlayerGUIDAll(TeamWnd.TeamMember[i],3) then
			level = LuaRet
		end
		if CL:GetTeamPropByPlayerGUIDAll(TeamWnd.TeamMember[i],4) then
			job = LuaRet
		end
		if CL:GetTeamPropByPlayerGUIDAll(TeamWnd.TeamMember[i],5) then
			gender = LuaRet
		end
		local TeamImageList = {	{1807300006, 1807300007, 1807300008}, {1807300009, 1807300010, 1807300011}}
		local image_id = TeamImageList[gender][job]
		ImageSetImageID(TeamWnd.WndHandle,"Player_page,Player"..i..",header",image_id)
		EditSetText(TeamWnd.WndHandle,"Player_page,Player"..i..",RoleName",""..name)
		ImageSetImageID(TeamWnd.WndHandle,"Player_page,Player"..i..",divider",1807300004)
		EditSetText(TeamWnd.WndHandle,"Player_page,Player"..i..",RoleLevel","Lv:"..level)
		EditSetText(TeamWnd.WndHandle,"Player_page,Player"..i..",RoleJob",""..Job_t[job])
		local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Player"..i)
		GUI:WndSetEnableM(handle, true)
	end
	if #TeamWnd.TeamMember == 1 then
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,OtherTeamer")
		GUI:WndSetEnableM(handle, false)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,DooutTeam")
		GUI:WndSetEnableM(handle, false)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,DismissTeam")
		GUI:WndSetEnableM(handle, true)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,ViewEquip")
		GUI:WndSetEnableM(handle, false)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,Addplayer")
		GUI:WndSetEnableM(handle, false)
	elseif TeamWnd.teaml == 0 then
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,OtherTeamer")
		GUI:WndSetEnableM(handle, false)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,DooutTeam")
		GUI:WndSetEnableM(handle, false)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,DismissTeam")
		GUI:WndSetEnableM(handle, false)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,ViewEquip")
		GUI:WndSetEnableM(handle, true)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,Addplayer")
		GUI:WndSetEnableM(handle, true)
	elseif TeamWnd.teaml == 1 and #TeamWnd.TeamMember > 1 then
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,OtherTeamer")
		GUI:WndSetEnableM(handle, true)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,DooutTeam")
		GUI:WndSetEnableM(handle, true)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,DismissTeam")
		GUI:WndSetEnableM(handle, true)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,ViewEquip")
		GUI:WndSetEnableM(handle, true)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1,Addplayer")
		GUI:WndSetEnableM(handle, true)
	end
end	

function TeamEmpty(param)
	for i = 1 , 5 do 
		ImageSetImageID(TeamWnd.WndHandle,"Player_page,Player"..i..",leader",0)
		ImageSetImageID(TeamWnd.WndHandle,"Player_page,Player"..i..",header",0)
		ImageSetImageID(TeamWnd.WndHandle,"Player_page,Player"..i..",divider",0)
		EditSetText(TeamWnd.WndHandle,"Player_page,Player"..i..",RoleName","")
		EditSetText(TeamWnd.WndHandle,"Player_page,Player"..i..",RoleLevel","")
		EditSetText(TeamWnd.WndHandle,"Player_page,Player"..i..",RoleJob","")
		local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Player"..i)
		if ButtonGetIsActivePageBtn(handle,nil) then
			ButtonSetIsActivePageBtn(handle,nil,false)
		end	
		GUI:WndSetEnableM(handle, false)
	end
end	

--�������������Ϣ
function NearByTeamUpdata()
	CL:GetNearbyTeamInfo("�����������","NearByTeam_Updata")	
end	
function NearByTeam_Updata()
	local NearByTeam_tab = LuaParam[1]
	TeamWnd.NearTeam = NearByTeam_tab
	if #NearByTeam_tab == 0 then
		return
	end	
	TeamWnd.Visible()  
	if #NearByTeam_tab > 5 then
		local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Down_page")
		GUI:WndSetEnableM(handle, true)
	end
end	

--������Ҹ�����Ϣ
function NearByPlayerUpdata()
	local NearByplayer_tab = {}
	local a = 0
	local map_name = CL:GetCurMapKeyName()
	CL:GetNearPlayerList(map_name)
	NearByplayer_tab = LuaRet
	if #NearByplayer_tab ~= 0 then
		TeamWnd.totalPage = math.ceil(#NearByplayer_tab/6)
	else
		TeamWnd.totalPage = 1
	end
	local a = #NearByplayer_tab - 6*(TeamWnd.nowPage-1)
	for i = 1, a do
		local tab = NearByplayer_tab[i+(TeamWnd.nowPage-1)*6]
		local name = tab[1]	
		local job = tab[5] 
		local level = tab[4]
		local hh = tab[6]
		local Job_t = {"սʿ","��ʦ","��ʿ"}
		EditSetText(TeamWnd.WndHandle,"NearyPlayerList,Player"..i..",RoleName",""..name)
		EditSetText(TeamWnd.WndHandle,"NearyPlayerList,Player"..i..",RoleLevel","Lv:"..level)
		EditSetText(TeamWnd.WndHandle,"NearyPlayerList,Player"..i..",RoleJob",""..Job_t[job])
		if hh ~= "" then
			EditSetText(TeamWnd.WndHandle,"NearyPlayerList,Player"..i..",Rolegh",""..hh)
		end	
		local handle = GetWindow(TeamWnd.WndHandle,"NearyPlayerList,Player"..i)
		GUI:WndSetEnableM(handle, true)
	end
end	

--�ҵĶ���
function TeamWnd.MyTeamWnd_(_handle)
	if ButtonGetIsActivePageBtn(TeamWnd.WndHandle,"MyTeam") then
		return
	end	
	TeamWnd.update(_handle)
	TeamWnd.name = ""
	if TeamWnd.team == 0 then
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
		GUI:WndSetVisible(handle,true)
		local handle = GetWindow(TeamWnd.WndHandle,"NearyButton")
		GUI:WndSetVisible(handle,false)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
		GUI:WndSetVisible(handle,false)
	else
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
		GUI:WndSetVisible(handle,false)
		local handle = GetWindow(TeamWnd.WndHandle,"NearyButton")
		GUI:WndSetVisible(handle,false)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
		GUI:WndSetVisible(handle,true)
	end
	local handle = GetWindow(TeamWnd.WndHandle,"Player_page")
	GUI:WndSetVisible(handle,true)
	local handle = GetWindow(TeamWnd.WndHandle,"NearyPlayerList")
	if handle ~= 0 then 
		GUI:WndSetVisible(handle,false)
	end	
	local handle = GetWindow(TeamWnd.WndHandle,"image0")
	if handle ~= 0 then
		GUI:WndSetImageID(handle,1807300002)	
		GUI:WndSetEnableM(handle, false)
	end	
	GUI:WndSetMoveWithLBM(TeamWnd.WndHandle)
	MyTeamUpdata()
	local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Down_page")
	if handle ~= 0 then 
		GUI:WndSetVisible(handle,false)
	end
	local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Up_page")
	if handle ~= 0 then 
		GUI:WndSetVisible(handle,false)
	end
end
--��������
function TeamWnd.NearByTeamWnd_(_handle)
	if ButtonGetIsActivePageBtn(TeamWnd.WndHandle,"NearByTeam") then
		return
	end
	TeamWnd.update(_handle)
	TeamWnd.name = ""
	local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
	GUI:WndSetVisible(handle,false)
	local handle = GetWindow(TeamWnd.WndHandle,"NearyButton")
	GUI:WndSetVisible(handle,true)
	local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
	GUI:WndSetVisible(handle,false)
	local handle = GetWindow(TeamWnd.WndHandle,"NearyPlayerList")
	GUI:WndSetVisible(handle,false)
	local handle = GetWindow(TeamWnd.WndHandle,"Player_page")
	GUI:WndSetVisible(handle,true)
	
	if TeamWnd.team == 1 then
		TeamWnd.DisableNewTeam()
	else
		if CL:GetRoleTeamStatus() then
			if LuaRet == 3 then
				TeamWnd.DisableNewTeam()
			else
				TeamWnd.ActiveNewTeam()
			end
		end
	end
	local handle = GetWindow(TeamWnd.WndHandle,"image0")
	if handle ~= 0 then
		GUI:WndSetImageID(handle,1807300002)	
		GUI:WndSetEnableM(handle, false)
	end	
	GUI:WndSetMoveWithLBM(TeamWnd.WndHandle)	
	TeamEmpty()
	NearByTeamUpdata()
	local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Down_page")
	if handle ~= 0 then 
		GUI:WndSetVisible(handle,true)
	end
	local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Up_page")
	if handle ~= 0 then 
		GUI:WndSetVisible(handle,true)
	end
end

function TeamWnd.Visible() 
	for i = 1 ,#TeamWnd.NearTeam  do 
		local tab = TeamWnd.NearTeam[i + TeamWnd.StartNum-1]
		local name = tab[2]	
		local gender = tab[7]
		local job = tab[6] 
		local level = tab[5]
		local Job_t = {"սʿ","��ʦ","��ʿ"}
		ImageSetImageID(TeamWnd.WndHandle,"Player_page,Player"..i..",leader",1801800022)
		local TeamImageList = {	{1807300006, 1807300007, 1807300008}, {1807300009, 1807300010, 1807300011}}
		local image_id = TeamImageList[gender][job]
		ImageSetImageID(TeamWnd.WndHandle,"Player_page,Player"..i..",header",image_id)
		ImageSetImageID(TeamWnd.WndHandle,"Player_page,Player"..i..",divider",1807300004)
		EditSetText(TeamWnd.WndHandle,"Player_page,Player"..i..",RoleName",""..name)
		EditSetText(TeamWnd.WndHandle,"Player_page,Player"..i..",RoleLevel","Lv:"..level)
		EditSetText(TeamWnd.WndHandle,"Player_page,Player"..i..",RoleJob",""..Job_t[job])
		local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Player"..i)
		GUI:WndSetEnableM(handle, true)
	end 
end

function TeamWnd.Up_page(_Handle)
	if TeamWnd.StartNum > 1 then 
		TeamWnd.StartNum = TeamWnd.StartNum -1
		TeamWnd.Visible()
		if TeamWnd.StartNum == 1 then 
			GUI:WndSetEnableM(_Handle,false)
		end
		local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Down_page")
		if handle ~= 0 then 
			GUI:WndSetEnableM(handle, true)
		end
	end
end

function TeamWnd.Down_page(_Handle)
	if TeamWnd.StartNum+4 < #TeamWnd.NearTeam then 
		TeamWnd.StartNum = TeamWnd.StartNum +1
		TeamWnd.Visible()
		if TeamWnd.StartNum+5 > #TeamWnd.NearTeam then 
			GUI:WndSetEnableM(_Handle,false)
		end
		local handle = GetWindow(TeamWnd.WndHandle,"Player_page,Up_page")
		if handle ~= 0 then 
			GUI:WndSetEnableM(handle, true)
		end
	end
end

function TeamWnd.ActiveNewTeam()
	local handle = GetWindow(TeamWnd.WndHandle,"NearyButton,CreateTeam1")
	GUI:WndSetEnableM(handle, true)
	local handle = GetWindow(TeamWnd.WndHandle,"NearyButton,InTeam")
	GUI:WndSetEnableM(handle, true)
end

function TeamWnd.DisableNewTeam()
	local handle = GetWindow(TeamWnd.WndHandle,"NearyButton,CreateTeam1")
	GUI:WndSetEnableM(handle, false)
	local handle = GetWindow(TeamWnd.WndHandle,"NearyButton,InTeam")
	GUI:WndSetEnableM(handle, false)
end

--��������б�
function TeamWnd.NearByPlayerWnd(_handle)
	if ButtonGetIsActivePageBtn(TeamWnd.WndHandle,"NearByPlayer") then
		return
	end	
	TeamWnd.update(_handle)   --�������
	TeamWnd.name = ""
	local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
	GUI:WndSetVisible(handle,false)
	local handle = GetWindow(TeamWnd.WndHandle,"NearyButton")
	GUI:WndSetVisible(handle,false)
	local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
	GUI:WndSetVisible(handle,false)
	local handle = GetWindow(TeamWnd.WndHandle,"Player_page")
	GUI:WndSetVisible(handle,false)
	local handle = GetWindow(TeamWnd.WndHandle,"image0")
	if handle ~= 0 then
		GUI:WndSetImageID(handle,1807300036)	
		GUI:WndSetEnableM(handle, false)
	end	
	GUI:WndSetMoveWithLBM(TeamWnd.WndHandle)
	local handle = GetWindow(TeamWnd.WndHandle,"NearyPlayerList")
	GUI:WndSetVisible(handle,true)
	TeamWnd.ReloadList()
end

--��������
function TeamWnd.CreateTeam(_handle)
	local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
	GUI:WndSetVisible(handle,false)
	local handle = GetWindow(TeamWnd.WndHandle,"NearyButton")
	GUI:WndSetVisible(handle,false)
	local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
	GUI:WndSetVisible(handle,true)
	ButtonSetIsActivePageBtn(TeamWnd.WndHandle,"MyTeam",true)
	ButtonSetIsActivePageBtn(TeamWnd.WndHandle,"NearByTeam",false)
	CL:CreateTeam("��������ɹ�","MyTeamUpdata")
end

function TeamWnd.clickWnd(_handle)
	local index = GUI:WndGetParam(_handle)
	TeamWnd.name = EditGetText(TeamWnd.WndHandle,"Player_page,Player"..index..",RoleName")
	for i = 1 , 5 do 
		local handle = GetWindow(nil,"TeamWnd,Player_page,Player"..i)
		if i == tonumber(index) then			
			ButtonSetIsActivePageBtn(handle,nil,true)
		else
			ButtonSetIsActivePageBtn(handle,nil,false)
		end	
	end	
end	

function TeamWnd.clickWnd2(_handle)	
	local index = GUI:WndGetParam(_handle)
	TeamWnd.name = EditGetText(TeamWnd.WndHandle,"NearyPlayerList,Player"..index..",RoleName")
	for i = 1 , 6 do 
		if i == tonumber(index) then
			local handle = GetWindow(nil,"TeamWnd,NearyPlayerList,Player"..index)
			ButtonSetIsActivePageBtn(handle,nil,true)
		else
			local handle = GetWindow(nil,"TeamWnd,NearyPlayerList,Player"..i)
			ButtonSetIsActivePageBtn(handle,nil,false)
		end	
	end	
end	

function TeamWnd.clickimage(_handle)
	local index = GUI:WndGetParam(_handle)
	--UI:Lua_SubmitForm("Team��", "SetIndex", ""..index)
	for i = 1 , 3 do 
		if i == tonumber(index) then
			local _handle = GetWindow(TeamWnd.WndHandle,"check_xz".. i)
			GUI:CheckBoxSetCheck(_handle,true)
		else
			local _handle = GetWindow(TeamWnd.WndHandle,"check_xz".. i)
			GUI:CheckBoxSetCheck(_handle,false)
		end	
	end	
	CL:SetRoleTeamStatus(tonumber(index))
	if TeamWnd.teaml == 0 then 
		if tonumber(index) == 3 then
			TeamWnd.DisableNewTeam()
		else
			TeamWnd.ActiveNewTeam()
		end 
	end
end	
--��Ӻ���
function TeamWnd.Addplayer()
	if TeamWnd.name == "" then 
		return 
	end
	CL:LogicAddFriend(TeamWnd.name)
end	

--�鿴װ��
function TeamWnd.ViewEquip()
	if TeamWnd.name == "" then 
		return 
	end
	CL:LogicLookInfo(TeamWnd.name)
end
--�뿪����
function TeamWnd.OutTeam()
	if CL:LeaveTeam() then
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton")
		GUI:WndSetVisible(handle,true)
		local handle = GetWindow(TeamWnd.WndHandle,"MyButton1")
		GUI:WndSetVisible(handle,false)
		TeamWnd.team = 0
		TeamWnd.teaml = 0
		TeamEmpty()	
	end
end

--�ƽ��ӳ�
function TeamWnd.OtherTeamer()
	if TeamWnd.name == "" then 
		return 
	end	
	if CL:TransferTeamLeader(TeamWnd.name) then 
		TeamWnd.teaml = 0	
	end
end

--�߳�����
function TeamWnd.DooutTeam()
	if TeamWnd.name == "" then 
		return 
	end
	if CL:KickOutOfTeam(TeamWnd.name) then
	end
end

--��ɢ����
function TeamWnd.DismissTeam()
	if TeamWnd.myname == "" then
		return 
	end	
	if CL:DismissTeam() then
		TeamWnd.team = 0
		TeamWnd.teaml = 0	
	end
end

--�������
function TeamWnd.InviteTeam()
	if TeamWnd.name == "" then 
		return 
	end
	if not CL:GetTeamMemberGUIDList() then
		if CL:CreateTeam("��������ɹ�","MyTeamUpdata") and TeamWnd.canSendInviteReq() then 
			CL:AddDelayTask("CL:LogicTeamInviteEx(".."\""..TeamWnd.name.."\""..")",500,1) 
		end	
	elseif TeamWnd.canSendInviteReq() then
		CL:LogicTeamInviteEx(TeamWnd.name)
	end		
end

function TeamWnd.canSendInviteReq()
	if CL:GetRoleTeamStatus() then
		if LuaRet == 3 then
			MessageBox(MESSAGE_STYLE_OK, "����Զ���ӹ���","","",true)
			return false
		else
			return true
		end
	else
		return false
	end	
end

function TeamWnd.OpenAutoTeam()
	CL:SetRoleTeamStatus(1)
end

--ˢ�¶���
function TeamWnd.ReloadTeam()
	TeamEmpty()
	NearByTeamUpdata()
end

--�������
function TeamWnd.InTeam()
	if TeamWnd.name == "" then 
		return 
	end	
	CL:ApplyForTeam(TeamWnd.name)
end

--ˢ������б�
function TeamWnd.ReloadList()
	for i = 1 , 6 do 
		EditSetText(TeamWnd.WndHandle,"NearyPlayerList,Player"..i..",RoleName","")
		EditSetText(TeamWnd.WndHandle,"NearyPlayerList,Player"..i..",RoleLevel","")
		EditSetText(TeamWnd.WndHandle,"NearyPlayerList,Player"..i..",RoleJob","")
		EditSetText(TeamWnd.WndHandle,"NearyPlayerList,Player"..i..",Rolegh","")
		local handle = GetWindow(TeamWnd.WndHandle,"NearyPlayerList,Player"..i)
		if handle ~= 0 then
			if ButtonGetIsActivePageBtn(handle,nil) then
				ButtonSetIsActivePageBtn(handle,nil,false)
			end	
			GUI:WndSetEnableM(handle, false)
		end	
	end
	NearByPlayerUpdata()
	TeamWnd.UpdataPageBtn()
end	

function TeamWnd.closeWnd(_handle)
	GUI:WndClose(TeamWnd.WndHandle)
end

function TeamWnd.wndClose()
	UnRegisterUIEvent(LUA_EVENT_TRANSFERLEADERTEAM,"�ƽ��ӳ��ɹ�")
	UnRegisterUIEvent(LUA_EVENT_ONLEAVETEAM,"�뿪����ɹ�")	-- �Լ�or�����ɢ
	UnRegisterUIEvent(LUA_EVENT_ONLEAVETEAMEX,"�뿪����ɹ�EX")	-- ������Ա�뿪or����
	UnRegisterUIEvent(LUA_EVENT_ONJOINTEAM,"���³�Ա����")
	UnRegisterUIEvent(LUA_EVENT_ONJOINTEAMEX,"���³�Ա����EX")
end

function TeamWnd.update(_handle)
	for i = 1 , #TeamWnd.handle do 
		local handle = GetWindow(nil,"TeamWnd,"..TeamWnd.handle[i])
		if handle == _handle then
			ButtonSetIsActivePageBtn(TeamWnd.WndHandle,TeamWnd.handle[i],true)
			
		else
			ButtonSetIsActivePageBtn(TeamWnd.WndHandle,TeamWnd.handle[i],false)
		end
	end
	if _handle == GetWindow(nil,"TeamWnd,"..TeamWnd.handle[3]) then
		handle = GetWindow(TeamWnd.WndHandle,"image_bj")
		if handle ~= 0 then
			GUI:WndSetVisible(handle,true)
		end
		handle = GetWindow(TeamWnd.WndHandle,"yy")
		if handle ~= 0 then
			GUI:WndSetVisible(handle,true)
		end
		handle = GetWindow(TeamWnd.WndHandle,"upPageBtn")
		if handle ~=0 then
			GUI:WndSetVisible(handle,true)
		end
		handle = GetWindow(TeamWnd.WndHandle,"downPageBtn")
		if handle ~=0 then
			GUI:WndSetVisible(handle,true)
		end
	else
		handle = GetWindow(TeamWnd.WndHandle,"image_bj")
		if handle ~= 0 then
			GUI:WndSetVisible(handle,false)
		end
		handle = GetWindow(TeamWnd.WndHandle,"yy")
		if handle ~= 0 then
			GUI:WndSetVisible(handle,false)
		end	
		handle = GetWindow(TeamWnd.WndHandle,"upPageBtn")
		if handle ~=0 then
			GUI:WndSetVisible(handle,false)
		end
		handle = GetWindow(TeamWnd.WndHandle,"downPageBtn")
		if handle ~=0 then
			GUI:WndSetVisible(handle,false)
		end			
	end
end

function TeamWnd.DownPgClicked()
	if TeamWnd.nowPage < TeamWnd.totalPage then
		TeamWnd.nowPage = TeamWnd.nowPage + 1
		TeamWnd.ReloadList()
	end
end

function TeamWnd.UpPgClicked()
	if TeamWnd.nowPage > 1 then
		TeamWnd.nowPage = TeamWnd.nowPage - 1
		TeamWnd.ReloadList();
	end
end

function TeamWnd.UpdataPageBtn()
	local handle = GetWindow(TeamWnd.WndHandle,"yy")
	if handle ~= 0 then
		GUI:EditSetTextM(handle, TeamWnd.nowPage.."/"..TeamWnd.totalPage)
	end
	if TeamWnd.nowPage == 1 then
		handle = GetWindow(TeamWnd.WndHandle,"upPageBtn")
		if handle ~= 0 then
			GUI:WndSetEnableM(handle, false)
		end
	else
		handle = GetWindow(TeamWnd.WndHandle,"upPageBtn")
		if handle ~= 0 then
			GUI:WndSetEnableM(handle, true)
		end
	end
	if TeamWnd.nowPage == TeamWnd.totalPage then
		handle = GetWindow(TeamWnd.WndHandle,"downPageBtn")
		if handle ~= 0 then
			GUI:WndSetEnableM(handle, false)
		end
	else
		handle = GetWindow(TeamWnd.WndHandle,"downPageBtn")
		if handle ~= 0 then
			GUI:WndSetEnableM(handle, true)
		end
	end
end

function TeamWnd.NewPlayerJoin()
	CL:AddDelayTask("MyTeamUpdata()",500,1)
end

function TeamWnd.OnLeaveteam()
	TeamWnd.team = 0
	TeamWnd.teaml = 0	
	MyTeamUpdata()
end

function TeamWnd.OnLeaveteamEX()		
	MyTeamUpdata()
end

TeamWnd.main()