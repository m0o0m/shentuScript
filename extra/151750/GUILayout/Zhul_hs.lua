Zhul_hs = {} 
function Zhul_hs.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"Zhul_hs",0,0,0)
    if _Parent ~= 0 then
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"BgImg0",0,54,82)
    if _GUIHandle ~= 0 then
    	GUI:WndSetSizeM(_GUIHandle,1028, 324)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"image_back",1851000000,326,76)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:EditCreate(_Parent,"Edit0",534,100,0,0)
    if _GUIHandle ~= 0 then
    	GUI:EditSetTextM(_GUIHandle,"放入装备")
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"item_image",1850700002,500,130)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item",0,544,148,60,60)
    if _GUIHandle ~= 0 then
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"itemBtn",1850800004,539,142)
    if _GUIHandle ~= 0 then
    	GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Zhul_hs.EquipSelect")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"lingli_have",485,290,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"拥有魂力：")
    end
  
    
    _GUIHandle = GUI:EditCreate(_Parent,"lingli1",585,290,0,0)
    if _GUIHandle ~= 0 then
    	 GUI:EditSetTextM(_GUIHandle,"11")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"lingli_need",485,340,0,0)
    if _GUIHandle ~= 0 then
        GUI:EditSetTextM(_GUIHandle,"回收魂力：")
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"lingli2",585,340,0,0)
    if _GUIHandle ~= 0 then
 		GUI:EditSetTextM(_GUIHandle,"22")
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"huis",1850000307,880,436)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Zhul_hs.huis")
        GUI:WndSetTextM(_GUIHandle,"回收")
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"huissm",1850000307,95,436)
    if _GUIHandle ~= 0 then
    	GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "Zhul_hs.huisshuom")
    	GUI:WndSetTextM(_GUIHandle,"规则")
    end
    
	_GUIHandle = GUI:EditCreate(_Parent, "msg", 568, 260, 0, 0)
	if _GUIHandle ~= 0 then 
		GUI:EditSetFontCenter(_GUIHandle)
	end		

    Zhul_hs.UIInit(_Parent)
end

--UI Logic Code Start
Zhul_hs.WndHandle = 0
Zhul_hs.DelayTaskId = nil

function Zhul_hs.UIInit(_GUIHandle)	
	Zhul_hs.WndHandle = _GUIHandle	

	local BgImg = GUI:WndFindWindow(Zhul_hs.WndHandle, "BgImg0")
    if BgImg then
        GUI:ImageSetAroundImage(BgImg, 1850900016, 1850900018, 1850900022, 1850900024, 1850900020, 1850900017, 1850900023, 1850900019, 1850900021)
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

function Zhul_hs.EquipSelect(_handle)
	local _GUIHandle = GUI:WndFindWindow(Zhul_hs.WndHandle, "QianghSelWnd")
    if _GUIHandle ~= 0 then
        GUI:WndClose(_GUIHandle)
    else
        UI:Lua_OpenWindow(Zhul_hs.WndHandle, "QianghSelWnd.lua")
        QianghSelWnd.SelTip("选择要回收的装备")
    end
end


function Zhul_hs.SelItemCtrl(_data)
    --这里先这样写 之后加入ListView控件再修改
  	local _ItemDataHandle = _data
    if _ItemDataHandle ~= 0 then 
        local handle = GUI:WndFindChildM(Zhul_hs.WndHandle, "item")
        if handle ~= 0 then 
            UI:Lua_Log("找到了item = "..handle.."设置Data".._ItemDataHandle)
            GUI:ItemCtrlSetGUIData(handle,_ItemDataHandle)
            ForgeWnd.clickItem(handle)  
        end

        handle = GUI:WndFindChildM(Zhul_hs.WndHandle, "itemBtn")
        if handle ~= 0 then 
            UI:Lua_Log("找到了itemBtn999999999999999999999999999999999999999999"..handle)
            GUI:WndSetImageID(handle,1851000021)
        end

        handle = GUI:WndFindChildM(Zhul_hs.WndHandle, "Edit2")
        if handle ~= 0 then 
             GUI:WndSetVisible(handle, false)
        end
    end
end

function Zhul_hs.setmsg(str)
	local _handle = GUI:WndFindChildM(Zhul_hs.WndHandle, "msg")
	if _handle ~= 0 then
		GUI:EditSetTextM(_handle, str)
	end
end


function Zhul_hs.huisshuom()
	local _GUIHandle = GUI:WndFindWindow(Zhul_hs.WndHandle, "QianghSMWnd")
    if _GUIHandle ~= 0 then
        GUI:WndClose(_GUIHandle)
    else
        UI:Lua_OpenWindow(Zhul_hs.WndHandle, "QianghSMWnd.lua")
    end

    local txt = "1.回收魂力后，装备蕴魂等级变为0级".."\r\n\r\n"
        txt = txt.."2.魂力回收后，魂力将返回到拥有魂力中".."\r\n\r\n"
        txt = txt.."3.回收蕴魂3级以上装备，魂力会有少量逃逸".."\r\n\r\n"


    local _QianghSMWnd = GUI:WndFindWindow(Zhul_hs.WndHandle, "QianghSMWnd")
    if _QianghSMWnd ~= 0 then
		local Edithandle = GUI:WndFindWindow(_QianghSMWnd, "Edit0")
    	if Edithandle ~= 0 then
        	GUI:EditSetTextM(Edithandle,txt)
    	end    
    end
end


Zhul_hs.main()