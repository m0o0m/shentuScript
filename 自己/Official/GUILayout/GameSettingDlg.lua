GameSettingDlg = {}
function GameSettingDlg.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1931100013,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,601, 336)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Page0",1930001006,27,37)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"基本")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Page1",1930001006,86,37)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"保护")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Page2",1930001006,145,37)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"战斗")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Page3",1930001006,204,37)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"物品")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Page4",1930001006,322,37)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"操作指南")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Page5",1930001006,381,37)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"快捷键")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Page6",1930001006,440,37)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"聊天")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1930001002,568,7)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 26)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Page7",1930001006,263,37)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"自定义")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 23)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    GameSettingDlg.UIInit(_Parent)
end

--UI Logic Code Start
function GameSettingDlg.UIInit(_Handle)
	GameSettingDlg.WndHandle = _Handle
	GUI:WndSetIsESCClose(GameSettingDlg.WndHandle, true)
	GUI:WndSetMoveWithLBM(GameSettingDlg.WndHandle)
	GUI:WndSetMagicUI(GameSettingDlg.WndHandle,1)
	GUI:WndSetFlagsM(GameSettingDlg.WndHandle, flg_wndBase_autoTop)
end
GameSettingDlg.main()




