DealerItem = {}
function DealerItem.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _Parent = GUI:WndCreateWnd(_Parent,"DealerItem",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item",0,-12,-12,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"name",45,10,0,0)
    if _GUIHandle ~= 0 then
    end
      
    _GUIHandle = GUI:EditCreate(_Parent,"price",215,12,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"num",290,10,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"owner",375,10,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"time",500,14,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"buysell",1831100015,500,5)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"购买")
    end
    
    DealerItem.UIInit(_Parent)
end

--UI Logic Code Start
function DealerItem.UIInit(_Handle)
end
DealerItem.main()




