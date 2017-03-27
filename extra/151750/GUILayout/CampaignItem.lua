CampaignItem = {}
function CampaignItem.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"CampaignItem",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,450, 29)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"name",110,11,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"level",245,11,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"time",5,11,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"status",310,11,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"join",1832700001,380,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"参与")
    end

    CampaignItem.UIInit(_Parent)
end

--UI Logic Code Start
function CampaignItem.UIInit(_Handle)
end
CampaignItem.main()




