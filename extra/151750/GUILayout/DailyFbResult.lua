DailyFbResult = {}
local color = {}
color.text1 = GUI:MakeARGB(255,243,185,117)
color.text2 = GUI:MakeARGB(255,198,192,163)
color.number = GUI:MakeARGB(255,55,181,111)

function DailyFbResult.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()

	_Parent = GUI:WndCreateWnd(_Parent,"DailyFbResult", 1850100033, (_DeviceSizeX - 766)/2, (_DeviceSizeY - 408)/2)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,766, 280)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"Img_Bg0", 1853000037, 145, 45)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetSizeM(_GUIHandle,475, 157)
		GUI:ImageSetAroundImage(_GUIHandle, 1850000458,1850000460,1850000464,1850000466,1850000462,1850000459,1850000465,1850000461,1850000463)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"Img_TitleImage", 1853000037, 54, -94)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"Btn_close",1852700004,309,212)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "DailyFbResult.GetReward")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextM(_GUIHandle, "领取并退出")
		GUI:WndSetTextColorM(_GUIHandle, color.text1)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end

	_GUIHandle = GUI:ItemCtrlCreate(_Parent, "ItemCtrl1", 1850500016, 254, 90, 66, 66)
	if _GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataPropByItemID(_GUIHandle, nil, 10052, 1, false)
	end

	_GUIHandle = GUI:ItemCtrlCreate(_Parent, "ItemCtrl2", 1850500016, 354, 90, 66, 66)
	if _GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataPropByItemID(_GUIHandle, nil, 10052, 1, false)
	end

	_GUIHandle = GUI:ItemCtrlCreate(_Parent, "ItemCtrl3", 1850500016, 454, 90, 66, 66)
	if _GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataPropByItemID(_GUIHandle, nil, 10052, 1, false)
	end
	DailyFbResult.UIInit(_Parent)
end

--UI Logic Code Start
DailyFbResult.WndHandle = 0

function DailyFbResult.UIInit(_Handle)
	DailyFbResult.WndHandle = _Handle
	GUI:WndSetIsESCClose(_Handle, true)
	local tb = deserialize(FormParam[1])
	if tb[1] ~= nil then
		for i = 1, #tb[1] do
			_GUIHandle = GetWindow(_Handle, "ItemCtrl"..i)
			if _GUIHandle ~= 0 then
				RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle, nil, tb[1][i], tb[2][i], false)
			end
		end
	end
end

function DailyFbResult.CloseWnd()
	GUI:WndClose(DailyFbResult.WndHandle)
end

function DailyFbResult.GetReward(_Handle)
	UI:Lua_SubmitForm("手游每日副本表单", "DailyFB_LeaveMap", "")
	GUI:WndSetEnableM(_Handle, false)
end

DailyFbResult.main()