RankWnd = {}
function RankWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _GUIHandle = GUI:ImageCreate(_Parent,"BkImg",1806500000,0,0)
    if _GUIHandle ~= 0 then

		GUI:WndSetSizeM(_Parent,722, 504)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
	
    _GUIHandle = GUI:ImageCreate(_Parent,"BkImg2",1806900001,35,60)
    if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,652, 427)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end

	_GUIHandle = GUI:ImageCreate(_Parent,"wndTitleImage",1806900000,325,6)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,74, 28)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
    
	_GUIHandle = GUI:ImageCreate(_Parent,"pageEditImage",1806700027,362,453)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,75, 18)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"pgBtn1",1806900004,42,63)
	if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.pageBtnLc")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,141, 46)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
    
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"pgBtn2",1806900008,42,113)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.pageBtnLc")
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,141, 46)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"pgBtn3",1806900012,42,163)
	if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.pageBtnLc")
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetSizeM(_GUIHandle,141, 46)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"pgBtn4",1806900016,42,213)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.pageBtnLc")
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:WndSetSizeM(_GUIHandle,141, 46)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"rankTitle",218,71,46,15)
	if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
        GUI:EditSetTextM(_GUIHandle,"排名")
    end
    
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameTitle",332,71,46,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"姓名")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelTitle",447,71,46,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"等级")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"classTitle",536,71,46,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"职业")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"guidTitle",628,71,46,15)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294030964)
		GUI:EditSetTextM(_GUIHandle,"性别")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"myRank_f",195,456,68,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294953984)
		GUI:EditSetTextM(_GUIHandle,"我的排名:")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"myRank",253,456,68,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle,"未上榜")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"tips",504,456,200,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292794311)
		GUI:EditSetTextM(_GUIHandle,"此榜根据所有玩家数据进行排行")
	end
	
    
	_GUIHandle = GUI:ButtonCreate(_Parent,"closeBtn",1805900080,652,3)
	if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.Close")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 38)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"pageEdit",382,451,40,25)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
    end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"pgUpBtn",1806700029,339,452)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.pgUpBtn_LC")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,22, 22)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"pgDownBtn",1806700033,438,452)
	if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.pgDownBtn_LC")
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,22, 22)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"playerBtn1",1806900002,186,98)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.playerBtn_LC")
		GUI:WndRegistScript(_GUIHandle,1003, "RankWnd.playerBtn_LC")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,499, 36)
		GUI:ImageSetParam(_GUIHandle, 1)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"playerBtn1Selected",1806900003,186,98)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,499, 36)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"rankEdit1",190,102,76,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameEdit1",274,102,140,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelEdit1",419,102,83,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"classEdit1",507,102,83,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"sexEdit1",573,102,137,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"playerBtn2",1806900002,186,132)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.playerBtn_LC")
		GUI:WndRegistScript(_GUIHandle,1003, "RankWnd.playerBtn_LC")
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,499, 36)
		GUI:ImageSetParam(_GUIHandle, 2)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"playerBtn2Selected",1806900003,186,132)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,499, 36)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"rankEdit2",190,136,76,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameEdit2",274,136,140,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelEdit2",419,136,83,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"classEdit2",507,136,83,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"sexEdit2",573,136,137,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"playerBtn3",1806900002,186,166)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.playerBtn_LC")
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetSizeM(_GUIHandle,499, 36)
		GUI:ImageSetParam(_GUIHandle, 3)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"playerBtn3Selected",1806900003,186,166)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,499, 36)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"rankEdit3",190,170,76,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameEdit3",274,170,140,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelEdit3",419,170,83,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"classEdit3",507,170,83,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"sexEdit3",573,170,137,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"playerBtn4",1806900002,186,200)
	if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.playerBtn_LC")
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:WndSetSizeM(_GUIHandle,499, 36)
		GUI:ImageSetParam(_GUIHandle, 4)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"playerBtn4Selected",1806900003,186,200)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,499, 36)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"rankEdit4",190,204,76,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameEdit4",274,204,140,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelEdit4",419,204,83,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"classEdit4",507,204,83,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"sexEdit4",573,204,137,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"playerBtn5",1806900002,186,234)
	if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.playerBtn_LC")
		GUI:WndSetParam(_GUIHandle, 5)
		GUI:WndSetSizeM(_GUIHandle,499, 36)
		GUI:ImageSetParam(_GUIHandle, 5)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"playerBtn5Selected",1806900003,186,234)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,499, 36)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"rankEdit5",190,238,76,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameEdit5",274,238,140,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelEdit5",419,238,83,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"classEdit5",507,238,83,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"sexEdit5",573,238,137,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"playerBtn6",1806900002,186,268)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.playerBtn_LC")
		GUI:WndSetParam(_GUIHandle, 6)
		GUI:WndSetSizeM(_GUIHandle,499, 36)
		GUI:ImageSetParam(_GUIHandle, 6)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"playerBtn6Selected",1806900003,186,268)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,499, 36)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"rankEdit6",190,272,76,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameEdit6",274,272,140,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelEdit6",419,272,83,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"classEdit6",507,272,83,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"sexEdit6",573,272,137,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"playerBtn7",1806900002,186,302)
	if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.playerBtn_LC")
		GUI:WndSetParam(_GUIHandle, 7)
		GUI:WndSetSizeM(_GUIHandle,499, 36)
		GUI:ImageSetParam(_GUIHandle, 7)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"playerBtn7Selected",1806900003,186,302)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,499, 36)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"rankEdit7",190,306,76,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameEdit7",274,306,140,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelEdit7",419,306,83,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"classEdit7",507,306,83,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"sexEdit7",573,306,137,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"playerBtn8",1806900002,186,336)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.playerBtn_LC")
		GUI:WndSetParam(_GUIHandle, 8)
		GUI:WndSetSizeM(_GUIHandle,499, 36)
		GUI:ImageSetParam(_GUIHandle, 8)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"playerBtn8Selected",1806900003,186,336)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,499, 36)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"rankEdit8",190,340,76,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameEdit8",274,340,140,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelEdit8",419,340,83,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"classEdit8",507,340,83,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"sexEdit8",573,340,137,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"playerBtn9",1806900002,186,370)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.playerBtn_LC")
		GUI:WndSetParam(_GUIHandle, 9)
		GUI:WndSetSizeM(_GUIHandle,499, 36)
		GUI:ImageSetParam(_GUIHandle, 9)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"playerBtn9Selected",1806900003,186,370)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,499, 36)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"rankEdit9",190,374,76,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameEdit9",274,374,140,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelEdit9",419,374,83,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"classEdit9",507,374,83,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"sexEdit9",573,374,137,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"playerBtn10",1806900002,186,404)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "RankWnd.playerBtn_LC")
		GUI:WndSetParam(_GUIHandle, 10)
		GUI:WndSetSizeM(_GUIHandle,499, 36)
		GUI:ImageSetParam(_GUIHandle, 10)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"playerBtn10Selected",1806900003,186,404)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,499, 36)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"rankEdit10",190,408,76,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"nameEdit10",274,408,140,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"levelEdit10",419,408,83,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"classEdit10",507,408,83,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"sexEdit10",573,408,137,30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4293181855)
		GUI:EditSetFontCenter(_GUIHandle)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"rankImage1",1801500039,220,100)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,24, 28)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"rankImage2",1801500040,218,134)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,24, 28)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"rankImage3",1801500041,218,168)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,24, 28)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
    
    
    RankWnd.UIInit(_Parent)
