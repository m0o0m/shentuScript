DealerBuyList = {}
function DealerBuyList.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _Parent = GUI:WndCreateWnd(_Parent,"DealerBuyList",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BTN_SEARCH",1832800020,530,72)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"搜索")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BTN_SHOWALL",1832800020,630,72)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"显示全部")
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"img0",1831800012,50,110)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BTN_DELEGATE_BUY",1832800020,630,455)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"我要收购")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"PrevBtn",1832800013,400,405)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"NextBtn",1832800015,520,405)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"PageEdit",475,410,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"1")
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"img1",1831100020,190,465)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"img2",1830000004,230,460)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"img3",1831100018,400,465)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"img4",1830000004,440,460)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"EDT_YB",240,465,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"0")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"EDT_GOLD",450,465,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"0")
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"img5",1830000004,385,75)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"InputSearch",390,78,100,30)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle, "")
    end
    
    DealerBuyList.UIInit(_Parent)
end

--UI Logic Code Start
function DealerBuyList.UIInit(_Handle)
end
DealerBuyList.main()




