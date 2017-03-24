PlayerTitle = {}
function PlayerTitle.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
	    local Property = 0
    
        _GUIHandle = GUI:ImageCreate(_Parent,"TitleImg",1805900008,265,-40)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,62, 28)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1820400134,10,14)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,244, 418)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
			GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:ListBoxCreate(_Parent, "TitlesLB", 16, 48, 221, 157)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"CurTitleEdit",115,20,140,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"ShowTitle",1820400126,45,212)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,68, 24)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816);
		GUI:WndSetTextM(_GUIHandle, "ÏÔÊ¾³ÆºÅ");
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
	
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"HideTitle",1820400126,155,212)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,68, 24)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816);
			GUI:WndSetTextM(_GUIHandle, "Òþ²Ø³ÆºÅ");
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"CurTitleDescRE",21,243,217,49)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "")
    end
        _GUIHandle = GUI:EditCreate(_Parent,"qinmi",145,320,65,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
		   if CL:GetPlayerSelfProperty32(ROLE_PROP32_PRESTIGE) then 
            Property = LuaRet
        end    
        GUI:EditSetTextM(_GUIHandle,""..Property)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
	
	      _GUIHandle = GUI:EditCreate(_Parent,"rongyao",145,356,65,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
		   if CL:GetPlayerSelfProperty32(ROLE_PROP32_ACHIEVEMENT) then 
            Property = LuaRet
        end    
        GUI:EditSetTextM(_GUIHandle,""..Property)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
	
	     _GUIHandle = GUI:EditCreate(_Parent,"pkzhi",145,391,65,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4291736418)
		   if CL:GetPlayerSelfProperty32(ROLE_PROP32_PK) then 
            Property = LuaRet
        end    
        GUI:EditSetTextM(_GUIHandle,""..Property)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
	
	
    PlayerTitle.UIInit(_Parent)
end
    
    

--UI Logic Code Start
function PlayerTitle.UIInit(_Handle)
end
    
    
PlayerTitle.main()