end

--UI Logic Code Start
RankWnd.localString = {}
local l = RankWnd.localString
l.rankTypeBtn = {
	{"总 排 行",  "此榜根据所有玩家数据进行排行"},
	{"战 神 榜",  "此榜根据所有战士玩家数据进行排行"},
	{"法 师 榜",  "此榜根据所有法师玩家数据进行排行"},
	{"道 士 榜",  "此榜根据所有道士玩家数据进行排行"}
}
l.gridTitleTable = {"排名", "姓名", "等级", "职业", "性别"}
l.myRank_f = "我的排名:"
l.outofRank = "未上榜"
l.getRankFail = "排行榜获取失败，参数错误"

RankWnd.nowPage = 1
RankWnd.nowRankType = 1
RankWnd.list = {}
RankWnd.myRank = {}
RankWnd.updateTime = 0

RankWnd._playerBtn_ = {}
RankWnd._rankImg_ = {}
RankWnd._rankEdit_ = {}
RankWnd._nameEdit_ = {}
RankWnd._levelEdit_ = {}
RankWnd._classEdit_ = {}
RankWnd._sexEdit_ = {}

function RankWnd.UIInit(_Parent)
	RankWnd._wnd = _Parent
	GUI:WndSetSizeM(RankWnd._wnd, 684, 478)
    GUI:WndSetIsESCClose(RankWnd._wnd, true)
    GUI:WndSetMoveWithLBM(RankWnd._wnd)
    GUI:WndSetMagicUI(RankWnd._wnd,1)
	GUI:WndSetFlagsM(RankWnd._wnd, flg_wndBase_autoTop)
	CenterWnd(RankWnd._wnd)

	--RegisterUIEvent(LUA_EVENT_RANKLIST, "RankWnd_获取排行列表", RankWnd.getRankList)
	--GUI:WndRegistScript(RankWnd._wnd,RDWndBaseCL_wnd_close, "RankWnd.wndClose")

	local _GUIHandle = 0
	for i = 1, 4 do
		_GUIHandle = GUI:WndFindChildM(_Parent, "pgBtn"..i)
		if _GUIHandle ~= 0 then
			GUI:ButtonSetTextFont(_GUIHandle,"SIMLI18")
		end
	end
	
    RankWnd.backHandleTb = {}
	for i = 1, 10 do
        RankWnd.backHandleTb[i] = GetWindow(RankWnd._wnd, "playerBtn"..i.."Selected")
		if i < 4 then
			_GUIHandle = GUI:WndFindChildM(_Parent, "rankImage"..i)
			if _GUIHandle ~= 0 then
				RankWnd._rankImg_[i] = _GUIHandle
			end
		end
		_GUIHandle = GUI:WndFindChildM(_Parent, "playerBtn"..i)
		if _GUIHandle ~= 0 then
			RankWnd._playerBtn_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindChildM(_Parent, "rankEdit"..i)
		if _GUIHandle ~= 0 then
			RankWnd._rankEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindChildM(_Parent, "nameEdit"..i)
		if _GUIHandle ~= 0 then
			RankWnd._nameEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindChildM(_Parent, "levelEdit"..i)
		if _GUIHandle ~= 0 then
			RankWnd._levelEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindChildM(_Parent, "classEdit"..i)
		if _GUIHandle ~= 0 then
			RankWnd._classEdit_[i] = _GUIHandle
		end
		_GUIHandle = GUI:WndFindChildM(_Parent, "sexEdit"..i)
		if _GUIHandle ~= 0 then
			RankWnd._sexEdit_[i] = _GUIHandle
		end
	end
	
	_GUIHandle = GUI:WndFindChildM(_Parent, "myRank")
	if _GUIHandle ~= 0 then
		RankWnd._myRankEdit = _GUIHandle
	end
	_GUIHandle = GUI:WndFindChildM(_Parent, "pageEdit")
	if _GUIHandle ~= 0 then
		RankWnd._pgEdit = _GUIHandle
	end
	_GUIHandle = GUI:WndFindChildM(_Parent, "pgUpBtn")
	if _GUIHandle ~= 0 then
		RankWnd._pgUpBtn = _GUIHandle
	end
	_GUIHandle = GUI:WndFindChildM(_Parent, "pgDownBtn")
	if _GUIHandle ~= 0 then
		RankWnd._pgDownBtn = _GUIHandle
	end

	_GUIHandle = GUI:WndFindChildM(_Parent, "pgBtn1")
	if _GUIHandle ~= 0 then
		RankWnd.pageBtnLc(_GUIHandle)
	end
