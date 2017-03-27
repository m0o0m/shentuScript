Campaign = {}
function Campaign.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _GUIHandle = GUI:ImageCreate(_Parent,"Campaign",1806500000,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,722, 504)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image",1807100003,34,56)
    if _GUIHandle ~= 0 then
    
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,652, 427)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
	_GUIHandle = GUI:ButtonCreate(_Parent,"closeWnd",1805900080,665,2)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.Close")
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 38)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TitleImg3",1807100006,471,63)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,213, 43)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
	_GUIHandle = GUI:ButtonCreate(_Parent,"ItemBtn1",1807100007,36,93)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.select")
        GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,409, 39)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    

	_GUIHandle = GUI:ButtonCreate(_Parent,"ItemBtn2",1807100007,36,136)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.select")
        GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,409, 39)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    

	_GUIHandle = GUI:ButtonCreate(_Parent,"ItemBtn3",1807100007,36,181)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.select")
        GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetSizeM(_GUIHandle,409, 39)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    

	_GUIHandle = GUI:ButtonCreate(_Parent,"ItemBtn4",1807100007,36,226)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.select")
        GUI:WndSetParam(_GUIHandle, 4)
		GUI:WndSetSizeM(_GUIHandle,409, 39)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    

	_GUIHandle = GUI:ButtonCreate(_Parent,"ItemBtn5",1807100007,36,271)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.select")
        GUI:WndSetParam(_GUIHandle, 5)
		GUI:WndSetSizeM(_GUIHandle,409, 39)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    

	_GUIHandle = GUI:ButtonCreate(_Parent,"ItemBtn6",1807100007,36,316)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.select")
        GUI:WndSetParam(_GUIHandle, 6)
		GUI:WndSetSizeM(_GUIHandle,409, 39)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    

	_GUIHandle = GUI:ButtonCreate(_Parent,"ItemBtn7",1807100007,36,361)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.select")
        GUI:WndSetParam(_GUIHandle, 7)
		GUI:WndSetSizeM(_GUIHandle,409, 39)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    

	_GUIHandle = GUI:ButtonCreate(_Parent,"ItemBtn8",1807100007,36,406)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.select")
        GUI:WndSetParam(_GUIHandle, 8)
		GUI:WndSetSizeM(_GUIHandle,409, 39)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    

	_GUIHandle = GUI:EditCreate(_Parent,"DataNameEdit1",36,64,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290613889)
        GUI:EditSetTextM(_GUIHandle,"活动时间")
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"DataNameEdit2",153,64,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290613889)
        GUI:EditSetTextM(_GUIHandle,"活动名称")
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"DataNameEdit3",267,64,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290613889)
        GUI:EditSetTextM(_GUIHandle,"参加等级")
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"DataNameEdit4",369,64,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290613889)
        GUI:EditSetTextM(_GUIHandle,"操作")
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
        
    _GUIHandle = GUI:EditCreate(_Parent,"TitleEdit3",516,70,131,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294950921)
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
        GUI:EditSetFontM(_GUIHandle, "SIMLI18")
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TitleNameImg",1807100000,329,7)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,66, 27)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    
	_GUIHandle = GUI:RichEditCreate(_Parent,"AwardRichEdit",471,134,210,98)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
        GUI:RichEditSetDefaultTextColor(_GUIHandle, 4293181855)
    end
    
    
	_GUIHandle = GUI:RichEditCreate(_Parent,"DescRichEdit",472,274,210,196)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
        GUI:RichEditSetDefaultTextColor(_GUIHandle, 4293181855)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"TimeEdit1",38,103,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"NameEdit1",154,105,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"LevelEdit1",270,104,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"OperateEdit1",366,104,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"TimeEdit2",38,149,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"NameEdit2",154,149,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"LevelEdit2",270,149,85,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"OperateEdit2",366,149,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"TimeEdit3",38,194,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"NameEdit3",154,194,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"LevelEdit3",270,194,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"OperateEdit3",366,194,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"TimeEdit4",38,239,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"NameEdit4",154,239,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"LevelEdit4",270,239,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"OperateEdit4",366,239,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"TimeEdit5",38,284,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"NameEdit5",154,283,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"LevelEdit5",270,284,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"OperateEdit5",366,284,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"TimeEdit6",38,329,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"NameEdit6",154,329,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"LevelEdit6",270,329,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"OperateEdit6",366,329,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"TimeEdit7",38,374,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"NameEdit7",154,374,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"LevelEdit7",270,374,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"OperateEdit7",366,374,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"TimeEdit8",38,419,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"NameEdit8",154,419,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:EditCreate(_Parent,"LevelEdit8",270,419,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"OperateEdit8",366,419,85,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
	_GUIHandle = GUI:ButtonCreate(_Parent,"OperateBtn1",1800000081,377,98)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.operate")
        GUI:WndSetTextM(_GUIHandle,"参与")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,63, 26)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"OperateBtn2",1800000081,377,143)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.operate")
        GUI:WndSetTextM(_GUIHandle,"参与")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,63, 26)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"OperateBtn3",1800000081,377,188)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.operate")
        GUI:WndSetTextM(_GUIHandle,"参与")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,63, 26)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"OperateBtn4",1800000081,377,233)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.operate")
        GUI:WndSetTextM(_GUIHandle,"参与")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,63, 26)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"OperateBtn5",1800000081,377,278)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.operate")
        GUI:WndSetTextM(_GUIHandle,"参与")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,63, 26)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"OperateBtn6",1800000081,377,323)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.operate")
        GUI:WndSetTextM(_GUIHandle,"参与")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,63, 26)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"OperateBtn7",1800000081,377,368)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.operate")
        GUI:WndSetTextM(_GUIHandle,"参与")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,63, 26)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"OperateBtn8",1800000081,377,413)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.operate")
        GUI:WndSetTextM(_GUIHandle,"参与")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 8)
        GUI:WndSetSizeM(_GUIHandle,63, 26)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"nextBtn",1806700033,296,453)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.nextPage")
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,22, 22)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"preBtn",1806700029,190,453)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Campaign.prePage")
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,22, 22)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
	
	_GUIHandle = GUI:ImageCreate(_Parent,"pageImg",1806700027,217,455)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,75, 18)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
	_GUIHandle = GUI:EditCreate(_Parent,"PageEdit",225,456,58,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_2",1807100002,551,109)
    if _GUIHandle ~= 0 then
    
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,52, 14)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_3",1807100001,551,251)
    if _GUIHandle ~= 0 then
    
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,52, 14)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    
    Campaign.UIInit(_Parent)
