TipsWnd={}
function TipsWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0

    _GUIHandle = GUI:ImageCreate(_Parent,"image1",1831000004,295, 120)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,310, 430)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"name1",295, 140, 180, 30)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:RichEditCreate(_Parent,"content1",295, 180, 180, 330)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"image2",1831000004,295, 120)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,310, 430)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"name2",295, 140, 0, 0)
    if _GUIHandle ~= 0 then
    end

     _GUIHandle = GUI:RichEditCreate(_Parent,"content2",295, 180, 180, 330)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"image3",1831000004,295, 120)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,310, 430)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"name3",295, 140, 0, 0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:RichEditCreate(_Parent,"content3",295, 180, 180, 330)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"CloseBtn",1832500014, 665, 120)
    if _GUIHandle ~= 0 then
    end

    TipsWnd.UIInit(_Parent)
end

--UI Logic Code Start
function TipsWnd.UIInit(_Handle)
end
TipsWnd.main()




