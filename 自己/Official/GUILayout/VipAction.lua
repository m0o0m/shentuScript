VipAction = {}
function VipAction.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Icon",0,2,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Button",1930001006,2,82)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4291341445)
    end
    
    VipAction.UIInit(_Parent)
end

--UI Logic Code Start
function VipAction.UIInit(_Handle)
	VipAction.WndHandle = _Handle
	GUI:WndSetSizeM(VipAction.WndHandle, 0, 0)
end
VipAction.main()