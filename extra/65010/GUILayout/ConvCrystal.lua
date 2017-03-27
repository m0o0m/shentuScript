ConvCrystal = {}
function ConvCrystal.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"ConvCrystal",1803700017,34,81)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,564, 342)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BkImg1",1803700025,64,116)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,445, 133)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"img1",0,77,146)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,82, 82)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"img2",0,162,146)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,82, 82)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"img3",0,247,146)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,82, 82)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"img4",0,332,146)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,82, 82)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"img5",0,417,146)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,82, 82)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg0",1803700013,249,11)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,72, 72)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item",0,260,23,53,53)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_rbDown, "ConvCrystal.clean")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,53, 53)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg1",1800000385,87,156)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,61, 62)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item1",0,90,160,55,55)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ConvCrystal.check_in")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,55, 55)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg2",1800000385,172,156)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,61, 62)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item2",0,175,160,55,55)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ConvCrystal.check_in")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,55, 55)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg3",1800000385,257,156)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,61, 62)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item3",0,260,160,55,55)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ConvCrystal.check_in")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:WndSetSizeM(_GUIHandle,55, 55)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg4",1800000385,342,156)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,61, 62)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item4",0,345,160,55,55)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ConvCrystal.check_in")
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,55, 55)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg5",1800000385,427,156)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,61, 62)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item5",0,430,160,55,55)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ConvCrystal.check_in")
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,55, 55)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_13",1800800003,238,268)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,103, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_14",180660,239,270)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,17, 17)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"gold",260,269,80,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"0")
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"switch",1803700007,245,298)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ConvCrystal.switch")
        GUI:WndSetTextM(_GUIHandle,"转  换")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,88, 31)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
	_GUIHandle = GUI:EditCreate(_Parent, "msg", 88, 222, 400, 25)
	if _GUIHandle ~= 0 then 	
		GUI:EditSetTextColor(_GUIHandle, 4294901760)
		GUI:EditSetFontCenter(_GUIHandle)
		GUI:WndSetEnableM(_GUIHandle, false)
	end		

    ConvCrystal.UIInit(_Parent)
end

--UI Logic Code Start
ConvCrystal.crystal_tab ={}
ConvCrystal.num = 0
ConvCrystal.guid = 0
ConvCrystal.level = 0
ConvCrystal.consumption = {10000,20000,40000,80000,160000,320000,640000,1280000,2560000,5120000,10240000,20480000}

function ConvCrystal.UIInit(_Handle)
	ConvCrystal.Wnd=_Handle

	local handle = GUI:WndFindChildM(ConvCrystal.Wnd, "item")
	if handle ~= 0 then
		RDItemCtrlSetGUIDataPropByType(handle, nil, ITEMGUIDATA_INVALIDATE, true)
		Sys_PushBackItemWindow(handle, "ConvCrystal.put")	--背包右键物品时设定itemEquip，并触发InlayCrystal.OnMoveIn
	end

	local handle = GUI:WndFindChildM(_Handle,"switch")   
	if handle ~= 0 then 
		GUI:ButtonSetStateTextColor(handle,0,MakeARGB(255, 192, 182, 160))
		GUI:ButtonSetStateTextColor(handle,2,MakeARGB(255, 237, 192, 161))
	end
	for i=1 , 5 do 
		handle = GetWindow(_Handle,"item"..i) 
		if handle ~= 0 then 
			GUI:ItemCtrlSetHighlightImageID(handle, 0)
			RDItemCtrlSetGUIDataPropByType(handle, nil, ITEMGUIDATA_INVALIDATE, true)
		end
	end
end

function ConvCrystal.check_in(_Handle)
	local param = tonumber(WndGetParam(_Handle))
	for i=1,5 do 	 
		if i == param then 
			ImageSetImageID(ConvCrystal.Wnd,"img"..i,1803700016)  
		else 
			ImageSetImageID(ConvCrystal.Wnd,"img"..i,0) 
		end
	end
	
end

