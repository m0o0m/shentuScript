DealerWnd = {}
function DealerWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()

	_Parent = GUI:WndCreateWnd(_Parent,"DealerWnd",1852700013, (_DeviceSizeX-1136)/2, (_DeviceSizeY-640)/2)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent, 1136, 640)
	end



	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage1", 0, 117, 546)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 900, 35)
		--GUI:ImageSetAroundImage(_GUIHandle, 1850600043, 1850600045, 1850600049, 1850600051, 1850600047,1850600044, 1850600050, 1850600046, 1850600048)
		GUI:ImageSetAroundImage(_GUIHandle,1850700026,1850700028,1850700032,1850700034,1850700030,1850700027,1850700033,1850700029,1850700031)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"YuanBaoImg",1850300006,145,550)
	if _GUIHandle ~= 0 then
	end

	_GUIHandle = GUI:EditCreate(_Parent,"IngotEdit",190,553,120,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"button1",1852600007,677,6)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerWnd.OpenBuyList")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"button2",1852600011,825,6)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerWnd.OpenSellWnd")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1852700000, 1000, 8)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "DealerWnd.Close")
	end

	DealerWnd.UIInit(_Parent)
end

--UI Logic Code Start
function DealerWnd.UIInit(_Handle)
	DealerWnd.WndHandle = _Handle
	--GUI:WndSetIsESCClose(DealerWnd.WndHandle, true)

	if 0 ~= GameMainBar.WndHandle then
		GUI:WndSetVisible(GameMainBar.WndHandle, false)
	end

	DealerWnd.updateIngot()

	local _GUIHandle = GUI:WndFindWindow(_Handle, "button1")
	if _GUIHandle ~= 0 then
		DealerWnd.OpenBuyList(_GUIHandle)
	end
end



function DealerWnd.OpenBuyList(_Handle)
	if not GUI:ButtonGetIsActivePageBtn(_Handle) then
		GUI:ButtonSetIsActivePageBtn(_Handle, true)
		local _GUIHandle = GUI:WndFindWindow(DealerWnd.WndHandle, "button2")
		if _GUIHandle ~= 0 then
			GUI:ButtonSetIsActivePageBtn(_GUIHandle, false)
		end
		_GUIHandle = GUI:WndFindWindow(DealerWnd.WndHandle, "DealerSellWnd")
		if _GUIHandle ~= nil then
			GUI:WndClose(_GUIHandle)
		end
		UI:Lua_OpenWindow(DealerWnd.WndHandle, "DealerBuyList.lua")
	end
end

function DealerWnd.OpenSellWnd(_Handle)
	if not GUI:ButtonGetIsActivePageBtn(_Handle) then
		GUI:ButtonSetIsActivePageBtn(_Handle, true)
		local _GUIHandle = GUI:WndFindWindow(DealerWnd.WndHandle, "button1")
		if _GUIHandle ~= 0 then
			GUI:ButtonSetIsActivePageBtn(_GUIHandle, false)
		end
		_GUIHandle = GUI:WndFindWindow(DealerWnd.WndHandle, "DealerBuyList")
		if _GUIHandle ~= 0 then
			GUI:WndClose(_GUIHandle)
		end
		UI:Lua_OpenWindow(DealerWnd.WndHandle, "DealerSellWnd.lua")
	end
end

function DealerWnd.updateIngot()
	local _GUIHandle = GUI:WndFindWindow(DealerWnd.WndHandle, "IngotEdit")
	if _GUIHandle ~= 0 then
		if CL:GetPlayerSelfProperty64(ROLE_PROP64_INGOT) then
			GUI:EditSetTextM(_GUIHandle, tostring(LuaRet))
		end
	end
end

function DealerWnd.Close()
	if 0 ~= GameMainBar.WndHandle then
		GUI:WndSetVisible(GameMainBar.WndHandle, true)
	end
	GUI:WndClose(DealerWnd.WndHandle)
end
DealerWnd.main()