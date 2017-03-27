CampaignJoin = {}
function CampaignJoin.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"CampaignJoin",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,450, 48)
    end

    _GUIHandle = GUI:EditCreate(_Parent,"name",10,22,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"count",315,22,0,0)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"join",1832700001,385,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"参与")
    end

    CampaignJoin.UIInit(_Parent)
end

--UI Logic Code Start
function CampaignJoin.UIInit(_Handle)
end
CampaignJoin.main()




