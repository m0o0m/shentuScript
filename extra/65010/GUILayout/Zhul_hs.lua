Zhul_hs = {} 
function Zhul_hs.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"Zhul_hs",0,0,0)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent, "fireMagic", 3020201000, 37, 52)
    if _GUIHandle ~= 0 then
    	GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"item_image",1806500008,184,150)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,105, 94)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item",0,206,169,60,60)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"item_magic",0,206,167)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,60, 60)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"lingli_have",144,373,72,25)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"拥有魂力：")
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"lingli1",239,371,74,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"lingli_need",144,405,72,25)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"回收魂力：")
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"lingli_back",1806700023,216,406)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,130, 22)
        GUI:ImageSetColor(_GUIHandle, 4290950816)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"lingli2",241,406,74,22)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"huis",1806700049,179,435)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Zhul_hs.huis")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,126, 45)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"huissm",1806700020,47,452)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,75, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    

	_GUIHandle = GUI:EditCreate(_Parent, "msg", 95, 350, 220, 25)
	if _GUIHandle ~= 0 then 	
		GUI:EditSetTextColor(_GUIHandle, 4294901760)
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end		

    Zhul_hs.UIInit(_Parent)
end

--UI Logic Code Start
Zhul_hs.WndHandle = 0
Zhul_hs.DelayTaskId = nil

function Zhul_hs.UIInit(_GUIHandle)	
	Zhul_hs.WndHandle = _GUIHandle	
	local _handle = GetWindow(_GUIHandle,"shuom")
	if _handle ~= 0 then	
		GUI:RichEditAppendString(_handle,"#SELECT#回收说明#SELECTEND#")
	end		
	local handle = GetWindow(_GUIHandle,"huissm")
	if handle ~= 0 then
		GUI:WndSetHintWidth(handle, 300)
		local txt = "回收说明：                                        "
		txt = txt.."1.回收魂力后，装备蕴魂等级变为0级                 "
		txt = txt.."2.魂力回收后，魂力将返回到拥有魂力中              "
		txt = txt.."3.回收蕴魂3级以上装备，魂力会有少量逃逸"
		GUI:WndSetHint(handle, txt)
	end
	handle = GUI:WndFindChildM(_GUIHandle, "item")
	if handle ~= 0 then
		RDItemCtrlSetGUIDataPropByType(handle, nil, ITEMGUIDATA_INVALIDATE, true)
	end			
end	

function Zhul_hs.updata(item,ll_have,ll_huis)
	if UI:Lua_Str2GUID(item) then
		item = LuaRet
	end	
	local _handle = GetWindow(nil,"ForgeWnd,Zhul_hs,item")
	GUI:ItemCtrlClearItemData(_handle)
	GUI:ItemCtrlSetEffectImageID(_handle, 0, 1.0)	
	--RDItemCtrlSetGUIDataPropByGUID(_handle, nil, item)	
	ForgeWnd.RDItemCtrlSetGUIDataPropByGUIDEx(_handle, nil, item)
	--根据强化等级设置显示特效
	local Entity = CL:GetItemEntityHandleByGUID(item)
	local q_level = 0
	if UI:Lua_GetItemEntityPropByHandle(Entity,ITEM_PROP_EQUIP_REFINELEVEL) then
		q_level = tonumber(LuaRet)
		if q_level > 0 then
			local _AnimateID = nil
			if q_level <= 5 then
				_AnimateID = 1096000100;
			elseif q_level <= 10 then
				_AnimateID = 1096000200;
			else
				_AnimateID = 1096000300;
			end
			if _AnimateID ~= nil then
				GUI:ItemCtrlSetEffectImageID(_handle, _AnimateID, 1.5)
			end
		end
	end	
	Zhul_hs.OnEquipIn(_handle,ll_have,ll_huis)
end

function Zhul_hs.OnEquipIn(_handle,ll_have,ll_huis)
	EditSetText(Zhul_hs.WndHandle,"lingli1",""..ll_have)	
	EditSetText(Zhul_hs.WndHandle,"lingli2",""..ll_huis)
end

function Zhul_hs.huis(_handle)	
	local handle = GetWindow(nil,"ForgeWnd,Zhul_hs,item")	
	local item_guid = RDItemCtrlGetGUIDataPropByType(handle, nil,ITEMGUIDATA_ITEMGUID)
	if tonumber(item_guid) == 0 or item_guid == nil then
		msg_up("请放入想要回收魂力的装备")
		return
	end
	UI:Lua_GUID2Str(item_guid)
	UI:Lua_SubmitForm("注灵回收表单", "huis_item", ""..LuaRet)
end


function msg_up(str)
	local _handle = GUI:WndFindChildM(Zhul_hs.WndHandle, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, str)
	end
	if Zhul_hs.DelayTaskId ~= nil then
		CL:DelDelayTask(Zhul_hs.DelayTaskId)
		Zhul_hs.DelayTaskId = nil
	end
	Zhul_hs.DelayTaskId = CL:AddDelayTask("Zhul_hs.ClearMsg()", 3000, 1)	
end	

function Zhul_hs.ClearMsg()
	local _handle = GUI:WndFindChildM(Zhul_hs.WndHandle, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, "")
	end
end

Zhul_hs.main()