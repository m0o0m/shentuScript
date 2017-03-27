MailItem = {}
function MailItem.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"MailItem",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"type",0,2,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"name",60,2,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"send_time",250,5,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"last_time",340,5,0,0)
    if _GUIHandle ~= 0 then
    end

    MailItem.UIInit(_Parent)
end

--UI Logic Code Start
function MailItem.UIInit(_Handle)
end
MailItem.main()




