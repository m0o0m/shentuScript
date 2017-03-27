FamilyListItem = {}
function FamilyListItem.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"FamilyListItem",0, 0, 0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent, 760, 80)
    end

    --[[_GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1832800019,0,0)
    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndSetSizeM(_GUIHandle, 680, 80)
    end
    ]]--

    _GUIHandle = GUI:ButtonCreate(_Parent,"ReqFamily",1850000307,820,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle, "申请入会")
        GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255, 194, 182, 160))
    end

    _GUIHandle = GUI:EditCreate(_Parent,"NameEdit",130,38,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"LeaderEdit",380,38,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"NumEdit",630,38,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetFontCenter(_GUIHandle)
    end

    FamilyListItem.UIInit(_Parent)
end

--UI Logic Code Start
function FamilyListItem.UIInit(_Handle)
end
FamilyListItem.main()




