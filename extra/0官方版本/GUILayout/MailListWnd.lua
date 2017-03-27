MailListWnd = {}
function MailListWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1930900009,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,389, 466)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"GUI_BTN_SYS",1931500003,323,43)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"系统")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,35, 22)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CLOSE",1930001002,358,5)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"GUI_OPEN",1930001006,52,423)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"打开邮件")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"GUI_DELETE",1930001006,125,423)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"删除邮件")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"GUI_DELALL",1930001006,198,423)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"全部删除")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"GUI_CLOSE",1930001006,271,423)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"关闭邮件")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"GUI_NEXT",1930900005,216,391)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,19, 18)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"GUI_PREV",1930900001,141,390)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,19, 18)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"GUI_PAGE",162,392,50,13)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"GUI_1",1930001018,10,45)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"收邮件")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 22)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
	_GUIHandle = GUI:ListBoxCreate(_Parent, "GUI_LIST_MAIL", 18, 108, 350, 272)
	if _GUIHandle ~= 0 then
	end

    MailListWnd.UIInit(_Parent)
end

--UI Logic Code Start
function MailListWnd.UIInit(_Handle)
	MailListWnd._wnd = _Handle
	GUI:WndSetSizeM(MailListWnd._wnd, 389, 466)
	GUI:WndSetIsESCClose(MailListWnd._wnd, true)
	GUI:WndSetMoveWithLBM(MailListWnd._wnd)
	GUI:WndSetMagicUI(MailListWnd._wnd,1)
	CenterWnd(MailListWnd._wnd)
end
MailListWnd.main()




