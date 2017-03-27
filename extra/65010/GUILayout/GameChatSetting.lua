GameChatSetting = {}
function GameChatSetting.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",0,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,583, 262)
    end
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"CheckAutoChat",1800000176,"自动发言",25,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"自动发言")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,74, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4291932767)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"EditBkImg0",1801700006,260,11)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,57, 31)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"EditChatWait",265,13,42,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ChatWordBkImg",0,17,49)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,554, 132)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"CheckChatWord1",1800000176,"",25,63)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"CheckChatWord2",1800000176,"",25,103)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"CheckChatWord3",1800000176,"",25,141)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"CheckPlaySnd",1800000176,"来言发声",22,198)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"来言发声")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"CheckReply",1800000176,"自动回复",22,228)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"自动回复")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"CheckNoStrangerChat",1800000176,"不显示陌生人私聊内容",153,198)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"不显示陌生人私聊内容")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetAutoChange(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"EditBkImg1",1801700008,57,59)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,487, 33)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"EditBkImg2",1801700008,57,97)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,487, 33)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"EditBkImg3",1801700008,57,135)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,487, 33)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"EditChatWord1",59,63,480,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"EditChatWord2",59,103,480,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"EditChatWord3",60,141,480,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnChoseFace1",1901900110,547,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,18, 18)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnChoseFace2",1901900110,546,92)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,18, 18)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BtnChoseFace3",1901900110,547,124)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,18, 18)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"EditBkImg4",1801700009,121,221)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,487, 33)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"EditReplyWord",125,227,410,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Static1",169,10,89,27)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291932767)
        GUI:EditSetTextM(_GUIHandle,"发言间隔（秒）")
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
        GameChatSetting.UIInit(_Parent)
end

--UI Logic Code Start
function GameChatSetting.UIInit(_Handle)
	GameChatSetting.WndHandle = _Handle
	--设置九宫格
	local _GUIHandle = GUI:WndFindChildM(GameChatSetting.WndHandle, "ChatWordBkImg")
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:ImageSetAroundImage(_GUIHandle, 1800000179,1800000180,1800000181,1800000182,1800000187,1800000183,1800000184,1800000185,1800000186)
	end
end
GameChatSetting.main()




