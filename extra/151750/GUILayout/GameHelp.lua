GameHelp = {}
function GameHelp.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"GameHelp",0,80,20)
    if _Parent ~= 0 then
    end
    
    ---1833200000   1833200002
    _GUIHandle = GUI:ButtonCreate(_Parent,"Tab0",0,-8,70)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Tab1",0,-8,180)
    if _GUIHandle ~= 0 then
    end
    
    
    GameHelp.UIInit(_Parent)
end

--UI Logic Code Start
function GameHelp.UIInit(_Handle)
end
GameHelp.main()





