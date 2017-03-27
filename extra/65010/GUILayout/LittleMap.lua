LittleMap = {}
function LittleMap.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    
    _GUIHandle = GUI:ImageCreate(_Parent,"MapImage",0,73,38)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,106, 93)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImage",1800700029,50,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,151, 142)
    end
    
	_GUIHandle = GUI:ButtonCreate(_Parent,"Meil",1800700060,60,110)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "LittleMap.OnMeil")
		GUI:WndSetHint(_GUIHandle,"邮件（P）")
		GUI:WndSetSizeM(_GUIHandle,32, 32)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
    _GUIHandle = GUI:ButtonCreate(_Parent,"MuteBtn",1800700046,159,112)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "LittleMap.OnMuteBtn")
        GUI:WndSetHint(_GUIHandle,"音效")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 32)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"RankBtn",1800700038,42,56)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "LittleMap.OnRankBtn")
        GUI:WndSetHint(_GUIHandle,"排行榜(K)")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 32)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Aid",1800700042,45,85)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"辅助(Ctrl+Home)")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 32)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"CampaignBtn",1800700065,44,17)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "LittleMap.OnCampaignBtn")
        GUI:WndSetHint(_GUIHandle,"活动(J)")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HelpBtn",1800700073,166,25)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "LittleMap.OnHelpBtn")
        GUI:WndSetHint(_GUIHandle,"帮助")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,32, 32)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NetworkStatus",1800700026,150,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,10, 10)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"MapName",70,2,115,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 0, 255, 12))
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"BigMap",1800700030,97,125)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"地图")
        GUI:WndSetHint(_GUIHandle,"世界地图(M)")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 19)
        GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 230, 210, 132))
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"PlayerPos",88,20,75,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 153, 153, 0))
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"HighLightImg",1800700058,73,38)
    if _GUIHandle ~= 0 then
        GUI:WndSetCanRevMsg(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,103, 95)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"activityMagic",3020300300,-63,-92)
    if _GUIHandle ~= 0 then
        GUI:ImageSetAnimateEnable(_GUIHandle, true, 150)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetVisible(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"redSpots",1800000055,-188,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,13, 13)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:WndSetVisible(_GUIHandle, false)
        
    end
    
    local buih = GUI:ButtonCreate(_Parent,"acticityDetail",1803800014,-56,157)
    if buih ~= 0 then
        GUI:WndRegistScript(buih,1002, "LittleMap.OnCampaignBtn")
        GUI:WndSetParam(buih, 0)
        GUI:WndMoveToParentTop(buih)
        GUI:WndSetVisible(buih, false)
        GUI:WndSetSizeM(buih,42, 42)
        GUI:ButtonSetDownTextPosChange(buih, false)
    end
    
    _GUIHandle = GUI:ImageCreate(buih,"textBackground",1803500002,13,3)
    if _GUIHandle ~= 0 then
        GUI:ImageSetFitSize(_GUIHandle, true)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(buih,"timeContent",42, 7, 200, 20)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 212, 198, 89))
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    
        LittleMap.UIInit(_Parent)
end

--UI Logic Code Start
function LittleMap.UIInit(mm)
    LittleMap._wnd = mm
    CL:AddDelayTask("LittleMap.SetMaskImage()", 500, 1)
    local _HMaskImg = GUI:WndFindChildM(LittleMap._wnd, "MapMaskImage")
    if _HMaskImg ~= 0 then
        GUI:WndSetCanRevMsg(_HMaskImg, false)
    end

	CL:HotKeyRegister("J", "打开活动窗口", "LittleMap.OnCampaignBtn")
	CL:HotKeyRegister("K", "打开排行榜窗口", "LittleMap.OnRankBtn")
	CL:HotKeyRegister("P", "打开邮件窗口", "LittleMap.OnMeil")

	if CL:GetSoundSetting() then
		local _GUIHandle = GUI:WndFindChildM(LittleMap._wnd, "MuteBtn")
		if _GUIHandle ~= 0 then
			local imageID = 0
			if LuaRet[1] == true then
				imageID = 1800700050
			else
				imageID = 1800700046
			end
			GUI:WndSetImageID(_GUIHandle, imageID)
		end
	end
end

function LittleMap.SetMaskImage()
    CL:SetLittleMapMaskImage(1800700059, -23, -39)
    CL:SetLittleMapHighlightImage(1800700058, 0, 0)
end

function LittleMap.OnHelpBtn()
	UI:Lua_OpenWindow(0, "NewbeeGuide.lua")
end

function LittleMap.OnCampaignBtn()
	CL:OnOpenCampaign()
end

function LittleMap.OnRankBtn()
	UI:Lua_SubmitForm("等级判断表单", "OnOpenTop", "")
end

function LittleMap.OnMuteBtn(h)
    local imageID = 0
    if GUI:WndGetImageID(h) == 1800700046 then
        imageID = 1800700050
    else
        imageID = 1800700046
    end
    GUI:WndSetImageID(h, imageID)
    
    CL:OnSoundMute(0)
end

function LittleMap.OnWorldMapBtn()
	CurrentMapKeyName = nil
	CL:OnOpenWorld()
end

function LittleMap.OnMeil()
	CL:OnMailWindow()
	
	local btn = GUI:WndFindChildM(GameMainBar.WndHandle, "newMail")
	if btn ~= 0 then
		GUI:WndSetVisible(btn, false)
	end
end

function LittleMap.AddActivityMagic()
	local handle = GetWindow(LittleMap._wnd, "activityMagic")
	if handle ~= 0 then
        GUI:WndSetVisible(handle, true)
	end
end

function LittleMap.DelActivityMagic()
	local handle = GetWindow(LittleMap._wnd, "activityMagic")
	if handle ~= 0 then
        GUI:WndSetVisible(handle, false)
	end
end
  
function LittleMap.ShowActivitySchedule(str)
    local handle = GetWindow(0, "LittleMap,acticityDetail")
    if handle ~= 0 then
        GUI:WndSetVisible(handle, true)
    end
    handle = GetWindow(0, "LittleMap,acticityDetail,timeContent")
    if handle ~= 0 then
        GUI:EditSetTextM(handle, ''..str)
    end
end

function LittleMap.HideActivitySchedule()
    local handle = GetWindow(0, "LittleMap,acticityDetail")
    if handle ~= 0 then
        GUI:WndSetVisible(handle, false)
    end
end
  
function LittleMap.addEffect_BuyExp()
    local _handle = GetWindow(0, "LittleMap")
    WndAddEffect(_handle, "LittleMap", 3006600000, -624, -150, 100, 1) 
end

function LittleMap.redSpotsF()  
    local handle = GetWindow("", "LittleMap,redSpots")
    if handle ~= 0 then
        GUIWndSetVisible(handle, false)
    end
end

function LittleMap.redSpotsT()
    local handle = GetWindow("", "LittleMap,redSpots")
    if handle ~= 0 then
        WndMoveToParentTop(handle)
        GUI:WndSetVisible(handle, true)
    end
end
LittleMap.main()