function ConvCrystal.put(_Handle, GUIData, DragIn, guid, ItemId, KeyNamee, ItemPos, IsBound, Count)
	local buttonhand = GetWindow(ConvCrystal.Wnd, "switch")
	if buttonhand ~= 0 then 
		GUI:WndSetEnableM(buttonhand,true)
	end
	ConvCrystal.crystal_tab ={"级物攻宝石","级魔攻宝石","级道攻宝石","级物防宝石","级魔防宝石","级生命宝石"}
	if CL:GetItemEntityPropByGUID(guid,ITEM_PROP_TYPE) then
		local chief = tonumber(LuaRet)
		if chief ==5 and CL:GetItemEntityPropByGUID(guid,ITEM_PROP_SUBTYPE) then
			if tonumber(LuaRet) == 6 then 
				for i=#ConvCrystal.crystal_tab,1,-1 do 
					if string.find(KeyNamee,ConvCrystal.crystal_tab[i]) then     --魔防
						table.remove(ConvCrystal.crystal_tab,i)
						break
					end
				end
				local l = string.find(KeyNamee,"级")-1
				local level = tonumber(string.sub(KeyNamee,0,l))
				local hand = GetWindow(ConvCrystal.Wnd,"gold")
				if hand ~= 0 then
					GUI:EditSetTextM(hand,tostring(Count*ConvCrystal.consumption[level]))
				end
				ConvCrystal.level = level
				--ConvCrystal.num = Count
				ConvCrystal.guid = guid
				for j=1,#ConvCrystal.crystal_tab do 
					ConvCrystal.crystal_tab[j] = level..ConvCrystal.crystal_tab[j]
					RDItemCtrlSetGUIDataPropByKeyName(ConvCrystal.Wnd, "item"..j, ConvCrystal.crystal_tab[j], Count, IsBound)
				end
				return true
			end
		end
	end
	return false
end


function ConvCrystal.switch(_Handle)
	
	local num =0
	local _hand = GetWindow(ConvCrystal.Wnd, "item")
	local GUIData =RDItemCtrlGetGUIDataKeyName(ConvCrystal.Wnd, "item")
	if GUIData ~= "" then 
		for i=1,5 do 
			local hand = GetWindow(ConvCrystal.Wnd, "img"..i)
			if hand ~= 0 and GUI:ImageGetImageID(hand) ~= 0 then 
				num = i
				ConvCrystal.num = RDItemCtrlGetGUIDataPropByType(ConvCrystal.Wnd, "item"..i, ITEMGUIDATA_ITEMCOUNT)
				break
			end
		end
		if num==0 then 
			msg_up("请选择宝石类型")
		else
			UI:Lua_GUID2Str(ConvCrystal.guid)
			local itemGUID = LuaRet
			UI:Lua_SubmitForm("宝石转换表单", "switch", itemGUID.."#"..ConvCrystal.crystal_tab[num].."#"..ConvCrystal.num.."#"..ConvCrystal.level)
		end	
	else 
		msg_up("请放入宝石")
	end
end

function msg_up(str)
	local _handle = GUI:WndFindChildM(ConvCrystal.Wnd, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, str)
	end
	if ConvCrystal.DelayTaskId ~= nil then
		CL:DelDelayTask(ConvCrystal.DelayTaskId)
		ConvCrystal.DelayTaskId = nil
	end
	ConvCrystal.DelayTaskId = CL:AddDelayTask("ConvCrystal.ClearMsg()", 3000, 1)
end

function ConvCrystal.ClearMsg()
	local _handle = GUI:WndFindChildM(ConvCrystal.Wnd, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, "")
	end
end

function ConvCrystal.clean()
	local _hand = GetWindow(ConvCrystal.Wnd,"gold")
	GUI:EditSetTextM(_hand,'0')
	for i=1,5 do 
		local hand = GetWindow(ConvCrystal.Wnd,"item"..i)
		if hand ~= 0 then 
			GUI:ItemCtrlClearItemData(hand)
		end 
		ImageSetImageID(ConvCrystal.Wnd,"img"..i,0) 
	end
	local hand = GetWindow(ConvCrystal.Wnd,"item")
	if hand ~= 0 then 
		GUI:ItemCtrlClearItemData(hand)
	end
	local buttonhand = GetWindow(ConvCrystal.Wnd, "switch")
	if buttonhand ~= 0 then 
		GUI:WndSetEnableM(buttonhand,false)
	end
end
	
ConvCrystal.main()