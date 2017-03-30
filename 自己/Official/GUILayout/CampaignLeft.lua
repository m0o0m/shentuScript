CampaignLeft = {}
function CampaignLeft.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1932700001,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,564, 384)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"CampaignNPCEdit",419,83,109,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"CampaignDescRE",362,110,172,84)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"CampaignAwardRE",362,238,172,70)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ExitGame",1930001006,393,339)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"退出游戏")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ReturnGame",1930001006,475,339)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"继续游戏")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnJoin0",1930001006,256,79)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"参与")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnJoin1",1930001006,256,106)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"参与")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnJoin2",1930001006,256,133)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"参与")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnJoin3",1930001006,256,160)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"参与")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnJoin4",1930001006,256,187)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"参与")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnJoin5",1930001006,256,214)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"参与")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnJoin6",1930001006,256,241)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"参与")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnJoin7",1930001006,256,268)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"参与")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnJoin8",1930001006,256,295)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"参与")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290884518)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CloseBtn",1930001002,530,7)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ScrollBarVCreate(_Parent,"VScrollBar",1900100104,1900100108,1900100100,1900100120,323,79,242)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,242, 18)
        GUI:ScrollBarSetSetp(_GUIHandle,2)
    end
    
    
    
    _GUIHandle = GUI:ListBoxCreate(_Parent,"CampaignList",20,77,227,245)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    CampaignLeft.UIInit(_Parent)
end

--UI Logic Code Start
function CampaignLeft.UIInit(_Handle)
    CampaignLeft.WndHandle = _Handle
    
	GUI:WndSetMoveWithLBM(CampaignLeft.WndHandle)
	GUI:WndSetIsESCClose(CampaignLeft.WndHandle, true)
	GUI:WndSetFlagsM(CampaignLeft.WndHandle, flg_wndBase_autoTop)
end
CampaignLeft.main()




