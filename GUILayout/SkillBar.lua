SkillBar = {}
function SkillBar.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    UIManager_DeskTop_Parent = _Parent
    _GUIHandle = GUI:ItemCtrlCreate(UIManager_DeskTop_Parent,"Skill0",-1,0,0,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(UIManager_DeskTop_Parent,"Edit0",20,27,20,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(UIManager_DeskTop_Parent,"HotEdit0",14,38,12,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"1")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(UIManager_DeskTop_Parent,"Skill1",-1,51,0,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(UIManager_DeskTop_Parent,"Edit1",71,27,20,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(UIManager_DeskTop_Parent,"HotEdit1",65,38,12,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"2")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(UIManager_DeskTop_Parent,"Skill2",-1,102,0,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(UIManager_DeskTop_Parent,"Edit2",122,27,20,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(UIManager_DeskTop_Parent,"HotEdit2",116,38,12,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"3")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(UIManager_DeskTop_Parent,"Skill3",-1,153,0,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(UIManager_DeskTop_Parent,"Edit3",173,27,20,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(UIManager_DeskTop_Parent,"HotEdit3",167,38,12,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"4")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(UIManager_DeskTop_Parent,"Skill4",-1,204,0,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(UIManager_DeskTop_Parent,"Edit4",224,27,20,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(UIManager_DeskTop_Parent,"HotEdit4",218,38,12,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"5")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(UIManager_DeskTop_Parent,"Skill5",-1,255,0,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(UIManager_DeskTop_Parent,"Edit5",275,27,20,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(UIManager_DeskTop_Parent,"HotEdit5",269,38,12,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"6")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(UIManager_DeskTop_Parent,"Skill6",-1,306,0,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(UIManager_DeskTop_Parent,"Edit6",326,27,20,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(UIManager_DeskTop_Parent,"HotEdit6",320,38,12,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"7")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(UIManager_DeskTop_Parent,"Skill7",-1,357,0,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(UIManager_DeskTop_Parent,"Edit7",377,27,20,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(UIManager_DeskTop_Parent,"HotEdit7",371,38,12,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"8")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(UIManager_DeskTop_Parent,"Skill8",-1,408,0,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(UIManager_DeskTop_Parent,"Edit8",428,27,20,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(UIManager_DeskTop_Parent,"HotEdit8",422,38,12,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"9")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(UIManager_DeskTop_Parent,"Skill9",-1,459,0,40,40)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,40, 40)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(UIManager_DeskTop_Parent,"Edit9",479,27,20,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(UIManager_DeskTop_Parent,"HotEdit9",473,38,12,12)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:EditSetTextM(_GUIHandle,"0")
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
        SkillBar.UIInit(_Parent)
end

--UI Logic Code Start
SkillBar.WndHandle = 0
function SkillBar.UIInit(_Handle)
	SkillBar.WndHandle = _Handle
	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "SkillBar_分辨率改变", SkillBar.UpdataScreenSize)
	SkillBar.UpdataScreenSize()
end

function SkillBar.UpdataScreenSize()

	local _ScreenWidth = CL:GetScreenWidth()
	local _ScreenHeight = CL:GetScreenHeight()
	local _GUIHandle = GUI:WndFindWindow(0,"GameMainInterface,GameMainBar")
	GUI:WndGetPosM(_GUIHandle)
	GUI:WndSetPosM(SkillBar.WndHandle, LuaRet[1]+115, LuaRet[2]+40)
end

SkillBar.main()