end

--UI Logic Code Start

Campaign.WndHandle = 0
Campaign.NowPage = 1
Campaign.TolPage = 1
Campaign.DataList = {}

function Campaign.UIInit(_Handle)
	Campaign.WndHandle = _Handle
	GUI:WndSetSizeM(Campaign.WndHandle, 722, 504)
	CenterWnd(Campaign.WndHandle)
	GUI:WndSetMagicUI(Campaign.WndHandle, 1)
	GUI:WndSetMoveWithLBM(Campaign.WndHandle)
	GUI:WndSetIsESCClose(Campaign.WndHandle, true)

    GUI:WndRegistScript(Campaign.WndHandle, RDWndBaseCL_wnd_close , "Campaign.wndClose")
	RegisterUIEvent(LUA_EVENT_CAMPAIGNLIST, "Campaign_list", Campaign.listBack)		--活动列表
end

function Campaign.listBack()
	local Campaigntab = LuaParam[1]	
	local itemCount = #Campaigntab
	for i = 1 , itemCount do 
		Campaign.DataList[i] = Campaigntab[i]
	end
	Campaign.NowPage = 1
	Campaign.TolPage = math.ceil(itemCount/8)
	Campaign.show()
end

function Campaign.select(_Handle)
	local index = GUI:WndGetParam(_Handle)
	for i = 1 , 8 do
		if i == index then
			ButtonSetIsActivePageBtn(_Handle,nil,true)
		else
			ButtonSetIsActivePageBtn(Campaign.WndHandle,'ItemBtn'..i,false)
            EditSetTextM(Campaign.WndHandle,'TitleEdit3', tostring(Campaign.DataList[index][2]))
		end	
	end
	CL:GetCampaignDetail(Campaign.DataList[index+(Campaign.NowPage-1)*8][1], "Campaign_Select", "Campaign.RecvDetail")
end

function Campaign.operate(_Handle)
	local index = GUI:WndGetParam(_Handle)
	local wnd = GUI:WndFindWindow(Campaign.WndHandle, "ItemBtn"..index)
	Campaign.select(wnd)
	CL:CampaignJoin(Campaign.DataList[index][1])
