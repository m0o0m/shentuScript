RockerWnd = {}
function RockerWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0


    _GUIHandle = GUI:ImageCreate(_Parent,"Default", 0, 0, 0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"ControlBg", 1850000013, 0, 0)
    if _GUIHandle ~= 0 then
        GUI:WndSetVisible(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Control", 1850000014, 0, 0)
    if _GUIHandle ~= 0 then
        GUI:WndSetVisible(_GUIHandle, false)
    end
    RockerWnd.UIInit(_Parent)
end

--UI Logic Code Start
function RockerWnd.UIInit(_Handle)
end
RockerWnd.main()








