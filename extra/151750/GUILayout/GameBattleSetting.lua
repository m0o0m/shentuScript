GameBattleSetting = {}
function GameBattleSetting.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    -- _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",0,0,0)
    -- if _GUIHandle ~= 0 then
    --     GUI:WndSetParam(_GUIHandle, 0)
    --     GUI:WndSetSizeM(_GUIHandle,583, 262)
    -- end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image1",1801500048,148,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,138, 37)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"zhans",0,10,35)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,410, 32)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image2",1801500049,148,66)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,138, 37)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"fas",0,10,101)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,410, 32)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image3",1801500050,148,134)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,138, 37)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"daos",0,9,169)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,410, 74)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"image4",1801500051,460,6)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,90, 27)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"gongg",0,430,35)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,144, 208)
    end
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check0",1800000176,"",19,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check1",1800000176,"",160,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check2",1800000176,"",17,107)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check3",1800000176,"",16,177)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check5",1800000176,"",17,207)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check4",1800000176,"",145,177)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check6",1800000176,"自动练功",440,45)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4291932767)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check7",1800000176,"练功间隔",440,127)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:WndSetTextColorM(_GUIHandle, 4291932767)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ComboboxBkImg",1801700005,441,70)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,133, 31)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox0",1800000172,441,75,126,19,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        -- GUI:ComboBoxSetListFillImage(_GUIHandle,15)
        -- GUI:ComboBoxSetScrollBarImage(_GUIHandle,1900100104,1900100108,1900100112,0)
    end
    

    
    _GUIHandle = GUI:ImageCreate(_Parent,"EditBkImg",1801700005,441,152)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,133, 31)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"Edit0",445,160,114,15)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check8",1800000176,"",281,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,21, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check9",1800000176,"自动红绿毒",145,207)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"自动红绿毒")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,86, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:CheckBoxCreate(_Parent,"Check10",1800000176,"自动太极玄清术",247,178)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"自动太极玄清术")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,110, 21)
        GUI:CheckBoxSetCheck(_GUIHandle, true)
    end
    
    
    GameBattleSetting.UIInit(_Parent)
end

--UI Logic Code Start
function GameBattleSetting.UIInit(_Handle)
	GameBattleSetting.WndHandle = _Handle
	--设置九宫格
	local _GUIHandle = GUI:WndFindChildM(GameBattleSetting.WndHandle, "zhans")
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:ImageSetAroundImage(_GUIHandle, 1800000179,1800000180,1800000181,1800000182,1800000187,1800000183,1800000184,1800000185,1800000186)
	end
	_GUIHandle = GUI:WndFindChildM(GameBattleSetting.WndHandle, "fas")
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:ImageSetAroundImage(_GUIHandle, 1800000179,1800000180,1800000181,1800000182,1800000187,1800000183,1800000184,1800000185,1800000186)
	end
	_GUIHandle = GUI:WndFindChildM(GameBattleSetting.WndHandle, "daos")
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:ImageSetAroundImage(_GUIHandle, 1800000179,1800000180,1800000181,1800000182,1800000187,1800000183,1800000184,1800000185,1800000186)
	end
	_GUIHandle = GUI:WndFindChildM(GameBattleSetting.WndHandle, "gongg")
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:ImageSetAroundImage(_GUIHandle, 1800000179,1800000180,1800000181,1800000182,1800000187,1800000183,1800000184,1800000185,1800000186)
	end
end
GameBattleSetting.main()