end

function RankWnd.pageBtnLc(h)
	if RankWnd._selPgBtn == h then return end
	GUI:ButtonSetIsActivePageBtn(h, true)
	if RankWnd._selPgBtn then
		GUI:ButtonSetIsActivePageBtn(RankWnd._selPgBtn, false)
	end
	RankWnd._selPgBtn = h
	RankWnd.nowPage = 1
	
	local param = GUI:WndGetParam(h)
	RankWnd.nowRankType = param
	if RankWnd.updateTime ~= 0 and RankWnd.list[param] then		--服务器没有数据 & 本地有数据
		RankWnd.newPage()
	else	--请求
		if not CL:GetRankList(param-1, "RankWnd_获取排行列表", "RankWnd.getRankList") then
			GUI:WndClose(RankWnd._wnd)
		end
	end
end

function RankWnd.getRankList()
	local rType = LuaParam[1] + 1
	RankWnd.updateTime = LuaParam[3]
	if RankWnd.updateTime > 0 then
		GUI:WndAddTimerBrief(RankWnd._wnd, RankWnd.updateTime*1000, "RankWnd.getListTime")
	end
	
	if RankWnd.nowRankType ~= rType then return end
	RankWnd.list[RankWnd.nowRankType] = LuaParam[4]
	for i = 1, #RankWnd.list[RankWnd.nowRankType] do
		RankWnd.list[RankWnd.nowRankType][i] = RankWnd.list[RankWnd.nowRankType][i]
	end
	
	RankWnd.newPage()
