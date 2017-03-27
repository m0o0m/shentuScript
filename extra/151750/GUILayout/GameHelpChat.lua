GameHelpChat = {}
function GameHelpChat.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"GameHelpChat",0,50,80)
    if _Parent ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"",1833200010,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check0",1831800008,"",26,2)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check1",1831800008,"",22,74)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check2",1831800008,"",22,142)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check3",1831800008,"",22,212)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check4",1831800008,"",30,296)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check5",1831800008,"",30,338)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check6",1831800008,"",180,296)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"AutoChatTick",310,4,100,20)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"10")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"AutoChat0",80,71,550,35)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"AutoChat1",81,140,550,35)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"AutoChat2",83,207,550,35)
    if _GUIHandle ~= 0 then
    end 
    
    _GUIHandle = GUI:EditCreate(_Parent,"AutoRecv",156,336,500,33)
    if _GUIHandle ~= 0 then
    end
     
    GameHelpChat.UIInit(_Parent)
end

--UI Logic Code Start
function GameHelpChat.UIInit(_Handle)
end
GameHelpChat.main()





