DailyFbWnd = {}
function DailyFbWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"DailyFbWnd",0,0,0)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,16, 16)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ContentBack",1805000007,0,0)
	if _GUIHandle ~= 0 then
		GUI:ImageSetAroundImage(_GUIHandle,1805000007,1805000009,1805000013,1805000015,1805000011,1805000008,1805000014,1805000010,1805000012)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,228, 290)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	FbWndContentRE_Parent = GUI:WndCreateWnd(_Parent,"FbWndContentRE",0,0,0)
	if FbWndContentRE_Parent ~= 0 then
		GUI:WndSetSizeM(FbWndContentRE_Parent,16, 16)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"HideBtn",1805000003,182,-27)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "DailyFbWnd.OnHideWndBtn")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,26, 27)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"FbWndHeadBack",1805000002,1,-27)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,216, 27)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"FbWndHead",1805000001,88,-24)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"getReward",1800000134,20,163)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "DailyFbWnd.Get_FB_Reward")
		GUI:WndSetTextM(_GUIHandle,"领取奖励")
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,70, 37)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"getDoubleRWD",1800000134,117,163)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "DailyFbWnd.Get_FB_Reward")
		GUI:WndSetTextM(_GUIHandle,"双倍领取")
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,70, 37)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent, "IMG1", 1805000016, 11, 13)
	_GUIHandle = GUI:ImageCreate(_Parent, "IMG2", 1805000016, 11, 65)
	_GUIHandle = GUI:ImageCreate(_Parent, "IMG3", 1805000016, 11, 218)

	
	_GUIHandle = GUI:EditCreate(_Parent,"text1",21,15,80,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294489425)
		GUI:EditSetTextM(_GUIHandle,"完成条件：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text2",21,67,80,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294489425)
		GUI:EditSetTextM(_GUIHandle,"副本奖励：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text3",21,222,67,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294489425)
		GUI:EditSetTextM(_GUIHandle,"剩余时间：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:RichEditCreate(_Parent, "text11", 39, 43, 134, 18)
	if _GUIHandle ~= 0 then
		GUI:RichEditAppendString(_GUIHandle, "击杀")
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:RichEditCreate(_Parent, "text12", 70, 43, 134, 18)
	if _GUIHandle ~= 0 then
		GUI:RichEditAppendString(_GUIHandle, "#SELECT#小怪#SELECTEND#")
		GUI:RichEditSetDefaultTextColor(_GUIHandle, 4278242559)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "DailyFbWnd.AutoFight")
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"completeAim",98,43,134,18)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "DailyFbWnd.AutoFight")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetDefaultTextColor(_GUIHandle, 4278242355)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"rewardItem2",1800000133,33,101,45,45)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,45, 45)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent, "item2text", 92, 117, 86, 21)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, 4292665547)
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:ImageCreate(_Parent, "rewardItem1", 1892100043, 27, 165)

	_GUIHandle = GUI:EditCreate(_Parent,"expRwd",92,181,86,21)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292665547)
		GUI:EditSetTextM(_GUIHandle,"经验")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent, "expNum", 120, 181, 86, 21)
	if _GUIHandle ~= 0 then
		GUI:EditSetTextColor(_GUIHandle, 4278242355)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"restTimes",90,225,83,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4283077470)
		GUI:EditSetTextM(_GUIHandle,"30:00")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"leaveMap",75,260,134,18)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "DailyFbWnd.LeaveMap")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditAppendString(_GUIHandle, "#SELECT#退出副本#SELECTEND#")
		GUI:RichEditSetDefaultTextColor(_GUIHandle, 4287728256)
	end
	
	
	
	DailyFbWnd.UIInit(_Parent)
end

