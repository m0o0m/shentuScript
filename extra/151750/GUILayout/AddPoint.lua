AddPoint = {}
function AddPoint.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()
    
    _Parent = GUI:WndCreateWnd(_Parent,"AddPoint",0,_DeviceSizeX / 2 - 170,50)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
      
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_HEAD",1830800034,0,0)
    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)  
        GUI:WndSetSizeM(_GUIHandle,360, 520)
    end
      
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1832500014,305,0)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"Title",1832300000,100,20)
    if _GUIHandle ~= 0 then
    end
     
    _GUIHandle = GUI:ImageCreate(_Parent,"Back",1831400001,20,60)
    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)    
        GUI:WndSetSizeM(_GUIHandle,320, 320)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"EditPoint",35,395,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"强化点数")
        GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255,255,215,0)) 
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"PointNum",140,395,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"PointOK",1831100015,50,454)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255,194,182,160))
        GUI:WndSetTextM(_GUIHandle,"确定")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"PointCancel",1831100015,200,454)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255,194,182,160))
        GUI:WndSetTextM(_GUIHandle,"取消")
    end
    
    AddPoint.UIInit(_Parent)
end

--UI Logic Code Start
function AddPoint.UIInit(_Handle)
end

AddPoint.main()