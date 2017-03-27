RoleGUI = {}
function RoleGUI.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage",0,0,0)
    if _GUIHandle ~= 0 then
         GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX, _DeviceSizeY)
		GUI:ImageSetAroundImage(_GUIHandle, 1850300016, 1850300018, 1850300022, 1850300024, 1850300020, 1850300017, 1850300023, 1850300019, 1850300021)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage2",0,17,63)
    if _GUIHandle ~= 0 then
         GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX - 34, _DeviceSizeY - 80)
		GUI:ImageSetAroundImage(_GUIHandle, 1850300025, 1850300027, 1850300031, 1850300033, 1850300029, 1850300026, 1850300032, 1850300028, 1850300030)
    end

_GUIHandle = GUI:ButtonCreate(_Parent,"RoleEquimentPage",1850300008,636,6)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"RoleSkillPage",1850500000, 768,6)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"RoleSkillSetPage",1850500004,900,6)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423,_DeviceSizeX - 70, 8)
    if _GUIHandle ~= 0 then
    end

    RoleGUI.UIInit(_Parent)
end

--UI Logic Code Start
function RoleGUI.UIInit(_Handle)
	msg('RoleGUI')
end

RoleGUI.main()

