DealerSellWnd = {}
function DealerSellWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _Parent = GUI:WndCreateWnd(_Parent,"DealerSellWnd",0,200,160)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1832800018,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"PriceTypeEdit",20,30,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"价格类型：")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"InputPriceEdit",20,80,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"输入价格：")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"OK",1832800020,30,200)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"确定")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Cancel",1832800020,210,200)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"取消")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit0",20,260,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"寄售挂单需要5000金币手续费")
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"img0",1830000004,140,75)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"SellItem",0,140,120,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ChoMoney",1831100017,155,32)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ChoVcoin",1831100019,225,32)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"InputPrice",145,78,100,30)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"")
    end

    
    DealerSellWnd.UIInit(_Parent)
end

--UI Logic Code Start
function DealerSellWnd.UIInit(_Handle)
end
DealerSellWnd.main()




