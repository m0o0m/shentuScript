DealerMineList = {}
function DealerMineList.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
       
    _Parent = GUI:WndCreateWnd(_Parent,"DealerMineWnd",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"img0",1831800013,50,105)
    if _GUIHandle ~= 0 then
    end
    
    DealerMineList.UIInit(_Parent)
end

--UI Logic Code Start
function DealerMineList.UIInit(_Handle)
end
DealerMineList.main()




