TaskWindow = {}
function TaskWindow.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1932600003,0,23)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,135, 186)
    end
    
    
    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"TaskScroll",1900100104,1900100108,1900500012,1900500016,133,50,154)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,154, 18)
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"TaskText",11,55,119,140)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"EditBack",1932600016,4,33)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,43, 18)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit0",3,33,43,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit1",46,33,43,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit2",89,33,43,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"MainBtn",1932600004,53,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,80, 25)
    end
    
    TaskWindow.UIInit(_Parent)
end

--UI Logic Code Start
function TaskWindow.UIInit(_Handle)
	TaskWindow.WndHandle = _Handle
	GUI:WndSetMoveWithLBM(TaskWindow.WndHandle)
end
TaskWindow.main()