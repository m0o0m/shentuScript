HotKeySet = {}
function HotKeySet.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1931100019,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,583, 262)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"OK",1930001006,411,229)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"确认")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Reset",1930001006,314,229)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"恢复默认")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Cancel",1930001006,485,229)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"取消")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyNameBK0",10,28,135,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, 4291006559)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyNameBK1",286,28,124,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, 4291006559)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyNameBK2",10,56,135,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, 4291006559)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyNameBK3",286,56,124,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, 4291006559)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyNameBK4",10,84,135,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, 4291006559)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyNameBK5",286,84,124,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, 4291006559)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyNameBK6",10,112,135,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, 4291006559)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyNameBK7",286,112,124,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, 4291006559)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyNameBK8",10,140,135,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, 4291006559)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyNameBK9",286,140,124,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, 4291006559)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyNameBK10",10,168,135,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, 4291006559)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyNameBK11",286,168,124,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, 4291006559)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyNameBK12",10,196,135,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, 4291006559)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyNameBK13",286,196,124,20)
    if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
        GUI:WndSetTextColorM(_GUIHandle, 4291006559)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyStrBK0",154,27,122,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
        GUI:WndSetTextColorM(_GUIHandle, 4294882875)
        GUI:WndSetImageID(_GUIHandle,1931100002)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyStrBK1",419,27,122,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
        GUI:WndSetTextColorM(_GUIHandle, 4294882875)
        GUI:WndSetImageID(_GUIHandle,1931100002)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyStrBK2",154,55,122,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
        GUI:WndSetTextColorM(_GUIHandle, 4294882875)
        GUI:WndSetImageID(_GUIHandle,1931100002)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyStrBK3",419,55,122,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
        GUI:WndSetTextColorM(_GUIHandle, 4294882875)
        GUI:WndSetImageID(_GUIHandle,1931100002)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyStrBK4",154,83,122,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
        GUI:WndSetTextColorM(_GUIHandle, 4294882875)
        GUI:WndSetImageID(_GUIHandle,1931100002)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyStrBK5",419,83,122,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
        GUI:WndSetTextColorM(_GUIHandle, 4294882875)
        GUI:WndSetImageID(_GUIHandle,1931100002)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyStrBK6",154,111,122,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
        GUI:WndSetTextColorM(_GUIHandle, 4294882875)
        GUI:WndSetImageID(_GUIHandle,1931100002)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyStrBK7",419,111,122,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
        GUI:WndSetTextColorM(_GUIHandle, 4294882875)
        GUI:WndSetImageID(_GUIHandle,1931100002)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyStrBK8",154,139,122,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
        GUI:WndSetTextColorM(_GUIHandle, 4294882875)
        GUI:WndSetImageID(_GUIHandle,1931100002)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyStrBK9",419,139,122,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
        GUI:WndSetTextColorM(_GUIHandle, 4294882875)
        GUI:WndSetImageID(_GUIHandle,1931100002)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyStrBK10",154,167,122,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
        GUI:WndSetTextColorM(_GUIHandle, 4294882875)
        GUI:WndSetImageID(_GUIHandle,1931100002)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyStrBK11",419,167,122,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
        GUI:WndSetTextColorM(_GUIHandle, 4294882875)
        GUI:WndSetImageID(_GUIHandle,1931100002)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyStrBK12",154,195,122,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
        GUI:WndSetTextColorM(_GUIHandle, 4294882875)
        GUI:WndSetImageID(_GUIHandle,1931100002)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"HotKeyStrBK13",419,195,122,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_dlgEdit_textInCenter)
        GUI:WndSetTextColorM(_GUIHandle, 4294882875)
        GUI:WndSetImageID(_GUIHandle,1931100002)
    end
    
    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"ScrollBar",1930001010,1930001014,1930001022,1930300015,555,30,190)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,190, 18)
    end
    
    HotKeySet.UIInit(_Parent)
end

--UI Logic Code Start
function HotKeySet.UIInit(_Handle)
end
HotKeySet.main()