--UI Logic Code Start
DailyFbWnd.second = 60
DailyFbWnd.minute = 29
function DailyFbWnd.UIInit(h)
	DailyFbWnd._hideWnd = 0
	DailyFbWnd._wnd = h
	DailyFbWnd.tolNum = tonumber(deserialize(FormParam[4]))
	local handle = 0
	local item = tostring(deserialize(FormParam[1]))
	local number = 	tonumber(deserialize(FormParam[2]))
	local expNum = tonumber(deserialize(FormParam[3]))
	local itemShowName = tostring(deserialize(FormParam[5]))
	handle = GetWindow(h, "IMG3")
	if handle ~= 0 then
		GUI:ImageSetTransfrom(handle,14000,10000,0)
	end
	handle = GetWindow(h, "rewardItem2")
	if handle ~= 0 then
		RDItemCtrlSetGUIDataByKeyName(handle, item, number, true)
	end
	handle = GetWindow(h, "item2text")
	if handle ~= 0 then
		GUI:EditSetTextM(handle, ''..itemShowName)
	end
	handle = GetWindow(h, "rewardItem1")
	if handle ~= 0 then
		GUI:WndSetHint(handle, "经验"..expNum)
		GUI:ImageSetTransfrom(handle,8000,8000,0)
	end
	handle = GetWindow(h, "expNum")
	if handle ~= 0 then
		GUI:EditSetTextM(handle, ''..expNum)
	end
	handle = GetWindow(h, "getReward")
	if handle ~= 0 then
		GUI:WndSetTextArrangeType(handle,0,3,0,0)
	end
	handle = GetWindow(h, "getDoubleRWD")
	if handle ~= 0 then
		GUI:WndSetTextArrangeType(handle,0,3,0,0)
		if string.find(itemShowName,"神灵之羽") then 
			GUI:WndSetHint(handle, "花费188元宝领取双倍奖励")
		elseif string.find(itemShowName,"珠宝碎片") then 
			GUI:WndSetHint(handle, "花费198元宝领取双倍奖励")
		elseif string.find(itemShowName,"盾牌残片") then 
			GUI:WndSetHint(handle, "花费188元宝领取双倍奖励")
		else
			GUI:WndSetHint(handle, "花费98元宝领取双倍奖励")
		end
	end
	local taskWnd = GetWindow(nil, "GameMainInterface,TaskWindow")
	if taskWnd ~= nil then
		GUI:WndSetVisible(taskWnd, false)
	end
	if TaskWindow._hideWnd ~= 0 then
		GUI:WndSetVisible(TaskWindow._hideWnd, false)
	end
	handle = GetWindow(h,"HideBtn")
	if handle ~= 0 then
		GUI:WndMoveToParentTop(handle)
	end
	DailyFbWnd.showAim("0")
    local sX = CL:GetScreenWidth()
	local tw = GUI:WndFindWindow(0, "DailyFbWnd")
    if tw ~= 0 then
        GUI:WndSetPosM(tw, sX-216, 250)
    end
	
	local _wnd = GUI:WndCreateWnd(0, "FbWndHideUI", 1805000021, 0, 251)
	if _wnd ~= 0 then
		DailyFbWnd._hideWnd = _wnd
		GUI:WndSetVisible(_wnd, false)
		local btn = GUI:ButtonCreate(_wnd, "ShowBtn", 1805000017, 0, -31)
		if btn ~= 0 then
			GUI:WndRegistScript(btn, RDWndBaseCL_mouse_lbUp, "DailyFbWnd.OnShowWndBtn")
		end
	end
	
	if GUI:WndAddTimerBrief(h, 1000, "DailyFbWnd.DcUpdata") then    --设置定时器
		DailyFbWnd.time_id = LuaRet
	end
	GUI:WndRegistScript(h, RDWndBaseCL_wnd_close, "DailyFbWnd.cleartime")
	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "SCREEN SIZE CHANGED DailyFbWnd", "DailyFbWnd.width") 
end

function DailyFbWnd.width()
	OnScreenSizeChange(DailyFbWnd._wnd, DailyFbWnd._hideWnd,208,31)
end

function DailyFbWnd.cleartime()  --关闭定时器
end

function DailyFbWnd.OnHideWndBtn(h)
	local sX = CL:GetScreenWidth()
	GUI:WndSetPosM(DailyFbWnd._hideWnd, sX-31, 251)
	GUI:WndSetVisible(DailyFbWnd._wnd, false)
	GUI:WndSetVisible(DailyFbWnd._hideWnd, true)
end

function DailyFbWnd.OnShowWndBtn(h)
	GUI:WndSetVisible(DailyFbWnd._wnd, true)
	GUI:WndSetVisible(DailyFbWnd._hideWnd, false)
