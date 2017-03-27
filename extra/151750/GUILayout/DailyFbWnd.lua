DailyFbWnd = {}
local color = {}
color.text1 = GUI:MakeARGB(255,243,185,117)
color.text2 = GUI:MakeARGB(255,198,192,163)
color.number = GUI:MakeARGB(255,55,181,111)

function DailyFbWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()

	_Parent = GUI:WndCreateWnd(_Parent,"DailyFbWnd", 0, 0, (_DeviceSizeY - 298)/2)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,16, 16)
	end
	
	local SubWnd = GUI:WndCreateWnd(_Parent,"SubWnd", 0, 0, 0)
	if SubWnd ~= 0 then
		GUI:WndSetSizeM(SubWnd,16, 16)
	end
	_GUIHandle = GUI:ImageCreate(SubWnd,"BgImage0", 1853000004, 0, 0)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 269, 298)
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:ImageSetAroundImage(_GUIHandle, 1853000010,1853000012,1853000016,1853000018,1853000014,1853000011,1853000017,1853000013,1853000015)
	end

	_GUIHandle = GUI:ImageCreate(SubWnd,"BgImage1", 1853000004, -40, 10)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 240, 36)
		GUI:WndSetEnableM(_GUIHandle, false)
		_GUIHandle = GUI:EditCreate(_GUIHandle, "Text",0,6,240,24)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"完成条件：")
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
	end

	_GUIHandle = GUI:ImageCreate(SubWnd,"BgImage2", 1853000004, -40, 150)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 240, 36)
		GUI:WndSetEnableM(_GUIHandle, false)
		_GUIHandle = GUI:EditCreate(_GUIHandle,"Text",0,6,240,24)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle,"副本奖励：")
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
	end

	_GUIHandle = GUI:EditCreate(SubWnd,"Text_Goal",40,70,135,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle,"击杀怪物")
		GUI:EditSetCanEdit(_GUIHandle, false)
	end

	_GUIHandle = GUI:EditCreate(SubWnd,"Edit_Goal",130,70,135,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle,"")
		GUI:WndSetTextColorM(_GUIHandle, color.number)
		GUI:EditSetCanEdit(_GUIHandle, false)
	end

	_GUIHandle = GUI:ItemCtrlCreate(SubWnd, "Item1", 1850500016, 20, 200, 66, 66)
	if _GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataPropByItemID(_GUIHandle, nil, 10052, 1, false)
	end

	_GUIHandle = GUI:ItemCtrlCreate(SubWnd, "Item2", 1850500016, 100, 200, 66, 66)
	if _GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataPropByItemID(_GUIHandle, nil, 10052, 1, false)
	end

	_GUIHandle = GUI:ItemCtrlCreate(SubWnd, "Item3", 1850500016, 180, 200, 66, 66)
	if _GUIHandle ~= 0 then
		RDItemCtrlSetGUIDataPropByItemID(_GUIHandle, nil, 10052, 1, false)
	end

	_GUIHandle = GUI:ImageCreate(SubWnd, "Img", 1853000006,30, -43)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		_GUIHandle = GUI:EditCreate(_GUIHandle, "Title", 0, 0, 169, 43)
		if _GUIHandle ~= 0 then
			GUI:WndSetTextColorM(_GUIHandle, color.text1)
			GUI:EditSetTextM(_GUIHandle, "副 本")
			GUI:WndSetEnableM(_GUIHandle, false)
			GUI:EditSetFontCenter(_GUIHandle)
		end
	end

	_GUIHandle = GUI:ButtonCreate(SubWnd, "BtnHideWnd", 1850000008, 197, -43)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 43, 43)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "DailyFbWnd.HideWindow")
	end
	_GUIHandle = GUI:ButtonCreate(_Parent, "BtnShowWnd", 1850000439, 0, -43)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 43, 43)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "DailyFbWnd.ShowWindow")
	end
	_GUIHandle = GUI:ImageCreate(SubWnd, "Title", 1853000005, 0, -30)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		
	end

	_GUIHandle = GUI:ButtonCreate(_Parent, "Btn_quit", 1853000000, _DeviceSizeX - 180, - (_DeviceSizeY - 298)/2)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 177, 50)
		GUI:WndRegistScript(_GUIHandle, RDWndBaseCL_mouse_lbUp, "DailyFbWnd.LeaveMapConfirm")
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"BgImage_Timer", 1853000004, _DeviceSizeX - 225, 42 - (_DeviceSizeY - 298)/2)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle, 240, 36)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	_GUIHandle = GUI:EditCreate(_Parent, "Edit_Timer", _DeviceSizeX - 135, 50 - (_DeviceSizeY - 298)/2, 60, 24)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextColorM(_GUIHandle, color.number)
		GUI:EditSetTextM(_GUIHandle, "3:00")
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:EditSetFontCenter(_GUIHandle)
	end

	DailyFbWnd.UIInit(_Parent) 
