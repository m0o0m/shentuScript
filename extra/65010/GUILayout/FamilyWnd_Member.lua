FamilyWnd_Member = {}
function FamilyWnd_Member.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
	_Parent = GUI:WndCreateWnd(_Parent,"FamilyWnd_Member", 1802100001, 30, 96)
	if _Parent ~= 0 then
		GUI:WndRegistScript(_Parent, RDWndBaseCL_wnd_close, "FamilyWnd_Member.wndClose")
	end
    
    _GUIHandle = GUI:EditCreate(_Parent,"positionTitle",16,0,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"职位")
		GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"nameTitle",146,0,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"名称")
		GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvlTitle",276,0,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"等级")
		GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"classTitle",406,0,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"职业")
		GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"contributionTitle",536,0,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"贡献值")
		GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"playerBtn1",1802100013,4,32)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_Member.playerBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"position1",16,35,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name1",146,35,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvl1",276,35,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"class1",406,35,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"contribution1",536,35,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"playerBtn2",1802100013,4,66)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_Member.playerBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"position2",16,69,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name2",146,69,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvl2",276,69,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"class2",406,69,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"contribution2",536,69,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"playerBtn3",1802100013,4,100)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_Member.playerBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"position3",16,103,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name3",146,103,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvl3",276,103,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"class3",406,103,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"contribution3",536,103,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"playerBtn4",1802100013,4,134)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_Member.playerBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"position4",16,137,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name4",146,137,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvl4",276,137,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"class4",406,137,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"contribution4",536,137,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"playerBtn5",1802100013,4,168)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_Member.playerBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"position5",16,171,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name5",146,171,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvl5",276,171,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"class5",406,171,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"contribution5",536,171,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"playerBtn6",1802100013,4,202)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_Member.playerBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"position6",16,205,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name6",146,205,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvl6",276,205,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"class6",406,205,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"contribution6",536,205,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"playerBtn7",1802100013,4,236)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_Member.playerBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"position7",16,239,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name7",146,239,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvl7",276,239,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"class7",406,239,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"contribution7",536,239,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"playerBtn8",1802100013,4,270)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_Member.playerBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 8)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"position8",16,273,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name8",146,273,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvl8",276,273,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"class8",406,273,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"contribution8",536,273,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"playerBtn9",1802100013,4,304)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_Member.playerBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 9)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"position9",16,307,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name9",146,307,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvl9",276,307,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"class9",406,307,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"contribution9",536,307,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"playerBtn10",1802100013,4,338)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_Member.playerBtn_LC")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 10)
        GUI:WndSetSizeM(_GUIHandle,650, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"position10",16,341,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name10",146,341,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"lvl10",276,341,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"class10",406,341,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"contribution10",536,341,96,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"memberCount",15,386,151,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"成员人数:")
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"memberCount_num",85,386,151,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"pgEditBackImg",1800000279,298,380)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,58, 34)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"pgEdit",310,384,52,26)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pgUpBtn",1800000094,268,387)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_Member.pgUpBtn_LC")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 19)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"pgDownBtn",1800000098,367,387)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbClick, "FamilyWnd_Member.pgDownBtn_LC")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 19)
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"showOnlineMemberOnlyCB",1800000176,"只显示在线成员",520,389)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "FamilyWnd_Member.showOnlineMemberOnlyCB_CC")
        GUI:WndSetTextM(_GUIHandle,"只显示在线成员")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,114, 21)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"msg",250,250,220,25)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4293935424)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
	
    FamilyWnd_Member.UIInit(_Parent)
end