end

function DailyFbWnd.DcUpdata()
	local min_Offset = ""
	local second_Offset = ""
	local handle = GetWindow(DailyFbWnd._wnd, "restTimes")
	DailyFbWnd.second = DailyFbWnd.second - 1
	if DailyFbWnd.minute < 10 then
		min_Offset = "0"
	end
	if DailyFbWnd.second < 10 then
		second_Offset = "0"
	end
	GUI:EditSetTextM(handle, min_Offset..DailyFbWnd.minute..":"..second_Offset..DailyFbWnd.second)
	if DailyFbWnd.minute == 0 and DailyFbWnd.second == 0 then
		UI:Lua_SubmitForm("DailyFbRwd", "GetReward5", "")
		return
	end	
	if DailyFbWnd.second == 0 then
		DailyFbWnd.minute = DailyFbWnd.minute - 1
		DailyFbWnd.second = 60
	end
end

function DailyFbWnd.showAim(cur)
	local handle = GetWindow(DailyFbWnd._wnd, "completeAim")
	if handle ~= 0 then
		GUI:RichEditClear(handle)
		GUI:RichEditAppendString(handle, "（"..cur.."/"..DailyFbWnd.tolNum.."）".."#COLOREND#")
	end
end

function DailyFbWnd.ShowGetRwdBtn()
	local handle = 0
	handle = GetWindow(DailyFbWnd._wnd, "getReward")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, true)	
	end
	handle = GetWindow(DailyFbWnd._wnd, "getDoubleRWD")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, true)
		WndAddEffect(DailyFbWnd._wnd, "getDoubleRWD", 3000101000, -14, -7, 100, 0) 
	end
	handle = GetWindow(DailyFbWnd._wnd, "leaveMap")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, false)
	end
	for i = 1, 3 do
		handle = GetWindow(DailyFbWnd._wnd, "text"..i)
		if handle ~= 0 then
			GUI:EditSetTextColor(handle, MakeARGB(255, 0, 204, 51))
		end
	end
end

function DailyFbWnd.AutoFight()
	UI:Lua_SubmitForm("DailyFbRwd","AutoFight","")
end

function DailyFbWnd.Get_FB_Reward(h)
	local param = 0
	param = GUI:WndGetParam(h)
	if param == 1 then
		UI:Lua_SubmitForm("DailyFbRwd","GetReward5","")
	else
		UI:Lua_SubmitForm("DailyFbRwd","GetDoubleReward5","")
	end
end

function DailyFbWnd.LeaveMap()
	UI:Lua_SubmitForm("DailyFbRwd","LeaveCurrentMap","")
end

function DailyFbWnd.ConfirmDlg()
	luaMsgBox.new("离开副本", "副本还未完成，离开将无法获得奖励", {"是", "否"}, {"DailyFbWnd.ConfirmLeave", 0}, _handle)
end

function DailyFbWnd.ConfirmLeave(_handle)
	UI:Lua_SubmitForm("DailyFbRwd", "LeaveMap", "")
	local handle = GUI:WndGetParentM(_handle)
	if handle ~= 0 then
		GUI:WndClose(handle)
	end
end

function DailyFbWnd.CloseFBandOpenTask()
	GUI:WndClose(DailyFbWnd._wnd)
	local taskWnd = GetWindow(nil, "GameMainInterface,TaskWindow")
	if taskWnd ~= nil then
		GUI:WndSetVisible(taskWnd, true)
	end
	if TaskWindow._hideWnd ~= 0 then
		GUI:WndSetVisible(TaskWindow._hideWnd, false)
	end
	OnScreenSizeChange(taskWnd,TaskWindow._hideWnd,208,31)
end

function DailyFbWnd.MsgBox()
	luaMsgBox.new("元宝", "     很抱歉，您的元宝不足", {"前往充值", "取消"}, {"DailyFbWnd.chongz", "DailyFbWnd.out"}, "")
end

function DailyFbWnd.chongz(h)
	CL:OpenUrlUseIEByType(3)
	luaWndClose(h)
end

function DailyFbWnd.out(h)
	luaWndClose(h)
end

DailyFbWnd.main()