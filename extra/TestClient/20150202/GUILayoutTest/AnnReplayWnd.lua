AnnReplayWnd = {}
function AnnReplayWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"AnnReplayBtn",1904000008,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,65, 66)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    AnnReplayWnd.UIInit(_Parent)
end

--UI Logic Code Start
function AnnReplayWnd.UIInit(_Handle)
end
AnnReplayWnd.main()