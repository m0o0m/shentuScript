function test()
  return ""
end

TimeGiftBtnWndMgr =
{
	IsInitResComplete = false,
	WndList = {},
}

function ShowTimeGiftBtnWnd(WndName,LayOutName,param)
	local NoFlashNoCanGetTip = TimeGiftBtnWndMgr.WndList[WndName].NoFlashNoCanGetTip
	local HasTimer = (TimeGiftBtnWndMgr.WndList[WndName].TimeCount ~= 0)
	local TextOnIcon = TimeGiftBtnWndMgr.WndList[WndName].TextOnIcon
	if UI:Lua_GetWindow(WndName) then
		UI:Lua_WndCloseM()
	end
	CreateWindowFromLayOut(WndName,LayOutName,false,false)
	SaveWnd()
	UI:Lua_WndGetSizeM()
	WndAddProperty(nil, WndName, "X", tostring(LuaRet[1]))
	RestoreWnd()
	UI:Lua_WndSetSizeM(0,0)
	if UI:Lua_FindChildM("BoxBtn") then
		UI:Lua_ButtonSetShine(not HasTimer)
		if NoFlashNoCanGetTip then
			UI:Lua_ButtonSetShine(false)
			if UI:Lua_WndGetPosM() then
				local _X = LuaRet[1]
				local _Y = LuaRet[2]
				UI:Lua_WndSetPosM(_X, _Y + 10)
			end
		end
		if TextOnIcon ~= nil then
			UI:Lua_WndSetTextColorM(MakeARGB(255,0xFE,0xD9,0xAA))
			UI:Lua_WndSetTextM(TextOnIcon)
		end
		UI:Lua_ButtonSetImageID(TimeGiftBtnWndMgr.WndList[WndName].Icon)
		UI:Lua_WndRegistScript(RDWndBaseCL_mouse_lbUp,"TimeGiftBtnWndNotifyIt")
		RestoreWnd()
	end
	if UI:Lua_FindChildM("TimeEdit") then
		if HasTimer then
			UI:Lua_WndSetFlagsM(flg_dlgEdit_textInMid+flg_dlgEdit_textInCenter)
			UI:Lua_WndSetEnableM(false)
			UI:Lua_EditSetTextColor(MakeARGB(255,0xFE,0xD9,0xAA))
			UI:Lua_EditSetTextM(GetLeaveTimeString2(TimeGiftBtnWndMgr.WndList[WndName].TimeCount))
			UI:Lua_WndAddTimer(1,1000,"OnTimeGiftBtnWndTimer")
		end
		UI:Lua_WndSetVisible(HasTimer)
		if NoFlashNoCanGetTip then
			UI:Lua_WndSetVisible(false)
		end
		RestoreWnd()
	end
	if UI:Lua_FindChildM("CanGetRE") then
		UI:Lua_RichEditSetEnable(false)
		if string.len(param) >= 8 then
			UI:Lua_RichEditSetCurFont("system")
		else
			UI:Lua_RichEditSetCurFont("SIMLI")
		end
		UI:Lua_RichEditAppendString("#COLORCOLOR_GOLD#"..param.."#COLOREND#")
		UI:Lua_WndSetVisible(not HasTimer)
		if NoFlashNoCanGetTip then
			UI:Lua_WndSetVisible(false)
		end
		RestoreWnd()
	end
	if NoFlashNoCanGetTip and UI:Lua_FindChildM("TimeBKImg") then
		UI:Lua_WndSetVisible(false)
		RestoreWnd()
	end
	TimeGiftBtnWnd_Update()
end

function TimeGiftBtnWndNotifyIt(_Handle,Param,X,Y)
	if not CHECK_BUTTON_UP(X,Y) then return end
	if UI:Lua_WndGetParentM() and UI:Lua_WndGetIDM() then
		local WndName = LuaRet
		local BtnWnd = TimeGiftBtnWndMgr.WndList[WndName]
		if BtnWnd ~= nil then
			UI:Lua_SubmitForm(BtnWnd.FormName,"main",BtnWnd.Notify)
		end
		UI:Lua_WndCloseM()
		TimeGiftBtnWndMgr.WndList[WndName] = nil
		TimeGiftBtnWnd_Update()
	end
end

function OnTimeGiftBtnWndTimer(_Handle,Param,X,Y)
	SaveWnd()
	local WndName = ""
	if UI:Lua_WndGetParentM() and UI:Lua_WndGetIDM() then
		WndName = LuaRet
	end
	RestoreWnd()
	if TimeGiftBtnWndMgr.WndList[WndName] == nil then
		return
	end
	if TimeGiftBtnWndMgr.WndList[WndName].TimeCount > 0 then
		TimeGiftBtnWndMgr.WndList[WndName].TimeCount = TimeGiftBtnWndMgr.WndList[WndName].TimeCount - 1
	end
	if TimeGiftBtnWndMgr.WndList[WndName].TimeCount == 0 then
		UI:Lua_WndSetVisible(false)
		if not TimeGiftBtnWndMgr.WndList[WndName].NoFlashNoCanGetTip and UI:Lua_WndGetParentM() then
			SaveWnd()
			if UI:Lua_FindChildM("CanGetRE") then
				UI:Lua_WndSetVisible(true)
				RestoreWnd()
			end
			if UI:Lua_FindChildM("BoxBtn") then
				UI:Lua_ButtonSetShine(true)
				RestoreWnd()
			end
		end
	else
		UI:Lua_EditSetTextM(GetLeaveTimeString2(TimeGiftBtnWndMgr.WndList[WndName].TimeCount))
	end
