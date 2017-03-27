GameItemSetting = {}
function GameItemSetting.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",0,0,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,583, 262)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ListBkImg",0,8,27)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,560, 190)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ListBoxCreate(_Parent,"List",10,31,557,186)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check0",1800000176,"全部拾取",411,228)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4291932767)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check1",1800000176,"全部显示",496,227)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4291932767)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ComboboxBkImg",1801700005,85,223)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,133, 31)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"ComboBox",1800000172,90,229,120,19,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        -- GUI:ComboBoxSetListFillImage(_GUIHandle,15)
        -- GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100112,1900100108,0)
    end
    
        

    _GUIHandle = GUI:ImageCreate(_Parent,"EditBkImg",1801700007,236,223)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,99, 31)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit",244,229,75,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"title1",20,2,55,30)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291932767)
        GUI:EditSetTextM(_GUIHandle,"物品名称")
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"title2",198,2,55,30)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291932767)
        GUI:EditSetTextM(_GUIHandle,"极品提示")
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"title3",334,2,55,30)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291932767)
        GUI:EditSetTextM(_GUIHandle,"自动拾取")
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"title4",463,2,55,30)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291932767)
        GUI:EditSetTextM(_GUIHandle,"显示名称")
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"title5",9,217,79,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291932767)
        GUI:EditSetTextM(_GUIHandle,"筛选条件")
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    GameItemSetting.UIInit(_Parent)
end

--UI Logic Code Start
function GameItemSetting.UIInit(_Handle)
	GameItemSetting.WndHandle = _Handle
	local _GUIHandle = GUI:WndFindChildM(GameItemSetting.WndHandle, "title5")
	if _GUIHandle ~= 0 then
		GUI:EditSetFontM(_GUIHandle, "SIMLI18")
	end
	--设置九宫格
	local _GUIHandle = GUI:WndFindChildM(GameItemSetting.WndHandle, "ListBkImg")
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:ImageSetAroundImage(_GUIHandle, 1800000179,1800000180,1800000181,1800000182,1800000187,1800000183,1800000184,1800000185,1800000186)
	end
end
GameItemSetting.main()




