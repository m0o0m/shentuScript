DealerBuyWnd = {}
function DealerBuyWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _Parent = GUI:WndCreateWnd(_Parent,"DealerBuyWnd",0,200,160)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1832800018,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Edit0",20,30,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"收购道具：")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit1",20,70,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"价格类型：")
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Img0",1830000004,140,105)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit2",20,110,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"输入单价：")
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Img1",1830000004,140,145)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit3",20,150,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"输入数量：")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"OK",1832800020,30,200)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"确定")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Cancel",1832800020,210,200)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"取消")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit4",20,260,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"委托收购需要5000金币手续费")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ChoMoney",1831100017,155,72)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ChoVcoin",1831100019,225,72)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"InputPrice",145,108,100,30)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"InputNum",145,148,100,30)
    if _GUIHandle ~= 0 then
    end
    
    DealerBuyWnd.UIInit(_Parent)
end

--UI Logic Code Start
function DealerBuyWnd.UIInit(_Handle)
end
DealerBuyWnd.main()