--UI Logic Code Start
FamilyWnd_Member.nowPage = 1
FamilyWnd_Member._playerBtn_ = {}
FamilyWnd_Member._class_ = {}
FamilyWnd_Member._contribution_ = {}
FamilyWnd_Member._lvl_ = {}
FamilyWnd_Member._name_ = {}
FamilyWnd_Member._position_ = {}
FamilyWnd_Member.member_ = {}
FamilyWnd_Member.showOnlineOnly = false
function FamilyWnd_Member.UIInit(_Handle)
	FamilyWnd_Member._wnd = _Handle
	FamilyWnd._nowPage = _Handle
	
	local _GUIHandle = 0
	local commonUI_ ={
		"pgEdit",
		"pgUpBtn",
		"pgDownBtn",
		"memberCount_num",
	} 
	for i = 1, #commonUI_ do
		_GUIHandle = GUI:WndFindChildM(_Handle, commonUI_[i])
		if _GUIHandle ~= 0 then
			FamilyWnd_Member[("_"..commonUI_[i])] = _GUIHandle
		end 
	end
	for i = 1, 10 do
		_GUIHandle = GUI:WndFindChildM(_Handle, "playerBtn"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_Member._playerBtn_[i] = _GUIHandle
		end 
		_GUIHandle = GUI:WndFindChildM(_Handle, "position"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_Member._position_[i] = _GUIHandle
		end 
		_GUIHandle = GUI:WndFindChildM(_Handle, "name"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_Member._name_[i] = _GUIHandle
		end 
		_GUIHandle = GUI:WndFindChildM(_Handle, "lvl"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_Member._lvl_[i] = _GUIHandle
		end 
		_GUIHandle = GUI:WndFindChildM(_Handle, "class"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_Member._class_[i] = _GUIHandle
		end 
		_GUIHandle = GUI:WndFindChildM(_Handle, "contribution"..i)
		if _GUIHandle ~= 0 then
			FamilyWnd_Member._contribution_[i] = _GUIHandle
		end 
	end
	
	CL:GetFamilyAllMenberList(0, 50,"FamilyWnd_Member_行会成员", "FamilyWnd_Member.getMemberInfo")
end

function FamilyWnd_Member.getMemberInfo()
	--1.index;2.num;3.totalNum
	local startIdx = LuaParam[1]
	local num = LuaParam[2]
	local totalNum = LuaParam[3]

	local tmpT = LuaParam[4]
	for i = 1, #tmpT do
		FamilyWnd_Member.member_[startIdx+i] = tmpT[i]
	end
	for i = startIdx+#tmpT+1, #FamilyWnd_Member.member_ do
		FamilyWnd_Member.member_[i] = nil
	end
	if startIdx+num == totalNum then
		--只有获取完全部数据后才更新，因为不获取全部数据无法判断哪些是在线成员
		FamilyWnd_Member.memberOnline_ = {}
		for i = 1, #FamilyWnd_Member.member_ do
			if FamilyWnd_Member.member_[i][10] == 1 then
				table.insert(FamilyWnd_Member.memberOnline_, FamilyWnd_Member.member_[i])
			end
		end
		
		FamilyWnd_Member.updatePage()
		GUI:EditSetTextM(FamilyWnd_Member._memberCount_num, #FamilyWnd_Member.memberOnline_.." / "..totalNum)
	else
		CL:GetFamilyAllMenberList(startIdx+num, 50,"FamilyWnd_Member_行会成员", "FamilyWnd_Member.getMemberInfo")
	end
end

function FamilyWnd_Member.updatePage()
	local index, tempT_, playerGUID_ = 0, {}, {}
	for i = 1, 10 do
		if FamilyWnd_Member.showOnlineOnly then
			tempT_ = FamilyWnd_Member.memberOnline_
		else
			tempT_ = FamilyWnd_Member.member_
		end
		index = (FamilyWnd_Member.nowPage-1)*10 + i
		if tempT_[index] then
			GUI:WndSetVisible(FamilyWnd_Member._class_[i], true)
			GUI:WndSetVisible(FamilyWnd_Member._contribution_[i], true)
			GUI:WndSetVisible(FamilyWnd_Member._lvl_[i], true)
			GUI:WndSetVisible(FamilyWnd_Member._name_[i], true)
			GUI:WndSetVisible(FamilyWnd_Member._playerBtn_[i], true)
			GUI:WndSetVisible(FamilyWnd_Member._position_[i], true)
			
			GUI:EditSetTextM(FamilyWnd_Member._class_[i], tostring(RDJOBName[tempT_[index][4]]))
			GUI:EditSetTextM(FamilyWnd_Member._lvl_[i], tostring(tempT_[index][3]))
			GUI:EditSetTextM(FamilyWnd_Member._name_[i], tostring(tempT_[index][2]))
			if FamilyWnd.familyTitle_ then
				for j, k in pairs(FamilyWnd.familyTitle_) do
					if k[1] == tempT_[index][6] then
						GUI:EditSetTextM(FamilyWnd_Member._position_[i], tostring(k[2]))
						break
					end
				end
			else
				FamilyWnd_Member.needfamilyTitle = 1
			end
			if tempT_[index][10] == 1 then
				GUI:WndSetImageID(FamilyWnd_Member._playerBtn_[i], 1802100013)
				GUI:EditSetTextColor(FamilyWnd_Member._class_[i], 4293317252)
				GUI:EditSetTextColor(FamilyWnd_Member._contribution_[i], 4293317252)
				GUI:EditSetTextColor(FamilyWnd_Member._lvl_[i], 4293317252)
				GUI:EditSetTextColor(FamilyWnd_Member._name_[i], 4293317252)
				GUI:EditSetTextColor(FamilyWnd_Member._position_[i], 4293317252)
			else
				GUI:WndSetImageID(FamilyWnd_Member._playerBtn_[i], 1802100017)
				GUI:EditSetTextColor(FamilyWnd_Member._class_[i], 4290822336)
				GUI:EditSetTextColor(FamilyWnd_Member._contribution_[i], 4290822336)
				GUI:EditSetTextColor(FamilyWnd_Member._lvl_[i], 4290822336)
				GUI:EditSetTextColor(FamilyWnd_Member._name_[i], 4290822336)
				GUI:EditSetTextColor(FamilyWnd_Member._position_[i], 4290822336)
			end
			UI:Lua_GUID2Str(tempT_[index][1])
			table.insert(playerGUID_, LuaRet)
		else
			GUI:WndSetVisible(FamilyWnd_Member._class_[i], false)
			GUI:WndSetVisible(FamilyWnd_Member._contribution_[i], false)
			GUI:WndSetVisible(FamilyWnd_Member._lvl_[i], false)
			GUI:WndSetVisible(FamilyWnd_Member._name_[i], false)
			GUI:WndSetVisible(FamilyWnd_Member._playerBtn_[i], false)
			GUI:WndSetVisible(FamilyWnd_Member._position_[i], false)
		end
	end
	
	UI:Lua_SubmitForm("行会", "updatePlayerContribution", serialize(playerGUID_))
	FamilyWnd_Member.updatePgBtn()
end

function FamilyWnd_Member.pgUpBtn_LC(_Handle)
	FamilyWnd_Member.nowPage = FamilyWnd_Member.nowPage - 1
	FamilyWnd_Member.updatePage()
end

function FamilyWnd_Member.pgDownBtn_LC(_Handle)
	FamilyWnd_Member.nowPage = FamilyWnd_Member.nowPage + 1
	FamilyWnd_Member.updatePage()
end

function FamilyWnd_Member.updatePgBtn()
	local pgCount = 0
	if FamilyWnd_Member.showOnlineOnly then
		pgCount = math.ceil(#FamilyWnd_Member.memberOnline_/10)
	else
		pgCount = math.ceil(#FamilyWnd_Member.member_/10)
	end
	if pgCount == 0 then
		pgCount = 1
	end
	GUI:EditSetTextM(FamilyWnd_Member._pgEdit, FamilyWnd_Member.nowPage.." / "..pgCount)
	
	if FamilyWnd_Member.nowPage <= 1 then
		GUI:WndSetEnableM(FamilyWnd_Member._pgUpBtn, false)
	else
		GUI:WndSetEnableM(FamilyWnd_Member._pgUpBtn, true)
	end
	
	if FamilyWnd_Member.nowPage >= pgCount then
		GUI:WndSetEnableM(FamilyWnd_Member._pgDownBtn, false)
	else
		GUI:WndSetEnableM(FamilyWnd_Member._pgDownBtn, true)
	end
end

function FamilyWnd_Member.showOnlineMemberOnlyCB_CC(_Handle)
	FamilyWnd_Member.showOnlineOnly = GUI:CheckBoxGetCheck(_Handle)
	FamilyWnd_Member.nowPage = 1
	FamilyWnd_Member.updatePage()
end

function FamilyWnd_Member.playerBtn_LC(_Handle)
	local param = GUI:WndGetParam(_Handle)
	FamilyWnd_Member.selBtnIndex = param
	local index = (FamilyWnd_Member.nowPage-1)*10 + param
	if FamilyWnd_Member.showOnlineOnly then
		FamilyWnd_Member.selGuid = FamilyWnd_Member.memberOnline_[index][1]
		FamilyWnd_Member.titleid = FamilyWnd_Member.memberOnline_[index][6]
	else
		FamilyWnd_Member.selGuid = FamilyWnd_Member.member_[index][1]
		FamilyWnd_Member.titleid = FamilyWnd_Member.member_[index][6]
	end
	UI:Lua_OpenWindow(FamilyWnd_Member._wnd, "Menu.lua")
	GUI:GetWndMousePos(FamilyWnd_Member._wnd)
	GUI:WndSetPosM(Menu._wnd["FamilyWnd_Member"],  LuaRet[1], LuaRet[2])
	GUI:WndSetVisible(Menu._wnd["FamilyWnd_Member"], true)
end

function FamilyWnd_Member.wndClose()
	local wnd = GUI:WndFindWindow(0, "FamilyWnd_Member") 
	if wnd == 0 then
	--	UnRegisterUIEvent(LUA_EVENT_FAMILYMEMBER, "FamilyWnd_Member_行会成员")
		FamilyWnd_Member = nil
	end
end

--client
function FamilyWnd_Member_updatePlayerContribution(list_)
	if not FamilyWnd_Member then return end
	for i, v in pairs(list_) do
		GUI:EditSetTextM(FamilyWnd_Member._contribution_[i], tostring(v))
	end
end

function FamilyWnd_Member.msg_up(str)
	local _handle = GUI:WndFindChildM(FamilyWnd_Member._wnd, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, str)
	end
	if FamilyWnd_Member.DelayTaskId ~= nil then
		CL:DelDelayTask(FamilyWnd_Member.DelayTaskId)
		FamilyWnd_Member.DelayTaskId = nil
	end
	FamilyWnd_Member.DelayTaskId = CL:AddDelayTask("FamilyWnd_Member.clear()", 3000, 1)
end	

function FamilyWnd_Member.clear()
	local _handle = GUI:WndFindChildM(FamilyWnd_Member._wnd, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, "")
	end
end

FamilyWnd_Member.main()