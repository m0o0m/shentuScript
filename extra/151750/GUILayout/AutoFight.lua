AutoFight = {}
function AutoFight.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    _Parent = GUI:WndCreateWnd(_Parent,"AutoFight",0,_DeviceSizeX / 2 - 400,50)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1831100001,31,95)
    if _GUIHandle ~= 0 then
		GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:WndSetSizeM(_GUIHandle,740, 425)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_HEAD",1831100000,31,0)
    if _GUIHandle ~= 0 then
    end
    --保护
    _GUIHandle = GUI:ButtonCreate(_Parent,"Tab0",1831500000,-8,70)
    if _GUIHandle ~= 0 then
    end
    --战斗
    _GUIHandle = GUI:ButtonCreate(_Parent,"Tab1",1831500004,-8,180)
    if _GUIHandle ~= 0 then
    end
    --物品
    _GUIHandle = GUI:ButtonCreate(_Parent,"Tab2",1831500002,-8,290)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1832500014,720,0)
    if _GUIHandle ~= 0 then
    end
    
    AutoFight.UIInit(_Parent)
end

--UI Logic Code Start
function AutoFight.UIInit(_Handle)
end
AutoFight.main()







