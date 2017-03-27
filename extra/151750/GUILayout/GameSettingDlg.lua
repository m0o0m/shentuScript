GameSettingDlg = {}
function GameSettingDlg.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()

    --大背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage",1850300016,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX, _DeviceSizeY)
		GUI:ImageSetAroundImage(_GUIHandle, 1850300016, 1850300018, 1850300022, 1850300024, 1850300020, 1850300017, 1850300023, 1850300019, 1850300021)
    end

    --第二层背景
    _GUIHandle = GUI:ImageCreate(_Parent,"BgImage0",1850300025,17,63)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX - 34, _DeviceSizeY - 80)
		GUI:ImageSetAroundImage(_GUIHandle, 1850300025, 1850300027, 1850300031, 1850300033, 1850300029, 1850300026, 1850300032, 1850300028, 1850300030)
    end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage1",1850400006,32,80)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX - 64, _DeviceSizeY - 206)
		GUI:ImageSetAroundImage(_GUIHandle, 1850400006, 1850400008, 1850400012, 1850400014, 1850400010, 1850400007, 1850400013, 1850400009, 1850400011)
    end
	

	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1850000423,_DeviceSizeX - 54, 4)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Page0",1850800037,104,7)
    if _GUIHandle ~= 0 then
        --GUI:WndSetTextM(_GUIHandle,"基本")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Page1",1850800041,236,7)
    if _GUIHandle ~= 0 then
        --I:WndSetTextM(_GUIHandle,"保护")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Page2",1850800045,368,7)
    if _GUIHandle ~= 0 then
        --GUI:WndSetTextM(_GUIHandle,"战斗")
        GUI:WndSetParam(_GUIHandle, 0)
        --GUI:WndSetSizeM(_GUIHandle,62, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    --[[_GUIHandle = GUI:ButtonCreate(_Parent,"Page3",1850800049,423,7)
    if _GUIHandle ~= 0 then
        --GUI:WndSetTextM(_GUIHandle,"物品")
        GUI:WndSetParam(_GUIHandle, 0)
        --GUI:WndSetSizeM(_GUIHandle,62, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Page4",1850800057,555,7)
    if _GUIHandle ~= 0 then
        --GUI:WndSetTextM(_GUIHandle,"操作指南")
        GUI:WndSetParam(_GUIHandle, 0)
        --GUI:WndSetSizeM(_GUIHandle,62, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Page5",1850800061,687,7)
    if _GUIHandle ~= 0 then
        --GUI:WndSetTextM(_GUIHandle,"快捷键")
        GUI:WndSetParam(_GUIHandle, 0)
        --GUI:WndSetSizeM(_GUIHandle,62, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end--]]
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Page6",1850800065,500,7)
    if _GUIHandle ~= 0 then
        --GUI:WndSetTextM(_GUIHandle,"聊天")
        GUI:WndSetParam(_GUIHandle, 0)
        --GUI:WndSetSizeM(_GUIHandle,62, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    --[[
    _GUIHandle = GUI:ButtonCreate(_Parent,"Page7",1850800053,951,7)
    if _GUIHandle ~= 0 then
        --GUI:WndSetTextM(_GUIHandle,"自定义")
        GUI:WndSetParam(_GUIHandle, 0)
        --GUI:WndSetSizeM(_GUIHandle,62, 25)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end--]]
        GameSettingDlg.UIInit(_Parent)
end

--UI Logic Code Start
function GameSettingDlg.UIInit(_Handle)
	GameSettingDlg.WndHandle = _Handle
end
GameSettingDlg.main()