end

function TimeGiftBtnWnd_UpdataScreenSize()
	if not TimeGiftBtnWndMgr.IsInitResComplete then return end
	for k,v in pairs(TimeGiftBtnWndMgr.WndList) do
		if v ~= nil then
			local WndName = "TimeGiftBtn"..v.Notify
			if UI:Lua_GetWindow(WndName) then
				UI:Lua_WndGetPosM()
				local _X = LuaRet[1] + LuaParam[1]
				local _Y = LuaRet[2] + 0
				UI:Lua_WndSetPosM(_X,_Y)
			end
		end
	end

end

function TimeGiftBtnWnd_OnQuiteGame()
	TimeGiftBtnWndMgr.IsInitResComplete = false
	for k,v in pairs(TimeGiftBtnWndMgr.WndList) do
		if v ~= nil then
			local WndName = "TimeGiftBtn"..v.Notify
			if UI:Lua_GetWindow(WndName) then
				UI:Lua_WndCloseM()
			end
		end
	end
end

function TimeGiftBtnWnd_OnShowForm()
	if LuaParam[1] == "倒计时" then
		local _Data = strsplit(LuaParam[2],"\n")
		local WndName = "TimeGiftBtn".._Data[3]
		local _TimeCount = tonumber(_Data[1]) --time
		if _TimeCount == -1 then
			if UI:Lua_GetWindow(WndName) then
				UI:Lua_WndCloseM()
			end
			TimeGiftBtnWndMgr.WndList[WndName] = nil
			TimeGiftBtnWnd_Update()
		else
			TimeGiftBtnWndMgr.WndList[WndName] =
			{
				FormName = LuaParam[1],--表单名
				TimeCount = _TimeCount,--倒计时：0表示关闭此倒计时图标
				Icon = tonumber(_Data[2]),--图标 icon
				Notify = _Data[3],--原封不动提交给服务端 notify
				NoFlashNoCanGetTip = (_Data[4] == '0'),--0不显示可领取，图标不闪光 xianshi
				TextOnIcon = _Data[5],--图标上文字 ziti
			}
			
			if _Data[6] ~= nil and _Data[6] ~= "" then
				ShowTimeGiftBtnWnd(WndName,"TimeGiftBtnWnd",_Data[6])
			else
				ShowTimeGiftBtnWnd(WndName,"TimeGiftBtnWnd","可领取")
			end
		end
	end
end

function TimeGiftBtnWnd_Update()
	local _X = 0
	local _Y = 0
	local _Reposition = false
	if TimeGiftBtnWndMgr.IsInitResComplete and UI:Lua_GetWindow("GameMainInterface,LittleMap") then
		UI:Lua_WndGetPosM()
		_X = LuaRet[1] - 50
		_Y = LuaRet[2] + 10
		_Reposition = true
	end
	local _XStart = _X
	local _RowOffsetY = 70
	local _RowNum = 1
	local _RowIdx = 0
	local _RowMax = 5
	for k,v in pairs(TimeGiftBtnWndMgr.WndList) do
		if v ~= nil and not v.NoFlashNoCanGetTip then
			local WndName = "TimeGiftBtn"..v.Notify
			if UI:Lua_GetWindow(WndName) then
				UI:Lua_WndSetVisible(_Reposition)
				if _Reposition then
					if _RowIdx == _RowMax then
						_RowIdx = 0
						_Y = _Y + _RowOffsetY
						_X = _XStart
						_RowNum = _RowNum + 1
					end
					UI:Lua_WndSetPosM(_X,_Y)
					_X = _X - tonumber(WndGetProperty(nil, WndName, "X"))
					_RowIdx = _RowIdx + 1
				end
			end
		end
	end
	for k,v in pairs(TimeGiftBtnWndMgr.WndList) do
		if v ~= nil and v.NoFlashNoCanGetTip then
			local WndName = "TimeGiftBtn"..v.Notify
			if UI:Lua_GetWindow(WndName) then
				UI:Lua_WndSetVisible(_Reposition)
				if _Reposition then
					if _RowIdx == _RowMax then
						_RowIdx = 0
						_Y = _Y + _RowOffsetY
						_X = _XStart
						_RowNum = _RowNum + 1
					end
					UI:Lua_WndSetPosM(_X,_Y)
					_X = _X - tonumber(WndGetProperty(nil, WndName, "X"))
					_RowIdx = _RowIdx + 1
				end
			end
		end
	end
end

function TimeGiftBtnWnd_OnInitResComplete()
	TimeGiftBtnWndMgr.IsInitResComplete = true
	TimeGiftBtnWnd_Update()
end

--注册事件
RegisterUIEvent(LUA_EVENT_ONSHOWFORM,"TimeGiftBtnWnd",TimeGiftBtnWnd_OnShowForm)
RegisterUIEvent(LUA_EVENT_INITRESCOMPLETE,"TimeGiftBtnWnd",TimeGiftBtnWnd_OnInitResComplete)
RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE,"TimeGiftBtnWnd",TimeGiftBtnWnd_UpdataScreenSize)
RegisterUIEvent(LUA_EVENT_ONQUITEGAME,"TimeGiftBtnWnd",TimeGiftBtnWnd_OnQuiteGame)