end

function Campaign.prePage()
	if Campaign.NowPage>1 then
		Campaign.NowPage = Campaign.NowPage - 1
		Campaign.show()
	end
end

function Campaign.nextPage()
	if Campaign.NowPage<Campaign.TolPage then
		Campaign.NowPage = Campaign.NowPage + 1
		Campaign.show()
	end
end

function Campaign.empty()
	RichEditClear(Campaign.WndHandle,"AwardRichEdit") 
	RichEditClear(Campaign.WndHandle,"DescRichEdit") 
end

function Campaign.show()
	Campaign.empty()
	local index = (Campaign.NowPage-1)*8
	local operateStr = ""
	local level = 0
	local bool = false
	if CL:GetPlayerSelfPropBase(ROLE_PROP_LEVEL) then 
		level = LuaRet
	end 
	for i = 1 , 8 do
		bool = false
		index=index+1
		ButtonSetIsActivePageBtn(Campaign.WndHandle,'ItemBtn'..i,false)
		if index <= #Campaign.DataList then
			WndSetVisibleM(Campaign.WndHandle,'TimeEdit'..i,true)
			WndSetVisibleM(Campaign.WndHandle,'NameEdit'..i,true)
			WndSetVisibleM(Campaign.WndHandle,'LevelEdit'..i,true)
			WndSetVisibleM(Campaign.WndHandle,'ItemBtn'..i,true)
			EditSetTextM(Campaign.WndHandle,'TimeEdit'..i,string.sub(Campaign.DataList[index][3],0,5).."-"..string.sub(Campaign.DataList[index][4],0,5))
			EditSetTextM(Campaign.WndHandle,'NameEdit'..i,Campaign.DataList[index][2])
			EditSetTextM(Campaign.WndHandle,'LevelEdit'..i,Campaign.DataList[index][5].."-"..Campaign.DataList[index][6])
			if Campaign.DataList[index][9] == 2 then
				operateStr = "进行中"
				if level >= Campaign.DataList[index][5] and level <= Campaign.DataList[index][6] then
					bool=true
				end
			elseif Campaign.DataList[index][9] == 3 then
				operateStr = "已结束"
			else
				operateStr = "未开始"
			end
			if	bool then
				WndSetVisibleM(Campaign.WndHandle,'OperateEdit'..i,false)
				WndSetVisibleM(Campaign.WndHandle,'OperateBtn'..i,true)
			else
				WndSetVisibleM(Campaign.WndHandle,'OperateEdit'..i,true)
				EditSetTextM(Campaign.WndHandle,'OperateEdit'..i,operateStr)
				WndSetVisibleM(Campaign.WndHandle,'OperateBtn'..i,false)
			end
		else
			WndSetVisibleM(Campaign.WndHandle,'TimeEdit'..i,false)
			WndSetVisibleM(Campaign.WndHandle,'NameEdit'..i,false)
			WndSetVisibleM(Campaign.WndHandle,'LevelEdit'..i,false)
			WndSetVisibleM(Campaign.WndHandle,'OperateEdit'..i,false)
			WndSetVisibleM(Campaign.WndHandle,'OperateBtn'..i,false)
			WndSetVisibleM(Campaign.WndHandle,'ItemBtn'..i,false)
		end
	end
	EditSetTextM(Campaign.WndHandle,'PageEdit',Campaign.NowPage.."/"..Campaign.TolPage)
end

function Campaign.wndClose()
    UnRegisterUIEvent(LUA_EVENT_CAMPAIGNLIST, "Campaign_list")
    Campaign = nil
end

function Campaign.Close(_Handle,_Param)
	GUI:WndClose(Campaign.WndHandle)
end

function Campaign.RecvDetail()
	local campId = LuaParam[1]
	local npc = LuaParam[2]
	local desc = LuaParam[3]
	local award = LuaParam[4]
	RichEditClear(Campaign.WndHandle,"AwardRichEdit") 
	RichEditClear(Campaign.WndHandle,"DescRichEdit") 
	RichEditAppendString(Campaign.WndHandle, "AwardRichEdit", tostring(award))
	RichEditAppendString(Campaign.WndHandle, "DescRichEdit", tostring(desc))
end

Campaign.main()
