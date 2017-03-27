FamilyMember = {}
function FamilyMember.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    

    _GUIHandle = GUI:RichEditCreate(_Parent,"_InfoRE",13,203,364,98)
    if _GUIHandle ~= 0 then
	GUI:WndRegistScript(_GUIHandle, RDWnd2DRichEditCL_pos_change, "FamilyMember.On_InfoRE_pos_change")
        GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetFlagsM(_GUIHandle, flg_wndBase_useBkBuffer)
        GUI:RichEditSetEditEnable(_GUIHandle, true)
        GUI:RichEditAppendString(_GUIHandle, "一二三四五六七八九十一二8888888888888888888888888888888888888三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十")
    end
    

    FamilyMember.WndHandle = _Parent
end


function FamilyMember.On_InfoRE_pos_change()
	CL:Log("rich edit pos")
end



FamilyMember.main()