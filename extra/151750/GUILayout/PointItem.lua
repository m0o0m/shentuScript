PointItem = {}
function PointItem.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _Parent = GUI:WndCreateWnd(_Parent,"PointItem",0,10,85)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end 
    
    _GUIHandle = GUI:EditCreate(_Parent,"TYPE",30,2,0,0)
    if _GUIHandle ~= 0 then
    end 
    
    _GUIHandle = GUI:EditCreate(_Parent,"NUM",130,2,0,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ADD_0",1832300001,175,-5)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ADD_1",1832300001,215,-5)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SUB_0",1832300003,285,-5)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"SUB_1",1832300003,250,-5)
    if _GUIHandle ~= 0 then
    end
    
    PointItem.UIInit(_Parent)
end

--UI Logic Code Start
function PointItem.UIInit(_Handle)
end
PointItem.main()