end

function RankWnd.newPage()
	local _GUIHandle = 0
	local listCount = #RankWnd.list[RankWnd.nowRankType]
	
	CL:GetPlayerSelfPropBase(ROLE_PROP_ROLENAME)
	local myName = LuaRet
	local list = RankWnd.list[RankWnd.nowRankType]
	for i = 1, #list do
		if list[i][2] == myName then
			RankWnd.myRank[RankWnd.nowRankType] = i
			break
		end
	end
	if RankWnd.myRank[RankWnd.nowRankType] == nil then
		RankWnd.myRank[RankWnd.nowRankType] = l.outofRank
	end
	
	for i = 1, 10 do
		local index = i+(RankWnd.nowPage-1)*10
		if index <= listCount then
			RankWnd.setPlayerBtnVisible(i, true)
			
			local btnImg, specialColor = 0, 0
			if index == 1 then
				btnImg = 1801400021
				specialColor = CL:MakeARGB(255, 230, 2, 237)
			elseif index == 2 then
				btnImg = 1801400021
				specialColor = CL:MakeARGB(255, 69, 221, 254)
			elseif index == 3 then
				btnImg = 1801400025
				specialColor = CL:MakeARGB(255, 37, 163, 92)
			else
				btnImg = 1801400029
				specialColor = CL:MakeARGB(255, 230, 210, 132)
			end
			
			--GUI:WndSetImageID(RankWnd._playerBtn_[i], btnImg)

			_GUIHandle = RankWnd._rankImg_[i]
			if _GUIHandle then
				if index <= 3 then
					GUI:WndSetVisible(_GUIHandle, true)
				else
					GUI:WndSetVisible(_GUIHandle, false)
				end
			end
			
			_GUIHandle = RankWnd._rankEdit_[i]
			if index <= 3 then
				GUI:WndSetVisible(_GUIHandle, false)
			else
				GUI:WndSetVisible(_GUIHandle, true)
				GUI:WndSetTextColorM(_GUIHandle, specialColor)
				GUI:EditSetTextM(_GUIHandle, tostring(index))
			end
			
			_GUIHandle = RankWnd._nameEdit_[i]
			if _GUIHandle ~= 0 then
				GUI:WndSetTextColorM(RankWnd._nameEdit_[i], specialColor)
				GUI:EditSetTextM(RankWnd._nameEdit_[i], RankWnd.list[RankWnd.nowRankType][index][2])
			end

			_GUIHandle = RankWnd._levelEdit_[i]
			if _GUIHandle then
				GUI:WndSetTextColorM(_GUIHandle, specialColor)
				GUI:EditSetTextM(_GUIHandle, tostring(RankWnd.list[RankWnd.nowRankType][index][5]))
			end
			_GUIHandle = RankWnd._classEdit_[i]
			if _GUIHandle then
				GUI:WndSetTextColorM(_GUIHandle, specialColor)
				GUI:EditSetTextM(_GUIHandle, RDJOBName[RankWnd.list[RankWnd.nowRankType][index][3]])
			end
			_GUIHandle = RankWnd._sexEdit_[i]
			if _GUIHandle then
				GUI:WndSetTextColorM(_GUIHandle, specialColor)
				GUI:EditSetTextM(_GUIHandle, RDSexName[RankWnd.list[RankWnd.nowRankType][index][4]])
			end
		else
			RankWnd.setPlayerBtnVisible(i, false)
		end
	end
	
	local pageCount = math.ceil(listCount/10)
	_GUIHandle = RankWnd._pgEdit
	if _GUIHandle then
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, CL:MakeARGB(255, 206, 179, 98))
		GUI:EditSetTextM(_GUIHandle, RankWnd.nowPage.."/"..pageCount)
	end
	
	GUI:EditSetTextM(RankWnd._myRankEdit, tostring(RankWnd.myRank[RankWnd.nowRankType]))
	
	_GUIHandle = RankWnd._pgUpBtn
	if RankWnd.nowPage == 1 then 
		GUI:WndSetEnableM(_GUIHandle, false) 
	else
		GUI:WndSetEnableM(_GUIHandle, true) 
	end
	_GUIHandle = RankWnd._pgDownBtn
	if RankWnd.nowPage == pageCount then 
		GUI:WndSetEnableM(_GUIHandle, false) 
	else
		GUI:WndSetEnableM(_GUIHandle, true) 
	end
