TransmitMagic ={}
function TransmitMagic.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"TransmitMagic",0,0,0)
	if _Parent ~= 0 then
		GUI:WndSetEnableM(_Parent, false)
		GUI:WndSetSizeM(_Parent,16, 16)
	end
	
	
	--[[_GUIHandle = GUI:ImageCreate(_Parent,"magic_Car",0,0,0)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,720, 509)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end--]]
	
	_GUIHandle = GUI:ImageCreate(_Parent,"promt_UI",1804600021,-17,0)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)

	end
	
	local handle = GUI:RichEditCreate(_GUIHandle,"promt_text",25,35,230,19)
	if handle ~= 0 then
		GUI:RichEditClear(handle)
		GUI:RichEditSetDefaultTextColor(handle, MakeARGB(255, 0, 210, 0))
        GUI:RichEditAppendString(handle, "点击<传送>立即传送到目标身边 ")
	end 
	TransmitMagic.UIInit(_Parent)
end


--UI Logic Code Start
function TransmitMagic.UIInit(_Handle)
	TransmitMagic.Handle = _Handle
	local sx = CLGetScreenWidth()
	local sy = 0
	local h = GetWindow(nil, "TaskWindow")
	if h ~= 0 then
		WndGetPosM(h)
		sy = as3.tolua(LuaRet[2])
	end
	local pos_x, pos_y = 0, 0
	if CLGetMainQuestMovePos() then
		pos_x = as3.tolua(LuaRet[1])
		pos_y = as3.tolua(LuaRet[2])
	end
	TransmitMagic.xx = sx - pos_x + 169
	TransmitMagic.yy = sy - pos_y - 17
	if WndAddEffect(0, "TaskWindow", 3020101200, -205, -61, 200, 0) then
		
	end

	if TransmitMagic.Handle ~= 0 then
		--GUI:WndSetPosM(TransmitMagic.Handle, pos_x-160, pos_y+31)
		GUIWndSetPosM(TransmitMagic.Handle, sx-TransmitMagic.xx, sy-TransmitMagic.yy)  --166-pos_x
	end
	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "screen change_TransmitMagic", "TransmitMagic.Width_change")

end

function TransmitMagic.Width_change()
	local screen_X = as3.tolua(CL:GetScreenWidth())
	local screen_Y = 0
	local h = GetWindow(nil, "TaskWindow")
	if h ~= 0 then
		WndGetPosM(h)
		screen_Y = as3.tolua(LuaRet[2])
	end
	local pos_x, pos_y = 0, 0
	if CLGetMainQuestMovePos() then
		pos_x = as3.tolua(LuaRet[1])
		pos_y = as3.tolua(LuaRet[2])
	end
	if TransmitMagic.Handle ~= 0 then
		GUIWndSetPosM(TransmitMagic.Handle, screen_X-TransmitMagic.xx, screen_Y-TransmitMagic.yy)
		--GUI:WndSetPosM(handle, (pos_x-screen_X)*71/113, (screen_Y-pos_y)*36/392)
	end
end

function TransmitMagic.CloseWnd()
	local handle = GetWindow(nil, "TransmitMagic")
	if handle ~= 0 then
		GUI:WndClose(handle)
	end
end

TransmitMagic.main()