end

--UI Logic Code Start
DailyFbWnd.WndHandle = 0

function DailyFbWnd.UIInit(_Handle)

	DailyFbWnd.WndHandle = _Handle
	GUI:WndSetIsESCClose(_Handle, true)
	--tb ={{"金砖小","金砖小","金砖小"}, {1,1,1}},
	local tb = deserialize(FormParam[1])
	DailyFbWnd.totalNum = deserialize(FormParam[2])
	DailyFbWnd.timeLimit = deserialize(FormParam[3])
	local _GUIHandle = 0
	if DailyFbWnd.timeLimit ~= nil then
		_GUIHandle = GUI:WndFindWindow(_Handle, "Edit_Timer")
		if _GUIHandle ~= 0 then
			GUI:WndDelAllTimer(_GUIHandle)
			GUI:WndAddTimerBrief(_GUIHandle, 1000, "DailyFbWnd.counting")
		end
	end
	_GUIHandle = GetWindow(_Handle, "SubWnd,Edit_Goal")
	if _GUIHandle ~= 0 then
		if DailyFbWnd.totalNum ~= nil then
			GUI:EditSetTextM(_GUIHandle,"0/"..DailyFbWnd.totalNum)
		end
	end
	if tb[1] ~= nil then
		for i = 1, #tb[1] do
			_GUIHandle = GetWindow(_Handle, "SubWnd,Item"..i)
			if _GUIHandle ~= 0 then
				RDItemCtrlSetGUIDataPropByKeyName(_GUIHandle, nil, tb[1][i], tb[2][i], false)
			end
		end
	end
	if TaskWindow ~= 0 then
		GUI:WndSetVisible(TaskWindow._wnd, false)
	end
	if LittleMap ~= 0 then
		GUI:WndSetVisible(LittleMap._wnd, false)
	end
	GUI:WndSetIsESCClose(_Handle, true)
end

function DailyFbWnd.Close()
	if TaskWindow ~= 0 then
		GUI:WndSetVisible(TaskWindow._wnd, true)
	end
	if LittleMap ~= 0 then
		GUI:WndSetVisible(LittleMap._wnd, true)
	end
	GUI:WndClose(DailyFbWnd.WndHandle)
end

function DailyFbWnd.HideWindow(_Handle)
	local _GUIHandle = GUI:WndFindWindow(DailyFbWnd.WndHandle, "SubWnd")
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, false)
	end
	_GUIHandle = GUI:WndFindWindow(DailyFbWnd.WndHandle, "BtnShowWnd")
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, true)
	end
end

function DailyFbWnd.showAim(num)
	num = tonumber(num)
	local _GUIHandle = GetWindow(DailyFbWnd.WndHandle, "SubWnd,Edit_Goal")
	if _GUIHandle ~= 0 then
		if num ~= nil then
			GUI:EditSetTextM(_GUIHandle,num.."/"..DailyFbWnd.totalNum)
		end
	end
end

function DailyFbWnd.counting(_Handle)
	DailyFbWnd.timeLimit = DailyFbWnd.timeLimit - 1
	if 0 > DailyFbWnd.timeLimit then
		GUI:WndDelAllTimer(_Handle)
		return
	end
	
	local d, h, m, s = GetDetailTime(DailyFbWnd.timeLimit)
	if s < 10 then
		s = "0"..s
	end
	GUI:EditSetTextM(_Handle, m..":"..s)

end


function DailyFbWnd.ShowWindow(_Handle)
	local _GUIHandle = GUI:WndFindWindow(DailyFbWnd.WndHandle, "SubWnd")
	if _GUIHandle ~= 0 then
		GUI:WndSetVisible(_GUIHandle, true)
	end
	GUI:WndSetVisible(_Handle, false)
end

function DailyFbWnd.LeaveMapConfirm()
	MessageBox(1, "确定要离开当前副本？", "DailyFbWnd.LeaveMap()", nil, false)
	--UI:Lua_SubmitForm("手游每日副本表单", "DailyFB_test", "")
end

function DailyFbWnd.LeaveMap()
	UI:Lua_SubmitForm("手游每日副本表单", "DailyFB_LeaveMap", "")
end

DailyFbWnd.main()