end

function RankWnd.pgUpBtn_LC()
	RankWnd.nowPage = RankWnd.nowPage - 1
	RankWnd.newPage()
end

function RankWnd.pgDownBtn_LC()
	RankWnd.nowPage = RankWnd.nowPage + 1
	RankWnd.newPage()
end

function RankWnd.playerBtn_LC(h)
	local p = GUI:WndGetParam(h)
    if RankWnd._selIndex ~= 0 then
        GUI:WndSetVisible(RankWnd.backHandleTb[p], true)
        if RankWnd._selIndex ~= nil then
            GUI:WndSetVisible(RankWnd.backHandleTb[RankWnd._selIndex], false)
        end
    else
        GUI:WndSetVisible(RankWnd.backHandleTb[p], true)
    end
	RankWnd._selIndex = p
	GUI:GetWndMousePos(RankWnd._wnd)
	UI:Lua_OpenWindow(RankWnd._wnd, "Menu.lua")
	GUI:WndSetPosM(Menu._wnd["RankWnd"],  LuaRet[1], LuaRet[2])
	GUI:WndSetVisible(Menu._wnd["RankWnd"], true)
end

function RankWnd.setPlayerBtnVisible(i, bool)
	if i < 4 then
		GUI:WndSetVisible(RankWnd._rankImg_[i], bool)
	end
	GUI:WndSetVisible(RankWnd._playerBtn_[i], bool)
	GUI:WndSetVisible(RankWnd._rankEdit_[i], bool)
	GUI:WndSetVisible(RankWnd._nameEdit_[i], bool)
	GUI:WndSetVisible(RankWnd._levelEdit_[i], bool)
	GUI:WndSetVisible(RankWnd._classEdit_[i], bool)
	GUI:WndSetVisible(RankWnd._sexEdit_[i], bool)
end

function RankWnd.getListTime()
	GUI:WndDelAllTimer(RankWnd._wnd)
	RankWnd.updateTime = 0
end

function RankWnd.wndClose()
	UnRegisterUIEvent(LUA_EVENT_RANKLIST, "RankWnd_获取排行列表")
	RankWnd = nil
end

function RankWnd.Close(_Handle,_Param)
	GUI:WndClose(RankWnd._wnd)
end

RankWnd.main()

