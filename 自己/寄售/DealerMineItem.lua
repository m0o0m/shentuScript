DealerMineItem = {}
function DealerMineItem.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _Parent = GUI:WndCreateWnd(_Parent,"DealerMineItem",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
  
    _GUIHandle = GUI:EditCreate(_Parent,"text",10,10,580,40)
    if _GUIHandle ~= 0 then
    end
      
    _GUIHandle = GUI:ButtonCreate(_Parent,"cancel",1831100015,600,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"撤销")
    end
    
    DealerMineItem.UIInit(_Parent)
end

--UI Logic Code Start
function DealerMineItem.UIInit(_Handle)
end
DealerMineItem.main()




